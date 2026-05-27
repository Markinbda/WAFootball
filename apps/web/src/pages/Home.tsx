import { Link } from 'react-router-dom';
import { useFixtures, useResults, useNews } from '@/data/hooks';
import { LeagueTable } from '@/components/LeagueTable';
import { SponsorsStrip } from '@/components/SponsorsStrip';
import { NewsTicker } from '@/components/NewsTicker';

export function Home() {
  const { data: fixtures } = useFixtures();
  const { data: results } = useResults();
  const { data: news } = useNews();
  const nextMatch = fixtures[0];
  const latestResult = results[0];
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
        <div className="container-page relative grid gap-6 py-10 lg:grid-cols-2 lg:py-14">
          <div>
            <div className="inline-block rounded bg-gold px-3 py-1 text-xs font-bold uppercase tracking-widest text-navy">
              Bermuda · Est. 1965
            </div>
            <h1 className="mt-3 font-display text-3xl leading-tight text-white sm:text-4xl lg:text-5xl">
              The Home of Warwick Football.
            </h1>
            <p className="mt-3 max-w-lg text-base text-white/80">
              Fixtures, results, news and team pages for every Warwick FA squad —
              Mini Soccer to the Men's First Team.
            </p>
            <div className="mt-5 flex flex-wrap gap-3">
              <Link to="/teams" className="btn-secondary">View Teams</Link>
              <Link to="/fixtures" className="btn-ghost !text-white hover:!bg-white/10">
                Upcoming Fixtures
              </Link>
            </div>
          </div>
          <div className="hidden lg:flex lg:items-center lg:justify-center">
            <img
              src="/logo.png"
              alt="Warwick FA crest"
              className="h-56 w-56 rounded-full bg-white object-contain p-2 shadow-2xl"
            />
          </div>
        </div>
      </section>

      <NewsTicker />

      {/* QUICK INFO */}
      <section className="container-page grid gap-6 py-12 md:grid-cols-3">
        <div className="card p-6">
          <h3 className="text-xl">Next Match</h3>
          {nextMatch && (
            <>
              <p className="mt-2 text-2xl font-display text-navy">
                {nextMatch.team} vs {nextMatch.opponent}
              </p>
              <p className="mt-1 text-sm text-slate-600">
                {new Date(nextMatch.date).toLocaleString('en-GB', {
                  weekday: 'short', day: 'numeric', month: 'short',
                  hour: '2-digit', minute: '2-digit',
                })}{' '}· {nextMatch.venue} · {nextMatch.competition}
              </p>
            </>
          )}
          <Link to="/fixtures" className="mt-4 inline-block text-sm font-semibold">
            All fixtures →
          </Link>
        </div>
        <div className="card p-6">
          <h3 className="text-xl">Latest Result</h3>
          {latestResult && (
            <>
              <p className="mt-2 text-2xl font-display text-navy">
                {latestResult.team} {latestResult.scoreFor}–{latestResult.scoreAgainst} {latestResult.opponent}
              </p>
              <p className="mt-1 text-sm text-slate-600">
                {new Date(latestResult.date).toLocaleDateString('en-GB', {
                  weekday: 'short', day: 'numeric', month: 'short',
                })}{' '}· {latestResult.venue} · {latestResult.competition}
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

      {/* STANDINGS */}
      <section className="bg-slate-50 py-16">
        <div className="container-page">
          <div className="mb-6 flex items-end justify-between">
            <h2 className="text-3xl">Standings</h2>
            <Link to="/results" className="text-sm font-semibold">Full table →</Link>
          </div>
          <LeagueTable limit={5} />
        </div>
      </section>

      {/* NEWS */}
      <section className="bg-white py-16">
        <div className="container-page">
          <div className="mb-8 flex items-end justify-between">
            <h2 className="text-3xl">Latest News</h2>
            <Link to="/news" className="text-sm font-semibold">All news →</Link>
          </div>
          <div className="grid gap-6 md:grid-cols-3">
            {news.slice(0, 3).map((item) => (
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

      <SponsorsStrip />
    </>
  );
}