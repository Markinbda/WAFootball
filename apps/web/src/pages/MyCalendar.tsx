import { useCallback, useEffect, useMemo, useState } from 'react';
import { Link } from 'react-router-dom';
import { getSupabase } from '@/lib/supabase';
import { useAuth } from '@/auth/AuthProvider';

type EventKind = 'game' | 'practice' | 'social';

type CalendarEvent = {
  id: string;
  team_id: string;
  kind: EventKind;
  title: string;
  starts_at: string;
  ends_at: string | null;
  location: string | null;
  opponent: string | null;
  home_away: 'Home' | 'Away' | null;
  notes: string | null;
};

const KIND_STYLE: Record<EventKind, { label: string; icon: string; badge: string; dot: string }> = {
  game:     { label: 'Match',    icon: '⚽', badge: 'bg-emerald-100 text-emerald-800', dot: 'bg-emerald-500' },
  practice: { label: 'Training', icon: '🏃', badge: 'bg-sky-100 text-sky-800',       dot: 'bg-sky-500' },
  social:   { label: 'Social',   icon: '🎉', badge: 'bg-fuchsia-100 text-fuchsia-800', dot: 'bg-fuchsia-500' },
};

function useMyCalendar(fromISO: string, toISO: string) {
  const [events, setEvents] = useState<CalendarEvent[]>([]);
  const [teams, setTeams] = useState<Record<string, string>>({});
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const reload = useCallback(async () => {
    const sb = getSupabase();
    if (!sb) { setLoading(false); return; }
    setLoading(true); setError(null);
    try {
      // RLS on team_events already restricts to rows the current user can
      // see (admin OR the team's coach OR a guardian of a player on the
      // team). No extra scoping needed.
      const { data, error } = await sb
        .from('team_events')
        .select('id, team_id, kind, title, starts_at, ends_at, location, opponent, home_away, notes')
        .gte('starts_at', fromISO)
        .lte('starts_at', toISO)
        .order('starts_at', { ascending: true });
      if (error) throw error;
      const rows = (data ?? []) as CalendarEvent[];
      setEvents(rows);

      // Fetch team names for anything we have events for (avoids embed pitfalls).
      const teamIds = Array.from(new Set(rows.map((r) => r.team_id)));
      if (teamIds.length > 0) {
        const { data: tData } = await sb.from('teams').select('id, name').in('id', teamIds);
        const map: Record<string, string> = {};
        for (const t of (tData ?? []) as { id: string; name: string }[]) {
          map[t.id] = t.name;
        }
        setTeams(map);
      } else {
        setTeams({});
      }
    } catch (e) {
      console.error('[useMyCalendar] threw', e);
      setError(e instanceof Error ? e.message : String(e));
      setEvents([]);
    } finally {
      setLoading(false);
    }
  }, [fromISO, toISO]);

  useEffect(() => { void reload(); }, [reload]);

  return { events, teams, loading, error, reload };
}

// ---------------------------------------------------------------------------
// ICS single-event export
// ---------------------------------------------------------------------------
function toIcsDate(d: Date): string {
  const pad = (n: number) => n.toString().padStart(2, '0');
  return (
    d.getUTCFullYear().toString() +
    pad(d.getUTCMonth() + 1) +
    pad(d.getUTCDate()) +
    'T' +
    pad(d.getUTCHours()) +
    pad(d.getUTCMinutes()) +
    pad(d.getUTCSeconds()) +
    'Z'
  );
}

function downloadIcs(e: CalendarEvent, teamName: string) {
  const start = new Date(e.starts_at);
  const end = e.ends_at ? new Date(e.ends_at) : new Date(start.getTime() + 90 * 60 * 1000);
  const summary =
    e.kind === 'game' && e.opponent
      ? `${teamName} ${e.home_away === 'Away' ? '@' : 'vs'} ${e.opponent}`
      : `${teamName} — ${e.title}`;
  const description = [e.notes, e.location && `Venue: ${e.location}`].filter(Boolean).join('\\n');
  const ics =
    'BEGIN:VCALENDAR\r\n' +
    'VERSION:2.0\r\n' +
    'PRODID:-//Warwick FA//WFA Calendar//EN\r\n' +
    'BEGIN:VEVENT\r\n' +
    `UID:${e.id}@wafootball.netlify.app\r\n` +
    `DTSTAMP:${toIcsDate(new Date())}\r\n` +
    `DTSTART:${toIcsDate(start)}\r\n` +
    `DTEND:${toIcsDate(end)}\r\n` +
    `SUMMARY:${summary.replace(/[,;]/g, ' ')}\r\n` +
    (e.location ? `LOCATION:${e.location.replace(/[,;]/g, ' ')}\r\n` : '') +
    (description ? `DESCRIPTION:${description.replace(/[,;]/g, ' ')}\r\n` : '') +
    'END:VEVENT\r\n' +
    'END:VCALENDAR\r\n';
  const blob = new Blob([ics], { type: 'text/calendar;charset=utf-8' });
  const url = URL.createObjectURL(blob);
  const a = document.createElement('a');
  a.href = url;
  a.download = `${summary.replace(/[^a-z0-9]+/gi, '-').toLowerCase()}.ics`;
  a.click();
  URL.revokeObjectURL(url);
}

