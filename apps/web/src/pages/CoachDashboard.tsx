import { useEffect, useMemo, useState } from 'react';
import { Link, useSearchParams } from 'react-router-dom';
import { useAuth } from '@/auth/AuthProvider';
import { getSupabase } from '@/lib/supabase';
import { TEAMS } from '@/data/seed';
import { SideNav, type SideNavItem } from '@/components/SideNav';
import { usePlayers } from '@/data/phase3';
import { useTrainingSessions, WEEKDAYS, fmtTime } from '@/data/phase6';
import {
  useDrills, useTeamDocuments, useTeamMessages,
  DRILL_CATEGORIES, DOCUMENT_CATEGORIES, MESSAGE_AUDIENCES,
} from '@/data/phase18';

type CoachTeam = { id: string; name: string; slug: string; age_group: string | null };

type TeamEvent = {
  id: string;
  team_id: string;
  kind: 'practice' | 'game';
  title: string;
  starts_at: string;
  ends_at: string | null;
  opponent: string | null;
  home_away: 'Home' | 'Away' | null;
  location: string | null;
};

type CoachSection = 'dashboard' | 'teams' | 'drills' | 'documents' | 'communication';

const SECTIONS: SideNavItem<CoachSection>[] = [
  { key: 'dashboard', label: 'Dashboard' },
  { key: 'teams', label: 'Teams' },
  { key: 'drills', label: 'Drills' },
  { key: 'documents', label: 'Documents' },
  { key: 'communication', label: 'Communication' },
];

const VALID_SECTIONS = SECTIONS.map((s) => s.key);

function fmtDateTime(iso: string): string {
  return new Date(iso).toLocaleString('en-GB', {
    weekday: 'short', day: 'numeric', month: 'short',
    hour: '2-digit', minute: '2-digit',
  });
}

export function CoachDashboard() {
  const { user, roles } = useAuth();
  const sb = getSupabase();
  const [searchParams, setSearchParams] = useSearchParams();
  const asId = searchParams.get('as');
  const isAdmin = roles.includes('admin');
  const emulating = isAdmin && !!asId;
  const effectiveUserId = emulating ? asId : user?.id ?? null;

  const sectionParam = searchParams.get('section') as CoachSection | null;
  const section: CoachSection =
    sectionParam && VALID_SECTIONS.includes(sectionParam) ? sectionParam : 'dashboard';

  const [emName, setEmName] = useState<string | null>(null);
  const [teams, setTeams] = useState<CoachTeam[] | null>(null);
  const [selectedTeamId, setSelectedTeamId] = useState<string | null>(null);
  const [weekEvents, setWeekEvents] = useState<TeamEvent[]>([]);
  const [loadingWeek, setLoadingWeek] = useState(true);

  function setSection(next: CoachSection) {
    const params = new URLSearchParams(searchParams);
    params.set('section', next);
    setSearchParams(params, { replace: true });
  }

  // Load the coach's teams (their own, or the emulated user's).
  useEffect(() => {
    if (!sb || !effectiveUserId) {
      setTeams(null);
      return;
    }
    let cancelled = false;
    (async () => {
      try {
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
        list.sort((a, b) => a.name.localeCompare(b.name));
        setTeams(list);
        setSelectedTeamId((cur) => cur ?? list[0]?.id ?? null);
        if (emulating) setEmName(profName);
      } catch (e) {
        console.error('[CoachDashboard] teams load failed', e);
        if (!cancelled) setTeams([]);
      }
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
      try {
        const from = new Date().toISOString();
        const to = new Date(Date.now() + 7 * 86_400_000).toISOString();
        const { data } = await sb
          .from('team_events')
          .select('id, team_id, kind, title, starts_at, ends_at, opponent, home_away, location')
          .in('team_id', teams.map((t) => t.id))
          .gte('starts_at', from)
          .lte('starts_at', to)
          .order('starts_at', { ascending: true });
        if (cancelled) return;
        setWeekEvents((data ?? []) as TeamEvent[]);
      } catch (e) {
        console.error('[CoachDashboard] week events load failed', e);
        if (!cancelled) setWeekEvents([]);
      } finally {
        if (!cancelled) setLoadingWeek(false);
      }
    })();
    return () => { cancelled = true; };
  }, [sb, teams]);

  // Preserve emulation across navigation.
  function withAs(to: string): string {
    if (!asId) return to;
    return to.includes('?') ? `${to}&as=${asId}` : `${to}?as=${asId}`;
  }

  const showFallbackTeams = !sb;
  const fallbackTeams: CoachTeam[] = TEAMS.slice(0, 4).map((t) => ({
    id: `seed-${t.slug}`,
    slug: t.slug,
    name: t.name,
    age_group: t.ageGroup,
  }));
  const displayTeams: CoachTeam[] = showFallbackTeams ? fallbackTeams : teams ?? [];

  const selectedTeam = useMemo(
    () => displayTeams.find((t) => t.id === selectedTeamId) ?? null,
    [displayTeams, selectedTeamId],
  );

  return (
    <div className="w-full lg:grid lg:grid-cols-[240px_minmax(0,1fr)]">
      <SideNav
        title="Coach Portal"
        subtitle={emulating ? `Viewing as ${emName ?? '…'}` : user?.email ?? null}
        items={SECTIONS}
        active={section}
        onSelect={setSection}
        footer={
          <div className="flex flex-col gap-1">
            <Link to="/my-calendar" className="px-3 py-2 text-sm font-semibold text-slate-600 hover:text-navy">
              My Calendar
            </Link>
            {isAdmin && (
              <Link to="/admin" className="px-3 py-2 text-sm font-semibold text-slate-600 hover:text-navy">
                Admin Console
              </Link>
            )}
          </div>
        }
      />

      <div className="min-w-0 px-4 py-8 sm:px-6">
        {emulating && (
          <div className="mb-6 flex flex-wrap items-center justify-between gap-3 rounded border border-amber-300 bg-amber-50 px-4 py-2 text-sm text-amber-900">
            <div>
              <span className="font-semibold">Viewing as {emName ?? '…'}</span>
              <span className="ml-2 text-xs text-amber-800">
                ({teams?.length ?? 0} team{teams?.length === 1 ? '' : 's'})
              </span>
            </div>
            <Link to="/coach" className="font-semibold underline">Exit emulation</Link>
          </div>
        )}

        {section === 'dashboard' && (
          <CoachOverview
            teams={displayTeams}
            teamsLoading={!teams && !showFallbackTeams}
            weekEvents={weekEvents}
            loadingWeek={loadingWeek}
            userEmail={user?.email ?? null}
            roles={roles}
            onNavigate={setSection}
            onPickTeam={(id) => { setSelectedTeamId(id); setSection('teams'); }}
            withAs={withAs}
          />
        )}

        {section === 'teams' && (
          <TeamsSection
            teams={displayTeams}
            teamsLoading={!teams && !showFallbackTeams}
            selectedTeam={selectedTeam}
            onSelect={setSelectedTeamId}
            withAs={withAs}
          />
        )}

        {section === 'drills' && (
          <DrillsSection teams={displayTeams} teamId={selectedTeamId} onTeamChange={setSelectedTeamId} />
        )}

        {section === 'documents' && (
          <DocumentsSection teams={displayTeams} teamId={selectedTeamId} onTeamChange={setSelectedTeamId} />
        )}

        {section === 'communication' && (
          <CommunicationSection teams={displayTeams} teamId={selectedTeamId} onTeamChange={setSelectedTeamId} />
        )}
      </div>
    </div>
  );
}

