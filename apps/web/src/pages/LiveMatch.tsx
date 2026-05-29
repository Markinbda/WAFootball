import { useEffect, useMemo, useState } from 'react';
import { Link, useParams } from 'react-router-dom';
import { getSupabase } from '@/lib/supabase';
import { useMatchEvents, type MatchEvent, type MatchEventType } from '@/data/phase3';

type LiveFixture = {
  id: string;
  team_id: string;
  team_name: string;
  team_slug: string;
  opponent: string;
  kickoff_at: string;
  venue: string;
  competition: string;
  status: string;
  score_for: number | null;
  score_against: number | null;
};

type PlayerLite = { id: string; full_name: string };

export function LiveMatch() {
  const { teamSlug } = useParams<{ teamSlug: string }>();
  const [fixture, setFixture] = useState<LiveFixture | null>(null);
  const [players, setPlayers] = useState<Record<string, PlayerLite>>({});
  const [loading, setLoading] = useState(true);
  const { events } = useMatchEvents(fixture?.id);

  useEffect(() => {
    const sb = getSupabase();
    if (!sb || !teamSlug) { setLoading(false); return; }
    (async () => {
      setLoading(true);
      try {
        // Resolve team
        const { data: team } = await sb
          .from('teams')
          .select('id, name, slug')
          .eq('slug', teamSlug)
          .maybeSingle();
        if (!team) { setFixture(null); setLoading(false); return; }

        // Prefer status=live; else next upcoming; else most recent past.
        const baseSel = 'id, team_id, opponent, kickoff_at, venue, competition, status, score_for, score_against';
        const { data: liveRow } = await sb
          .from('fixtures').select(baseSel)
          .eq('team_id', team.id).eq('status', 'live')
          .order('kickoff_at', { ascending: false }).limit(1).maybeSingle();
        let f = liveRow;
        if (!f) {
          const { data: next } = await sb
            .from('fixtures').select(baseSel)
            .eq('team_id', team.id).gte('kickoff_at', new Date().toISOString())
            .order('kickoff_at', { ascending: true }).limit(1).maybeSingle();
          f = next;
        }
        if (!f) {
          const { data: last } = await sb
            .from('fixtures').select(baseSel)
            .eq('team_id', team.id).lt('kickoff_at', new Date().toISOString())
            .order('kickoff_at', { ascending: false }).limit(1).maybeSingle();
          f = last;
        }
        if (!f) { setFixture(null); setLoading(false); return; }

        setFixture({
          ...(f as Omit<LiveFixture, 'team_name' | 'team_slug'>),
          team_name: team.name,
          team_slug: team.slug,
        });

        const { data: ps } = await sb
          .from('players').select('id, full_name').eq('team_id', team.id);
        const map: Record<string, PlayerLite> = {};
        (ps ?? []).forEach((p) => { map[p.id] = p as PlayerLite; });
        setPlayers(map);
      } finally {
        setLoading(false);
      }
    })();
  }, [teamSlug]);

  const liveScore = useMemo(() => {
    const f = events.filter((e) => e.type === 'goal_for').length;
    const a = events.filter((e) => e.type === 'goal_against').length;
    return { f, a };
  }, [events]);

  if (loading) {
    return <div className="container-page py-12 text-slate-600">Loading live match…</div>;
  }
  if (!fixture) {
    return (
      <div className="container-page py-12">
        <p className="text-slate-600">No match found for this team yet.</p>
        <Link to="/" className="mt-4 inline-block text-sm font-semibold text-navy">← Back home</Link>
      </div>
    );
  }

  const isLive = fixture.status === 'live';
  const scoreFor = isLive ? liveScore.f : (fixture.score_for ?? liveScore.f);
  const scoreAgainst = isLive ? liveScore.a : (fixture.score_against ?? liveScore.a);

  // Newest event first
  const ordered = [...events].sort(
    (a, b) => new Date(b.created_at).getTime() - new Date(a.created_at).getTime(),
  );

  return (
    <>
      <section className="bg-navy text-white">
        <div className="container-page py-10">
          <div className="flex items-center gap-2 text-xs font-bold uppercase tracking-widest">
            {isLive ? (
              <>
                <span className="inline-block h-2.5 w-2.5 animate-pulse rounded-full bg-red-500" />
                <span className="text-red-300">Live now</span>
              </>
            ) : (
              <span className="text-gold">Match day</span>
            )}
          </div>
          <h1 className="mt-2 font-display text-4xl sm:text-5xl">
            {fixture.team_name} <span className="text-gold">{scoreFor}</span>
            <span className="mx-2 text-white/40">–</span>
            <span className="text-gold">{scoreAgainst}</span> {fixture.opponent}
          </h1>
          <p className="mt-3 text-sm text-white/70">
            {new Date(fixture.kickoff_at).toLocaleString('en-GB', {
              weekday: 'short', day: 'numeric', month: 'short',
              hour: '2-digit', minute: '2-digit',
            })} · {fixture.venue} · {fixture.competition}
          </p>
        </div>
      </section>

      <section className="container-page py-10">
        <h2 className="font-display text-2xl text-navy">Play-by-play</h2>
        <p className="mt-1 text-sm text-slate-600">
          Live events posted by the coaching staff. Updates appear automatically.
        </p>

        {ordered.length === 0 ? (
          <p className="mt-6 text-sm text-slate-500">No events logged yet — sit tight!</p>
        ) : (
          <ol className="mt-6 divide-y divide-slate-200">
            {ordered.map((ev) => (
              <EventRow key={ev.id} ev={ev} playerName={ev.player_id ? players[ev.player_id]?.full_name : undefined} />
            ))}
          </ol>
        )}

        <Link to="/fixtures" className="mt-8 inline-block text-sm font-semibold text-navy hover:text-gold">
          All fixtures →
        </Link>
      </section>
    </>
  );
}

