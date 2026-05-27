import { Link, useParams } from 'react-router-dom';
import { useTeams, useFixtures, useResults } from '@/data/hooks';
import { PlayerRoster } from '@/components/PlayerRoster';

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
        <div className="container-page grid items-center gap-8 py-14 md:grid-cols-[1fr_auto]">
          <div>
            <div className="text-xs font-semibold uppercase tracking-widest text-gold">
              {team.ageGroup}
            </div>
            <h1 className="mt-2 text-5xl text-white">{team.name}</h1>
            <p className="mt-3 max-w-2xl text-white/80">{team.blurb}</p>
            <div className="mt-5 flex items-center gap-3">
              <img
                src={`https://api.dicebear.com/9.x/avataaars/svg?seed=${encodeURIComponent(team.coach)}&backgroundType=gradientLinear&backgroundColor=FFC72C,00186C`}
                alt=""
                aria-hidden
                className="h-10 w-10 rounded-full border-2 border-gold bg-white object-cover"
              />
              <div className="text-sm">
                <span className="text-white/70">Coach:</span>{' '}
                <span className="font-semibold text-gold">{team.coach}</span>
              </div>
            </div>
          </div>
          <div className="h-48 w-full overflow-hidden rounded-xl border border-white/10 bg-navy-600 shadow-lg md:h-56 md:w-80 lg:h-64 lg:w-96">
            {team.photoUrl ? (
              <img src={team.photoUrl} alt={`${team.name} team photo`} className="h-full w-full object-cover" />
            ) : (
              <div className="grid h-full w-full place-items-center text-center text-white/40">
                <div>
                  <div className="font-display text-5xl">📷</div>
                  <div className="mt-2 text-xs uppercase tracking-widest">Team photo</div>
                </div>
              </div>
            )}
          </div>
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

      <div className="container-page pb-16">
        <h2 className="text-2xl">Squad</h2>
        <p className="mt-1 text-sm text-slate-500">Tap a card to see the player’s bio.</p>
        <div className="mt-6">
          <PlayerRoster teamId={team.id} />
        </div>
      </div>
    </>
  );
}
