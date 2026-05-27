import { useEffect, useMemo, useState } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import { getSupabase } from '@/lib/supabase';
import { useAuth } from '@/auth/AuthProvider';

// ---------- Types ----------
type EventKind = 'practice' | 'game';
type HomeAway = 'Home' | 'Away';
type Team = { id: string; slug: string; name: string; age_group: string };

type TeamEvent = {
  id: string;
  team_id: string;
  kind: EventKind;
  title: string;
  starts_at: string;
  ends_at: string | null;
  location: string | null;
  location_details: string | null;
  opponent: string | null;
  home_away: HomeAway | null;
  notes: string | null;
  repeat_group_id: string | null;
};

type RsvpStatus = 'yes' | 'no' | 'maybe';

// ---------- Date helpers (no external lib) ----------
const MS_DAY = 86_400_000;

function startOfMonth(d: Date) { return new Date(d.getFullYear(), d.getMonth(), 1); }
function endOfMonth(d: Date)   { return new Date(d.getFullYear(), d.getMonth() + 1, 0); }
function addDays(d: Date, n: number) { return new Date(d.getTime() + n * MS_DAY); }
function sameDay(a: Date, b: Date) {
  return a.getFullYear() === b.getFullYear() && a.getMonth() === b.getMonth() && a.getDate() === b.getDate();
}
function isoDateKey(d: Date) {
  return `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, '0')}-${String(d.getDate()).padStart(2, '0')}`;
}

function buildMonthGrid(focus: Date): Date[] {
  // 6 rows × 7 cols, Sunday-first.
  const first = startOfMonth(focus);
  const startWeekday = first.getDay();
  const gridStart = addDays(first, -startWeekday);
  return Array.from({ length: 42 }, (_, i) => addDays(gridStart, i));
}

function uuid(): string {
  if (typeof crypto !== 'undefined' && 'randomUUID' in crypto) {
    return (crypto as Crypto & { randomUUID: () => string }).randomUUID();
  }
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, (c) => {
    const r = (Math.random() * 16) | 0;
    return (c === 'x' ? r : (r & 0x3) | 0x8).toString(16);
  });
}

