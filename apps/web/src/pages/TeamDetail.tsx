import { Link, useParams } from 'react-router-dom';
import { useEffect, useState } from 'react';
import { useTeams, useFixtures, useResults } from '@/data/hooks';
import { PlayerRoster } from '@/components/PlayerRoster';
import { useTrainingSessions, WEEKDAYS_LONG, fmtTime } from '@/data/phase6';
import { getSupabase } from '@/lib/supabase';

type TeamCoach = {
  user_id: string;
  display_name: string;
  avatar_url: string | null;
  title: string | null;
};

function useTeamCoaches(teamId: string | undefined) {
  const [coaches, setCoaches] = useState<TeamCoach[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    let mounted = true;
    const sb = getSupabase();
    if (!sb || !teamId) { setLoading(false); return; }
    (async () => {
      try {
        const { data, error } = await sb
          .from('team_coaches')
          .select('user_id, profiles:profiles(display_name, avatar_url, title)')
          .eq('team_id', teamId);
        if (error) console.error('[useTeamCoaches]', error);
        if (!mounted) return;
        type Row = {
          user_id: string;
          profiles: { display_name?: string; avatar_url?: string | null; title?: string | null } | null;
        };
        setCoaches(((data ?? []) as unknown as Row[]).map((r) => ({
          user_id: r.user_id,
          display_name: r.profiles?.display_name ?? 'Coach',
          avatar_url: r.profiles?.avatar_url ?? null,
          title: r.profiles?.title ?? null,
        })));
      } catch (e) {
        console.error('[useTeamCoaches] threw', e);
      } finally {
        if (mounted) setLoading(false);
      }
    })();
    return () => { mounted = false; };
  }, [teamId]);

  return { coaches, loading };
}

export function TeamDetail() {
  const { slug } = useParams<{ slug: string }>();
  const { data: teams } = useTeams();
  const { data: fixtures } = useFixtures();
  const { data: results } = useResults();
  const team = teams.find((t) => t.slug === slug);
  const { coaches } = useTeamCoaches(team?.id);

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
            {coaches.length > 0 ? (
              <div className="mt-5 flex flex-wrap items-center gap-4">
                {coaches.map((c) => (
                  <div key={c.user_id} className="flex items-center gap-3">
                    {c.avatar_url ? (
                      <img
                        src={c.avatar_url}
                        alt={c.display_name}
                        className="h-10 w-10 rounded-full border-2 border-gold bg-white object-cover"
                      />
                    ) : (
                      <div
                        className="grid h-10 w-10 place-items-center rounded-full border-2 border-gold bg-navy-600 text-xs font-semibold text-white"
                        aria-hidden
                      >
                        {c.display_name
                          .split(' ')
                          .map((s) => s[0])
                          .slice(0, 2)
                          .join('')
                          .toUpperCase()}
                      </div>
                    )}
                    <div className="text-sm">
                      <div className="font-semibold text-gold">{c.display_name}</div>
                      {c.title && <div className="text-xs text-white/70">{c.title}</div>}
                    </div>
                  </div>
                ))}
              </div>
            ) : (
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
            )}
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
        <TrainingBlock teamId={team.id} />
      </div>
    </>
  );
}

function TrainingBlock({ teamId }: { teamId?: string }) {
  const { sessions, loading } = useTrainingSessions(teamId);
  if (loading || sessions.length === 0) return null;
  return (
    <div className="mt-12">
      <h2 className="text-2xl">Training</h2>
      <ul className="mt-4 divide-y divide-slate-200 rounded-xl border border-slate-200 bg-white">
        {sessions.map((s) => (
          <li key={s.id} className="grid grid-cols-[120px_1fr_auto] items-center gap-3 px-4 py-3 text-sm">
            <div className="font-display text-base text-navy">{WEEKDAYS_LONG[s.weekday]}</div>
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
}
