import { useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { getSupabase, isSupabaseConfigured } from '@/lib/supabase';

export function Signup() {
  const navigate = useNavigate();
  const [email, setEmail] = useState('');
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
    const { data, error: signErr } = await sb.auth.signUp({ email, password });
    if (signErr) {
      setError(signErr.message);
      setBusy(false);
      return;
    }
    // Best-effort: insert a default 'member' role row.
    // RLS allows the user to insert their own row only if the policy permits;
    // otherwise this is a no-op and an admin can grant roles later.
    if (data.user) {
      await sb.from('user_roles').insert({ user_id: data.user.id, role: 'member' });
    }
    setDone(true);
    setBusy(false);
    if (data.session) {
      // Email confirmation disabled — go straight in.
      navigate('/', { replace: true });
    }
  }

  return (
    <div className="container-page max-w-md py-16">
      <h1 className="text-3xl">Create your account</h1>
      <p className="mt-2 text-slate-600">
        Join the Warwick FA community. Members can RSVP, follow teams, and access club content.
      </p>

      {!isSupabaseConfigured && (
        <div className="mt-6 rounded border border-amber-300 bg-amber-50 p-4 text-sm text-amber-900">
          <strong>Supabase not configured.</strong> Sign-up is disabled until env vars are set.
        </div>
      )}

      {done ? (
        <div className="card mt-6 p-6">
          <p className="text-sm text-slate-700">
            Account created. Check your email for a confirmation link (if email confirmation is enabled).
          </p>
          <Link to="/login" className="btn-primary mt-4 inline-block">Go to sign in</Link>
        </div>
      ) : (
        <form className="card mt-6 space-y-4 p-6" onSubmit={onSubmit}>
          <div>
            <label className="block text-sm font-semibold text-slate-700">Email</label>
            <input
              required type="email" value={email}
              onChange={(e) => setEmail(e.target.value)}
              className="mt-1 w-full rounded border-slate-300 p-2 focus:border-navy focus:ring-navy"
              autoComplete="email"
            />
          </div>
          <div>
            <label className="block text-sm font-semibold text-slate-700">Password</label>
            <input
              required type="password" minLength={8} value={password}
              onChange={(e) => setPassword(e.target.value)}
              className="mt-1 w-full rounded border-slate-300 p-2 focus:border-navy focus:ring-navy"
              autoComplete="new-password"
            />
            <p className="mt-1 text-xs text-slate-500">Minimum 8 characters.</p>
          </div>
          {error && <div className="rounded bg-red-50 p-3 text-sm text-red-700">{error}</div>}
          <button type="submit" className="btn-primary w-full" disabled={busy || !isSupabaseConfigured}>
            {busy ? 'Creating account…' : 'Create account'}
          </button>
          <p className="text-center text-xs text-slate-500">
            Already a member? <Link to="/login" className="font-semibold">Sign in</Link>
          </p>
          <p className="text-center text-xs text-slate-500">
            Volunteering as a coach? <Link to="/signup/coach" className="font-semibold">Sign up as a coach</Link>
          </p>
        </form>
      )}
    </div>
  );
}