// ---------- Page ----------
export function TeamCalendar() {
  const { teamSlug } = useParams<{ teamSlug: string }>();
  const sb = getSupabase();
  const { user, roles } = useAuth();
  const navigate = useNavigate();

  const [team, setTeam] = useState<Team | null>(null);
  const [events, setEvents] = useState<TeamEvent[]>([]);
  const [rsvps, setRsvps] = useState<Map<string, RsvpStatus>>(new Map());
  const [view, setView] = useState<'month' | 'agenda'>('month');
  const [focus, setFocus] = useState(() => startOfMonth(new Date()));
  const [canEdit, setCanEdit] = useState(false);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const [addOpen, setAddOpen] = useState(false);
  const [addKind, setAddKind] = useState<EventKind>('practice');
  const [editEvent, setEditEvent] = useState<TeamEvent | null>(null);

  // Load team + events + role check
  useEffect(() => {
    if (!sb || !teamSlug) return;
    let cancelled = false;
    (async () => {
      setLoading(true);
      setError(null);
      const { data: teamData, error: teamErr } = await sb
        .from('teams')
        .select('id, slug, name, age_group')
        .eq('slug', teamSlug)
        .maybeSingle();
      if (cancelled) return;
      if (teamErr || !teamData) {
        setError(teamErr?.message ?? 'Team not found.');
        setLoading(false);
        return;
      }
      setTeam(teamData);

      // Coach permission: admin role OR a row in team_coaches for this user+team
      let permitEdit = roles.includes('admin');
      if (!permitEdit && user) {
        const { data: tc } = await sb
          .from('team_coaches')
          .select('user_id')
          .eq('team_id', teamData.id)
          .eq('user_id', user.id)
          .maybeSingle();
        permitEdit = !!tc;
      }
      setCanEdit(permitEdit);

      // Fetch events within a ±90-day window of the focused month
      const rangeStart = addDays(startOfMonth(focus), -90).toISOString();
      const rangeEnd = addDays(endOfMonth(focus), 90).toISOString();
      const { data: evs } = await sb
        .from('team_events')
        .select('*')
        .eq('team_id', teamData.id)
        .gte('starts_at', rangeStart)
        .lte('starts_at', rangeEnd)
        .order('starts_at');
      setEvents(evs ?? []);

      // RSVPs for the current user
      if (user) {
        const { data: rs } = await sb
          .from('event_rsvps')
          .select('event_id, status')
          .eq('user_id', user.id);
        const map = new Map<string, RsvpStatus>();
        (rs ?? []).forEach((r) => map.set(r.event_id, r.status as RsvpStatus));
        setRsvps(map);
      }

      setLoading(false);
    })();
    return () => { cancelled = true; };
  }, [sb, teamSlug, user, roles, focus]);

  const eventsByDay = useMemo(() => {
    const m = new Map<string, TeamEvent[]>();
    events.forEach((e) => {
      const k = isoDateKey(new Date(e.starts_at));
      const arr = m.get(k) ?? [];
      arr.push(e);
      m.set(k, arr);
    });
    return m;
  }, [events]);

  async function setRsvp(eventId: string, status: RsvpStatus) {
    if (!sb || !user) return;
    const existing = rsvps.get(eventId);
    const next = new Map(rsvps);
    next.set(eventId, status);
    setRsvps(next);
    const { error: err } = await sb
      .from('event_rsvps')
      .upsert(
        { event_id: eventId, user_id: user.id, status, player_id: null },
        { onConflict: 'event_id,user_id', ignoreDuplicates: false },
      );
    if (err) {
      // revert on failure
      const revert = new Map(rsvps);
      if (existing) revert.set(eventId, existing); else revert.delete(eventId);
      setRsvps(revert);
      setError(err.message);
    }
  }

  async function deleteEvent(ev: TeamEvent) {
    if (!sb) return;
    if (!confirm(`Delete "${ev.title}"?`)) return;
    const { error: err } = await sb.from('team_events').delete().eq('id', ev.id);
    if (err) setError(err.message);
    else setEvents((cur) => cur.filter((e) => e.id !== ev.id));
  }

  if (!sb) {
    return (
      <div className="container-page py-12">
        <h1 className="text-3xl">Calendar</h1>
        <p className="mt-2 text-amber-700">Supabase not configured.</p>
      </div>
    );
  }

  return (
    <div className="container-page py-10">
      {/* Header bar */}
      <div className="flex flex-wrap items-center justify-between gap-3">
        <div>
          <button
            onClick={() => navigate(-1)}
            className="text-xs font-semibold uppercase tracking-widest text-gold hover:underline"
          >
            ← Back
          </button>
          <h1 className="mt-1 text-3xl text-navy">
            {team ? team.name : 'Schedule'}
          </h1>
          {team && <p className="text-sm text-slate-600">{team.age_group}</p>}
        </div>

        <div className="flex items-center gap-2">
          <div className="rounded-md border border-slate-200 p-1">
            <button
              onClick={() => setView('month')}
              className={`px-3 py-1.5 text-sm font-semibold ${view === 'month' ? 'rounded bg-navy text-white' : 'text-slate-600'}`}
            >Month</button>
            <button
              onClick={() => setView('agenda')}
              className={`px-3 py-1.5 text-sm font-semibold ${view === 'agenda' ? 'rounded bg-navy text-white' : 'text-slate-600'}`}
            >Agenda</button>
          </div>
          {canEdit && (
            <div className="relative">
              <details className="group">
                <summary className="btn-primary cursor-pointer list-none">+ Add</summary>
                <div className="absolute right-0 z-30 mt-2 w-48 overflow-hidden rounded-md border border-slate-200 bg-white shadow-lg">
                  <button
                    onClick={() => { setAddKind('game'); setEditEvent(null); setAddOpen(true); }}
                    className="block w-full px-4 py-2 text-left text-sm font-semibold text-navy hover:bg-slate-50"
                  >+ Game</button>
                  <button
                    onClick={() => { setAddKind('practice'); setEditEvent(null); setAddOpen(true); }}
                    className="block w-full px-4 py-2 text-left text-sm font-semibold text-navy hover:bg-slate-50"
                  >+ Practice or Event</button>
                </div>
              </details>
            </div>
          )}
        </div>
      </div>

      {error && (
        <p className="mt-4 rounded-md border border-red-200 bg-red-50 px-3 py-2 text-sm text-red-700">{error}</p>
      )}

      {/* Month nav */}
      {view === 'month' && (
        <div className="mt-6 flex items-center justify-between">
          <button
            onClick={() => setFocus(new Date(focus.getFullYear(), focus.getMonth() - 1, 1))}
            className="rounded border border-slate-200 px-3 py-1 text-sm hover:bg-slate-50"
          >‹ Prev</button>
          <h2 className="text-xl font-semibold text-navy">
            {focus.toLocaleString('en-GB', { month: 'long', year: 'numeric' })}
          </h2>
          <div className="flex gap-2">
            <button
              onClick={() => setFocus(startOfMonth(new Date()))}
              className="rounded border border-slate-200 px-3 py-1 text-sm hover:bg-slate-50"
            >Today</button>
            <button
              onClick={() => setFocus(new Date(focus.getFullYear(), focus.getMonth() + 1, 1))}
              className="rounded border border-slate-200 px-3 py-1 text-sm hover:bg-slate-50"
            >Next ›</button>
          </div>
        </div>
      )}

      {loading ? (
        <p className="mt-8 text-slate-600">Loading…</p>
      ) : view === 'month' ? (
        <MonthGrid
          focus={focus}
          eventsByDay={eventsByDay}
          rsvps={rsvps}
          canEdit={canEdit}
          onEventClick={(ev) => { setEditEvent(ev); setAddOpen(true); setAddKind(ev.kind); }}
        />
      ) : (
        <AgendaList
          events={events}
          rsvps={rsvps}
          canEdit={canEdit}
          onEdit={(ev) => { setEditEvent(ev); setAddOpen(true); setAddKind(ev.kind); }}
          onDelete={deleteEvent}
          onRsvp={setRsvp}
        />
      )}

      {addOpen && team && (
        <EventModal
          kind={addKind}
          team={team}
          existing={editEvent}
          canEdit={canEdit}
          rsvpStatus={editEvent ? rsvps.get(editEvent.id) ?? null : null}
          onClose={() => { setAddOpen(false); setEditEvent(null); }}
          onSaved={(newOrUpdated) => {
            setEvents((cur) => {
              if (Array.isArray(newOrUpdated)) {
                // batch insert (repeated practice)
                return [...cur.filter((e) => !newOrUpdated.find((n) => n.id === e.id)), ...newOrUpdated]
                  .sort((a, b) => a.starts_at.localeCompare(b.starts_at));
              }
              const idx = cur.findIndex((e) => e.id === newOrUpdated.id);
              if (idx >= 0) {
                const next = [...cur];
                next[idx] = newOrUpdated;
                return next.sort((a, b) => a.starts_at.localeCompare(b.starts_at));
              }
              return [...cur, newOrUpdated].sort((a, b) => a.starts_at.localeCompare(b.starts_at));
            });
          }}
          onRsvp={(status) => editEvent && setRsvp(editEvent.id, status)}
          onDelete={() => editEvent && deleteEvent(editEvent)}
        />
      )}
    </div>
  );
}

