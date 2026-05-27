import { useCallback, useEffect, useMemo, useState } from 'react';
import { getSupabase } from '@/lib/supabase';
import type { Player, MatchEvent, RsvpStatus } from './phase3';

// ---------------------------------------------------------------------------
// Coach RSVP roll-up
// ---------------------------------------------------------------------------
export type RsvpRow = {
  user_id: string;
  status: RsvpStatus;
  note: string | null;
  display_name: string;
};

export function useRsvpRollup(fixtureId: string | undefined, enabled: boolean) {
  const [rows, setRows] = useState<RsvpRow[]>([]);
  const [loading, setLoading] = useState(true);

  const reload = useCallback(async () => {
    const sb = getSupabase();
    if (!sb || !fixtureId || !enabled) { setLoading(false); return; }
    setLoading(true);
    const { data } = await sb
      .from('rsvps')
      .select('user_id, status, note, profiles(display_name)')
      .eq('fixture_id', fixtureId);
    if (data) {
      setRows(data.map((r) => {
        const profile = (r as { profiles?: { display_name?: string } | null }).profiles;
        return {
          user_id: r.user_id,
          status: r.status as RsvpStatus,
          note: r.note ?? null,
          display_name: profile?.display_name ?? 'Member',
        };
      }));
    }
    setLoading(false);
  }, [fixtureId, enabled]);

  useEffect(() => { void reload(); }, [reload]);

  // Realtime so coaches see RSVPs come in live.
  useEffect(() => {
    const sb = getSupabase();
    if (!sb || !fixtureId || !enabled) return;
    const channel = sb
      .channel(`rsvps-${fixtureId}`)
      .on('postgres_changes', {
        event: '*', schema: 'public', table: 'rsvps',
        filter: `fixture_id=eq.${fixtureId}`,
      }, () => { void reload(); })
      .subscribe();
    return () => { void sb.removeChannel(channel); };
  }, [fixtureId, enabled, reload]);

  return { rows, loading };
}

// ---------------------------------------------------------------------------
// League table
// ---------------------------------------------------------------------------
export type LeagueRow = {
  team_id: string;
  team_name: string;
  team_slug: string;
  played: number;
  won: number;
  drawn: number;
  lost: number;
  goals_for: number;
  goals_against: number;
  goal_diff: number;
  points: number;
};

export function useLeagueTable(competition?: string) {
  const [rows, setRows] = useState<LeagueRow[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    let mounted = true;
    const sb = getSupabase();
    if (!sb) { setLoading(false); return; }
    (async () => {
      let q = sb
        .from('fixtures')
        .select('team_id, score_for, score_against, competition, teams(name, slug)')
        .eq('status', 'final');
      if (competition) q = q.eq('competition', competition);
      const { data } = await q;
      if (!mounted || !data) { if (mounted) setLoading(false); return; }

      const acc = new Map<string, LeagueRow>();
      for (const raw of data) {
        const r = raw as unknown as {
          team_id: string; score_for: number | null; score_against: number | null;
          teams?: { name?: string; slug?: string } | null;
        };
        if (r.score_for == null || r.score_against == null) continue;
        const row = acc.get(r.team_id) ?? {
          team_id: r.team_id,
          team_name: r.teams?.name ?? '—',
          team_slug: r.teams?.slug ?? '',
          played: 0, won: 0, drawn: 0, lost: 0,
          goals_for: 0, goals_against: 0, goal_diff: 0, points: 0,
        };
        row.played += 1;
        row.goals_for += r.score_for;
        row.goals_against += r.score_against;
        if (r.score_for > r.score_against)      { row.won += 1;  row.points += 3; }
        else if (r.score_for === r.score_against) { row.drawn += 1; row.points += 1; }
        else                                     { row.lost += 1; }
        row.goal_diff = row.goals_for - row.goals_against;
        acc.set(r.team_id, row);
      }
      const list = [...acc.values()].sort(
        (a, b) => b.points - a.points || b.goal_diff - a.goal_diff || b.goals_for - a.goals_for,
      );
      if (mounted) { setRows(list); setLoading(false); }
    })();
    return () => { mounted = false; };
  }, [competition]);

  return { rows, loading };
}

// ---------------------------------------------------------------------------
// Player profile + stats
// ---------------------------------------------------------------------------
export type PlayerStats = {
  goals: number;
  yellows: number;
  reds: number;
  appearances: number; // matches in which this player has any event
};

