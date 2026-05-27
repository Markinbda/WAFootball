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