// ---------- Month grid ----------
function MonthGrid({
  focus, eventsByDay, rsvps, canEdit, onEventClick,
}: {
  focus: Date;
  eventsByDay: Map<string, TeamEvent[]>;
  rsvps: Map<string, RsvpStatus>;
  canEdit: boolean;
  onEventClick: (ev: TeamEvent) => void;
}) {
  const cells = buildMonthGrid(focus);
  const today = new Date();
  const month = focus.getMonth();
  return (
    <div className="mt-4 overflow-hidden rounded-lg border border-slate-200 bg-white">
      <div className="grid grid-cols-7 border-b border-slate-200 bg-slate-50 text-xs font-semibold uppercase tracking-wide text-slate-500">
        {['Sun','Mon','Tue','Wed','Thu','Fri','Sat'].map((d) => (
          <div key={d} className="px-2 py-2 text-center">{d}</div>
        ))}
      </div>
      <div className="grid grid-cols-7">
        {cells.map((d) => {
          const inMonth = d.getMonth() === month;
          const isToday = sameDay(d, today);
          const dayEvents = eventsByDay.get(isoDateKey(d)) ?? [];
          return (
            <div
              key={d.getTime()}
              className={`min-h-[110px] border-b border-r border-slate-100 p-1.5 ${inMonth ? 'bg-white' : 'bg-slate-50/60 text-slate-400'}`}
            >
              <div className="flex items-center justify-between">
                <span className={`text-xs ${isToday ? 'rounded-full bg-navy px-1.5 py-0.5 font-semibold text-white' : 'text-slate-600'}`}>
                  {d.getDate()}
                </span>
              </div>
              <div className="mt-1 space-y-1">
                {dayEvents.map((ev) => {
                  const isGame = ev.kind === 'game';
                  const rsvp = rsvps.get(ev.id);
                  return (
                    <button
                      key={ev.id}
                      onClick={() => onEventClick(ev)}
                      className={`w-full truncate rounded px-1.5 py-1 text-left text-[11px] font-semibold leading-tight ${
                        isGame
                          ? 'border-l-4 border-gold bg-navy text-white hover:bg-navy-500'
                          : 'border-l-4 border-pitch bg-pitch/10 text-pitch hover:bg-pitch/20'
                      }`}
                      title={ev.title}
                    >
                      <div className="flex items-center gap-1">
                        <span>{new Date(ev.starts_at).toLocaleTimeString('en-GB', { hour: '2-digit', minute: '2-digit' })}</span>
                        {isGame && ev.home_away && (
                          <span className="rounded bg-gold/90 px-1 text-[9px] uppercase text-navy">{ev.home_away[0]}</span>
                        )}
                        {!canEdit && rsvp && (
                          <span className={`ml-auto rounded px-1 text-[9px] uppercase ${
                            rsvp === 'yes' ? 'bg-pitch text-white' :
                            rsvp === 'no'  ? 'bg-red-600 text-white' :
                                              'bg-amber-400 text-navy'
                          }`}>{rsvp}</span>
                        )}
                      </div>
                      <div className="truncate">{isGame && ev.opponent ? `vs ${ev.opponent}` : ev.title}</div>
                    </button>
                  );
                })}
              </div>
            </div>
          );
        })}
      </div>
    </div>
  );
}

