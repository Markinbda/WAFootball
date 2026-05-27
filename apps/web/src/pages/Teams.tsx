import { Link } from 'react-router-dom';
import { TEAMS } from '@/data/seed';

export function Teams() {
  const grouped = {
    Senior: TEAMS.filter((t) => t.ageGroup === 'Senior'),
    Youth:  TEAMS.filter((t) => t.ageGroup === 'Youth'),
    Mini:   TEAMS.filter((t) => t.ageGroup === 'Mini'),
  };

  return (
    <div className="container-page py-12">
      <h1 className="text-4xl">Our Teams</h1>
      <p className="mt-2 text-slate-600">
        From Mini Soccer to senior football — every Warwick FA team has a home here.
      </p>

      {(['Senior', 'Youth', 'Mini'] as const).map((group) => (
        <section key={group} className="mt-12">
          <h2 className="mb-5 text-2xl">{group}</h2>
          <div className="grid gap-5 sm:grid-cols-2 lg:grid-cols-3">
            {grouped[group].map((team) => (
              <Link
                key={team.slug}
                to={`/teams/${team.slug}`}
                className="card group block overflow-hidden transition-all hover:-translate-y-0.5 hover:shadow-md"
              >
                <div className="h-2 bg-gold transition-colors group-hover:bg-pitch" />
                <div className="p-5">
                  <h3 className="text-xl">{team.name}</h3>
                  <p className="mt-2 text-sm text-slate-600">{team.blurb}</p>
                  <p className="mt-3 text-xs uppercase tracking-wider text-slate-500">
                    Coach: {team.coach}
                  </p>
                </div>
              </Link>
            ))}
          </div>
        </section>
      ))}
    </div>
  );
}
