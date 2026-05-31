import { useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { getSupabase, isSupabaseConfigured } from '@/lib/supabase';

// Public coach self-signup. Calls the `invite-coach` Edge Function in
// `self_register` mode, which creates the auth user with a chosen password
// (no email confirmation required) and grants them the coach role.
// An admin then assigns them to one or more teams from /admin?section=coaches.
export function SignupCoach() {
  const navigate = useNavigate();
  const [email, setEmail] = useState('');
  const [displayName, setDisplayName] = useState('');
  const [title, setTitle] = useState('');
  const [phone, setPhone] = useState('');
  const [bio, setBio] = useState('');
  const [password, setPassword] = useState('');
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [done, setDone] = useState(false);

  async function onSubmit(e: React.FormEvent) {
    e.preventDefault();
    setBusy(true);
    setError(null);
    const sb = getSupabase();
    if (!sb) {
      setError('Supabase not configured');
      setBusy(false);
      return;
    }
    if (password.length < 8) {
      setError('Password must be at least 8 characters.');
      setBusy(false);
      return;
    }
    try {
      const { data, error: invErr } = await sb.functions.invoke('invite-coach', {
        body: {
          mode: 'self_register',
          email: email.trim().toLowerCase(),
          display_name: displayName.trim(),
          title: title.trim() || undefined,
          phone: phone.trim() || undefined,
          bio: bio.trim() || undefined,
          password,
        },
      });
      if (invErr) {
        let detail = invErr.message;
        const ctx = (invErr as { context?: { body?: unknown } }).context;
        if (ctx?.body) {
          try {
            const parsed = typeof ctx.body === 'string' ? JSON.parse(ctx.body) : ctx.body;
            if (parsed && typeof parsed === 'object' && 'error' in parsed) {
              detail = String((parsed as { error: unknown }).error);
            }
          } catch { /* ignore */ }
        }
        setError(detail);
        setBusy(false);
        return;
      }
      const body = data as { ok?: boolean; error?: string } | null;
      if (!body?.ok) {
        setError(body?.error ?? 'Signup failed');
        setBusy(false);
        return;
      }
      // Sign the new coach in immediately.
      const { error: signErr } = await sb.auth.signInWithPassword({
        email: email.trim().toLowerCase(),
        password,
      });
      if (signErr) {
        // Account exists — just point them at sign-in.
        setDone(true);
        setBusy(false);
        return;
      }
      setDone(true);
      setBusy(false);
      navigate('/coach', { replace: true });
    } catch (err) {
      setError(err instanceof Error ? err.message : String(err));
      setBusy(false);
    }
  }

  return (
    <div className="container-page max-w-xl py-16">
      <h1 className="text-3xl">Coach sign-up</h1>
      <p className="mt-2 text-slate-600">
        Volunteering as a coach at Warwick FA? Create your account here. An
        admin will then assign you to the team(s) you coach. You can sign in
        immediately with the password you choose below — no email confirmation
        needed.
      </p>

      {!isSupabaseConfigured && (
        <div className="mt-6 rounded border border-amber-300 bg-amber-50 p-4 text-sm text-amber-900">
          <strong>Supabase not configured.</strong> Sign-up is disabled until env vars are set.
        </div>
      )}

      {done ? (
        <div className="card mt-6 p-6">
          <p className="text-sm text-slate-700">
            Account created. Welcome to the staff. An admin will assign you to
            teams shortly — until then your coach dashboard will be empty.
          </p>
          <Link to="/coach" className="btn-primary mt-4 inline-block">Go to coach dashboard</Link>
        </div>
      ) : (
        <form className="card mt-6 space-y-4 p-6" onSubmit={onSubmit}>
          <div className="grid gap-4 sm:grid-cols-2">
            <label className="text-sm sm:col-span-2">
              <span className="font-semibold text-slate-700">Full name</span>
              <input
                required
                type="text"
                value={displayName}
                onChange={(e) => setDisplayName(e.target.value)}
                className="mt-1 w-full rounded border-slate-300 p-2 focus:border-navy focus:ring-navy"
                autoComplete="name"
                placeholder="Richard Todd"
              />
            </label>
            <label className="text-sm">
              <span className="font-semibold text-slate-700">Email</span>
              <input
                required
                type="email"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                className="mt-1 w-full rounded border-slate-300 p-2 focus:border-navy focus:ring-navy"
                autoComplete="email"
              />
            </label>
            <label className="text-sm">
              <span className="font-semibold text-slate-700">Phone (optional)</span>
              <input
                type="tel"
                value={phone}
                onChange={(e) => setPhone(e.target.value)}
                className="mt-1 w-full rounded border-slate-300 p-2 focus:border-navy focus:ring-navy"
                autoComplete="tel"
              />
            </label>
            <label className="text-sm sm:col-span-2">
              <span className="font-semibold text-slate-700">Coaching title / role (optional)</span>
              <input
                type="text"
                value={title}
                onChange={(e) => setTitle(e.target.value)}
                className="mt-1 w-full rounded border-slate-300 p-2 focus:border-navy focus:ring-navy"
                placeholder="Head Coach U-15"
              />
            </label>
            <label className="text-sm sm:col-span-2">
              <span className="font-semibold text-slate-700">Short bio (optional)</span>
              <textarea
                value={bio}
                onChange={(e) => setBio(e.target.value)}
                rows={3}
                className="mt-1 w-full rounded border-slate-300 p-2 focus:border-navy focus:ring-navy"
                placeholder="Coaching qualifications, experience, etc."
              />
            </label>
            <label className="text-sm sm:col-span-2">
              <span className="font-semibold text-slate-700">Password</span>
              <input
                required
                type="password"
                minLength={8}
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                className="mt-1 w-full rounded border-slate-300 p-2 focus:border-navy focus:ring-navy"
                autoComplete="new-password"
              />
              <p className="mt-1 text-xs text-slate-500">Minimum 8 characters.</p>
            </label>
          </div>

          {error && <div className="rounded bg-red-50 p-3 text-sm text-red-700">{error}</div>}

          <button
            type="submit"
            className="btn-primary w-full"
            disabled={busy || !isSupabaseConfigured}
          >
            {busy ? 'Creating account…' : 'Create coach account'}
          </button>
          <p className="text-center text-xs text-slate-500">
            Already have an account? <Link to="/login" className="font-semibold">Sign in</Link>
          </p>
        </form>
      )}
    </div>
  );
}
