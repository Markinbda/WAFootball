// Warwick FA — coach account management Edge Function
//
// Single endpoint with four `mode`s:
//   - 'invite'        (default, admin-only) magic-link invite to a new coach
//   - 'create'        (admin-only) create a coach with a chosen password (no email)
//   - 'set_password'  (admin-only) reset an existing user's password
//   - 'self_register' (public) coach self-signup with password
//
// All modes (except set_password) also upsert profiles, grant the coach role,
// and optionally assign a team.
//
// Deploy:
//   supabase functions deploy invite-coach --no-verify-jwt
// Required secret (Supabase → Settings → Edge Functions):
//   SUPABASE_SERVICE_ROLE_KEY
// SUPABASE_URL and SUPABASE_ANON_KEY are injected by the platform.

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

type Mode = 'invite' | 'create' | 'set_password' | 'self_register';

type Body = {
  mode?: Mode;
  email?: string;
  password?: string;
  user_id?: string;          // for set_password
  display_name?: string;
  title?: string;
  phone?: string;
  bio?: string;
  team_id?: string;
  redirect_to?: string;
};

type AuthUserLite = { id: string; email?: string | null; deleted_at?: string | null };

serve(async (req) => {
  if (req.method === 'OPTIONS') return new Response('ok', { headers: CORS_HEADERS });
  if (req.method !== 'POST') return json({ error: 'POST only' }, 405);

  const SUPABASE_URL = Deno.env.get('SUPABASE_URL');
  const SERVICE_KEY = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY');
  const ANON_KEY = Deno.env.get('SUPABASE_ANON_KEY');
  if (!SUPABASE_URL || !SERVICE_KEY || !ANON_KEY) {
    return json({ error: 'Edge function missing SUPABASE_URL / SERVICE / ANON env vars' }, 500);
  }

  let body: Body;
  try {
    body = await req.json();
  } catch {
    return json({ error: 'Invalid JSON body' }, 400);
  }
  const mode: Mode = body.mode ?? 'invite';

  // Service-role client for privileged work.
  const admin = createClient(SUPABASE_URL, SERVICE_KEY, {
    auth: { autoRefreshToken: false, persistSession: false },
  });

  async function withTimeout<T>(label: string, ms: number, p: Promise<T>): Promise<T> {
    return await Promise.race<T>([
      p,
      new Promise<T>((_, reject) =>
        setTimeout(() => reject(new Error(`${label} timed out after ${ms}ms`)), ms),
      ),
    ]);
  }

  async function requireAdmin(): Promise<{ callerId: string } | Response> {
    const authHeader = req.headers.get('Authorization') ?? '';
    if (!authHeader.startsWith('Bearer ')) return json({ error: 'Missing bearer token' }, 401);
    const callerClient = createClient(SUPABASE_URL, ANON_KEY, {
      global: { headers: { Authorization: authHeader } },
    });
    const { data: userData, error: userErr } = await callerClient.auth.getUser();
    if (userErr || !userData.user) return json({ error: 'Invalid caller token' }, 401);
    const callerId = userData.user.id;
    const { data: roles, error: roleErr } = await callerClient
      .from('user_roles')
      .select('role')
      .eq('user_id', callerId);
    if (roleErr) return json({ error: `Role lookup failed: ${roleErr.message}` }, 500);
    const isAdmin = (roles ?? []).some((r) => r.role === 'admin');
    if (!isAdmin) return json({ error: 'Admin only' }, 403);
    return { callerId };
  }

  async function findUserByEmail(email: string): Promise<AuthUserLite | null> {
    const { data: list, error: listErr } = await withTimeout(
      'listUsers',
      10_000,
      admin.auth.admin.listUsers({ page: 1, perPage: 200 }),
    );
    if (listErr) throw new Error(`Lookup failed: ${listErr.message}`);
    return (list.users as AuthUserLite[]).find((u) => u.email?.toLowerCase() === email) ?? null;
  }

  async function upsertProfile(
    userId: string,
    display_name: string,
    title: string | null,
    phone: string | null,
    bio: string | null,
  ): Promise<Response | null> {
    const patch: Record<string, unknown> = {
      id: userId,
      display_name,
      updated_at: new Date().toISOString(),
    };
    if (title !== null) patch.title = title;
    if (phone !== null) patch.phone = phone;
    if (bio !== null) patch.bio = bio;
    const { error } = await admin.from('profiles').upsert(patch, { onConflict: 'id' });
    if (error) return json({ error: `Profile upsert failed: ${error.message}` }, 500);
    return null;
  }

  async function grantCoachRole(userId: string): Promise<Response | null> {
    const { error } = await admin
      .from('user_roles')
      .upsert({ user_id: userId, role: 'coach' }, { onConflict: 'user_id,role' });
    if (error) return json({ error: `Role grant failed: ${error.message}` }, 500);
    return null;
  }

  async function assignTeam(userId: string, teamId: string): Promise<Response | null> {
    const { error } = await admin
      .from('team_coaches')
      .upsert({ user_id: userId, team_id: teamId }, { onConflict: 'team_id,user_id' });
    if (error) return json({ error: `Team assign failed: ${error.message}` }, 500);
    return null;
  }

  async function clearTombstone(email: string): Promise<Response | null> {
    const existing = await findUserByEmail(email);
    if (existing?.deleted_at) {
      const { error: delErr } = await admin.auth.admin.deleteUser(existing.id, true);
      if (delErr) {
        return json({
          error:
            `An old (soft-deleted) account with that email is blocking creation: ${delErr.message}. ` +
            'In Supabase dashboard → Authentication → Users, choose "Delete user permanently" and retry.',
        }, 500);
      }
      console.log('[invite-coach] hard-deleted soft-deleted user', existing.id);
    }
    return null;
  }

  // =================================================================
  // Mode: set_password — admin-only password reset
  // =================================================================
  if (mode === 'set_password') {
    const gate = await requireAdmin();
    if (gate instanceof Response) return gate;
    const password = (body.password ?? '').trim();
    const user_id = (body.user_id ?? '').trim();
    if (!user_id) return json({ error: 'user_id required' }, 400);
    if (password.length < 8) return json({ error: 'password must be at least 8 characters' }, 400);
    const { error } = await admin.auth.admin.updateUserById(user_id, { password });
    if (error) return json({ error: `Password reset failed: ${error.message}` }, 500);
    return json({ ok: true, user_id });
  }

  // For all other modes we need email + display_name.
  const email = (body.email ?? '').trim().toLowerCase();
  const display_name = (body.display_name ?? '').trim();
  const title = body.title?.trim() || null;
  const phone = body.phone?.trim() || null;
  const bio = body.bio?.trim() || null;
  const team_id = body.team_id?.trim() || null;
  const redirect_to = body.redirect_to?.trim() || undefined;
  const password = (body.password ?? '').trim();

  if (!email || !display_name) {
    return json({ error: 'email and display_name are required' }, 400);
  }

  // =================================================================
  // Mode: create — admin sets password directly, no email sent
  // =================================================================
  if (mode === 'create') {
    const gate = await requireAdmin();
    if (gate instanceof Response) return gate;
    if (password.length < 8) return json({ error: 'password must be at least 8 characters' }, 400);

    const tomb = await clearTombstone(email);
    if (tomb) return tomb;

    let userId: string | null = null;
    const { data: created, error: createErr } = await withTimeout(
      'createUser',
      12_000,
      admin.auth.admin.createUser({
        email,
        password,
        email_confirm: true,
        user_metadata: { full_name: display_name },
      }),
    );
    if (createErr || !created?.user) {
      const msg = createErr?.message?.toLowerCase() ?? '';
      if (msg.includes('already') || msg.includes('registered')) {
        // Existing account — update its password instead.
        const found = await findUserByEmail(email);
        if (!found) return json({ error: `User exists but cannot be found: ${createErr?.message}` }, 500);
        userId = found.id;
        const { error: updErr } = await admin.auth.admin.updateUserById(userId, {
          password,
          email_confirm: true,
        });
        if (updErr) return json({ error: `Password update failed: ${updErr.message}` }, 500);
      } else {
        return json({ error: `Create failed: ${createErr?.message ?? 'unknown'}` }, 500);
      }
    } else {
      userId = created.user.id;
    }

    const pErr = await upsertProfile(userId, display_name, title, phone, bio);
    if (pErr) return pErr;
    const rErr = await grantCoachRole(userId);
    if (rErr) return rErr;
    if (team_id) {
      const tErr = await assignTeam(userId, team_id);
      if (tErr) return tErr;
    }
    return json({ ok: true, user_id: userId, created: true, email_sent: false });
  }

  // =================================================================
  // Mode: self_register — public coach signup
  // =================================================================
  if (mode === 'self_register') {
    if (password.length < 8) return json({ error: 'password must be at least 8 characters' }, 400);

    const tomb = await clearTombstone(email);
    if (tomb) return tomb;

    const { data: created, error: createErr } = await withTimeout(
      'createUser',
      12_000,
      admin.auth.admin.createUser({
        email,
        password,
        email_confirm: true,
        user_metadata: { full_name: display_name },
      }),
    );
    if (createErr || !created?.user) {
      const msg = createErr?.message?.toLowerCase() ?? '';
      if (msg.includes('already') || msg.includes('registered')) {
        return json({
          error: 'An account with that email already exists. Please sign in instead, or use Forgot Password.',
        }, 409);
      }
      return json({ error: `Signup failed: ${createErr?.message ?? 'unknown'}` }, 500);
    }
    const userId = created.user.id;

    const pErr = await upsertProfile(userId, display_name, title, phone, bio);
    if (pErr) return pErr;
    const rErr = await grantCoachRole(userId);
    if (rErr) return rErr;
    // Self-registered coaches start with no team assignment — admin assigns later.
    return json({ ok: true, user_id: userId, created: true, email_sent: false });
  }

  // =================================================================
  // Mode: invite (default) — existing magic-link flow, admin-only
  // =================================================================
  const gate = await requireAdmin();
  if (gate instanceof Response) return gate;

  let userId: string | null = null;
  let invited = false;
  let resent = false;
  let emailSent = false;
  let emailNote: string | null = null;

  const tomb = await clearTombstone(email);
  if (tomb) return tomb;

  let inv: { user: { id: string } | null } | null = null;
  let invErr: { message?: string } | null = null;
  try {
    const res = await withTimeout(
      'inviteUserByEmail',
      12_000,
      admin.auth.admin.inviteUserByEmail(email, {
        data: { full_name: display_name },
        redirectTo: redirect_to,
      }),
    );
    inv = res.data as { user: { id: string } | null } | null;
    invErr = res.error as { message?: string } | null;
  } catch (e) {
    console.warn('[invite-coach] inviteUserByEmail timed out — treating as rate limit');
    invErr = { message: 'rate limit (client-side timeout): ' + (e instanceof Error ? e.message : String(e)) };
  }

  async function findUserIdByEmail(): Promise<string | null> {
    return (await findUserByEmail(email))?.id ?? null;
  }

  if (invErr) {
    const msg = invErr.message?.toLowerCase() ?? '';
    const isAlready = msg.includes('already') || msg.includes('registered');
    const isRate = msg.includes('rate limit') || msg.includes('too many');

    if (isAlready) {
      userId = await findUserIdByEmail();
      if (!userId) return json({ error: 'User reported existing but not found' }, 500);
      let linkErr: { message?: string } | null = null;
      try {
        const linkRes = await withTimeout(
          'generateLink',
          10_000,
          admin.auth.admin.generateLink({
            type: 'magiclink',
            email,
            options: { redirectTo: redirect_to },
          }),
        );
        linkErr = linkRes.error as { message?: string } | null;
      } catch (e) {
        linkErr = { message: 'rate limit (client-side timeout): ' + (e instanceof Error ? e.message : String(e)) };
      }
      if (linkErr) {
        const linkMsg = linkErr.message?.toLowerCase() ?? '';
        if (linkMsg.includes('rate limit') || linkMsg.includes('too many')) {
          emailNote = 'Magic-link not re-sent: email rate limit reached. They can use Forgot Password later, or wait ~1 hour.';
        } else {
          emailNote = `Magic-link not re-sent: ${linkErr.message}`;
        }
      } else {
        resent = true;
        emailSent = true;
      }
    } else if (isRate) {
      userId = await findUserIdByEmail();
      if (userId) {
        emailNote = 'Email rate limit reached — user already exists, role granted but no fresh email sent.';
      } else {
        const { data: created, error: createErr } = await withTimeout(
          'createUser',
          10_000,
          admin.auth.admin.createUser({
            email,
            email_confirm: false,
            user_metadata: { full_name: display_name },
          }),
        );
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
  } else if (inv?.user) {
    userId = inv.user.id;
    invited = true;
    emailSent = true;
  }
  if (!userId) return json({ error: 'Could not resolve user id' }, 500);

  const pErr = await upsertProfile(userId, display_name, title, phone, bio);
  if (pErr) return pErr;
  const rErr = await grantCoachRole(userId);
  if (rErr) return rErr;
  if (team_id) {
    const tErr = await assignTeam(userId, team_id);
    if (tErr) return tErr;
  }

  return json({ ok: true, user_id: userId, invited, resent, email_sent: emailSent, email_note: emailNote });
});
