import { Link } from 'react-router-dom';
import { UPCOMING_FIXTURES, RECENT_RESULTS, NEWS } from '@/data/seed';

export function Home() {
  return (
    <>
      {/* HERO */}
      <section className="relative overflow-hidden bg-navy text-white">
        <div className="absolute inset-0 opacity-20"
          style={{
            backgroundImage:
              'radial-gradient(circle at 20% 30%, #FFC72C 0px, transparent 220px), radial-gradient(circle at 80% 70%, #1E8E3E 0px, transparent 260px)',
          }}
        />
        <div className="container-page relative grid gap-10 py-20 lg:grid-cols-2 lg:py-28">
          <div>
            <div className="inline-block rounded bg-gold px-3 py-1 text-xs font-bold uppercase tracking-widest text-navy">
              Bermuda · Est. 1965
            </div>
            <h1 className="mt-5 font-display text-5xl leading-tight text-white sm:text-6xl lg:text-7xl">
              The Home of<br />Warwick Football.
            </h1>
            <p className="mt-5 max-w-lg text-lg text-white/80">
              Fixtures, results, news and team pages — for every Warwick FA squad,
              from Mini Soccer to the Men's First Team.
            </p>
            <div className="mt-8 flex flex-wrap gap-3">
              <Link to="/teams" className="btn-secondary">View Teams</Link>
              <Link to="/fixtures" className="btn-ghost !text-white hover:!bg-white/10">
                Upcoming Fixtures
              </Link>
            </div>
          </div>
          <div className="hidden lg:flex lg:items-center lg:justify-center">
            <div className="grid h-72 w-72 place-items-center rounded-full bg-white shadow-2xl">
              <span className="font-display text-9xl text-navy">W</span>
            </div>
          </div>
        </div>
      </section>

      {/* QUICK INFO */}
      <section className="container-page grid gap-6 py-12 md:grid-cols-3">
        <div className="card p-6">
          <h3 className="text-xl">Next Match</h3>
          {UPCOMING_FIXTURES[0] && (
            <>
              <p className="mt-2 text-2xl font-display text-navy">
                {UPCOMING_FIXTURES[0].team} vs {UPCOMING_FIXTURES[0].opponent}
              </p>
              <p className="mt-1 text-sm text-slate-600">
                {new Date(UPCOMING_FIXTURES[0].date).toLocaleString('en-GB', {
                  weekday: 'short', day: 'numeric', month: 'short',
                  hour: '2-digit', minute: '2-digit',
                })}{' '}· {UPCOMING_FIXTURES[0].venue} · {UPCOMING_FIXTURES[0].competition}
              </p>
            </>
          )}
          <Link to="/fixtures" className="mt-4 inline-block text-sm font-semibold">
            All fixtures →
          </Link>
        </div>
        <div className="card p-6">
          <h3 className="text-xl">Latest Result</h3>
          {RECENT_RESULTS[0] && (
            <>
              <p className="mt-2 text-2xl font-display text-navy">
                {RECENT_RESULTS[0].team} {RECENT_RESULTS[0].scoreFor}–{RECENT_RESULTS[0].scoreAgainst} {RECENT_RESULTS[0].opponent}
              </p>
              <p className="mt-1 text-sm text-slate-600">
                {new Date(RECENT_RESULTS[0].date).toLocaleDateString('en-GB', {
                  weekday: 'short', day: 'numeric', month: 'short',
                })}{' '}· {RECENT_RESULTS[0].venue} · {RECENT_RESULTS[0].competition}
              </p>
            </>
          )}
          <Link to="/results" className="mt-4 inline-block text-sm font-semibold">
            All results →
          </Link>
        </div>
        <div className="card p-6">
          <h3 className="text-xl">Join Warwick FA</h3>
          <p className="mt-2 text-slate-700">
            2026/27 registration is open for all age groups, U7 through senior.
          </p>
          <Link to="/contact" className="btn-primary mt-4">
            Register Interest
          </Link>
        </div>
      </section>

      {/* NEWS */}
      <section className="bg-slate-50 py-16">
        <div className="container-page">
          <div className="mb-8 flex items-end justify-between">
            <h2 className="text-3xl">Latest News</h2>
            <Link to="/news" className="text-sm font-semibold">All news →</Link>
          </div>
          <div className="grid gap-6 md:grid-cols-3">
            {NEWS.map((item) => (
              <article key={item.id} className="card overflow-hidden">
                <div className="h-40 bg-gradient-to-br from-navy via-navy-600 to-navy-500" />
                <div className="p-5">
                  <div className="text-xs font-semibold uppercase tracking-wider text-gold">
                    {item.tag}
                  </div>
                  <h3 className="mt-2 text-xl">{item.title}</h3>
                  <p className="mt-2 text-sm text-slate-600">{item.excerpt}</p>
                  <div className="mt-4 text-xs text-slate-500">
                    {new Date(item.date).toLocaleDateString('en-GB', {
                      day: 'numeric', month: 'short', year: 'numeric',
                    })}{' '}· {item.author}
                  </div>
                </div>
              </article>
            ))}
          </div>
        </div>
      </section>
    </>
  );
}
