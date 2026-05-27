import { useEffect, useMemo, useState } from 'react';
import { Link, useParams, useSearchParams } from 'react-router-dom';
import { useAuth } from '@/auth/AuthProvider';
import { getSupabase } from '@/lib/supabase';

// ---------------------------------------------------------------------------
// Effective user: when an admin is emulating a coach via ?as=<id>, scope to
// that coach. Non-admins always operate as themselves.
// ---------------------------------------------------------------------------
function useEffectiveUserId(): { id: string | null; emulating: boolean } {
  const { user, roles } = useAuth();
  const [sp] = useSearchParams();
  const asId = sp.get('as');
  const isAdmin = roles.includes('admin');
  if (isAdmin && asId) return { id: asId, emulating: true };
  return { id: user?.id ?? null, emulating: false };
}

type TeamRow = { id: string; name: string; slug: string };
type EventRow = {
  id: string;
  team_id: string;
  team_name?: string;
  kind: 'practice' | 'game';
  title: string;
  starts_at: string;
  opponent: string | null;
  location: string | null;
};

// ===========================================================================
// /attendance — list of upcoming + recent events for coach's teams
// ===========================================================================
export function Attendance() {
  const sb = getSupabase();
  const { roles } = useAuth();
  const { id: effectiveId, emulating } = useEffectiveUserId();
  const [sp] = useSearchParams();
  const asSuffix = sp.get('as') ? `?as=${sp.get('as')}` : '';

  const isAdmin = roles.includes('admin');
  const [teams, setTeams] = useState<TeamRow[]>([]);
  const [events, setEvents] = useState<EventRow[]>([]);
  const [loading, setLoading] = useState(true);
  const [coachName, setCoachName] = useState<string | null>(null);

  useEffect(() => {
    if (!sb || !effectiveId) { setLoading(false); return; }
    let active = true;
    (async () => {
      setLoading(true);

      // Coach's teams via team_coaches → teams
      const { data: tc } = await sb
        .from('team_coaches')
        .select('teams:teams(id,name,slug)')
        .eq('user_id', effectiveId);
      const flat: TeamRow[] = [];
      for (const row of (tc ?? []) as { teams: TeamRow | TeamRow[] | null }[]) {
        if (!row.teams) continue;
        if (Array.isArray(row.teams)) flat.push(...row.teams);
        else flat.push(row.teams);
      }
      if (!active) return;
      setTeams(flat);

      if (flat.length === 0) {
        setEvents([]);
        setLoading(false);
        return;
      }

      // Events for those teams in the past 90 days → next 180 days.
      const from = new Date(Date.now() - 90 * 86_400_000).toISOString();
      const to   = new Date(Date.now() + 180 * 86_400_000).toISOString();
      const { data: ev } = await sb
        .from('team_events')
        .select('id, team_id, kind, title, starts_at, opponent, location, teams(name)')
        .in('team_id', flat.map((t) => t.id))
        .gte('starts_at', from)
        .lte('starts_at', to)
        .order('starts_at', { ascending: true });

      if (!active) return;
      const mapped: EventRow[] = (ev ?? []).map((raw) => {
        const r = raw as unknown as EventRow & { teams?: { name?: string } | null };
        return { ...r, team_name: r.teams?.name };
      });
      setEvents(mapped);

      if (emulating) {
        const { data: prof } = await sb
          .from('profiles')
          .select('display_name')
          .eq('id', effectiveId)
          .maybeSingle();
        setCoachName((prof as { display_name?: string } | null)?.display_name ?? null);
      } else {
        setCoachName(null);
      }
      setLoading(false);
    })();
    return () => { active = false; };
  }, [sb, effectiveId, emulating]);

  const grouped = useMemo(() => {
    const now = Date.now();
    return {
      upcoming: events.filter((e) => new Date(e.starts_at).getTime() >= now),
      past:     events.filter((e) => new Date(e.starts_at).getTime() <  now),
    };
  }, [events]);

  if (!sb) {
    return (
      <div className="container-page py-12">
        <h1 className="text-3xl">Attendance</h1>
        <p className="mt-2 text-amber-700">Supabase not configured.</p>
      </div>
    );
  }
  if (!effectiveId) {
    return (
      <div className="container-page py-12">
        <h1 className="text-3xl">Attendance</h1>
        <p className="mt-2">Please sign in.</p>
      </div>
    );
  }

  return (
    <div className="container-page py-12">
      {emulating && (
        <div className="mb-4 flex flex-wrap items-center justify-between gap-3 rounded border border-amber-300 bg-amber-50 px-4 py-2 text-sm text-amber-900">
          <div>
            <span className="font-semibold">Viewing as {coachName ?? '…'}</span>
          </div>
          <Link to="/coach" className="font-semibold underline">Exit emulation</Link>
        </div>
      )}

      <div className="text-xs font-semibold uppercase tracking-widest text-gold">Coach</div>
      <h1 className="mt-1 text-4xl">Attendance</h1>
      <p className="mt-1 text-slate-600">
        Pick a session to mark who showed up. You can only see events for your own teams
        {isAdmin && !emulating ? ' (admins see all teams)' : ''}.
      </p>

      {loading ? (
        <p className="mt-6 text-sm text-slate-500">Loading…</p>
      ) : teams.length === 0 ? (
        <p className="mt-6 rounded bg-amber-50 p-4 text-sm text-amber-800">
          You have no team assignments yet. Ask an admin to add you in Admin → Coaches.
        </p>
      ) : (
        <div className="mt-6 space-y-6">
          <EventList title="Upcoming"    events={grouped.upcoming} asSuffix={asSuffix} />
          <EventList title="Recent (past 90 days)" events={grouped.past.reverse()} asSuffix={asSuffix} />
          {events.length === 0 && (
            <p className="text-sm text-slate-500">
              No practices or games scheduled for your team(s) in the past 90 days or next 180 days. Add one from the team calendar.
            </p>
          )}
        </div>
      )}
    </div>
  );
}