// ---------------------------------------------------------------------------
// Dashboard
// ---------------------------------------------------------------------------

function CoachOverview({
  teams, teamsLoading, weekEvents, loadingWeek, userEmail, roles, onNavigate, onPickTeam, withAs,
}: {
  teams: CoachTeam[];
  teamsLoading: boolean;
  weekEvents: TeamEvent[];
  loadingWeek: boolean;
  userEmail: string | null;
  roles: string[];
  onNavigate: (s: CoachSection) => void;
  onPickTeam: (teamId: string) => void;
  withAs: (to: string) => string;
}) {
  const games = weekEvents.filter((e) => e.kind === 'game').length;
  const practices = weekEvents.filter((e) => e.kind === 'practice').length;

  return (
    <section>
      <div className="text-xs font-semibold uppercase tracking-widest text-gold">Coach Dashboard</div>
      <h1 className="mt-1 text-4xl">Welcome back</h1>
      <p className="mt-1 text-slate-600">
        Signed in as {userEmail} · {roles.join(', ') || 'no roles'}
      </p>

      <div className="mt-6 grid gap-4 sm:grid-cols-2 xl:grid-cols-4">
        <MiniStat label="My Teams" value={teamsLoading ? '…' : teams.length} onClick={() => onNavigate('teams')} />
        <MiniStat label="Games This Week" value={loadingWeek ? '…' : games} />
        <MiniStat label="Practices This Week" value={loadingWeek ? '…' : practices} />
        <MiniStat label="Drill Library" value="Browse" onClick={() => onNavigate('drills')} />
      </div>

      <section className="card mt-6 p-6">
        <h2 className="text-xl">My Teams</h2>
        <p className="mt-1 text-sm text-slate-600">Pick a squad to drill into its players and schedule.</p>
        {teamsLoading ? (
          <p className="mt-4 text-sm text-slate-500">Loading teams…</p>
        ) : teams.length === 0 ? (
          <p className="mt-4 text-sm text-slate-500">No team assignments yet.</p>
        ) : (
          <div className="mt-4 grid gap-3 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
            {teams.map((t) => (
              <button
                key={t.id}
                type="button"
                onClick={() => onPickTeam(t.id)}
                className="rounded-lg border border-slate-200 bg-white p-4 text-left text-navy transition hover:border-navy hover:shadow-sm"
              >
                <div className="font-semibold">{t.name}</div>
                <div className="text-xs text-slate-500">{t.age_group ?? ''}</div>
              </button>
            ))}
          </div>
        )}
      </section>

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
              const team = teams.find((t) => t.id === e.team_id);
              const label =
                e.kind === 'game'
                  ? `${team?.name ?? 'Team'} vs ${e.opponent ?? 'TBD'}${e.home_away ? ` (${e.home_away})` : ''}`
                  : `${team?.name ?? 'Team'} — ${e.title}`;
              return (
                <li key={e.id} className="flex items-center justify-between gap-4 py-3">
                  <div>
                    <div className="text-xs text-slate-500">{fmtDateTime(e.starts_at)}</div>
                    <div className="font-semibold text-navy">{label}</div>
                    {e.location && <div className="text-xs text-slate-500">{e.location}</div>}
                  </div>
                  <Link
                    to={withAs(`/attendance/${e.id}`)}
                    className="shrink-0 text-sm font-semibold text-navy hover:text-navy-500"
                  >
                    Attendance →
                  </Link>
                </li>
              );
            })}
          </ul>
        )}
      </section>
    </section>
  );
}

