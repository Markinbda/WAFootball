import { useCallback, useEffect, useMemo, useState } from 'react';
import { getSupabase } from '@/lib/supabase';

// ---------------------------------------------------------------------------
// Training sessions
// ---------------------------------------------------------------------------
export type TrainingSession = {
  id: string;
  team_id: string;
  weekday: number; // 0=Sun..6=Sat
  starts_at: string; // 'HH:MM:SS'
  ends_at: string | null;
  location: string | null;
  notes: string | null;
  active: boolean;
};

export const WEEKDAYS = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'] as const;
export const WEEKDAYS_LONG = [
  'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday',
] as const;

export function fmtTime(t: string | null): string {
  if (!t) return '';
  const [h, m] = t.split(':');
  const hh = Number(h);
  const suffix = hh >= 12 ? 'pm' : 'am';
  const display = ((hh + 11) % 12) + 1;
  return `${display}:${m}${suffix}`;
}

export function useTrainingSessions(teamId?: string) {
  const [sessions, setSessions] = useState<TrainingSession[]>([]);
  const [loading, setLoading] = useState(true);

  const reload = useCallback(async () => {
    const sb = getSupabase();
    if (!sb) { setLoading(false); return; }
    setLoading(true);
    try {
      let q = sb.from('training_sessions').select('*').eq('active', true);
      if (teamId) q = q.eq('team_id', teamId);
      const { data, error } = await q.order('weekday').order('starts_at');
      if (error) console.error('[useTrainingSessions]', error);
      setSessions((data ?? []) as TrainingSession[]);
    } catch (e) {
      console.error('[useTrainingSessions] threw', e);
      setSessions([]);
    } finally {
      setLoading(false);
    }
  }, [teamId]);

  useEffect(() => { void reload(); }, [reload]);

  return { sessions, loading, reload };
}

// ---------------------------------------------------------------------------
// Top scorers / discipline leaderboards
// ---------------------------------------------------------------------------
export type LeaderRow = {
  player_id: string;
  full_name: string;
  team_name: string;
  team_slug: string;
  count: number;
};

type RawEvent = {
  player_id: string | null;
  type: string;
  players: { full_name: string; teams: { name: string; slug: string } | null } | null;
};

export function useLeaderboards() {
  const [rows, setRows] = useState<RawEvent[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const sb = getSupabase();
    if (!sb) { setLoading(false); return; }
    (async () => {
      try {
        const { data, error } = await sb
          .from('match_events')
          .select('player_id, type, players(full_name, teams!players_team_id_fkey(name, slug))')
          .in('type', ['goal_for', 'yellow', 'red'])
          .not('player_id', 'is', null);
        if (error) console.error('[useLeaderboards]', error);
        setRows((data ?? []) as unknown as RawEvent[]);
      } catch (e) {
        console.error('[useLeaderboards] threw', e);
        setRows([]);
      } finally {
        setLoading(false);
      }
    })();
  }, []);

  return useMemo(() => {
    const agg = (kind: string): LeaderRow[] => {
      const map = new Map<string, LeaderRow>();
      for (const r of rows) {
        if (r.type !== kind || !r.player_id || !r.players) continue;
        const key = r.player_id;
        const team = r.players.teams;
        const existing = map.get(key);
        if (existing) { existing.count += 1; }
        else {
          map.set(key, {
            player_id: key,
            full_name: r.players.full_name,
            team_name: team?.name ?? '',
            team_slug: team?.slug ?? '',
            count: 1,
          });
        }
      }
      return [...map.values()].sort((a, b) => b.count - a.count);
    };
    return {
      loading,
      topScorers: agg('goal_for'),
      yellows: agg('yellow'),
      reds: agg('red'),
    };
  }, [rows, loading]);
}
