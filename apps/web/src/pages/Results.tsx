import { RECENT_RESULTS } from '@/data/seed';

export function Results() {
  return (
    <div className="container-page py-12">
      <h1 className="text-4xl">Recent Results</h1>
      <p className="mt-2 text-slate-600">Match outcomes across all Warwick FA teams.</p>

      <div className="mt-8 grid gap-4 md:grid-cols-2">
        {RECENT_RESULTS.map((r) => {
          const win = r.scoreFor > r.scoreAgainst;
          const draw = r.scoreFor === r.scoreAgainst;
          const color = win ? 'bg-pitch text-white' : draw ? 'bg-gold text-navy' : 'bg-red-600 text-white';
          const label = win ? 'W' : draw ? 'D' : 'L';
          return (
            <article key={r.id} className="card flex items-center gap-4 p-5">
              <div className={`grid h-14 w-14 place-items-center rounded-lg font-display text-3xl ${color}`}>
                {label}
              </div>
              <div className="flex-1">
                <h3 className="text-lg">{r.team}</h3>
                <p className="text-2xl font-display text-navy">
                  {r.scoreFor} – {r.scoreAgainst} <span className="text-base text-slate-600">vs {r.opponent}</span>
                </p>
                <p className="text-xs text-slate-500">
                  {new Date(r.date).toLocaleDateString('en-GB', {
                    weekday: 'short', day: 'numeric', month: 'short',
                  })}{' '}· {r.venue} · {r.competition}
                </p>
              </div>
            </article>
          );
        })}
      </div>
    </div>
  );
}