function EventRow({ ev, playerName }: { ev: MatchEvent; playerName?: string }) {
  const { icon, label, tone } = describe(ev.type, playerName, ev.note);
  return (
    <li className="flex items-start gap-4 py-4">
      <div className="w-10 shrink-0 text-right font-display text-xl text-slate-400">
        {ev.minute != null ? `${ev.minute}'` : '—'}
      </div>
      <div className={`flex h-9 w-9 shrink-0 items-center justify-center rounded-full text-lg ${tone}`} aria-hidden="true">
        {icon}
      </div>
      <div className="min-w-0 flex-1">
        <div className="text-sm font-semibold text-navy">{label}</div>
        {ev.note && ev.type !== 'note' && (
          <div className="mt-0.5 text-xs text-slate-500">{ev.note}</div>
        )}
      </div>
    </li>
  );
}

function describe(type: MatchEventType, player?: string, note?: string | null) {
  const who = player ?? 'unknown player';
  switch (type) {
    case 'goal_for':     return { icon: '⚽', tone: 'bg-pitch text-white',          label: `GOAL scored by ${who}` };
    case 'goal_against': return { icon: '⚽', tone: 'bg-slate-500 text-white',      label: `Goal conceded` };
    case 'yellow':       return { icon: '🟨', tone: 'bg-yellow-100 text-yellow-800', label: `Yellow card — ${who}` };
    case 'red':          return { icon: '🟥', tone: 'bg-red-100 text-red-700',       label: `Red card — ${who}` };
    case 'sub_on':       return { icon: '🔁', tone: 'bg-slate-100 text-slate-700',   label: `Substitution on — ${who}` };
    case 'sub_off':      return { icon: '🔁', tone: 'bg-slate-100 text-slate-700',   label: `Substitution off — ${who}` };
    case 'kickoff':      return { icon: '🎬', tone: 'bg-navy text-white',            label: `Kick-off` };
    case 'halftime':     return { icon: '⏸️', tone: 'bg-slate-200 text-slate-800',   label: `Half-time` };
    case 'fulltime':     return { icon: '🏁', tone: 'bg-slate-800 text-white',       label: `Full-time` };
    case 'note':         return { icon: '📝', tone: 'bg-slate-100 text-slate-700',   label: note || 'Match note' };
    default:             return { icon: '•',  tone: 'bg-slate-100 text-slate-700',   label: String(type) };
  }
}
