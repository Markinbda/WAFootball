import { useEffect, useState } from 'react';
import { Link, useParams } from 'react-router-dom';
import { getSupabase } from '@/lib/supabase';
import { useFixture, useMatchEvents, usePlayers, appendEvent, type MatchEventType } from '@/data/phase3';

const QUICK_BUTTONS: { type: MatchEventType; label: string; tone: string }[] = [
  { type: 'goal_for',     label: 'Goal (Us)',  tone: 'bg-pitch text-white' },
  { type: 'goal_against', label: 'Goal (Opp)', tone: 'bg-slate-500 text-white' },
  { type: 'yellow',       label: 'Yellow',     tone: 'bg-yellow-400 text-yellow-900' },
  { type: 'red',          label: 'Red',        tone: 'bg-red-600 text-white' },
  { type: 'sub_on',       label: 'Sub On',     tone: 'bg-slate-200 text-slate-800' },
  { type: 'sub_off',      label: 'Sub Off',    tone: 'bg-slate-200 text-slate-800' },
  { type: 'note',         label: 'Note',       tone: 'bg-slate-100 text-slate-700' },
];

export function MatchConsole() {
  const { id } = useParams<{ id: string }>();
  const { fixture, loading, setFixture } = useFixture(id);
  const { events, reload } = useMatchEvents(id);
  const { players } = usePlayers(fixture?.team_id);
  const sb = getSupabase();

  const [minute, setMinute] = useState('');
  const [playerId, setPlayerId] = useState('');
  const [note, setNote] = useState('');
  const [busy, setBusy] = useState(false);
  const [msg, setMsg] = useState<string | null>(null);

  // Auto-advance minute counter once the match is live.
  useEffect(() => {
    if (!fixture || fixture.status !== 'live') return;
    const kickoffEv = events.find((e) => e.type === 'kickoff');
    if (!kickoffEv) return;
    const startMs = new Date(kickoffEv.created_at).getTime();
    const tick = () => {
      const m = Math.floor((Date.now() - startMs) / 60000);
      setMinute(String(Math.max(0, m)));
    };
    tick();
    const t = window.setInterval(tick, 30_000);
    return () => window.clearInterval(t);
  }, [fixture, events]);

  if (loading) return <div className="container-page py-12">Loading…</div>;
  if (!fixture) return <div className="container-page py-12">Not found.</div>;

  const goalsFor = events.filter((e) => e.type === 'goal_for').length;
  const goalsAgainst = events.filter((e) => e.type === 'goal_against').length;

  async function patchFixture(patch: Record<string, unknown>) {
    if (!sb || !fixture) return;
    await sb.from('fixtures').update(patch).eq('id', fixture.id);
    setFixture({ ...fixture, ...patch } as typeof fixture);
  }

  async function log(type: MatchEventType, extra?: { label?: string }) {
    if (!fixture) return;
    setBusy(true); setMsg(null);
    const min = minute ? Number(minute) : null;
    const { error } = await appendEvent({
      fixture_id: fixture.id,
      type,
      minute: Number.isFinite(min as number) ? min : null,
      player_id: playerId || null,
      note: note || extra?.label || null,
    });
    if (error) {
      setMsg(`Error: ${error}`);
    } else {
      setNote('');
      await reload();
      // Auto-update fixture status & score from event type.
      if (type === 'kickoff' && fixture.status !== 'live') {
        await patchFixture({ status: 'live' });
      }
      if (type === 'goal_for') {
        await patchFixture({ score_for: goalsFor + 1, score_against: goalsAgainst });
      } else if (type === 'goal_against') {
        await patchFixture({ score_for: goalsFor, score_against: goalsAgainst + 1 });
      } else if (type === 'fulltime') {
        await patchFixture({ status: 'final', score_for: goalsFor, score_against: goalsAgainst });
      }
    }
    setBusy(false);
  }

  return (
    <div className="container-page py-8">
      <div className="flex items-center justify-between">
        <div>
          <Link to={`/fixtures/${fixture.id}`} className="text-sm text-slate-500 hover:underline">
            ← Public view
          </Link>
          <h1 className="mt-2 text-3xl">Match Console</h1>
          <p className="text-slate-600">{fixture.team_name} vs {fixture.opponent}</p>
        </div>
        <div className="text-right">
          <div className="text-xs uppercase tracking-wider text-slate-500">Status</div>
          <div className={`font-display text-2xl ${
            fixture.status === 'live' ? 'text-red-600' :
            fixture.status === 'final' ? 'text-pitch' : 'text-navy'
          }`}>
            {fixture.status.toUpperCase()}
          </div>
          <div className="font-display text-3xl text-navy">{goalsFor} – {goalsAgainst}</div>
        </div>
      </div>

      <div className="mt-6 grid gap-6 lg:grid-cols-3">
        <section className="lg:col-span-2 space-y-6">
          <div className="card p-5">
            <h2 className="text-lg font-semibold">Quick log</h2>
            <div className="mt-3 grid grid-cols-2 gap-3 sm:grid-cols-3">
              <label className="text-xs">
                Minute
                <input value={minute} onChange={(e) => setMinute(e.target.value)} className="input mt-1" inputMode="numeric" />
              </label>
              <label className="col-span-2 text-xs">
                Player (optional)
                <select value={playerId} onChange={(e) => setPlayerId(e.target.value)} className="input mt-1">
                  <option value="">—</option>
                  {players.map((p) => (
                    <option key={p.id} value={p.id}>
                      {p.squad_number != null ? `#${p.squad_number} ` : ''}{p.full_name}
                    </option>
                  ))}
                </select>
              </label>
              <label className="col-span-3 text-xs">
                Note (optional)
                <input value={note} onChange={(e) => setNote(e.target.value)} className="input mt-1" placeholder="e.g. assisted by Smith" />
              </label>
            </div>
            <div className="mt-4 flex flex-wrap gap-2">
              {QUICK_BUTTONS.map((b) => (
                <button
                  key={b.type}
                  disabled={busy}
                  onClick={() => log(b.type, { label: b.label })}
                  className={`rounded px-3 py-2 text-sm font-semibold disabled:opacity-50 ${b.tone}`}
                >
                  {b.label}
                </button>
              ))}
            </div>
            {msg && <p className={`mt-3 text-sm ${msg.startsWith('Error') ? 'text-red-700' : 'text-pitch'}`}>{msg}</p>}
          </div>

          <div className="card p-5">
            <h2 className="text-lg font-semibold">Phase controls</h2>
            <div className="mt-3 flex flex-wrap gap-2">
              <button disabled={busy} onClick={() => log('kickoff', { label: 'Kick-off' })} className="rounded bg-navy px-4 py-2 text-sm font-semibold text-white">
                Kick-off
              </button>
              <button disabled={busy} onClick={() => log('halftime', { label: 'Half time' })} className="rounded bg-navy/70 px-4 py-2 text-sm font-semibold text-white">
                Half Time
              </button>
              <button disabled={busy} onClick={() => log('fulltime', { label: 'Full time' })} className="rounded bg-pitch px-4 py-2 text-sm font-semibold text-white">
                Full Time
              </button>
            </div>
          </div>
        </section>

        <aside className="card p-5">
          <h2 className="text-lg font-semibold">Live feed</h2>
          {events.length === 0 ? (
            <p className="mt-2 text-sm text-slate-500">No events yet.</p>
          ) : (
            <ul className="mt-3 space-y-2 max-h-[60vh] overflow-y-auto text-sm">
              {[...events].reverse().map((e) => (
                <li key={e.id} className="rounded border border-slate-200 px-3 py-2">
                  <div className="flex items-center justify-between">
                    <span className="font-semibold text-navy">
                      {e.minute != null ? `${e.minute}'` : ''} {labelFor(e.type)}
                    </span>
                    <button
                      onClick={async () => {
                        if (!sb) return;
                        await sb.from('match_events').delete().eq('id', e.id);
                        await reload();
                      }}
                      className="text-xs text-slate-400 hover:text-red-700"
                      title="Remove"
                    >
                      ×
                    </button>
                  </div>
                  {e.note && <div className="text-xs text-slate-600">{e.note}</div>}
                </li>
              ))}
            </ul>
          )}
        </aside>
      </div>
    </div>
  );
}

function labelFor(t: MatchEventType): string {
  const map: Record<MatchEventType, string> = {
    goal_for: 'Goal', goal_against: 'Opp. Goal',
    yellow: 'Yellow', red: 'Red',
    sub_on: 'Sub On', sub_off: 'Sub Off',
    note: 'Note', kickoff: 'Kick-off', halftime: 'Half Time', fulltime: 'Full Time',
  };
  return map[t];
}
