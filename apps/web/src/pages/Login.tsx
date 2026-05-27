import { useState } from 'react';
import { useNavigate, useLocation, Link } from 'react-router-dom';
import { useAuth } from '@/auth/AuthProvider';

export function Login() {
  const { signInWithEmail, configured, user } = useAuth();
  const navigate = useNavigate();
  const location = useLocation();
  const from = (location.state as { from?: { pathname: string } } | null)?.from?.pathname ?? '/';

  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState<string | null>(null);

  if (user) {
    navigate(from, { replace: true });
  }

  return (
    <div className="container-page max-w-md py-16">
      <h1 className="text-3xl">Sign in</h1>
      <p className="mt-2 text-slate-600">
        Coaches, committee, and members: sign in to access your dashboard.
      </p>

      {!configured && (
        <div className="mt-6 rounded border border-amber-300 bg-amber-50 p-4 text-sm text-amber-900">
          <strong>Supabase not configured.</strong> Add{' '}
          <code className="rounded bg-amber-100 px-1">VITE_SUPABASE_URL</code> and{' '}
          <code className="rounded bg-amber-100 px-1">VITE_SUPABASE_ANON_KEY</code>{' '}
          to <code>apps/web/.env.local</code> to enable login.
        </div>
      )}

      <form
        className="card mt-6 space-y-4 p-6"
        onSubmit={async (e) => {
          e.preventDefault();
          setBusy(true);
          setError(null);
          const result = await signInWithEmail(email, password);
          setBusy(false);
          if (result.error) setError(result.error);
          else navigate(from, { replace: true });
        }}
      >
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
            required type="password" value={password}
            onChange={(e) => setPassword(e.target.value)}
            className="mt-1 w-full rounded border-slate-300 p-2 focus:border-navy focus:ring-navy"
            autoComplete="current-password"
          />
        </div>
        {error && (
          <div className="rounded bg-red-50 p-3 text-sm text-red-700">{error}</div>
        )}
        <button type="submit" className="btn-primary w-full" disabled={busy || !configured}>
          {busy ? 'Signing in…' : 'Sign in'}
        </button>
        <p className="text-center text-xs text-slate-500">
          Forgot your password? <Link to="/contact" className="font-semibold">Contact the committee</Link>
        </p>
      </form>
    </div>
  );
}
