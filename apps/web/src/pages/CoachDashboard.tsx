import { useEffect, useMemo, useState } from 'react';
import { Link, useSearchParams } from 'react-router-dom';
import { useAuth } from '@/auth/AuthProvider';
import { getSupabase } from '@/lib/supabase';
import { TEAMS, UPCOMING_FIXTURES } from '@/data/seed';

const QUICK_ACTIONS: { title: string; desc: string; to: string }[] = [
  { title: 'Roster', desc: 'Add or remove players', to: '/admin?section=players' },
  { title: 'Attendance', desc: 'Mark training session', to: '/training' },
  { title: 'Comms', desc: 'Message parents/players', to: '/admin?section=news' },
  { title: 'Photos', desc: 'Upload match-day gallery', to: '/admin?section=gallery' },
];

type EmulatedTeam = { id: string; name: string; slug: string; age_group: string | null };

export function CoachDashboard() {
  const { user, roles } = useAuth();
  const sb = getSupabase();
  const [searchParams] = useSearchParams();
  const asId = searchParams.get('as');
  const isAdmin = roles.includes('admin');
  const emulating = isAdmin && !!asId;

  const [emName, setEmName] = useState<string | null>(null);
  const [emTeams, setEmTeams] = useState<EmulatedTeam[] | null>(null);

  useEffect(() => {
    if (!sb || !emulating || !asId) {
      setEmName(null);
      setEmTeams(null);
      return;
    }
    let cancelled = false;
    (async () => {
      const [{ data: prof }, { data: tc }] = await Promise.all([
        sb.from('profiles').select('display_name').eq('id', asId).maybeSingle(),
        sb
          .from('team_coaches')
          .select('teams:teams(id,name,slug,age_group)')
          .eq('user_id', asId),
      ]);
      if (cancelled) return;
      setEmName((prof as { display_name?: string } | null)?.display_name ?? '(unknown user)');
      const raw = (tc ?? []) as unknown as { teams: EmulatedTeam | EmulatedTeam[] | null }[];
      const list: EmulatedTeam[] = [];
      for (const r of raw) {
        if (!r.teams) continue;
        if (Array.isArray(r.teams)) list.push(...r.teams);
        else list.push(r.teams);
      }
      setEmTeams(list);
    })();
    return () => { cancelled = true; };
  }, [sb, emulating, asId]);

  const teamsToShow = useMemo(() => {
    if (emulating && emTeams) {
      return emTeams.map((t) => ({ slug: t.slug, name: t.name, ageGroup: t.age_group ?? '' }));
    }
    return TEAMS.slice(0, 4).map((t) => ({ slug: t.slug, name: t.name, ageGroup: t.ageGroup }));
  }, [emulating, emTeams]);

  return (
    <div className="container-page py-12">
      {emulating && (
        <div className="mb-4 flex flex-wrap items-center justify-between gap-3 rounded border border-amber-300 bg-amber-50 px-4 py-2 text-sm text-amber-900">
          <div>
            <span className="font-semibold">Viewing as {emName ?? '…'}</span>
            <span className="ml-2 text-xs text-amber-800">
              ({emTeams?.length ?? 0} team{emTeams?.length === 1 ? '' : 's'})
            </span>
          </div>
          <Link to="/coach" className="font-semibold underline">Exit emulation</Link>
        </div>
      )}

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
          {emulating && emTeams && emTeams.length === 0 && (
            <p className="mt-3 text-sm text-slate-500">This coach has no team assignments yet.</p>
          )}
          <ul className="mt-4 divide-y divide-slate-200">
            {teamsToShow.map((t) => (
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