export function usePlayerProfile(playerId: string | undefined) {
  const [player, setPlayer] = useState<(Player & { team_name?: string; team_slug?: string }) | null>(null);
  const [events, setEvents] = useState<MatchEvent[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    let mounted = true;
    const sb = getSupabase();
    if (!sb || !playerId) { setLoading(false); return; }
    (async () => {
      const [{ data: p }, { data: ev }] = await Promise.all([
        sb.from('players')
          .select('*, teams(name, slug)')
          .eq('id', playerId)
          .single(),
        sb.from('match_events')
          .select('*')
          .eq('player_id', playerId)
          .order('created_at', { ascending: false }),
      ]);
      if (!mounted) return;
      if (p) {
        const row = p as unknown as Player & { teams?: { name?: string; slug?: string } | null };
        setPlayer({ ...row, team_name: row.teams?.name, team_slug: row.teams?.slug });
      }
      if (ev) setEvents(ev as MatchEvent[]);
      setLoading(false);
    })();
    return () => { mounted = false; };
  }, [playerId]);

  const stats = useMemo<PlayerStats>(() => {
    const appearances = new Set(events.map((e) => e.fixture_id)).size;
    return {
      goals:       events.filter((e) => e.type === 'goal_for').length,
      yellows:     events.filter((e) => e.type === 'yellow').length,
      reds:        events.filter((e) => e.type === 'red').length,
      appearances,
    };
  }, [events]);

  return { player, events, stats, loading };
}

// ---------------------------------------------------------------------------
// Live notifications (news posts + fixture status changes)
// ---------------------------------------------------------------------------
export type Notification = {
  id: string;
  kind: 'news' | 'fixture';
  title: string;
  href: string;
  at: number;
};

export function useNotifications() {
  const [items, setItems] = useState<Notification[]>([]);

  useEffect(() => {
    const sb = getSupabase();
    if (!sb) return;
    const channel = sb
      .channel('wfa-notifications')
      .on('postgres_changes', {
        event: 'INSERT', schema: 'public', table: 'news',
      }, (payload) => {
        const r = payload.new as { id: string; slug: string; title: string; published_at: string | null };
        if (!r.published_at) return;
        push({ id: `news-${r.id}`, kind: 'news', title: r.title, href: '/news', at: Date.now() });
      })
      .on('postgres_changes', {
        event: 'UPDATE', schema: 'public', table: 'fixtures',
      }, (payload) => {
        const before = payload.old as { status?: string };
        const after  = payload.new as { id: string; status: string; opponent: string };
        if (before.status === after.status) return;
        if (after.status === 'live') {
          push({ id: `fx-live-${after.id}`, kind: 'fixture', title: `LIVE: vs ${after.opponent}`,
                 href: `/fixtures/${after.id}`, at: Date.now() });
        } else if (after.status === 'final') {
          push({ id: `fx-final-${after.id}`, kind: 'fixture', title: `Full-time vs ${after.opponent}`,
                 href: `/fixtures/${after.id}`, at: Date.now() });
        }
      })
      .subscribe();

    function push(n: Notification) {
      setItems((prev) => prev.find((p) => p.id === n.id) ? prev : [n, ...prev].slice(0, 8));
    }

    return () => { void sb.removeChannel(channel); };
  }, []);

  const dismiss = useCallback((id: string) => {
    setItems((prev) => prev.filter((p) => p.id !== id));
  }, []);

  return { items, dismiss };
}

// ---------------------------------------------------------------------------
// Player guardians (parental contact info)
// ---------------------------------------------------------------------------
export type PlayerGuardian = {
  id: string;
  player_id: string;
  user_id: string | null;
  relationship: string | null;
  guardian_name: string | null;
  guardian_email: string | null;
  guardian_phone: string | null;
  notes: string | null;
};

export function usePlayerGuardians(playerId: string | undefined) {
  const [guardians, setGuardians] = useState<PlayerGuardian[]>([]);
  const [loading, setLoading] = useState(true);
  const [canRead, setCanRead] = useState(true);

  const reload = useCallback(async () => {
    const sb = getSupabase();
    if (!sb || !playerId) { setLoading(false); return; }
    setLoading(true);
    const { data, error } = await sb
      .from('player_guardians')
      .select('id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone, notes')
      .eq('player_id', playerId)
      .order('created_at', { ascending: true });
    if (error) {
      // RLS will silently return empty for non-authorized; treat any error as no-access
      setCanRead(false);
      setGuardians([]);
    } else {
      setCanRead(true);
      setGuardians((data ?? []) as PlayerGuardian[]);
    }
    setLoading(false);
  }, [playerId]);

  useEffect(() => { void reload(); }, [reload]);

  return { guardians, loading, canRead, reload };
}

