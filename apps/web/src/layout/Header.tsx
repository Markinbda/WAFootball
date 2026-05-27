import { NavLink, Link, useLocation } from 'react-router-dom';
import { useEffect, useState } from 'react';
import { useAuth } from '@/auth/AuthProvider';

type NavLeaf = { to: string; label: string; end?: boolean; external?: boolean };
type NavGroup = { label: string; children: NavLeaf[] };
type NavItem = NavLeaf | NavGroup;

const nav: NavItem[] = [
  { to: '/', label: 'Home', end: true },
  {
    label: 'About',
    children: [
      { to: '/page/history', label: 'Our History' },
      { to: '/page/mission', label: 'Mission & Values' },
      { to: '/page/management', label: 'Management & Staff' },
      { to: '/page/ltad', label: 'LTAD Model' },
      { to: '/page/faq', label: 'FAQ' },
    ],
  },
  {
    label: 'Programs',
    children: [
      { to: '/page/program-u5', label: 'U5 Pee Wee' },
      { to: '/page/program-u7', label: 'U7 Foundation' },
      { to: '/page/program-u9', label: 'U9 Jr Academy' },
      { to: '/page/program-u11', label: 'U11 Jr Academy' },
      { to: '/page/program-u13', label: 'U13 Academy' },
      { to: '/page/program-u15', label: 'U15 Academy' },
      { to: '/page/program-u17', label: 'U17 Academy' },
      { to: '/page/program-senior', label: "Senior Men's" },
      { to: '/page/high-performance', label: 'High Performance' },
      { to: '/page/camps', label: 'Camps' },
      { to: '/register', label: 'Registration' },
    ],
  },
  { to: '/fixtures', label: 'Fixtures' },
  { to: '/results', label: 'Results' },
  { to: '/news', label: 'News' },
  { to: '/stats', label: 'Stats' },
  {
    label: 'Training',
    children: [
      { to: '/training', label: 'Schedule' },
      { to: '/page/closures', label: 'Field Closures' },
    ],
  },
  { to: '/gallery', label: 'Gallery' },
  {
    label: 'Join',
    children: [
      { to: '/page/membership', label: 'Membership' },
      { to: '/page/gear', label: 'Club Gear' },
      { to: '/register', label: 'Registration' },
      { to: '/contact', label: 'Contact' },
    ],
  },
];

function isGroup(item: NavItem): item is NavGroup {
  return 'children' in item;
}

const leafClass = (active: boolean) =>
  `rounded px-2.5 py-2 text-sm font-medium transition-colors ${
    active ? 'bg-white/10 text-gold' : 'text-white/90 hover:bg-white/10 hover:text-white'
  }`;