// ---------------------------------------------------------------------------
// Page
// ---------------------------------------------------------------------------
export function MyCalendar() {
  const { user, roles } = useAuth();
  const [view, setView] = useState<'agenda' | 'month'>('agenda');
  const [cursor, setCursor] = useState<Date>(() => {
    const d = new Date(); d.setDate(1); d.setHours(0, 0, 0, 0); return d;
  });
  const [kindFilter, setKindFilter] = useState<Set<EventKind>>(new Set());
  const [teamFilter, setTeamFilter] = useState<Set<string>>(new Set());
  const [selected, setSelected] = useState<CalendarEvent | null>(null);

  // 4-month sliding window for both views. Agenda shows today → +90 days;
  // Month view scopes further client-side. Fetching a wider range keeps the
  // navigator arrows snappy.
  const range = useMemo(() => {
    const from = new Date(cursor);
    from.setDate(1);
    from.setMonth(from.getMonth() - 1);
    const to = new Date(cursor);
    to.setDate(1);
    to.setMonth(to.getMonth() + 2);
    to.setDate(0);
    to.setHours(23, 59, 59, 999);
    return { fromISO: from.toISOString(), toISO: to.toISOString() };
  }, [cursor]);

  const { events, teams, loading, error, reload } = useMyCalendar(range.fromISO, range.toISO);

  const teamOptions = useMemo(
    () => Object.entries(teams)
      .map(([id, name]) => ({ id, name }))
      .sort((a, b) => a.name.localeCompare(b.name)),
    [teams],
  );

  const filtered = useMemo(() => {
    return events.filter((e) => {
      if (kindFilter.size > 0 && !kindFilter.has(e.kind)) return false;
      if (teamFilter.size > 0 && !teamFilter.has(e.team_id)) return false;
      return true;
    });
  }, [events, kindFilter, teamFilter]);

  const toggleSet = <T,>(set: Set<T>, setSet: (s: Set<T>) => void, value: T) => {
    const next = new Set(set);
    if (next.has(value)) next.delete(value); else next.add(value);
    setSet(next);
  };

  if (!user) {
    return (
      <div className="container-page py-12">
        <h1 className="text-3xl font-display">My Calendar</h1>
        <p className="mt-2 text-slate-600">Please sign in to see your team's schedule.</p>
      </div>
    );
  }

  return (
    <div className="container-page py-8">
      <div className="flex flex-wrap items-end justify-between gap-3">
        <div>
          <h1 className="text-3xl font-display">My Calendar</h1>
          <p className="mt-1 text-sm text-slate-600">
            Every match, training and social event across the teams you follow.
          </p>
        </div>
        <div className="flex flex-wrap items-center gap-2">
          <div className="inline-flex overflow-hidden rounded border border-slate-300">
            <button
              type="button"
              className={`px-3 py-1.5 text-xs font-semibold ${view === 'agenda' ? 'bg-navy text-white' : 'bg-white text-slate-700 hover:bg-slate-50'}`}
              onClick={() => setView('agenda')}
            >
              Agenda
            </button>
            <button
              type="button"
              className={`px-3 py-1.5 text-xs font-semibold ${view === 'month' ? 'bg-navy text-white' : 'bg-white text-slate-700 hover:bg-slate-50'}`}
              onClick={() => setView('month')}
            >
              Month
            </button>
          </div>
          <button
            type="button"
            className="rounded border border-slate-300 px-3 py-1.5 text-xs font-semibold text-slate-700 hover:bg-slate-50"
            onClick={reload}
          >
            Refresh
          </button>
          {(roles.includes('coach') || roles.includes('admin')) && (
            <Link
              to="/admin?section=events"
              className="rounded bg-gold px-3 py-1.5 text-xs font-semibold text-navy hover:brightness-95"
            >
              + Add Event
            </Link>
          )}
        </div>
      </div>

      {/* Filters */}
      <div className="mt-4 flex flex-wrap items-center gap-2">
        <span className="text-xs font-semibold uppercase text-slate-500">Filter:</span>
        {(Object.keys(KIND_STYLE) as EventKind[]).map((k) => {
          const active = kindFilter.has(k);
          return (
            <button
              key={k}
              type="button"
              onClick={() => toggleSet(kindFilter, setKindFilter, k)}
              className={`rounded-full border px-2.5 py-0.5 text-xs font-semibold ${
                active
                  ? `${KIND_STYLE[k].badge} border-transparent`
                  : 'border-slate-300 text-slate-600 hover:bg-slate-50'
              }`}
            >
              {KIND_STYLE[k].icon} {KIND_STYLE[k].label}
            </button>
          );
        })}
        {teamOptions.length > 1 && (
          <>
            <span className="mx-1 text-slate-300">|</span>
            {teamOptions.map((t) => {
              const active = teamFilter.has(t.id);
              return (
                <button
                  key={t.id}
                  type="button"
                  onClick={() => toggleSet(teamFilter, setTeamFilter, t.id)}
                  className={`rounded-full border px-2.5 py-0.5 text-xs font-semibold ${
                    active
                      ? 'border-navy bg-navy text-white'
                      : 'border-slate-300 text-slate-600 hover:bg-slate-50'
                  }`}
                >
                  {t.name}
                </button>
              );
            })}
          </>
        )}
        {(kindFilter.size > 0 || teamFilter.size > 0) && (
          <button
            type="button"
            className="ml-1 text-xs text-slate-500 underline hover:text-navy"
            onClick={() => { setKindFilter(new Set()); setTeamFilter(new Set()); }}
          >
            clear
          </button>
        )}
      </div>

      {error && (
        <p className="mt-4 rounded border border-red-200 bg-red-50 p-3 text-sm text-red-700">
          Error loading events: {error}
        </p>
      )}

      {loading ? (
        <p className="mt-6 text-sm text-slate-500">Loading your schedule…</p>
      ) : view === 'agenda' ? (
        <AgendaView events={filtered} teams={teams} onSelect={setSelected} />
      ) : (
        <MonthView
          events={filtered}
          teams={teams}
          cursor={cursor}
          setCursor={setCursor}
          onSelect={setSelected}
        />
      )}

      {selected && (
        <EventDetail
          event={selected}
          teamName={teams[selected.team_id] ?? 'Team'}
          onClose={() => setSelected(null)}
          onDownload={() => downloadIcs(selected, teams[selected.team_id] ?? 'WFA')}
        />
      )}
    </div>
  );
}