function EventList({
  title, events, asSuffix,
}: { title: string; events: EventRow[]; asSuffix: string }) {
  if (events.length === 0) return null;
  return (
    <div>
      <h2 className="text-xl">{title}</h2>
      <ul className="mt-3 divide-y divide-slate-200 rounded border border-slate-200">
        {events.map((e) => (
          <li key={e.id}>
            <Link
              to={`/attendance/${e.id}${asSuffix}`}
              className="flex flex-wrap items-center gap-3 px-3 py-3 text-sm hover:bg-slate-50"
            >
              <span className={`rounded px-2 py-0.5 text-[10px] font-semibold uppercase tracking-wider ${
                e.kind === 'game' ? 'bg-pitch text-white' : 'bg-navy text-white'
              }`}>{e.kind}</span>
              <span className="font-mono text-xs text-slate-500">
                {new Date(e.starts_at).toLocaleString('en-GB', {
                  weekday: 'short', day: 'numeric', month: 'short',
                  hour: '2-digit', minute: '2-digit',
                })}
              </span>
              <span className="flex-1 font-semibold text-navy">
                {e.title}
                {e.opponent ? ` vs ${e.opponent}` : ''}
              </span>
              <span className="text-xs text-slate-500">{e.team_name ?? ''}</span>
            </Link>
          </li>
        ))}
      </ul>
    </div>
  );
}

// ===========================================================================
// /attendance/:eventId — mark roster
// ===========================================================================
type AttendanceStatus = 'present' | 'absent' | 'late' | 'excused';
type PlayerRow = { id: string; full_name: string; squad_number: number | null; position: string | null; active: boolean };
type AttRow = { player_id: string; status: AttendanceStatus; note: string | null };

const STATUS_ORDER: AttendanceStatus[] = ['present', 'late', 'excused', 'absent'];
const STATUS_LABEL: Record<AttendanceStatus, string> = {
  present: 'Present',
  late:    'Late',
  excused: 'Excused',
  absent:  'Absent',
};
const STATUS_CLASS: Record<AttendanceStatus, string> = {
  present: 'bg-pitch text-white border-pitch',
  late:    'bg-yellow-400 text-navy border-yellow-400',
  excused: 'bg-slate-500 text-white border-slate-500',
  absent:  'bg-red-600 text-white border-red-600',
};

