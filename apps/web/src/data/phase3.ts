import { useCallback, useEffect, useState } from 'react';
import { getSupabase } from '@/lib/supabase';

export type Player = {
  id: string;
  team_id: string;
  full_name: string;
  position: string | null;
  squad_number: number | null;
  photo_url: string | null;
  bio: string | null;
  active: boolean;
};

export type FixtureFull = {
  id: string;
  team_id: string;
  team_name: string;
  opponent: string;
  kickoff_at: string;
  venue: 'Home' | 'Away';
  competition: string;
  status: 'scheduled' | 'live' | 'postponed' | 'cancelled' | 'final';
  score_for: number | null;
  score_against: number | null;
};

export type RsvpStatus = 'yes' | 'no' | 'maybe';
export type Rsvp = { user_id: string; status: RsvpStatus; note: string | null };

export type MatchEventType =
  | 'goal_for' | 'goal_against' | 'yellow' | 'red'
  | 'sub_on' | 'sub_off' | 'note' | 'kickoff' | 'halftime' | 'fulltime';

export type MatchEvent = {
  id: string;
  fixture_id: string;
  minute: number | null;
  type: MatchEventType;
  player_id: string | null;
  note: string | null;
  created_at: string;
};

export function usePlayers(teamId: string | undefined) {
  const [players, setPlayers] = useState<Player[]>([]);
  const [loading, setLoading] = useState(true);

  const reload = useCallback(async () => {
    const sb = getSupabase();
    if (!sb || !teamId) { setLoading(false); return; }
    setLoading(true);
    const { data } = await sb
      .from('players')
      .select('*')
      .eq('team_id', teamId)
      .order('squad_number', { ascending: true, nullsFirst: false });
    if (data) setPlayers(data as Player[]);
    setLoading(false);
  }, [teamId]);

  useEffect(() => { void reload(); }, [reload]);

  return { players, loading, reload };
}

export function useFixture(fixtureId: string | undefined) {
  const [fixture, setFixture] = useState<FixtureFull | null>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    let mounted = true;
    const sb = getSupabase();
    if (!sb || !fixtureId) { setLoading(false); return; }
    (async () => {
      const { data } = await sb
        .from('fixtures')
        .select('id, team_id, opponent, kickoff_at, venue, competition, status, score_for, score_against, teams(name)')
        .eq('id', fixtureId)
        .single();
      if (mounted && data) {
        const row = data as unknown as {
          id: string; team_id: string; opponent: string; kickoff_at: string;
          venue: 'Home'|'Away'; competition: string; status: FixtureFull['status'];
          score_for: number|null; score_against: number|null;
          teams?: { name?: string } | null;
        };
        setFixture({
          id: row.id,
          team_id: row.team_id,
          team_name: row.teams?.name ?? '—',
          opponent: row.opponent,
          kickoff_at: row.kickoff_at,
          venue: row.venue,
          competition: row.competition,
          status: row.status,
          score_for: row.score_for,
          score_against: row.score_against,
        });
      }
      if (mounted) setLoading(false);
    })();
    return () => { mounted = false; };
  }, [fixtureId]);

  return { fixture, loading, setFixture };
}

export function useMyRsvp(fixtureId: string | undefined, userId: string | undefined) {
  const [rsvp, setRsvp] = useState<Rsvp | null>(null);
  const [loading, setLoading] = useState(true);

  const reload = useCallback(async () => {
    const sb = getSupabase();
    if (!sb || !fixtureId || !userId) { setLoading(false); return; }
    setLoading(true);
    const { data } = await sb
      .from('rsvps')
      .select('user_id, status, note')
      .eq('fixture_id', fixtureId)
      .eq('user_id', userId)
      .maybeSingle();
    if (data) setRsvp(data as Rsvp);
    setLoading(false);
  }, [fixtureId, userId]);

  useEffect(() => { void reload(); }, [reload]);

  const upsert = useCallback(async (status: RsvpStatus, note?: string) => {
    const sb = getSupabase();
    if (!sb || !fixtureId || !userId) return;
    await sb.from('rsvps').upsert({
      fixture_id: fixtureId, user_id: userId, status, note: note ?? null,
      updated_at: new Date().toISOString(),
    });
    await reload();
  }, [fixtureId, userId, reload]);

  return { rsvp, loading, upsert };
}

export function useMatchEvents(fixtureId: string | undefined) {
  const [events, setEvents] = useState<MatchEvent[]>([]);
  const [loading, setLoading] = useState(true);

  const reload = useCallback(async () => {
    const sb = getSupabase();
    if (!sb || !fixtureId) { setLoading(false); return; }
    setLoading(true);
    const { data } = await sb
      .from('match_events')
      .select('*')
      .eq('fixture_id', fixtureId)
      .order('created_at', { ascending: true });
    if (data) setEvents(data as MatchEvent[]);
    setLoading(false);
  }, [fixtureId]);

  useEffect(() => { void reload(); }, [reload]);

  // Realtime subscription so the public scoreboard auto-updates.
  useEffect(() => {
    const sb = getSupabase();
    if (!sb || !fixtureId) return;
    const channel = sb
      .channel(`match-events-${fixtureId}`)
      .on('postgres_changes', {
        event: '*', schema: 'public', table: 'match_events',
        filter: `fixture_id=eq.${fixtureId}`,
      }, () => { void reload(); })
      .subscribe();
    return () => { void sb.removeChannel(channel); };
  }, [fixtureId, reload]);

  return { events, loading, reload };
}

export async function appendEvent(payload: {
  fixture_id: string; type: MatchEventType; minute?: number | null; note?: string | null;
  player_id?: string | null;
}) {
  const sb = getSupabase();
  if (!sb) return { error: 'not configured' };
  const { error } = await sb.from('match_events').insert(payload);
  return { error: error?.message };
}