// ---------- Agenda list ----------
function AgendaList({
  events, rsvps, canEdit, onEdit, onDelete, onRsvp,
}: {
  events: TeamEvent[];
  rsvps: Map<string, RsvpStatus>;
  canEdit: boolean;
  onEdit: (ev: TeamEvent) => void;
  onDelete: (ev: TeamEvent) => void;
  onRsvp: (id: string, status: RsvpStatus) => void;
}) {
  const upcoming = events
    .filter((e) => new Date(e.starts_at).getTime() >= Date.now() - MS_DAY)
    .sort((a, b) => a.starts_at.localeCompare(b.starts_at));

  if (upcoming.length === 0) {
    return <p className="mt-8 text-slate-600">No upcoming events.</p>;
  }
  return (
    <div className="mt-4 overflow-hidden rounded-lg border border-slate-200 bg-white">
      <table className="w-full text-sm">
        <thead className="bg-slate-50 text-xs uppercase tracking-wide text-slate-500">
          <tr>
            <th className="px-3 py-2 text-left">Event</th>
            <th className="px-3 py-2 text-left">Date</th>
            <th className="px-3 py-2 text-left">Time</th>
            <th className="px-3 py-2 text-left">Location</th>
            <th className="px-3 py-2 text-right">{canEdit ? 'Manager' : 'Going?'}</th>
          </tr>
        </thead>
        <tbody>
          {upcoming.map((ev) => {
            const isGame = ev.kind === 'game';
            const dt = new Date(ev.starts_at);
            const rsvp = rsvps.get(ev.id);
            return (
              <tr key={ev.id} className={`border-t border-slate-100 ${isGame ? 'bg-navy/5' : ''}`}>
                <td className="px-3 py-3">
                  <button onClick={() => onEdit(ev)} className="text-left">
                    <div className={`font-semibold ${isGame ? 'text-navy' : 'text-pitch'}`}>
                      {isGame && ev.opponent ? `${ev.title} vs ${ev.opponent}` : ev.title}
                    </div>
                    <div className="text-xs uppercase tracking-wide text-slate-500">
                      {ev.kind}{isGame && ev.home_away ? ` · ${ev.home_away}` : ''}
                    </div>
                  </button>
                </td>
                <td className="px-3 py-3">{dt.toLocaleDateString('en-GB', { weekday: 'short', day: 'numeric', month: 'short', year: 'numeric' })}</td>
                <td className="px-3 py-3">{dt.toLocaleTimeString('en-GB', { hour: '2-digit', minute: '2-digit' })}</td>
                <td className="px-3 py-3">
                  <div>{ev.location ?? '—'}</div>
                  {ev.location_details && <div className="text-xs text-slate-500">{ev.location_details}</div>}
                </td>
                <td className="px-3 py-3 text-right">
                  {canEdit ? (
                    <div className="flex justify-end gap-2">
                      <button onClick={() => onEdit(ev)} className="text-xs font-semibold text-navy hover:underline">Edit</button>
                      <button onClick={() => onDelete(ev)} className="text-xs font-semibold text-red-600 hover:underline">Delete</button>
                    </div>
                  ) : (
                    <RsvpButtons value={rsvp ?? null} onChange={(s) => onRsvp(ev.id, s)} />
                  )}
                </td>
              </tr>
            );
          })}
        </tbody>
      </table>
    </div>
  );
}