function MiniStat({
  label, value, onClick,
}: { label: string; value: number | string; onClick?: () => void }) {
  const inner = (
    <>
      <p className="text-sm font-semibold text-slate-700">{label}</p>
      <p className="mt-1 font-display text-3xl leading-none text-navy">{value}</p>
    </>
  );
  const className = 'card border-l-4 border-l-navy p-4 text-left';
  return onClick ? (
    <button type="button" onClick={onClick} className={`${className} transition hover:shadow-md`}>{inner}</button>
  ) : (
    <div className={className}>{inner}</div>
  );
}

// ---------------------------------------------------------------------------
// Teams + drill-down
// ---------------------------------------------------------------------------

type TeamPane = 'players' | 'schedule' | 'info';

function TeamsSection({
  teams, teamsLoading, selectedTeam, onSelect, withAs,
}: {
  teams: CoachTeam[];
  teamsLoading: boolean;
  selectedTeam: CoachTeam | null;
  onSelect: (id: string) => void;
  withAs: (to: string) => string;
}) {
  const [pane, setPane] = useState<TeamPane>('players');

  if (teamsLoading) return <p className="text-sm text-slate-500">Loading teams…</p>;
  if (teams.length === 0) {
    return (
      <div>
        <h1 className="text-4xl">Teams</h1>
        <p className="mt-2 text-sm text-slate-500">No team assignments yet.</p>
      </div>
    );
  }

  return (
    <section>
      <h1 className="text-4xl">Teams</h1>

      <div className="mt-4 flex flex-wrap gap-2">
        {teams.map((t) => {
          const active = t.id === selectedTeam?.id;
          return (
            <button
              key={t.id}
              type="button"
              onClick={() => onSelect(t.id)}
              className={`rounded-full border px-3 py-1.5 text-sm font-semibold transition ${
                active
                  ? 'border-navy bg-navy text-white'
                  : 'border-slate-200 bg-white text-navy hover:border-navy'
              }`}
            >
              {t.name}
            </button>
          );
        })}
      </div>

      {selectedTeam && (
        <div className="mt-6">
          <div className="flex flex-wrap items-baseline justify-between gap-3">
            <div>
              <h2 className="font-display text-2xl uppercase text-navy">{selectedTeam.name}</h2>
              <p className="text-sm text-slate-500">{selectedTeam.age_group ?? '—'}</p>
            </div>
            <div className="flex flex-wrap gap-3 text-xs font-semibold uppercase tracking-wide">
              <Link to={withAs(`/teams/${selectedTeam.slug}`)} className="text-navy hover:text-navy-500">
                Public page →
              </Link>
              <Link to={withAs(`/attendance?team=${selectedTeam.id}`)} className="text-navy hover:text-navy-500">
                Attendance →
              </Link>
              <Link to={withAs(`/calendar/${selectedTeam.slug}`)} className="text-navy hover:text-navy-500">
                Full calendar →
              </Link>
            </div>
          </div>

          <div className="mt-4 flex gap-2 border-b border-slate-200">
            {(['players', 'schedule', 'info'] as TeamPane[]).map((p) => (
              <button
                key={p}
                type="button"
                onClick={() => setPane(p)}
                className={`px-4 py-2 text-sm font-semibold capitalize ${
                  pane === p ? 'border-b-2 border-navy text-navy' : 'text-slate-500 hover:text-navy'
                }`}
              >
                {p}
              </button>
            ))}
          </div>

          <div className="mt-6">
            {pane === 'players' && <TeamPlayers teamId={selectedTeam.id} />}
            {pane === 'schedule' && <TeamSchedule team={selectedTeam} withAs={withAs} />}
            {pane === 'info' && <TeamInfo team={selectedTeam} />}
          </div>
        </div>
      )}
    </section>
  );
}