export function Header() {
  const { user, roles, signOut } = useAuth();
  const isCoach = roles.includes('coach') || roles.includes('admin');
  const isAdmin = roles.includes('admin');
  const [mobileOpen, setMobileOpen] = useState(false);
  const location = useLocation();

  useEffect(() => { setMobileOpen(false); }, [location.pathname]);

  return (
    <header className="sticky top-0 z-40 bg-navy text-white shadow-md">
      <div className="container-page flex h-16 items-center justify-between gap-4">
        <Link to="/" className="flex items-center gap-3 text-white hover:text-gold">
          <img
            src="/logo.png"
            alt="Warwick FA crest"
            className="h-11 w-11 rounded-full bg-white object-contain p-0.5 shadow"
          />
          <div className="leading-tight">
            <div className="font-display text-lg tracking-wider">Warwick FA</div>
            <div className="text-[10px] uppercase tracking-[0.2em] text-gold">Bermuda Football</div>
          </div>
        </Link>

        <nav className="hidden flex-1 items-center justify-end gap-0.5 lg:flex">
          {nav.map((item) =>
            isGroup(item) ? (
              <div key={item.label} className="group relative">
                <button
                  type="button"
                  className="flex items-center gap-1 rounded px-2.5 py-2 text-sm font-medium text-white/90 hover:bg-white/10 hover:text-white"
                >
                  {item.label}
                  <svg className="h-3 w-3" viewBox="0 0 12 12" fill="none" stroke="currentColor" strokeWidth="2">
                    <path d="M3 5l3 3 3-3" />
                  </svg>
                </button>
                <div className="invisible absolute left-0 top-full z-50 min-w-[12rem] -translate-y-1 rounded-md border border-navy-600 bg-white py-1 opacity-0 shadow-lg transition-all group-hover:visible group-hover:translate-y-0 group-hover:opacity-100">
                  {item.children.map((c) =>
                    c.external ? (
                      <a
                        key={c.to}
                        href={c.to}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="block px-4 py-2 text-sm text-slate-700 hover:bg-navy-50 hover:text-navy"
                      >
                        {c.label}
                      </a>
                    ) : (
                      <NavLink
                        key={c.to}
                        to={c.to}
                        className={({ isActive }) =>
                          `block px-4 py-2 text-sm ${isActive ? 'bg-navy-50 text-navy' : 'text-slate-700 hover:bg-navy-50 hover:text-navy'}`
                        }
                      >
                        {c.label}
                      </NavLink>
                    ),
                  )}
                </div>
              </div>
            ) : (
              <NavLink
                key={item.to}
                to={item.to}
                end={item.end}
                className={({ isActive }) => leafClass(isActive)}
              >
                {item.label}
              </NavLink>
            ),
          )}
          {isCoach && (
            <NavLink
              to="/coach"
              className={({ isActive }) =>
                `ml-1 rounded px-2.5 py-2 text-sm font-medium ${isActive ? 'bg-gold text-navy' : 'bg-gold/90 text-navy hover:bg-gold'}`
              }
            >
              Coach
            </NavLink>
          )}
          {isAdmin && (
            <NavLink
              to="/admin"
              className={({ isActive }) =>
                `rounded px-2.5 py-2 text-sm font-medium ${isActive ? 'bg-white text-navy' : 'bg-white/90 text-navy hover:bg-white'}`
              }
            >
              Admin
            </NavLink>
          )}
        </nav>

        <div className="flex items-center gap-2">
          {user ? (
            <>
              <span className="hidden text-xs text-white/80 sm:inline">{user.email}</span>
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
          <button
            type="button"
            onClick={() => setMobileOpen((v) => !v)}
            aria-label="Open menu"
            className="ml-1 rounded border border-white/30 p-1.5 text-white lg:hidden"
          >
            <svg className="h-5 w-5" viewBox="0 0 20 20" fill="none" stroke="currentColor" strokeWidth="2">
              {mobileOpen ? (
                <path d="M4 4l12 12M16 4L4 16" />
              ) : (
                <path d="M3 5h14M3 10h14M3 15h14" />
              )}
            </svg>
          </button>
        </div>
      </div>

      {mobileOpen && (
        <div className="border-t border-navy-600 bg-navy lg:hidden">
          <div className="container-page space-y-1 py-3">
            {nav.map((item) =>
              isGroup(item) ? (
                <details key={item.label} className="group">
                  <summary className="flex cursor-pointer list-none items-center justify-between rounded px-2 py-2 text-sm font-medium text-white/90 hover:bg-white/10">
                    {item.label}
                    <svg className="h-3 w-3 transition-transform group-open:rotate-180" viewBox="0 0 12 12" fill="none" stroke="currentColor" strokeWidth="2">
                      <path d="M3 5l3 3 3-3" />
                    </svg>
                  </summary>
                  <div className="mt-1 ml-3 space-y-1 border-l border-white/15 pl-3">
                    {item.children.map((c) =>
                      c.external ? (
                        <a
                          key={c.to}
                          href={c.to}
                          target="_blank"
                          rel="noopener noreferrer"
                          className="block rounded px-2 py-1.5 text-sm text-white/80 hover:bg-white/10 hover:text-white"
                        >
                          {c.label}
                        </a>
                      ) : (
                        <NavLink
                          key={c.to}
                          to={c.to}
                          className={({ isActive }) =>
                            `block rounded px-2 py-1.5 text-sm ${isActive ? 'bg-white/10 text-gold' : 'text-white/80 hover:bg-white/10 hover:text-white'}`
                          }
                        >
                          {c.label}
                        </NavLink>
                      ),
                    )}
                  </div>
                </details>
              ) : (
                <NavLink
                  key={item.to}
                  to={item.to}
                  end={item.end}
                  className={({ isActive }) =>
                    `block rounded px-2 py-2 text-sm font-medium ${isActive ? 'bg-white/10 text-gold' : 'text-white/90 hover:bg-white/10'}`
                  }
                >
                  {item.label}
                </NavLink>
              ),
            )}
          </div>
        </div>
      )}
    </header>
  );
}
