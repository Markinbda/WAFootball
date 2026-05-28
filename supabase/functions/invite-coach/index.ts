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
  let invited = false;       // true when this call created a fresh invitation
  let resent = false;        // true when we re-sent a magic-link to an existing user
  let emailSent = false;     // false when we hit a rate-limit but still set the user up
  let emailNote: string | null = null;

  async function findUserIdByEmail(): Promise<string | null> {
    const { data: list, error: listErr } = await admin.auth.admin.listUsers({ page: 1, perPage: 200 });
    if (listErr) throw new Error(`Lookup failed: ${listErr.message}`);
    return list.users.find((u) => u.email?.toLowerCase() === email)?.id ?? null;
  }

  const { data: inv, error: invErr } = await admin.auth.admin.inviteUserByEmail(email, {
    data: { full_name: display_name },
    redirectTo: redirect_to,
  });

  if (invErr) {
    const msg = invErr.message?.toLowerCase() ?? '';
    const isAlready = msg.includes('already') || msg.includes('registered');
    const isRate = msg.includes('rate limit') || msg.includes('too many');

    if (isAlready) {
      // User exists — find them, try re-sending a magic-link.
      userId = await findUserIdByEmail();
      if (!userId) return json({ error: 'User reported existing but not found' }, 500);
      const { error: linkErr } = await admin.auth.admin.generateLink({
        type: 'magiclink',
        email,
        options: { redirectTo: redirect_to },
      });
      if (linkErr) {
        const linkMsg = linkErr.message?.toLowerCase() ?? '';
        if (linkMsg.includes('rate limit') || linkMsg.includes('too many')) {
          emailNote = 'Magic-link not re-sent: email rate limit reached. They can use Forgot Password later, or wait ~1 hour.';
        } else {
          emailNote = `Magic-link not re-sent: ${linkErr.message}`;
        }
        console.warn('[invite-coach] generateLink failed:', linkErr.message);
      } else {
        resent = true;
        emailSent = true;
      }
    } else if (isRate) {
      // Rate-limited on FIRST invite. The user may or may not have been
      // created by a prior partial attempt — check before giving up.
      userId = await findUserIdByEmail();
      if (userId) {
        // They exist from a prior attempt; continue and grant role.
        emailNote = 'Email rate limit reached — user already exists, role granted but no fresh email sent.';
      } else {
        // Create the account without sending an email so admin work isn't blocked.
        const { data: created, error: createErr } = await admin.auth.admin.createUser({
          email,
          email_confirm: false,
          user_metadata: { full_name: display_name },
        });
        if (createErr || !created.user) {
          return json({
            error:
              'Email rate limit reached and user could not be auto-created. Wait ~1 hour or configure custom SMTP under Auth → Settings → SMTP. ' +
              (createErr?.message ?? ''),
          }, 429);
        }
        userId = created.user.id;
        emailNote = 'Created account without sending email (project rate limit). Ask them to use Forgot Password from the login page, or re-invite in ~1 hour.';
      }
    } else {
      return json({ error: `Invite failed: ${invErr.message}` }, 500);
    }
  } else if (inv.user) {
    userId = inv.user.id;
    invited = true;
    emailSent = true;
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

  return json({ ok: true, user_id: userId, invited, resent, email_sent: emailSent, email_note: emailNote });
});