function TeamPlayers({ teamId }: { teamId: string }) {
  const { players, loading } = usePlayers(teamId);

  if (loading) return <p className="text-sm text-slate-500">Loading squad…</p>;
  if (players.length === 0) return <p className="text-sm text-slate-500">No players in this squad yet.</p>;

  return (
    <div className="card overflow-x-auto">
      <table className="min-w-full text-sm">
        <thead className="border-b border-slate-200 bg-slate-50 text-left text-xs uppercase tracking-wide text-slate-500">
          <tr>
            <th className="px-4 py-3">#</th>
            <th className="px-4 py-3">Name</th>
            <th className="px-4 py-3">Position</th>
            <th className="px-4 py-3">Status</th>
          </tr>
        </thead>
        <tbody className="divide-y divide-slate-100">
          {players.map((p) => (
            <tr key={p.id} className="hover:bg-slate-50">
              <td className="px-4 py-2 text-slate-500">{p.squad_number ?? '—'}</td>
              <td className="px-4 py-2 font-semibold text-navy">
                <Link to={`/players/${p.id}`} className="hover:underline">{p.full_name}</Link>
              </td>
              <td className="px-4 py-2 text-slate-600">{p.position ?? '—'}</td>
              <td className="px-4 py-2">
                <span
                  className={`rounded px-2 py-0.5 text-xs font-semibold uppercase ${
                    p.active ? 'bg-pitch/10 text-pitch' : 'bg-slate-200 text-slate-600'
                  }`}
                >
                  {p.active ? 'Active' : 'Inactive'}
                </span>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
      <p className="border-t border-slate-100 px-4 py-2 text-xs text-slate-500">
        {players.length} player{players.length === 1 ? '' : 's'}
      </p>
    </div>
  );
}

function TeamSchedule({ team, withAs }: { team: CoachTeam; withAs: (to: string) => string }) {
  const sb = getSupabase();
  const [events, setEvents] = useState<TeamEvent[] | null>(null);
  const { sessions, loading: sessionsLoading } = useTrainingSessions(team.id);

  useEffect(() => {
    if (!sb) { setEvents([]); return; }
    let cancelled = false;
    (async () => {
      try {
        const { data } = await sb
          .from('team_events')
          .select('id, team_id, kind, title, starts_at, ends_at, opponent, home_away, location')
          .eq('team_id', team.id)
          .gte('starts_at', new Date().toISOString())
          .order('starts_at', { ascending: true })
          .limit(50);
        if (!cancelled) setEvents((data ?? []) as TeamEvent[]);
      } catch (e) {
        console.error('[TeamSchedule] load failed', e);
        if (!cancelled) setEvents([]);
      }
    })();
    return () => { cancelled = true; };
  }, [sb, team.id]);

  return (
    <div className="grid gap-6 lg:grid-cols-2">
      <div className="card p-5">
        <h3 className="text-lg font-semibold text-navy">Upcoming events</h3>
        {events === null ? (
          <p className="mt-3 text-sm text-slate-500">Loading…</p>
        ) : events.length === 0 ? (
          <p className="mt-3 text-sm text-slate-500">Nothing scheduled. Add events from the Admin console.</p>
        ) : (
          <ul className="mt-3 divide-y divide-slate-100">
            {events.map((e) => (
              <li key={e.id} className="flex items-center justify-between gap-4 py-3">
                <div>
                  <div className="text-xs text-slate-500">{fmtDateTime(e.starts_at)}</div>
                  <div className="font-semibold text-navy">
                    {e.kind === 'game'
                      ? `vs ${e.opponent ?? 'TBD'}${e.home_away ? ` (${e.home_away})` : ''}`
                      : e.title}
                  </div>
                  {e.location && <div className="text-xs text-slate-500">{e.location}</div>}
                </div>
                <Link
                  to={withAs(`/attendance/${e.id}`)}
                  className="shrink-0 text-sm font-semibold text-navy hover:text-navy-500"
                >
                  Attendance →
                </Link>
              </li>
            ))}
          </ul>
        )}
      </div>

      <div className="card p-5">
        <h3 className="text-lg font-semibold text-navy">Weekly training</h3>
        {sessionsLoading ? (
          <p className="mt-3 text-sm text-slate-500">Loading…</p>
        ) : sessions.length === 0 ? (
          <p className="mt-3 text-sm text-slate-500">No recurring sessions set for this team.</p>
        ) : (
          <ul className="mt-3 divide-y divide-slate-100">
            {sessions.map((s) => (
              <li key={s.id} className="py-3">
                <div className="font-semibold text-navy">
                  {WEEKDAYS[s.weekday]} · {fmtTime(s.starts_at)}
                  {s.ends_at ? `–${fmtTime(s.ends_at)}` : ''}
                </div>
                {s.location && <div className="text-xs text-slate-500">{s.location}</div>}
                {s.notes && <div className="mt-1 text-xs text-slate-600">{s.notes}</div>}
              </li>
            ))}
          </ul>
        )}
      </div>
    </div>
  );
}

function TeamInfo({ team }: { team: CoachTeam }) {
  const { players } = usePlayers(team.id);
  const active = players.filter((p) => p.active).length;

  return (
    <div className="card max-w-xl p-5">
      <dl className="divide-y divide-slate-100 text-sm">
        <InfoRow label="Team" value={team.name} />
        <InfoRow label="Age group" value={team.age_group ?? '—'} />
        <InfoRow label="Slug" value={team.slug} />
        <InfoRow label="Squad size" value={`${players.length} (${active} active)`} />
      </dl>
    </div>
  );
}

function InfoRow({ label, value }: { label: string; value: string }) {
  return (
    <div className="flex justify-between gap-4 py-2">
      <dt className="text-slate-500">{label}</dt>
      <dd className="font-semibold text-navy">{value}</dd>
    </div>
  );
}

// ---------------------------------------------------------------------------
// Shared team filter for the library sections
// ---------------------------------------------------------------------------

function TeamFilter({
  teams, teamId, onChange, allLabel,
}: {
  teams: CoachTeam[];
  teamId: string | null;
  onChange: (id: string | null) => void;
  allLabel: string;
}) {
  return (
    <label className="block max-w-xs">
      <span className="block text-sm font-semibold text-slate-700">Team</span>
      <select
        className="input mt-1"
        value={teamId ?? ''}
        onChange={(e) => onChange(e.target.value || null)}
      >
        <option value="">{allLabel}</option>
        {teams.map((t) => (
          <option key={t.id} value={t.id}>{t.name}</option>
        ))}
      </select>
    </label>
  );
}

// ---------------------------------------------------------------------------
// Drills
// ---------------------------------------------------------------------------

function DrillsSection({
  teams, teamId, onTeamChange,
}: { teams: CoachTeam[]; teamId: string | null; onTeamChange: (id: string | null) => void }) {
  const sb = getSupabase();
  const { user } = useAuth();
  const { drills, loading, error, reload } = useDrills(teamId);
  const [category, setCategory] = useState<string>('');
  const [search, setSearch] = useState('');
  const [showForm, setShowForm] = useState(false);
  const [busy, setBusy] = useState(false);
  const [status, setStatus] = useState<string | null>(null);

  const [form, setForm] = useState({
    title: '', category: 'General', duration_min: '', equipment: '',
    description: '', coaching_points: '', video_url: '',
  });

  const filtered = useMemo(() => {
    const q = search.trim().toLowerCase();
    return drills.filter((d) => {
      if (category && d.category !== category) return false;
      if (!q) return true;
      return `${d.title} ${d.description ?? ''} ${d.equipment ?? ''}`.toLowerCase().includes(q);
    });
  }, [drills, category, search]);

  async function submit(e: React.FormEvent) {
    e.preventDefault();
    if (!sb) return;
    setBusy(true);
    setStatus(null);
    try {
      const { error } = await sb.from('drills').insert({
        team_id: teamId,
        title: form.title,
        category: form.category,
        duration_min: form.duration_min ? Number(form.duration_min) : null,
        equipment: form.equipment || null,
        description: form.description || null,
        coaching_points: form.coaching_points || null,
        video_url: form.video_url || null,
        created_by: user?.id ?? null,
      });
      if (error) throw error;
      setForm({ title: '', category: 'General', duration_min: '', equipment: '', description: '', coaching_points: '', video_url: '' });
      setShowForm(false);
      await reload();
    } catch (err) {
      setStatus(err instanceof Error ? err.message : 'Could not save drill');
    } finally {
      setBusy(false);
    }
  }

  return (
    <section>
      <div className="flex flex-wrap items-end justify-between gap-3">
        <div>
          <h1 className="text-4xl">Drills</h1>
          <p className="mt-1 text-slate-600">Club drill library — filter by team, category or keyword.</p>
        </div>
        <button type="button" className="btn btn-primary" onClick={() => setShowForm((v) => !v)}>
          {showForm ? 'Cancel' : 'New drill'}
        </button>
      </div>

      {showForm && (
        <form onSubmit={submit} className="card mt-6 grid gap-4 p-5 md:grid-cols-2">
          <label className="md:col-span-2">
            <span className="block text-sm font-semibold text-slate-700">Title</span>
            <input className="input mt-1" required value={form.title}
              onChange={(e) => setForm({ ...form, title: e.target.value })} />
          </label>
          <label>
            <span className="block text-sm font-semibold text-slate-700">Category</span>
            <select className="input mt-1" value={form.category}
              onChange={(e) => setForm({ ...form, category: e.target.value })}>
              {DRILL_CATEGORIES.map((c) => <option key={c}>{c}</option>)}
            </select>
          </label>
          <label>
            <span className="block text-sm font-semibold text-slate-700">Duration (min)</span>
            <input className="input mt-1" type="number" min={1} max={240} value={form.duration_min}
              onChange={(e) => setForm({ ...form, duration_min: e.target.value })} />
          </label>
          <label className="md:col-span-2">
            <span className="block text-sm font-semibold text-slate-700">Equipment</span>
            <input className="input mt-1" value={form.equipment}
              onChange={(e) => setForm({ ...form, equipment: e.target.value })} />
          </label>
          <label className="md:col-span-2">
            <span className="block text-sm font-semibold text-slate-700">Description</span>
            <textarea className="input mt-1" rows={3} value={form.description}
              onChange={(e) => setForm({ ...form, description: e.target.value })} />
          </label>
          <label className="md:col-span-2">
            <span className="block text-sm font-semibold text-slate-700">Coaching points</span>
            <textarea className="input mt-1" rows={2} value={form.coaching_points}
              onChange={(e) => setForm({ ...form, coaching_points: e.target.value })} />
          </label>
          <label className="md:col-span-2">
            <span className="block text-sm font-semibold text-slate-700">Video URL</span>
            <input className="input mt-1" type="url" value={form.video_url}
              onChange={(e) => setForm({ ...form, video_url: e.target.value })} />
          </label>
          <div className="md:col-span-2">
            <button className="btn btn-primary" disabled={busy}>{busy ? 'Saving…' : 'Save drill'}</button>
            {status && <span className="ml-3 text-sm text-red-600">{status}</span>}
          </div>
        </form>
      )}

      <div className="mt-6 flex flex-wrap items-end gap-4">
        <TeamFilter teams={teams} teamId={teamId} onChange={onTeamChange} allLabel="Club-wide only" />
        <label className="block max-w-xs">
          <span className="block text-sm font-semibold text-slate-700">Category</span>
          <select className="input mt-1" value={category} onChange={(e) => setCategory(e.target.value)}>
            <option value="">All categories</option>
            {DRILL_CATEGORIES.map((c) => <option key={c}>{c}</option>)}
          </select>
        </label>
        <label className="block max-w-sm flex-1">
          <span className="block text-sm font-semibold text-slate-700">Search</span>
          <input className="input mt-1" placeholder="Title, description, equipment…"
            value={search} onChange={(e) => setSearch(e.target.value)} />
        </label>
      </div>

      {error && <p className="mt-4 text-sm text-red-600">{error}</p>}

      {loading ? (
        <p className="mt-6 text-sm text-slate-500">Loading drills…</p>
      ) : filtered.length === 0 ? (
        <p className="mt-6 text-sm text-slate-500">No drills yet. Add one to start the library.</p>
      ) : (
        <div className="mt-6 grid gap-4 md:grid-cols-2 xl:grid-cols-3">
          {filtered.map((d) => (
            <article key={d.id} className="card p-4">
              <div className="flex items-start justify-between gap-3">
                <h3 className="font-semibold text-navy">{d.title}</h3>
                <span className="shrink-0 rounded bg-navy-50 px-2 py-0.5 text-xs font-semibold text-navy">
                  {d.category}
                </span>
              </div>
              <p className="mt-1 text-xs text-slate-500">
                {d.duration_min ? `${d.duration_min} min` : 'No duration'}
                {d.team_id ? '' : ' · Club-wide'}
              </p>
              {d.description && <p className="mt-2 text-sm text-slate-600">{d.description}</p>}
              {d.coaching_points && (
                <p className="mt-2 text-xs text-slate-500"><span className="font-semibold">Key points: </span>{d.coaching_points}</p>
              )}
              {d.equipment && (
                <p className="mt-1 text-xs text-slate-500"><span className="font-semibold">Kit: </span>{d.equipment}</p>
              )}
              {d.video_url && (
                <a href={d.video_url} target="_blank" rel="noreferrer"
                  className="mt-3 inline-block text-xs font-semibold uppercase tracking-wide text-navy hover:text-navy-500">
                  Watch video →
                </a>
              )}
            </article>
          ))}
        </div>
      )}
    </section>
  );
}

// ---------------------------------------------------------------------------
// Documents
// ---------------------------------------------------------------------------

function DocumentsSection({
  teams, teamId, onTeamChange,
}: { teams: CoachTeam[]; teamId: string | null; onTeamChange: (id: string | null) => void }) {
  const sb = getSupabase();
  const { user } = useAuth();
  const { documents, loading, error, reload } = useTeamDocuments(teamId);
  const [title, setTitle] = useState('');
  const [category, setCategory] = useState('General');
  const [linkUrl, setLinkUrl] = useState('');
  const [file, setFile] = useState<File | null>(null);
  const [visible, setVisible] = useState(false);
  const [busy, setBusy] = useState(false);
  const [status, setStatus] = useState<string | null>(null);

  async function submit(e: React.FormEvent) {
    e.preventDefault();
    if (!sb) return;
    if (!file && !linkUrl) {
      setStatus('Attach a file or paste a link.');
      return;
    }
    setBusy(true);
    setStatus(null);
    try {
      let url = linkUrl;
      let fileName: string | null = null;
      let fileSize: number | null = null;
      if (file) {
        const path = `${teamId ?? 'club'}/${Date.now()}-${file.name.replace(/[^\w.\-]+/g, '_')}`;
        const { error: upErr } = await sb.storage.from('team-documents').upload(path, file);
        if (upErr) throw upErr;
        const signed = await sb.storage.from('team-documents').createSignedUrl(path, 60 * 60 * 24 * 365);
        url = signed.data?.signedUrl ?? path;
        fileName = file.name;
        fileSize = file.size;
      }
      const { error: insErr } = await sb.from('team_documents').insert({
        team_id: teamId,
        title,
        category,
        url,
        file_name: fileName,
        file_size: fileSize,
        visible_to_guardians: visible,
        created_by: user?.id ?? null,
      });
      if (insErr) throw insErr;
      setTitle(''); setLinkUrl(''); setFile(null); setVisible(false);
      setStatus('Saved.');
      await reload();
    } catch (err) {
      setStatus(err instanceof Error ? err.message : 'Could not save document');
    } finally {
      setBusy(false);
    }
  }

  return (
    <section>
      <h1 className="text-4xl">Documents</h1>
      <p className="mt-1 text-slate-600">Share policies, consent forms and plans with your squad.</p>

      <div className="mt-6 max-w-xs">
        <TeamFilter teams={teams} teamId={teamId} onChange={onTeamChange} allLabel="Club-wide only" />
      </div>

      <form onSubmit={submit} className="card mt-6 grid gap-4 p-5 md:grid-cols-2">
        <label>
          <span className="block text-sm font-semibold text-slate-700">Title</span>
          <input className="input mt-1" required value={title} onChange={(e) => setTitle(e.target.value)} />
        </label>
        <label>
          <span className="block text-sm font-semibold text-slate-700">Category</span>
          <select className="input mt-1" value={category} onChange={(e) => setCategory(e.target.value)}>
            {DOCUMENT_CATEGORIES.map((c) => <option key={c}>{c}</option>)}
          </select>
        </label>
        <label>
          <span className="block text-sm font-semibold text-slate-700">File</span>
          <input className="input mt-1" type="file" onChange={(e) => setFile(e.target.files?.[0] ?? null)} />
        </label>
        <label>
          <span className="block text-sm font-semibold text-slate-700">…or link URL</span>
          <input className="input mt-1" type="url" value={linkUrl} onChange={(e) => setLinkUrl(e.target.value)} />
        </label>
        <label className="flex items-center gap-2 md:col-span-2">
          <input type="checkbox" checked={visible} onChange={(e) => setVisible(e.target.checked)} />
          <span className="text-sm text-slate-700">Visible to parents/guardians</span>
        </label>
        <div className="md:col-span-2">
          <button className="btn btn-primary" disabled={busy}>{busy ? 'Saving…' : 'Add document'}</button>
          {status && <span className="ml-3 text-sm text-slate-600">{status}</span>}
        </div>
      </form>

      {error && <p className="mt-4 text-sm text-red-600">{error}</p>}

      {loading ? (
        <p className="mt-6 text-sm text-slate-500">Loading documents…</p>
      ) : documents.length === 0 ? (
        <p className="mt-6 text-sm text-slate-500">No documents yet.</p>
      ) : (
        <div className="card mt-6 overflow-x-auto">
          <table className="min-w-full text-sm">
            <thead className="border-b border-slate-200 bg-slate-50 text-left text-xs uppercase tracking-wide text-slate-500">
              <tr>
                <th className="px-4 py-3">Title</th>
                <th className="px-4 py-3">Category</th>
                <th className="px-4 py-3">Scope</th>
                <th className="px-4 py-3">Parents</th>
                <th className="px-4 py-3">Added</th>
                <th className="px-4 py-3" />
              </tr>
            </thead>
            <tbody className="divide-y divide-slate-100">
              {documents.map((d) => (
                <tr key={d.id} className="hover:bg-slate-50">
                  <td className="px-4 py-2 font-semibold text-navy">{d.title}</td>
                  <td className="px-4 py-2 text-slate-600">{d.category}</td>
                  <td className="px-4 py-2 text-slate-600">{d.team_id ? 'Team' : 'Club-wide'}</td>
                  <td className="px-4 py-2 text-slate-600">{d.visible_to_guardians ? 'Yes' : 'No'}</td>
                  <td className="px-4 py-2 text-slate-500">
                    {new Date(d.created_at).toLocaleDateString('en-GB')}
                  </td>
                  <td className="px-4 py-2">
                    <a href={d.url} target="_blank" rel="noreferrer"
                      className="text-xs font-semibold uppercase tracking-wide text-navy hover:text-navy-500">
                      Open →
                    </a>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      )}
    </section>
  );
}

// ---------------------------------------------------------------------------
// Communication
// ---------------------------------------------------------------------------

function CommunicationSection({
  teams, teamId, onTeamChange,
}: { teams: CoachTeam[]; teamId: string | null; onTeamChange: (id: string | null) => void }) {
  const sb = getSupabase();
  const { user } = useAuth();
  const { messages, loading, error, reload } = useTeamMessages(teamId);
  const [subject, setSubject] = useState('');
  const [body, setBody] = useState('');
  const [audience, setAudience] = useState<(typeof MESSAGE_AUDIENCES)[number]>('guardians');
  const [busy, setBusy] = useState(false);
  const [status, setStatus] = useState<string | null>(null);

  async function send(asDraft: boolean) {
    if (!sb) return;
    setBusy(true);
    setStatus(null);
    try {
      const { error } = await sb.from('team_messages').insert({
        team_id: teamId,
        subject,
        body,
        audience,
        status: asDraft ? 'draft' : 'pending',
        created_by: user?.id ?? null,
      });
      if (error) throw error;
      setSubject(''); setBody('');
      setStatus(asDraft ? 'Draft saved.' : 'Queued for delivery.');
      await reload();
    } catch (err) {
      setStatus(err instanceof Error ? err.message : 'Could not save message');
    } finally {
      setBusy(false);
    }
  }

  return (
    <section>
      <h1 className="text-4xl">Communication</h1>
      <p className="mt-1 text-slate-600">Send announcements to your squad and track what's gone out.</p>

      <div className="mt-6 max-w-xs">
        <TeamFilter teams={teams} teamId={teamId} onChange={onTeamChange} allLabel="Whole club" />
      </div>

      <form
        onSubmit={(e) => { e.preventDefault(); void send(false); }}
        className="card mt-6 grid gap-4 p-5"
      >
        <label>
          <span className="block text-sm font-semibold text-slate-700">Audience</span>
          <select className="input mt-1" value={audience}
            onChange={(e) => setAudience(e.target.value as typeof audience)}>
            {MESSAGE_AUDIENCES.map((a) => (
              <option key={a} value={a}>{a[0].toUpperCase() + a.slice(1)}</option>
            ))}
          </select>
        </label>
        <label>
          <span className="block text-sm font-semibold text-slate-700">Subject</span>
          <input className="input mt-1" required value={subject} onChange={(e) => setSubject(e.target.value)} />
        </label>
        <label>
          <span className="block text-sm font-semibold text-slate-700">Message</span>
          <textarea className="input mt-1" rows={6} required value={body} onChange={(e) => setBody(e.target.value)} />
        </label>
        <div className="flex flex-wrap items-center gap-3">
          <button className="btn btn-primary" disabled={busy}>{busy ? 'Working…' : 'Queue for sending'}</button>
          <button type="button" className="btn btn-ghost" disabled={busy || !subject || !body}
            onClick={() => void send(true)}>
            Save as draft
          </button>
          {status && <span className="text-sm text-slate-600">{status}</span>}
        </div>
      </form>

      {error && <p className="mt-4 text-sm text-red-600">{error}</p>}

      <h2 className="mt-8 text-xl">Sent &amp; queued</h2>
      {loading ? (
        <p className="mt-3 text-sm text-slate-500">Loading…</p>
      ) : messages.length === 0 ? (
        <p className="mt-3 text-sm text-slate-500">Nothing sent yet.</p>
      ) : (
        <ul className="mt-3 divide-y divide-slate-200">
          {messages.map((m) => (
            <li key={m.id} className="py-3">
              <div className="flex flex-wrap items-center gap-2">
                <span className="font-semibold text-navy">{m.subject}</span>
                <span className={`rounded px-2 py-0.5 text-xs font-semibold uppercase ${
                  m.status === 'sent' ? 'bg-pitch/10 text-pitch'
                    : m.status === 'failed' ? 'bg-red-100 text-red-700'
                    : 'bg-amber-100 text-amber-800'
                }`}>
                  {m.status}
                </span>
                <span className="text-xs text-slate-500">
                  {m.audience} · {new Date(m.created_at).toLocaleString('en-GB')}
                </span>
              </div>
              <p className="mt-1 whitespace-pre-wrap text-sm text-slate-600">{m.body}</p>
              {m.error && <p className="mt-1 text-xs text-red-600">{m.error}</p>}
            </li>
          ))}
        </ul>
      )}
    </section>
  );
}