function RsvpButtons({ value, onChange }: { value: RsvpStatus | null; onChange: (s: RsvpStatus) => void }) {
  const opts: { v: RsvpStatus; label: string; on: string }[] = [
    { v: 'yes',   label: 'Yes',   on: 'bg-pitch text-white' },
    { v: 'maybe', label: 'Maybe', on: 'bg-amber-400 text-navy' },
    { v: 'no',    label: 'No',    on: 'bg-red-600 text-white' },
  ];
  return (
    <div className="flex justify-end gap-1">
      {opts.map((o) => (
        <button
          key={o.v}
          onClick={() => onChange(o.v)}
          className={`rounded px-2 py-1 text-xs font-semibold ${value === o.v ? o.on : 'bg-slate-100 text-slate-600 hover:bg-slate-200'}`}
        >{o.label}</button>
      ))}
    </div>
  );
}

// ---------- Add / Edit modal ----------
function EventModal({
  kind, team, existing, canEdit, rsvpStatus, onClose, onSaved, onRsvp, onDelete,
}: {
  kind: EventKind;
  team: Team;
  existing: TeamEvent | null;
  canEdit: boolean;
  rsvpStatus: RsvpStatus | null;
  onClose: () => void;
  onSaved: (next: TeamEvent | TeamEvent[]) => void;
  onRsvp: (status: RsvpStatus) => void;
  onDelete: () => void;
}) {
  const sb = getSupabase()!;
  const { user } = useAuth();
  const editing = !!existing;
  const startDate = existing ? new Date(existing.starts_at) : null;

  const [title, setTitle]           = useState(existing?.title ?? (kind === 'game' ? 'Match' : 'Practice'));
  const [date, setDate]             = useState(startDate ? isoDateKey(startDate) : isoDateKey(new Date()));
  const [time, setTime]             = useState(startDate ? `${String(startDate.getHours()).padStart(2,'0')}:${String(startDate.getMinutes()).padStart(2,'0')}` : '18:00');
  const [location, setLocation]     = useState(existing?.location ?? 'Warwick Academy');
  const [locDetails, setLocDetails] = useState(existing?.location_details ?? '');
  const [opponent, setOpponent]     = useState(existing?.opponent ?? '');
  const [homeAway, setHomeAway]     = useState<HomeAway>(existing?.home_away ?? 'Home');
  const [notes, setNotes]           = useState(existing?.notes ?? '');
  const [repeats, setRepeats]       = useState(false);
  const [repeatWeeks, setRepeatWeeks] = useState(8);
  // Days of week to repeat on (0 = Sun ... 6 = Sat). Defaults to the chosen
  // start date's weekday so behaviour matches the old "same day" preset.
  const initialDow = (startDate ?? new Date(`${isoDateKey(new Date())}T00:00:00`)).getDay();
  const [repeatDays, setRepeatDays] = useState<number[]>([initialDow]);

  const [busy, setBusy] = useState(false);
  const [formError, setFormError] = useState<string | null>(null);

  async function save() {
    setBusy(true);
    setFormError(null);
    const starts_at = new Date(`${date}T${time}:00`).toISOString();
    const base: Omit<TeamEvent, 'id' | 'repeat_group_id'> & { created_by?: string } = {
      team_id: team.id,
      kind,
      title,
      starts_at,
      ends_at: null,
      location: location || null,
      location_details: locDetails || null,
      opponent: kind === 'game' ? (opponent || null) : null,
      home_away: kind === 'game' ? homeAway : null,
      notes: notes || null,
      created_by: user?.id,
    };

    if (editing && existing) {
      const { data, error } = await sb.from('team_events').update(base).eq('id', existing.id).select('*').single();
      setBusy(false);
      if (error) { setFormError(error.message); return; }
      onSaved(data as TeamEvent);
      onClose();
      return;
    }

    if (kind === 'practice' && repeats && repeatWeeks > 0) {
      const groupId = uuid();
      const baseDate = new Date(starts_at);
      const baseDow = baseDate.getDay();
      const days = (repeatDays.length > 0 ? repeatDays : [baseDow])
        .slice()
        .sort((a, b) => a - b);
      const rows: typeof base[] = [];
      for (let w = 0; w < repeatWeeks; w++) {
        for (const d of days) {
          const dayDelta = (d - baseDow) + w * 7;
          // For the first week, skip days that fall before the chosen start date.
          if (dayDelta < 0) continue;
          const ts = new Date(baseDate.getTime() + dayDelta * MS_DAY).toISOString();
          rows.push({ ...base, starts_at: ts, repeat_group_id: groupId } as typeof base);
        }
      }
      if (rows.length === 0) {
        setBusy(false);
        setFormError('Select at least one day of the week.');
        return;
      }
      const { data, error } = await sb.from('team_events').insert(rows).select('*');
      setBusy(false);
      if (error) { setFormError(error.message); return; }
      onSaved(data as TeamEvent[]);
      onClose();
      return;
    }

    const { data, error } = await sb.from('team_events').insert({ ...base, repeat_group_id: null }).select('*').single();
    setBusy(false);
    if (error) { setFormError(error.message); return; }
    onSaved(data as TeamEvent);
    onClose();
  }

  const readOnly = editing && !canEdit;

  return (
    <div className="fixed inset-0 z-40 flex items-center justify-center bg-black/40 p-4" onClick={onClose}>
      <div
        className="max-h-[90vh] w-full max-w-lg overflow-y-auto rounded-lg bg-white p-6 shadow-xl"
        onClick={(e) => e.stopPropagation()}
      >
        <div className="flex items-start justify-between">
          <h2 className="text-xl font-semibold text-navy">
            {editing ? (canEdit ? `Edit ${kind}` : 'Event') : (kind === 'game' ? 'New game' : 'New practice or event')}
          </h2>
          <button onClick={onClose} className="text-slate-500 hover:text-navy" aria-label="Close">✕</button>
        </div>

        <div className="mt-4 space-y-3 text-sm">
          {readOnly ? (
            <ReadOnlyEvent ev={existing!} />
          ) : (
            <>
              <Labeled label={kind === 'game' ? 'Opponent / Title' : 'Name of event'}>
                <input value={title} onChange={(e) => setTitle(e.target.value)} className="input" />
              </Labeled>
              {kind === 'game' && (
                <div className="grid grid-cols-2 gap-3">
                  <Labeled label="Opponent">
                    <input value={opponent} onChange={(e) => setOpponent(e.target.value)} className="input" placeholder="e.g. Somerset Trojans" />
                  </Labeled>
                  <Labeled label="Home / Away">
                    <select value={homeAway} onChange={(e) => setHomeAway(e.target.value as HomeAway)} className="input">
                      <option>Home</option>
                      <option>Away</option>
                    </select>
                  </Labeled>
                </div>
              )}
              <div className="grid grid-cols-2 gap-3">
                <Labeled label="Date">
                  <input type="date" value={date} onChange={(e) => setDate(e.target.value)} className="input" />
                </Labeled>
                <Labeled label="Time">
                  <input type="time" value={time} onChange={(e) => setTime(e.target.value)} className="input" />
                </Labeled>
              </div>
              <Labeled label="Location">
                <input value={location} onChange={(e) => setLocation(e.target.value)} className="input" />
              </Labeled>
              <Labeled label="Location details">
                <input value={locDetails} onChange={(e) => setLocDetails(e.target.value)} placeholder="e.g. Field #1" className="input" />
              </Labeled>
              <Labeled label="Notes">
                <textarea rows={2} value={notes} onChange={(e) => setNotes(e.target.value)} className="input" />
              </Labeled>

              {kind === 'practice' && !editing && (
                <div className="rounded-md border border-slate-200 p-3">
                  <label className="flex items-center gap-2 text-sm font-semibold text-navy">
                    <input type="checkbox" checked={repeats} onChange={(e) => setRepeats(e.target.checked)} />
                    Repeats weekly
                  </label>
                  {repeats && (
                    <div className="mt-3 space-y-3 text-sm text-slate-700">
                      <div>
                        <div className="mb-1 text-xs font-semibold uppercase tracking-wide text-slate-500">Days of the week</div>
                        <div className="flex flex-wrap gap-1">
                          {[
                            { d: 0, label: 'Sun' },
                            { d: 1, label: 'Mon' },
                            { d: 2, label: 'Tue' },
                            { d: 3, label: 'Wed' },
                            { d: 4, label: 'Thu' },
                            { d: 5, label: 'Fri' },
                            { d: 6, label: 'Sat' },
                          ].map(({ d, label }) => {
                            const active = repeatDays.includes(d);
                            return (
                              <button
                                key={d}
                                type="button"
                                onClick={() =>
                                  setRepeatDays((prev) =>
                                    prev.includes(d) ? prev.filter((x) => x !== d) : [...prev, d]
                                  )
                                }
                                className={`rounded-full border px-3 py-1 text-xs font-semibold transition ${
                                  active
                                    ? 'border-navy bg-navy text-white'
                                    : 'border-slate-300 bg-white text-slate-600 hover:border-navy hover:text-navy'
                                }`}
                              >
                                {label}
                              </button>
                            );
                          })}
                        </div>
                        <p className="mt-1 text-xs text-slate-500">
                          Events use the time above. The start date's weekday is selected by default.
                        </p>
                      </div>
                      <div className="flex items-center gap-2">
                        for
                        <input
                          type="number"
                          min={1}
                          max={52}
                          value={repeatWeeks}
                          onChange={(e) => setRepeatWeeks(Math.max(1, Math.min(52, Number(e.target.value) || 1)))}
                          className="input w-20"
                        />
                        weeks
                      </div>
                    </div>
                  )}
                </div>
              )}
            </>
          )}

          {/* Parent RSVP block when viewing existing event */}
          {editing && !canEdit && existing && (
            <div className="rounded-md border border-slate-200 bg-slate-50 p-3">
              <div className="text-xs font-semibold uppercase tracking-wide text-slate-500">Will you attend?</div>
              <div className="mt-2">
                <RsvpButtons value={rsvpStatus} onChange={onRsvp} />
              </div>
            </div>
          )}

          {formError && <p className="text-sm text-red-700">{formError}</p>}
        </div>

        <div className="mt-5 flex items-center justify-between gap-2">
          <div>
            {editing && canEdit && (
              <button onClick={() => { onDelete(); onClose(); }} className="text-sm font-semibold text-red-600 hover:underline">
                Delete
              </button>
            )}
          </div>
          <div className="flex gap-2">
            <button onClick={onClose} className="btn-ghost">Close</button>
            {!readOnly && (
              <button onClick={save} className="btn-primary" disabled={busy}>
                {busy ? 'Saving…' : editing ? 'Save changes' : 'Create event'}
              </button>
            )}
          </div>
        </div>
      </div>
    </div>
  );
}