// ---------------------------------------------------------------------------
// Agenda view — grouped by day, chronological
// ---------------------------------------------------------------------------
function AgendaView({
  events, teams, onSelect,
}: {
  events: CalendarEvent[];
  teams: Record<string, string>;
  onSelect: (e: CalendarEvent) => void;
}) {
  const now = Date.now();
  const upcoming = events.filter((e) => new Date(e.starts_at).getTime() >= now - 3600 * 1000);
  const grouped = useMemo(() => {
    const map = new Map<string, CalendarEvent[]>();
    for (const e of upcoming) {
      const key = new Date(e.starts_at).toDateString();
      if (!map.has(key)) map.set(key, []);
      map.get(key)!.push(e);
    }
    return [...map.entries()];
  }, [upcoming]);

  if (grouped.length === 0) {
    return (
      <div className="mt-6 rounded border border-dashed border-slate-300 bg-slate-50 p-6 text-center text-slate-500">
        No upcoming events. Coaches can add matches, training and socials from the admin console.
      </div>
    );
  }

  return (
    <div className="mt-6 space-y-6">
      {grouped.map(([day, list]) => {
        const d = new Date(day);
        const isToday = new Date().toDateString() === day;
        return (
          <div key={day}>
            <div className="mb-2 flex items-baseline gap-2">
              <h3 className="text-lg font-semibold text-navy">
                {d.toLocaleDateString(undefined, { weekday: 'long', month: 'long', day: 'numeric' })}
              </h3>
              {isToday && (
                <span className="rounded bg-gold px-1.5 py-0.5 text-[10px] font-semibold uppercase text-navy">Today</span>
              )}
            </div>
            <ul className="space-y-2">
              {list.map((e) => (
                <li key={e.id}>
                  <button
                    type="button"
                    onClick={() => onSelect(e)}
                    className="flex w-full items-center gap-3 rounded border border-slate-200 bg-white p-3 text-left shadow-sm hover:border-navy hover:shadow"
                  >
                    <div className="grid h-12 w-14 shrink-0 place-items-center rounded bg-slate-50 text-center">
                      <div className="text-sm font-semibold text-navy">
                        {new Date(e.starts_at).toLocaleTimeString(undefined, { hour: '2-digit', minute: '2-digit' })}
                      </div>
                    </div>
                    <div className="min-w-0 flex-1">
                      <div className="flex flex-wrap items-center gap-2">
                        <span className={`rounded px-1.5 py-0.5 text-[10px] font-semibold uppercase ${KIND_STYLE[e.kind].badge}`}>
                          {KIND_STYLE[e.kind].icon} {KIND_STYLE[e.kind].label}
                        </span>
                        <span className="font-semibold text-navy">{teams[e.team_id] ?? 'Team'}</span>
                        <span className="text-slate-700">— {e.title}</span>
                        {e.kind === 'game' && e.opponent && (
                          <span className="text-xs text-slate-500">
                            {e.home_away === 'Away' ? '@' : 'vs'} {e.opponent}
                          </span>
                        )}
                      </div>
                      {e.location && (
                        <div className="mt-1 text-xs text-slate-500">📍 {e.location}</div>
                      )}
                    </div>
                  </button>
                </li>
              ))}
            </ul>
          </div>
        );
      })}
    </div>
  );
}

