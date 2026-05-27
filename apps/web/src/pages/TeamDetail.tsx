import { Link, useParams } from 'react-router-dom';
import { useTeams, useFixtures, useResults } from '@/data/hooks';

export function TeamDetail() {
  const { slug } = useParams<{ slug: string }>();
  const { data: teams } = useTeams();
  const { data: fixtures } = useFixtures();
  const { data: results } = useResults();
  const team = teams.find((t) => t.slug === slug);

  if (!team) {
    return (
      <div className="container-page py-20 text-center">
        <h1 className="text-3xl">Team not found</h1>
        <Link to="/teams" className="mt-4 inline-block btn-primary">All teams</Link>
      </div>
    );
  }

  const teamFixtures = fixtures.filter((f) =>
    f.team.toLowerCase().includes(team.name.toLowerCase().split(' ').pop()!.toLowerCase()) ||
    team.name.toLowerCase().includes(f.team.toLowerCase()),
  );
  const teamResults = results.filter((r) =>
    r.team.toLowerCase().includes(team.name.toLowerCase().split(' ').pop()!.toLowerCase()) ||
    team.name.toLowerCase().includes(r.team.toLowerCase()),
  );

  return (
    <>
      <section className="bg-navy text-white">
        <div className="container-page py-16">
          <div className="text-xs font-semibold uppercase tracking-widest text-gold">
            {team.ageGroup}
          </div>
          <h1 className="mt-2 text-5xl text-white">{team.name}</h1>
          <p className="mt-3 max-w-2xl text-white/80">{team.blurb}</p>
          <p className="mt-4 text-sm text-white/70">
            Coach: <span className="text-gold">{team.coach}</span>
          </p>
        </div>
      </section>

      <div className="container-page grid gap-10 py-12 lg:grid-cols-2">
        <section>
          <h2 className="text-2xl">Upcoming</h2>
          {teamFixtures.length === 0 ? (
            <p className="mt-4 text-slate-600">No upcoming fixtures.</p>
          ) : (
            <ul className="mt-4 space-y-3">
              {teamFixtures.map((f) => (
                <li key={f.id} className="card p-4">
                  <div className="text-sm text-slate-500">
                    {new Date(f.date).toLocaleString('en-GB', {
                      weekday: 'short', day: 'numeric', month: 'short',
                      hour: '2-digit', minute: '2-digit',
                    })}
                  </div>
                  <div className="font-display text-xl text-navy">
                    vs {f.opponent}
                  </div>
                  <div className="text-xs text-slate-500">
                    {f.venue} · {f.competition}
                  </div>
                </li>
              ))}
            </ul>
          )}
        </section>

        <section>
          <h2 className="text-2xl">Recent</h2>
          {teamResults.length === 0 ? (
            <p className="mt-4 text-slate-600">No recent results.</p>
          ) : (
            <ul className="mt-4 space-y-3">
              {teamResults.map((r) => (
                <li key={r.id} className="card p-4">
                  <div className="text-sm text-slate-500">
                    {new Date(r.date).toLocaleDateString('en-GB', {
                      weekday: 'short', day: 'numeric', month: 'short',
                    })}
                  </div>
                  <div className="font-display text-xl text-navy">
                    {r.scoreFor} – {r.scoreAgainst} <span className="text-base text-slate-600">vs {r.opponent}</span>
                  </div>
                  <div className="text-xs text-slate-500">
                    {r.venue} · {r.competition}
                  </div>
                </li>
              ))}
            </ul>
          )}
        </section>
      </div>
    </>
  );
}
