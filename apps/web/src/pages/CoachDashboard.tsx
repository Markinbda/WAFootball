import { Link } from 'react-router-dom';
import { useAuth } from '@/auth/AuthProvider';
import { TEAMS, UPCOMING_FIXTURES } from '@/data/seed';

const QUICK_ACTIONS: { title: string; desc: string; to: string }[] = [
  { title: 'Roster', desc: 'Add or remove players', to: '/admin?section=players' },
  { title: 'Attendance', desc: 'Mark training session', to: '/training' },
  { title: 'Comms', desc: 'Message parents/players', to: '/admin?section=news' },
  { title: 'Photos', desc: 'Upload match-day gallery', to: '/admin?section=gallery' },
];

export function CoachDashboard() {
  const { user, roles } = useAuth();

  return (
    <div className="container-page py-12">
      <div className="flex flex-wrap items-end justify-between gap-4">
        <div>
          <div className="text-xs font-semibold uppercase tracking-widest text-gold">Coach Dashboard</div>
          <h1 className="mt-1 text-4xl">Welcome back</h1>
          <p className="mt-1 text-slate-600">
            Signed in as {user?.email} · {roles.join(', ') || 'no roles'}
          </p>
        </div>
        <div className="flex gap-2">
          <Link to="/admin?section=news" className="btn-primary">+ Post update</Link>
          <Link to="/training" className="btn-ghost">Take attendance</Link>
        </div>
      </div>

      <div className="mt-10 grid gap-6 lg:grid-cols-3">
        <section className="card p-6 lg:col-span-2">
          <h2 className="text-xl">My Teams</h2>
          <p className="mt-1 text-sm text-slate-600">
            Pick a squad to manage rosters, attendance, and comms.
          </p>
          <ul className="mt-4 divide-y divide-slate-200">
            {TEAMS.slice(0, 4).map((t) => (
              <li key={t.slug} className="flex items-center justify-between py-3">
                <div>
                  <div className="font-semibold text-navy">{t.name}</div>
                  <div className="text-xs text-slate-500">{t.ageGroup}</div>
                </div>
                <Link
                  to={`/calendar/${t.slug}`}
                  className="text-sm font-semibold text-navy hover:text-navy-500"
                >
                  Schedule →
                </Link>
              </li>
            ))}
          </ul>
        </section>

        <section className="card p-6">
          <h2 className="text-xl">This Week</h2>
          <ul className="mt-4 space-y-3">
            {UPCOMING_FIXTURES.slice(0, 3).map((f) => (
              <li key={f.id}>
                <Link to={`/fixtures/${f.id}`} className="block hover:opacity-80">
                  <div className="text-xs text-slate-500">
                    {new Date(f.date).toLocaleString('en-GB', {
                      weekday: 'short', day: 'numeric', month: 'short',
                      hour: '2-digit', minute: '2-digit',
                    })}
                  </div>
                  <div className="font-semibold text-navy">
                    {f.team} vs {f.opponent}
                  </div>
                  <div className="text-xs text-slate-500">
                    {f.venue} · {f.competition}
                  </div>
                </Link>
              </li>
            ))}
          </ul>
        </section>

        <section className="card p-6 lg:col-span-3">
          <h2 className="text-xl">Quick Actions</h2>
          <div className="mt-4 grid gap-3 sm:grid-cols-2 lg:grid-cols-4">
            {QUICK_ACTIONS.map(({ title, desc, to }) => (
              <Link
                key={title}
                to={to}
                className="card flex flex-col items-start p-4 text-left hover:border-navy hover:shadow-md"
              >
                <div className="font-display text-lg text-navy">{title}</div>
                <div className="mt-1 text-xs text-slate-600">{desc}</div>
              </Link>
            ))}
          </div>
        </section>
      </div>
    </div>
  );
}
