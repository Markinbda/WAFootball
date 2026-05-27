import { Link, useParams } from 'react-router-dom';
import { usePlayerProfile } from '@/data/phase4';

export function PlayerProfile() {
  const { id } = useParams<{ id: string }>();
  const { player, events, stats, loading } = usePlayerProfile(id);

  if (loading) return <div className="container-page py-12">Loading…</div>;
  if (!player) {
    return (
      <div className="container-page py-20 text-center">
        <h1 className="text-3xl">Player not found</h1>
        <Link to="/teams" className="mt-4 inline-block btn-primary">All teams</Link>
      </div>
    );
  }

  return (
    <>
      <section className="bg-navy text-white">
        <div className="container-page grid gap-8 py-10 md:grid-cols-[200px_1fr]">
          <div className="aspect-square w-full overflow-hidden rounded-lg bg-white/10">
            {player.photo_url ? (
              <img src={player.photo_url} alt={player.full_name} className="h-full w-full object-cover" />
            ) : (
              <div className="grid h-full w-full place-items-center font-display text-6xl text-white/40">
                {player.full_name.split(' ').map((s) => s[0]).slice(0, 2).join('')}
              </div>
            )}
          </div>
          <div>
            {player.team_slug && (
              <Link to={`/teams/${player.team_slug}`} className="text-xs font-semibold uppercase tracking-widest text-gold hover:underline">
                ← {player.team_name}
              </Link>
            )}
            <h1 className="mt-2 text-5xl text-white">{player.full_name}</h1>
            <div className="mt-2 flex flex-wrap gap-2 text-sm">
              {player.squad_number != null && (
                <span className="rounded bg-gold px-2 py-1 font-display text-navy">#{player.squad_number}</span>
              )}
              {player.position && (
                <span className="rounded bg-white/20 px-2 py-1 font-semibold">{player.position}</span>
              )}
              {!player.active && (
                <span className="rounded bg-red-600 px-2 py-1 text-xs font-semibold uppercase">Inactive</span>
              )}
            </div>
            {player.bio && <p className="mt-4 max-w-2xl text-white/80">{player.bio}</p>}
          </div>
        </div>
      </section>

      <div className="container-page grid gap-8 py-10 md:grid-cols-4">
        <Stat label="Goals" value={stats.goals} tone="text-pitch" />
        <Stat label="Appearances" value={stats.appearances} />
        <Stat label="Yellow Cards" value={stats.yellows} tone="text-yellow-600" />
        <Stat label="Red Cards" value={stats.reds} tone="text-red-700" />
      </div>

      <SeasonChart events={events} />

      <div className="container-page pb-16">
        <h2 className="text-2xl">Match log</h2>
        {events.length === 0 ? (
          <p className="mt-4 text-sm text-slate-500">No recorded match events yet.</p>
        ) : (
          <ul className="mt-4 space-y-2">
            {events.map((e) => (
              <li key={e.id} className="card flex items-center justify-between gap-3 p-3 text-sm">
                <div className="font-semibold text-navy">{LABEL[e.type]}</div>
                <div className="flex-1 text-slate-600">{e.note ?? ''}</div>
                <Link to={`/fixtures/${e.fixture_id}`} className="text-xs text-slate-500 hover:underline">
                  {new Date(e.created_at).toLocaleDateString('en-GB')}
                </Link>
              </li>
            ))}
          </ul>
        )}
      </div>
    </>
  );
}

function Stat({ label, value, tone }: { label: string; value: number; tone?: string }) {
  return (
    <div className="card p-5 text-center">
      <div className={`font-display text-5xl ${tone ?? 'text-navy'}`}>{value}</div>
      <div className="mt-1 text-xs uppercase tracking-wider text-slate-500">{label}</div>
    </div>
  );
}

type ChartEvent = { type: string; created_at: string };

function SeasonChart({ events }: { events: ChartEvent[] }) {
  // Bucket by month-of-event for goals, yellows, reds.
  const buckets = new Map<string, { goals: number; yellows: number; reds: number }>();
  for (const e of events) {
    const d = new Date(e.created_at);
    const key = `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, '0')}`;
    const slot = buckets.get(key) ?? { goals: 0, yellows: 0, reds: 0 };
    if (e.type === 'goal_for') slot.goals += 1;
    else if (e.type === 'yellow') slot.yellows += 1;
    else if (e.type === 'red') slot.reds += 1;
    buckets.set(key, slot);
  }
  const months = [...buckets.entries()].sort(([a], [b]) => a.localeCompare(b));
  if (months.length === 0) return null;

  const max = Math.max(1, ...months.map(([, v]) => v.goals + v.yellows + v.reds));

  return (
    <div className="container-page pb-6">
      <h2 className="text-2xl">Season breakdown</h2>
      <p className="mt-1 text-sm text-slate-500">Goals, yellows and reds by month.</p>
      <div className="mt-4 card p-6">
        <div className="flex items-end gap-4 overflow-x-auto pb-2">
          {months.map(([key, v]) => {
            const [y, m] = key.split('-');
            const label = new Date(Number(y), Number(m) - 1, 1)
              .toLocaleDateString('en-GB', { month: 'short' });
            const h = (n: number) => `${(n / max) * 140}px`;
            return (
              <div key={key} className="flex w-12 shrink-0 flex-col items-center">
                <div className="flex h-[160px] w-8 flex-col justify-end overflow-hidden rounded">
                  {v.reds > 0 && (
                    <div className="w-full bg-red-600" style={{ height: h(v.reds) }} title={`${v.reds} red`} />
                  )}
                  {v.yellows > 0 && (
                    <div className="w-full bg-yellow-500" style={{ height: h(v.yellows) }} title={`${v.yellows} yellow`} />
                  )}
                  {v.goals > 0 && (
                    <div className="w-full bg-pitch" style={{ height: h(v.goals) }} title={`${v.goals} goals`} />
                  )}
                </div>
                <div className="mt-1 font-mono text-[10px] text-slate-500">{label}</div>
              </div>
            );
          })}
        </div>
        <div className="mt-4 flex gap-4 text-xs text-slate-600">
          <span className="flex items-center gap-1.5"><span className="h-3 w-3 rounded bg-pitch" /> Goals</span>
          <span className="flex items-center gap-1.5"><span className="h-3 w-3 rounded bg-yellow-500" /> Yellows</span>
          <span className="flex items-center gap-1.5"><span className="h-3 w-3 rounded bg-red-600" /> Reds</span>
        </div>
      </div>
    </div>
  );
}

const LABEL: Record<string, string> = {
  goal_for: 'Goal',
  goal_against: 'Opp. Goal',
  yellow: 'Yellow Card',
  red: 'Red Card',
  sub_on: 'Substitution on',
  sub_off: 'Substitution off',
  note: 'Note',
  kickoff: 'Kick-off',
  halftime: 'Half-time',
  fulltime: 'Full-time',
};
