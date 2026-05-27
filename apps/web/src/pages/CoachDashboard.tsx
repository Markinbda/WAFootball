import { useEffect, useMemo, useState } from 'react';
import { Link, useSearchParams } from 'react-router-dom';
import { useAuth } from '@/auth/AuthProvider';
import { getSupabase } from '@/lib/supabase';
import { TEAMS } from '@/data/seed';

type CoachTeam = { id: string; name: string; slug: string; age_group: string | null };

type WeekEvent = {
  id: string;
  team_id: string;
  kind: 'practice' | 'game';
  title: string;
  starts_at: string;
  opponent: string | null;
  home_away: 'Home' | 'Away' | null;
  location: string | null;
};

export function CoachDashboard() {
  const { user, roles } = useAuth();
  const sb = getSupabase();
  const [searchParams] = useSearchParams();
  const asId = searchParams.get('as');
  const isAdmin = roles.includes('admin');
  const emulating = isAdmin && !!asId;
  const effectiveUserId = emulating ? asId : user?.id ?? null;

  const [emName, setEmName] = useState<string | null>(null);
  const [teams, setTeams] = useState<CoachTeam[] | null>(null);
  const [selectedTeamId, setSelectedTeamId] = useState<string | null>(null);
  const [weekEvents, setWeekEvents] = useState<WeekEvent[]>([]);
  const [loadingWeek, setLoadingWeek] = useState(true);

  // Load the coach's teams (their own, or the emulated user's).
  useEffect(() => {
    if (!sb || !effectiveUserId) {
      setTeams(null);
      return;
    }
    let cancelled = false;
    (async () => {
      const tcRes = await sb
        .from('team_coaches')
        .select('teams:teams(id,name,slug,age_group)')
        .eq('user_id', effectiveUserId);
      let profName: string | null = null;
      if (emulating && asId) {
        const { data } = await sb
          .from('profiles')
          .select('display_name')
          .eq('id', asId)
          .maybeSingle();
        profName = (data as { display_name?: string } | null)?.display_name ?? '(unknown user)';
      }
      if (cancelled) return;
      const raw = (tcRes.data ?? []) as { teams: CoachTeam | CoachTeam[] | null }[];
      const list: CoachTeam[] = [];
      for (const r of raw) {
        if (!r.teams) continue;
        if (Array.isArray(r.teams)) list.push(...r.teams);
        else list.push(r.teams);
      }
      setTeams(list);
      setSelectedTeamId((cur) => cur ?? list[0]?.id ?? null);
      if (emulating) setEmName(profName);
    })();
    return () => { cancelled = true; };
  }, [sb, effectiveUserId, emulating, asId]);

  // Load this week's real team_events for all of the coach's teams.
  useEffect(() => {
    if (!sb || !teams || teams.length === 0) {
      setWeekEvents([]);
      setLoadingWeek(false);
      return;
    }
    let cancelled = false;
    setLoadingWeek(true);
    (async () => {
      const from = new Date().toISOString();
      const to = new Date(Date.now() + 7 * 86_400_000).toISOString();
      const { data } = await sb
        .from('team_events')
        .select('id, team_id, kind, title, starts_at, opponent, home_away, location')
        .in('team_id', teams.map((t) => t.id))
        .gte('starts_at', from)
        .lte('starts_at', to)
        .order('starts_at', { ascending: true });
      if (cancelled) return;
      setWeekEvents((data ?? []) as WeekEvent[]);
      setLoadingWeek(false);
    })();
    return () => { cancelled = true; };
  }, [sb, teams]);

  // Preserve emulation across navigation.
  function withAs(to: string): string {
    if (!asId) return to;
    return to.includes('?') ? `${to}&as=${asId}` : `${to}?as=${asId}`;
  }

  const slugForSeed = (slug: string) => TEAMS.find((t) => t.slug === slug)?.slug ?? slug;

  const selectedTeam = useMemo(
    () => teams?.find((t) => t.id === selectedTeamId) ?? null,
    [teams, selectedTeamId]
  );

  const showFallbackTeams = !emulating && (!teams || teams.length === 0);
  const fallbackTeams: CoachTeam[] = TEAMS.slice(0, 4).map((t) => ({
    id: `seed-${t.slug}`,
    slug: t.slug,
    name: t.name,
    age_group: t.ageGroup,
  }));
  const displayTeams: CoachTeam[] = showFallbackTeams ? fallbackTeams : teams ?? [];

  return (
    <div className="container-page py-12">
      {emulating && (
        <div className="mb-4 flex flex-wrap items-center justify-between gap-3 rounded border border-amber-300 bg-amber-50 px-4 py-2 text-sm text-amber-900">
          <div>
            <span className="font-semibold">Viewing as {emName ?? '…'}</span>
            <span className="ml-2 text-xs text-amber-800">
              ({teams?.length ?? 0} team{teams?.length === 1 ? '' : 's'})
            </span>
          </div>
          <Link to="/coach" className="font-semibold underline">Exit emulation</Link>
        </div>
      )}

      <div>
        <div className="text-xs font-semibold uppercase tracking-widest text-gold">Coach Dashboard</div>
        <h1 className="mt-1 text-4xl">Welcome back</h1>
        <p className="mt-1 text-slate-600">
          Signed in as {user?.email} · {roles.join(', ') || 'no roles'}
        </p>
      </div>

      {/* TEAM PICKER */}
      <section className="card mt-8 p-6">
        <h2 className="text-xl">My Teams</h2>
        <p className="mt-1 text-sm text-slate-600">
          Pick a squad below to see its quick actions.
        </p>

        {!teams && !showFallbackTeams && (
          <p className="mt-4 text-sm text-slate-500">Loading teams…</p>
        )}
        {emulating && teams && teams.length === 0 && (
          <p className="mt-4 text-sm text-slate-500">This coach has no team assignments yet.</p>
        )}

        {displayTeams.length > 0 && (
          <div className="mt-4 grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
            {displayTeams.map((t) => {
              const active = t.id === selectedTeamId;
              return (
                <button
                  key={t.id}
                  type="button"
                  onClick={() => setSelectedTeamId(t.id)}
                  className={`rounded-lg border p-4 text-left transition ${
                    active
                      ? 'border-navy bg-navy text-white shadow-md'
                      : 'border-slate-200 bg-white text-navy hover:border-navy hover:shadow-sm'
                  }`}
                >
                  <div className="font-semibold">{t.name}</div>
                  <div className={`text-xs ${active ? 'text-white/70' : 'text-slate-500'}`}>
                    {t.age_group ?? ''}
                  </div>
                </button>
              );
            })}
          </div>
        )}

        {/* PER-TEAM QUICK ACTIONS */}
        {selectedTeam && (
          <div className="mt-6 rounded-lg border border-slate-200 bg-slate-50 p-5">
            <div className="flex flex-wrap items-baseline justify-between gap-2">
              <h3 className="text-lg font-semibold text-navy">
                {selectedTeam.name}
                <span className="ml-2 text-sm font-normal text-slate-500">— quick actions</span>
              </h3>
              <Link
                to={withAs(`/teams/${slugForSeed(selectedTeam.slug)}`)}
                className="text-xs font-semibold uppercase tracking-wide text-navy hover:text-navy-500"
              >
                View public page →
              </Link>
            </div>
            <div className="mt-4 grid gap-3 sm:grid-cols-2 lg:grid-cols-5">
              <ActionTile
                title="Roster"
                desc="Squad & positions"
                to={withAs(`/teams/${slugForSeed(selectedTeam.slug)}`)}
              />
              <ActionTile
                title="Attendance"
                desc="Mark sessions"
                to={withAs(`/attendance?team=${selectedTeam.id}`)}
              />
              <ActionTile
                title="Schedule"
                desc="Practices & games"
                to={withAs(`/calendar/${slugForSeed(selectedTeam.slug)}`)}
              />
              <ActionTile
                title="Photos"
                desc="Match-day gallery"
                to={withAs('/admin?section=gallery')}
              />
              <ActionTile
                title="Comms"
                desc="Message parents"
                to={withAs('/admin?section=news')}
              />
            </div>
          </div>
        )}
      </section>

      {/* THIS WEEK (across all coach teams) */}
      <section className="card mt-6 p-6">
        <div className="flex items-baseline justify-between">
          <h2 className="text-xl">This Week</h2>
          <span className="text-xs text-slate-500">All your teams · next 7 days</span>
        </div>
        {loadingWeek ? (
          <p className="mt-4 text-sm text-slate-500">Loading…</p>
        ) : weekEvents.length === 0 ? (
          <p className="mt-4 text-sm text-slate-500">
            Nothing scheduled in the next 7 days. Add events from a team's Schedule.
          </p>
        ) : (
          <ul className="mt-4 divide-y divide-slate-200">
            {weekEvents.map((e) => {
              const team = teams?.find((t) => t.id === e.team_id);
              const label =
                e.kind === 'game'
                  ? `${team?.name ?? 'Team'} vs ${e.opponent ?? 'TBD'}${e.home_away ? ` (${e.home_away})` : ''}`
                  : `${team?.name ?? 'Team'} — ${e.title}`;
              return (
                <li key={e.id} className="flex items-center justify-between py-3">
                  <div>
                    <div className="text-xs text-slate-500">
                      {new Date(e.starts_at).toLocaleString('en-GB', {
                        weekday: 'short', day: 'numeric', month: 'short',
                        hour: '2-digit', minute: '2-digit',
                      })}
                    </div>
                    <div className="font-semibold text-navy">{label}</div>
                    {e.location && (
                      <div className="text-xs text-slate-500">{e.location}</div>
                    )}
                  </div>
                  <Link
                    to={withAs(`/attendance/${e.id}`)}
                    className="text-sm font-semibold text-navy hover:text-navy-500"
                  >
                    Attendance →
                  </Link>
                </li>
              );
            })}
          </ul>
        )}
      </section>
    </div>
  );
}

function ActionTile({ title, desc, to }: { title: string; desc: string; to: string }) {
  return (
    <Link
      to={to}
      className="card flex flex-col items-start p-4 text-left hover:border-navy hover:shadow-md"
    >
      <div className="font-display text-lg text-navy">{title}</div>
      <div className="mt-1 text-xs text-slate-600">{desc}</div>
    </Link>
  );
}
