// Warwick FA — invite-coach Edge Function
//
// Admin-only endpoint that:
//   1. Verifies the caller has the `admin` role.
//   2. Invites a new user by email (Supabase sends a magic-link).
//   3. Creates / updates their `public.profiles` row with display_name + title.
//   4. Grants them the `coach` role in `public.user_roles`.
//   5. Optionally assigns them to a team in `public.team_coaches`.
//
// Deploy:
//   supabase functions deploy invite-coach --no-verify-jwt
// Then in Supabase → Settings → Edge Functions, set the secret:
//   SUPABASE_SERVICE_ROLE_KEY  (the service-role key from Project Settings → API)
// The function uses `SUPABASE_URL` automatically from the platform.
//
// Call from the browser:
//   await supabase.functions.invoke('invite-coach', {
//     body: { email, display_name, title?, team_id?, redirect_to? }
//   });

import { serve } from 'https://deno.land/std@0.224.0/http/server.ts';
import { createClient } from 'https://esm.sh/@supabase/supabase-js@2.45.0';

const CORS_HEADERS = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Methods': 'POST, OPTIONS',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
};

function json(body: unknown, status = 200) {
  return new Response(JSON.stringify(body), {
    status,
    headers: { ...CORS_HEADERS, 'content-type': 'application/json' },
  });
}

serve(async (req) => {
  if (req.method === 'OPTIONS') return new Response('ok', { headers: CORS_HEADERS });
  if (req.method !== 'POST') return json({ error: 'POST only' }, 405);

  const SUPABASE_URL = Deno.env.get('SUPABASE_URL');
  const SERVICE_KEY = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY');
  const ANON_KEY = Deno.env.get('SUPABASE_ANON_KEY');
  if (!SUPABASE_URL || !SERVICE_KEY || !ANON_KEY) {
    return json({ error: 'Edge function missing SUPABASE_URL / SERVICE / ANON env vars' }, 500);
  }

  // ---- 1. Authenticate the caller and check admin role ----
  const authHeader = req.headers.get('Authorization') ?? '';
  if (!authHeader.startsWith('Bearer ')) {
    return json({ error: 'Missing bearer token' }, 401);
  }

  // Client scoped to the caller (uses their JWT) — used for the admin check.
  const callerClient = createClient(SUPABASE_URL, ANON_KEY, {
    global: { headers: { Authorization: authHeader } },
  });

  const { data: userData, error: userErr } = await callerClient.auth.getUser();
  if (userErr || !userData.user) {
    return json({ error: 'Invalid caller token' }, 401);
  }
  const callerId = userData.user.id;

  const { data: roles, error: roleErr } = await callerClient
    .from('user_roles')
    .select('role')
    .eq('user_id', callerId);
  if (roleErr) return json({ error: `Role lookup failed: ${roleErr.message}` }, 500);
  const isAdmin = (roles ?? []).some((r) => r.role === 'admin');
  if (!isAdmin) return json({ error: 'Admin only' }, 403);

  // ---- 2. Parse request body ----
  type Body = {
    email?: string;
    display_name?: string;
    title?: string;
    team_id?: string;
    redirect_to?: string;
  };
  let body: Body;
  try {
    body = await req.json();
  } catch {
    return json({ error: 'Invalid JSON body' }, 400);
  }
  const email = (body.email ?? '').trim().toLowerCase();
  const display_name = (body.display_name ?? '').trim();
  const title = body.title?.trim() || null;
  const team_id = body.team_id?.trim() || null;
  const redirect_to = body.redirect_to?.trim() || undefined;

  if (!email || !display_name) {
    return json({ error: 'email and display_name are required' }, 400);
  }

  // ---- 3. Service-role client for privileged work ----
  const admin = createClient(SUPABASE_URL, SERVICE_KEY, {
    auth: { autoRefreshToken: false, persistSession: false },
  });

  // ---- 4. Invite (or look up existing) user ----
  let userId: string | null = null;
  const { data: invited, error: invErr } = await admin.auth.admin.inviteUserByEmail(email, {
    data: { full_name: display_name },
    redirectTo: redirect_to,
  });

  if (invErr) {
    // If the user already exists, find them and continue (idempotent).
    const msg = invErr.message?.toLowerCase() ?? '';
    if (msg.includes('already') || msg.includes('registered')) {
      // listUsers paginates — find by email.
      const { data: list, error: listErr } = await admin.auth.admin.listUsers({ page: 1, perPage: 200 });
      if (listErr) return json({ error: `Lookup failed: ${listErr.message}` }, 500);
      const match = list.users.find((u) => u.email?.toLowerCase() === email);
      if (!match) return json({ error: 'User reported existing but not found' }, 500);
      userId = match.id;
    } else {
      return json({ error: `Invite failed: ${invErr.message}` }, 500);
    }
  } else if (invited.user) {
    userId = invited.user.id;
  }
  if (!userId) return json({ error: 'Could not resolve user id' }, 500);

  // ---- 5. Upsert profile (display_name, title) ----
  const { error: profErr } = await admin
    .from('profiles')
    .upsert(
      { id: userId, display_name, title, updated_at: new Date().toISOString() },
      { onConflict: 'id' },
    );
  if (profErr) return json({ error: `Profile upsert failed: ${profErr.message}` }, 500);

  // ---- 6. Grant coach role (idempotent) ----
  const { error: roleInsErr } = await admin
    .from('user_roles')
    .upsert({ user_id: userId, role: 'coach' }, { onConflict: 'user_id,role' });
  if (roleInsErr) return json({ error: `Role grant failed: ${roleInsErr.message}` }, 500);

  // ---- 7. Optionally assign team ----
  if (team_id) {
    const { error: teamErr } = await admin
      .from('team_coaches')
      .upsert({ user_id: userId, team_id }, { onConflict: 'team_id,user_id' });
    if (teamErr) return json({ error: `Team assign failed: ${teamErr.message}` }, 500);
  }

  return json({ ok: true, user_id: userId, invited: !invErr });
});
