import { Link } from 'react-router-dom';
import { useLeaderboards, type LeaderRow } from '@/data/phase6';

export function Stats() {
  const { loading, topScorers, yellows, reds } = useLeaderboards();

  return (
    <>
      <section className="bg-navy text-white">
        <div className="container-page py-14">
          <div className="text-xs font-semibold uppercase tracking-widest text-gold">Season</div>
          <h1 className="mt-2 text-5xl">Statistics</h1>
          <p className="mt-3 max-w-2xl text-white/80">
            Live leaderboards across all senior and youth squads, computed from match events as they happen.
          </p>
        </div>
      </section>

      <section className="container-page grid gap-6 py-12 md:grid-cols-3">
        <Board title="Top scorers" emptyMsg="No goals recorded yet." rows={topScorers} loading={loading} accent="text-pitch" suffix="goals" />
        <Board title="Yellow cards" emptyMsg="No yellows. Yet." rows={yellows} loading={loading} accent="text-amber-600" suffix="yellows" />
        <Board title="Red cards" emptyMsg="Clean discipline." rows={reds} loading={loading} accent="text-red-700" suffix="reds" />
      </section>
    </>
  );
}

function Board({
  title, rows, loading, emptyMsg, accent, suffix,
}: {
  title: string;
  rows: LeaderRow[];
  loading: boolean;
  emptyMsg: string;
  accent: string;
  suffix: string;
}) {
  return (
    <div className="card p-6">
      <h2 className="font-display text-2xl text-navy">{title}</h2>
      {loading ? (
        <p className="mt-4 text-sm text-slate-500">Loading…</p>
      ) : rows.length === 0 ? (
        <p className="mt-4 text-sm text-slate-500">{emptyMsg}</p>
      ) : (
        <ol className="mt-4 divide-y divide-slate-100">
          {rows.slice(0, 10).map((r, i) => (
            <li key={r.player_id} className="flex items-center gap-3 py-2.5 text-sm">
              <span className="w-6 text-right font-display text-base text-slate-400">{i + 1}</span>
              <div className="min-w-0 flex-1">
                <Link to={`/players/${r.player_id}`} className="block truncate font-semibold text-navy hover:text-gold">
                  {r.full_name}
                </Link>
                {r.team_slug && (
                  <Link to={`/teams/${r.team_slug}`} className="block truncate text-xs text-slate-500 hover:text-navy">
                    {r.team_name}
                  </Link>
                )}
              </div>
              <div className={`font-display text-xl ${accent}`}>{r.count}</div>
              <div className="w-12 text-right text-[10px] uppercase tracking-wider text-slate-400">{suffix}</div>
            </li>
          ))}
        </ol>
      )}
    </div>
  );
}