// ---------------------------------------------------------------------------
// Month view — 7-column grid with event dots
// ---------------------------------------------------------------------------
function MonthView({
  events, teams, cursor, setCursor, onSelect,
}: {
  events: CalendarEvent[];
  teams: Record<string, string>;
  cursor: Date;
  setCursor: (d: Date) => void;
  onSelect: (e: CalendarEvent) => void;
}) {
  const first = new Date(cursor.getFullYear(), cursor.getMonth(), 1);
  const daysInMonth = new Date(cursor.getFullYear(), cursor.getMonth() + 1, 0).getDate();
  // Start on Monday
  const startDay = (first.getDay() + 6) % 7;
  const cells: Array<Date | null> = [];
  for (let i = 0; i < startDay; i++) cells.push(null);
  for (let d = 1; d <= daysInMonth; d++) cells.push(new Date(cursor.getFullYear(), cursor.getMonth(), d));
  while (cells.length % 7 !== 0) cells.push(null);

  const byDay = useMemo(() => {
    const map = new Map<string, CalendarEvent[]>();
    for (const e of events) {
      const d = new Date(e.starts_at);
      const key = `${d.getFullYear()}-${d.getMonth()}-${d.getDate()}`;
      if (!map.has(key)) map.set(key, []);
      map.get(key)!.push(e);
    }
    return map;
  }, [events]);

  const monthLabel = cursor.toLocaleDateString(undefined, { month: 'long', year: 'numeric' });
  const today = new Date();
  const todayKey = `${today.getFullYear()}-${today.getMonth()}-${today.getDate()}`;

  return (
    <div className="mt-6">
      <div className="mb-3 flex items-center justify-between">
        <button
          type="button"
          className="rounded border border-slate-300 px-3 py-1 text-sm hover:bg-slate-50"
          onClick={() => setCursor(new Date(cursor.getFullYear(), cursor.getMonth() - 1, 1))}
        >
          ‹
        </button>
        <div className="font-display text-xl text-navy">{monthLabel}</div>
        <button
          type="button"
          className="rounded border border-slate-300 px-3 py-1 text-sm hover:bg-slate-50"
          onClick={() => setCursor(new Date(cursor.getFullYear(), cursor.getMonth() + 1, 1))}
        >
          ›
        </button>
      </div>

      <div className="grid grid-cols-7 gap-px overflow-hidden rounded border border-slate-200 bg-slate-200 text-xs">
        {['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'].map((d) => (
          <div key={d} className="bg-slate-50 py-2 text-center font-semibold text-slate-600">{d}</div>
        ))}
        {cells.map((cell, i) => {
          if (!cell) return <div key={i} className="min-h-[6rem] bg-white" />;
          const key = `${cell.getFullYear()}-${cell.getMonth()}-${cell.getDate()}`;
          const dayEvents = byDay.get(key) ?? [];
          const isToday = key === todayKey;
          return (
            <div key={i} className={`min-h-[6rem] bg-white p-1 ${isToday ? 'ring-2 ring-inset ring-gold' : ''}`}>
              <div className={`mb-1 text-right text-xs ${isToday ? 'font-bold text-navy' : 'text-slate-500'}`}>
                {cell.getDate()}
              </div>
              <div className="space-y-0.5">
                {dayEvents.slice(0, 3).map((e) => (
                  <button
                    key={e.id}
                    type="button"
                    onClick={() => onSelect(e)}
                    className={`flex w-full items-center gap-1 truncate rounded px-1 py-0.5 text-left text-[11px] ${KIND_STYLE[e.kind].badge} hover:brightness-95`}
                    title={`${teams[e.team_id] ?? ''} — ${e.title}`}
                  >
                    <span className={`inline-block h-1.5 w-1.5 shrink-0 rounded-full ${KIND_STYLE[e.kind].dot}`} />
                    <span className="truncate">
                      {new Date(e.starts_at).toLocaleTimeString(undefined, { hour: '2-digit', minute: '2-digit' })} {e.title}
                    </span>
                  </button>
                ))}
                {dayEvents.length > 3 && (
                  <div className="px-1 text-[10px] text-slate-500">+{dayEvents.length - 3} more</div>
                )}
              </div>
            </div>
          );
        })}
      </div>
    </div>
  );
}