export function AttendanceEvent() {
  const { eventId } = useParams<{ eventId: string }>();
  const sb = getSupabase();
  const { roles, user } = useAuth();
  const { id: effectiveId, emulating } = useEffectiveUserId();
  const [sp] = useSearchParams();
  const asSuffix = sp.get('as') ? `?as=${sp.get('as')}` : '';

  const [evt, setEvt] = useState<EventRow | null>(null);
  const [players, setPlayers] = useState<PlayerRow[]>([]);
  const [attMap, setAttMap] = useState<Record<string, AttRow>>({});
  const [canEdit, setCanEdit] = useState(false);
  const [loading, setLoading] = useState(true);
  const [savingId, setSavingId] = useState<string | null>(null);
  const [errorMsg, setErrorMsg] = useState<string | null>(null);

  useEffect(() => {
    if (!sb || !eventId || !effectiveId) { setLoading(false); return; }
    let active = true;
    (async () => {
      setLoading(true);
      setErrorMsg(null);

      // Event
      const { data: e, error: eErr } = await sb
        .from('team_events')
        .select('id, team_id, kind, title, starts_at, opponent, location, teams(name)')
        .eq('id', eventId)
        .maybeSingle();
      if (eErr || !e) {
        if (active) { setEvt(null); setLoading(false); }
        return;
      }
      const ev = e as unknown as EventRow & { teams?: { name?: string } | null };
      if (active) setEvt({ ...ev, team_name: ev.teams?.name });

      // Permission: admin OR coach of this team (under the effective user)
      const isAdmin = roles.includes('admin');
      let permitted = isAdmin;
      if (!permitted) {
        const { data: tc } = await sb
          .from('team_coaches')
          .select('team_id')
          .eq('team_id', ev.team_id)
          .eq('user_id', effectiveId)
          .maybeSingle();
        permitted = !!tc;
      } else if (emulating) {
        // Admin emulating: still scope edit to whether emulated user owns the team
        const { data: tc } = await sb
          .from('team_coaches')
          .select('team_id')
          .eq('team_id', ev.team_id)
          .eq('user_id', effectiveId)
          .maybeSingle();
        permitted = !!tc;
      }
      if (active) setCanEdit(permitted);

      // Roster + existing attendance
      const [{ data: p }, { data: a }] = await Promise.all([
        sb.from('players')
          .select('id, full_name, squad_number, position, active')
          .eq('team_id', ev.team_id)
          .order('squad_number', { ascending: true, nullsFirst: false }),
        sb.from('attendance')
          .select('player_id, status, note')
          .eq('event_id', eventId),
      ]);
      if (!active) return;
      setPlayers((p ?? []) as PlayerRow[]);
      const m: Record<string, AttRow> = {};
      for (const row of (a ?? []) as AttRow[]) m[row.player_id] = row;
      setAttMap(m);
      setLoading(false);
    })();
    return () => { active = false; };
  }, [sb, eventId, effectiveId, emulating, roles]);

  async function setStatus(playerId: string, status: AttendanceStatus) {
    if (!sb || !eventId || !canEdit) return;
    setSavingId(playerId);
    setErrorMsg(null);
    const prev = attMap[playerId];
    // optimistic
    setAttMap((m) => ({ ...m, [playerId]: { player_id: playerId, status, note: prev?.note ?? null } }));
    const { error } = await sb
      .from('attendance')
      .upsert(
        {
          event_id: eventId,
          player_id: playerId,
          status,
          note: prev?.note ?? null,
          recorded_by: user?.id ?? null,
          recorded_at: new Date().toISOString(),
        },
        { onConflict: 'event_id,player_id' },
      );
    if (error) {
      setErrorMsg(error.message);
      // roll back
      setAttMap((m) => {
        const copy = { ...m };
        if (prev) copy[playerId] = prev; else delete copy[playerId];
        return copy;
      });
    }
    setSavingId(null);
  }

  async function markAll(status: AttendanceStatus) {
    if (!sb || !eventId || !canEdit) return;
    const rows = players.filter((p) => p.active).map((p) => ({
      event_id: eventId,
      player_id: p.id,
      status,
      note: attMap[p.id]?.note ?? null,
      recorded_by: user?.id ?? null,
      recorded_at: new Date().toISOString(),
    }));
    if (rows.length === 0) return;
    setErrorMsg(null);
    const optimistic: Record<string, AttRow> = { ...attMap };
    for (const r of rows) optimistic[r.player_id] = { player_id: r.player_id, status: r.status, note: r.note };
    setAttMap(optimistic);
    const { error } = await sb.from('attendance').upsert(rows, { onConflict: 'event_id,player_id' });
    if (error) setErrorMsg(error.message);
  }

  const counts = useMemo(() => {
    const c = { present: 0, late: 0, excused: 0, absent: 0, unmarked: 0 };
    for (const p of players) {
      const s = attMap[p.id]?.status;
      if (!s) c.unmarked += 1; else c[s] += 1;
    }
    return c;
  }, [players, attMap]);

  if (!sb) return <div className="container-page py-12">Supabase not configured.</div>;
  if (loading) return <div className="container-page py-12">Loading…</div>;
  if (!evt) {
    return (
      <div className="container-page py-12">
        <h1 className="text-3xl">Event not found</h1>
        <Link to={`/attendance${asSuffix}`} className="mt-4 inline-block btn-primary">Back to attendance</Link>
      </div>
    );
  }

  return (
    <div className="container-page py-12">
      {emulating && (
        <div className="mb-4 flex flex-wrap items-center justify-between gap-3 rounded border border-amber-300 bg-amber-50 px-4 py-2 text-sm text-amber-900">
          <div className="font-semibold">Viewing as another coach</div>
          <Link to="/coach" className="font-semibold underline">Exit emulation</Link>
        </div>
      )}

      <Link to={`/attendance${asSuffix}`} className="text-xs font-semibold uppercase tracking-widest text-gold hover:underline">
        ← All sessions
      </Link>
      <h1 className="mt-1 text-4xl">
        {evt.title}{evt.opponent ? ` vs ${evt.opponent}` : ''}
      </h1>
      <p className="mt-1 text-slate-600">
        {evt.team_name ?? '—'} ·{' '}
        {new Date(evt.starts_at).toLocaleString('en-GB', {
          weekday: 'long', day: 'numeric', month: 'short',
          hour: '2-digit', minute: '2-digit',
        })}
        {evt.location ? ` · ${evt.location}` : ''}
      </p>

      {!canEdit && (
        <p className="mt-4 rounded bg-amber-50 p-3 text-sm text-amber-800">
          You can view this roster but only this team's coaches (or an admin) can mark attendance.
        </p>
      )}

      <div className="mt-6 grid grid-cols-2 gap-3 sm:grid-cols-5">
        <Tally tone="bg-pitch text-white"      label="Present"  value={counts.present} />
        <Tally tone="bg-yellow-400 text-navy"  label="Late"     value={counts.late} />
        <Tally tone="bg-slate-500 text-white"  label="Excused"  value={counts.excused} />
        <Tally tone="bg-red-600 text-white"    label="Absent"   value={counts.absent} />
        <Tally tone="bg-slate-200 text-slate-700" label="Unmarked" value={counts.unmarked} />
      </div>

      {canEdit && (
        <div className="mt-4 flex flex-wrap gap-2 text-xs">
          <span className="self-center text-slate-500">Mark all active:</span>
          {STATUS_ORDER.map((s) => (
            <button
              key={s}
              type="button"
              onClick={() => markAll(s)}
              className={`rounded border px-2 py-1 font-semibold ${STATUS_CLASS[s]}`}
            >
              {STATUS_LABEL[s]}
            </button>
          ))}
        </div>
      )}

      {errorMsg && <p className="mt-3 text-sm text-red-700">{errorMsg}</p>}

      <div className="mt-6 overflow-hidden rounded border border-slate-200">
        {players.length === 0 ? (
          <p className="p-4 text-sm text-slate-500">No players on this team yet.</p>
        ) : (
          <ul className="divide-y divide-slate-100">
            {players.map((p) => {
              const cur = attMap[p.id]?.status;
              return (
                <li key={p.id} className="flex flex-wrap items-center gap-3 px-3 py-2 text-sm">
                  <span className="grid h-7 w-7 shrink-0 place-items-center rounded-full bg-gold font-display text-xs text-navy">
                    {p.squad_number ?? '—'}
                  </span>
                  <Link
                    to={`/players/${p.id}${asSuffix}`}
                    className="flex-1 font-semibold text-navy hover:underline"
                  >
                    {p.full_name}
                    {!p.active && (
                      <span className="ml-2 rounded bg-slate-200 px-1.5 py-0.5 text-[10px] font-semibold uppercase text-slate-600">
                        Inactive
                      </span>
                    )}
                  </Link>
                  <span className="hidden text-xs uppercase tracking-wider text-slate-500 sm:inline">
                    {p.position ?? ''}
                  </span>
                  <div className="flex gap-1">
                    {STATUS_ORDER.map((s) => {
                      const active = cur === s;
                      return (
                        <button
                          key={s}
                          type="button"
                          disabled={!canEdit || savingId === p.id}
                          onClick={() => setStatus(p.id, s)}
                          className={`rounded border px-2 py-1 text-xs font-semibold ${
                            active
                              ? STATUS_CLASS[s]
                              : 'border-slate-300 bg-white text-slate-600 hover:bg-slate-50'
                          } ${!canEdit ? 'cursor-not-allowed opacity-60' : ''}`}
                        >
                          {STATUS_LABEL[s][0]}
                        </button>
                      );
                    })}
                  </div>
                </li>
              );
            })}
          </ul>
        )}
      </div>

      <p className="mt-3 text-xs text-slate-500">
        P = Present · L = Late · E = Excused · A = Absent. Changes save instantly.
      </p>
    </div>
  );
}

function Tally({ label, value, tone }: { label: string; value: number; tone: string }) {
  return (
    <div className={`rounded p-3 text-center ${tone}`}>
      <div className="font-display text-2xl">{value}</div>
      <div className="text-[10px] uppercase tracking-wider">{label}</div>
    </div>
  );
}
