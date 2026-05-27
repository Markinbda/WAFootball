import { NavLink, Link } from 'react-router-dom';
import { useAuth } from '@/auth/AuthProvider';

const nav = [
  { to: '/', label: 'Home', end: true },
  { to: '/news', label: 'News' },
  { to: '/fixtures', label: 'Fixtures' },
  { to: '/results', label: 'Results' },
  { to: '/teams', label: 'Teams' },
  { to: '/contact', label: 'Contact' },
];

export function Header() {
  const { user, roles, signOut } = useAuth();
  const isCoach = roles.includes('coach') || roles.includes('admin');
  const isAdmin = roles.includes('admin');

  return (
    <header className="bg-navy text-white shadow-md">
      <div className="container-page flex h-16 items-center justify-between">
        <Link to="/" className="flex items-center gap-3 text-white hover:text-gold">
          <div className="grid h-10 w-10 place-items-center rounded-full bg-white font-display text-xl text-navy">
            W
          </div>
          <div className="leading-tight">
            <div className="font-display text-lg tracking-wider">Warwick FA</div>
            <div className="text-[10px] uppercase tracking-[0.2em] text-gold">Bermuda Football</div>
          </div>
        </Link>

        <nav className="hidden items-center gap-1 md:flex">
          {nav.map((item) => (
            <NavLink
              key={item.to}
              to={item.to}
              end={item.end}
              className={({ isActive }) =>
                `rounded px-3 py-2 text-sm font-medium transition-colors ${
                  isActive
                    ? 'bg-white/10 text-gold'
                    : 'text-white/90 hover:bg-white/10 hover:text-white'
                }`
              }
            >
              {item.label}
            </NavLink>
          ))}
          {isCoach && (
            <NavLink
              to="/coach"
              className={({ isActive }) =>
                `rounded px-3 py-2 text-sm font-medium transition-colors ${
                  isActive ? 'bg-gold text-navy' : 'bg-gold/90 text-navy hover:bg-gold'
                }`
              }
            >
              Coach
            </NavLink>
          )}
          {isAdmin && (
            <NavLink
              to="/admin"
              className={({ isActive }) =>
                `rounded px-3 py-2 text-sm font-medium transition-colors ${
                  isActive ? 'bg-white text-navy' : 'bg-white/90 text-navy hover:bg-white'
                }`
              }
            >
              Admin
            </NavLink>
          )}
        </nav>

        <div className="flex items-center gap-2">
          {user ? (
            <>
              <span className="hidden text-xs text-white/80 sm:inline">
                {user.email}
              </span>
              <button
                onClick={() => signOut()}
                className="rounded border border-white/30 px-3 py-1.5 text-xs font-semibold text-white hover:bg-white/10"
              >
                Sign out
              </button>
            </>
          ) : (
            <>
              <Link
                to="/signup"
                className="hidden rounded border border-white/30 px-3 py-1.5 text-xs font-semibold text-white hover:bg-white/10 sm:inline-block"
              >
                Join
              </Link>
              <Link
                to="/login"
                className="rounded bg-gold px-3 py-1.5 text-xs font-semibold text-navy hover:brightness-95"
              >
                Sign in
              </Link>
            </>
          )}
        </div>
      </div>
    </header>
  );
}