// ---------------------------------------------------------------------------
// Detail modal
// ---------------------------------------------------------------------------
function EventDetail({
  event, teamName, onClose, onDownload,
}: {
  event: CalendarEvent;
  teamName: string;
  onClose: () => void;
  onDownload: () => void;
}) {
  const start = new Date(event.starts_at);
  const end = event.ends_at ? new Date(event.ends_at) : null;
  const meta = KIND_STYLE[event.kind];
  const mapUrl = event.location
    ? `https://www.google.com/maps/search/?api=1&query=${encodeURIComponent(event.location)}`
    : null;

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center bg-slate-900/40 p-4" onClick={onClose}>
      <div
        className="w-full max-w-md space-y-4 rounded-lg bg-white p-5 shadow-xl"
        onClick={(e) => e.stopPropagation()}
      >
        <div className="flex items-start justify-between">
          <div>
            <span className={`inline-block rounded px-1.5 py-0.5 text-[10px] font-semibold uppercase ${meta.badge}`}>
              {meta.icon} {meta.label}
            </span>
            <h3 className="mt-1 text-xl font-semibold text-navy">{event.title}</h3>
            <div className="text-sm text-slate-600">{teamName}</div>
          </div>
          <button type="button" onClick={onClose} className="text-2xl leading-none text-slate-400 hover:text-slate-700">×</button>
        </div>

        <div className="space-y-2 text-sm">
          <div>
            <div className="text-xs font-semibold uppercase text-slate-500">When</div>
            <div>{start.toLocaleDateString(undefined, { weekday: 'long', month: 'long', day: 'numeric', year: 'numeric' })}</div>
            <div>
              {start.toLocaleTimeString(undefined, { hour: '2-digit', minute: '2-digit' })}
              {end && ` – ${end.toLocaleTimeString(undefined, { hour: '2-digit', minute: '2-digit' })}`}
            </div>
          </div>

          {event.kind === 'game' && event.opponent && (
            <div>
              <div className="text-xs font-semibold uppercase text-slate-500">Opponent</div>
              <div>
                {event.home_away === 'Away' ? 'Away @ ' : 'Home vs '}
                {event.opponent}
              </div>
            </div>
          )}

          {event.location && (
            <div>
              <div className="text-xs font-semibold uppercase text-slate-500">Venue</div>
              <div>
                {event.location}
                {mapUrl && (
                  <>
                    {' — '}
                    <a href={mapUrl} target="_blank" rel="noopener noreferrer" className="text-navy hover:underline">
                      Open in Maps
                    </a>
                  </>
                )}
              </div>
            </div>
          )}

          {event.notes && (
            <div>
              <div className="text-xs font-semibold uppercase text-slate-500">Notes</div>
              <div className="whitespace-pre-wrap">{event.notes}</div>
            </div>
          )}
        </div>

        <div className="flex items-center justify-end gap-2 border-t border-slate-100 pt-3">
          <button
            type="button"
            className="rounded border border-slate-300 px-3 py-1.5 text-sm font-semibold text-slate-700 hover:bg-slate-50"
            onClick={onDownload}
          >
            Add to my calendar (.ics)
          </button>
          <button
            type="button"
            className="btn-primary text-sm"
            onClick={onClose}
          >
            Done
          </button>
        </div>
      </div>
    </div>
  );
}
