import { Link } from 'react-router-dom';
import { useTeams } from '@/data/hooks';
import { useTrainingSessions, WEEKDAYS_LONG, fmtTime } from '@/data/phase6';

export function Training() {
  const { data: teams } = useTeams();
  const { sessions, loading } = useTrainingSessions();

  // Group by team
  const byTeam = new Map<string, typeof sessions>();
  for (const s of sessions) {
    const arr = byTeam.get(s.team_id) ?? [];
    arr.push(s);
    byTeam.set(s.team_id, arr);
  }

  return (
    <>
      <section className="bg-navy text-white">
        <div className="container-page py-14">
          <div className="text-xs font-semibold uppercase tracking-widest text-gold">Weekly</div>
          <h1 className="mt-2 text-5xl">Training schedule</h1>
          <p className="mt-3 max-w-2xl text-white/80">
            All squads, all sessions. Times and locations updated by coaches.
          </p>
        </div>
      </section>

      <section className="container-page py-12">
        {loading ? (
          <p className="text-sm text-slate-500">Loading…</p>
        ) : sessions.length === 0 ? (
          <p className="text-sm text-slate-500">
            No training sessions on file yet. Run <code>supabase/schema-phase6.sql</code>.
          </p>
        ) : (
          <div className="grid gap-6 md:grid-cols-2">
            {teams.map((team) => {
              const teamSessions = team.id ? byTeam.get(team.id) ?? [] : [];
              if (teamSessions.length === 0) return null;
              return (
                <div key={team.slug} className="card p-6">
                  <Link to={`/teams/${team.slug}`} className="block">
                    <div className="text-xs font-semibold uppercase tracking-widest text-gold">
                      {team.ageGroup}
                    </div>
                    <h2 className="font-display text-2xl text-navy hover:text-gold">{team.name}</h2>
                  </Link>
                  <ul className="mt-4 divide-y divide-slate-100">
                    {teamSessions.map((s) => (
                      <li key={s.id} className="grid grid-cols-[80px_1fr_auto] items-center gap-3 py-2.5 text-sm">
                        <div className="font-display text-base text-navy">{WEEKDAYS_LONG[s.weekday].slice(0, 3)}</div>
                        <div className="text-slate-700">
                          {s.location ?? 'Warwick Academy Pitch'}
                          {s.notes && <div className="text-xs text-slate-500">{s.notes}</div>}
                        </div>
                        <div className="text-right font-mono text-xs text-slate-600">
                          {fmtTime(s.starts_at)}{s.ends_at ? `–${fmtTime(s.ends_at)}` : ''}
                        </div>
                      </li>
                    ))}
                  </ul>
                </div>
              );
            })}
          </div>
        )}
      </section>
    </>
  );
}