function ReadOnlyEvent({ ev }: { ev: TeamEvent }) {
  const dt = new Date(ev.starts_at);
  return (
    <div className="space-y-2 text-sm text-slate-700">
      <div>
        <span className="font-semibold text-navy">
          {ev.kind === 'game' && ev.opponent ? `${ev.title} vs ${ev.opponent}` : ev.title}
        </span>
        {ev.kind === 'game' && ev.home_away && (
          <span className="ml-2 rounded bg-gold/80 px-1.5 text-[10px] uppercase text-navy">{ev.home_away}</span>
        )}
      </div>
      <div className="text-slate-600">
        {dt.toLocaleString('en-GB', { weekday: 'long', day: 'numeric', month: 'long', year: 'numeric', hour: '2-digit', minute: '2-digit' })}
      </div>
      {ev.location && <div>{ev.location}{ev.location_details ? ` · ${ev.location_details}` : ''}</div>}
      {ev.notes && <p className="whitespace-pre-wrap text-slate-700">{ev.notes}</p>}
    </div>
  );
}

function Labeled({ label, children }: { label: string; children: React.ReactNode }) {
  return (
    <label className="block">
      <span className="text-xs font-semibold uppercase tracking-wide text-slate-500">{label}</span>
      <div className="mt-1">{children}</div>
    </label>
  );
}
