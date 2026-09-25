// Admin console overview metrics — data-hygiene + engagement counters
// modelled on the Teamo dashboard tiles.
import { useCallback, useEffect, useState } from 'react';
import { getSupabase } from '@/lib/supabase';
import { ageFromDob } from '@/data/phase15';

export type AdminStats = {
  totalMembers: number;
  activeMembers: number;
  engagedMembers: number;
  engagedPct: number;
  inactiveMembers: number;
  waitingRoom: number;
  playersNotInTeam: number;
  noGroup: number;
  guardians: number;
  playersWithoutGuardian: number;
  coaches: number;
  teams: number;
  groups: number;
  ageGroupOutliers: number;
  missingDob: number;
  optedOut: number;
};

const EMPTY: AdminStats = {
  totalMembers: 0,
  activeMembers: 0,
  engagedMembers: 0,
  engagedPct: 0,
  inactiveMembers: 0,
  waitingRoom: 0,
  playersNotInTeam: 0,
  noGroup: 0,
  guardians: 0,
  playersWithoutGuardian: 0,
  coaches: 0,
  teams: 0,
  groups: 0,
  ageGroupOutliers: 0,
  missingDob: 0,
  optedOut: 0,
};

const ENGAGEMENT_WINDOW_DAYS = 14;

/** Pull the upper age bound out of labels like "U15", "Under 9", "u7 boys". */
function ageCeiling(...labels: (string | null | undefined)[]): number | null {
  for (const label of labels) {
    const m = label?.match(/u(?:nder)?\s*-?\s*(\d{1,2})/i);
    if (m) return Number(m[1]);
  }
  return null;
}

export function useAdminStats() {
  const [stats, setStats] = useState<AdminStats>(EMPTY);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const reload = useCallback(async () => {
    const sb = getSupabase();
    if (!sb) {
      setLoading(false);
      return;
    }
    setLoading(true);
    setError(null);
    try {
      const [playersRes, playerTeamsRes, teamsRes, groupsRes, guardiansRes, coachesRes, regsRes] =
        await Promise.all([
          sb.from('players').select('id, active, team_id, date_of_birth, season_opt_in, last_active'),
          sb.from('player_teams').select('player_id, team_id'),
          sb.from('teams').select('id, name, age_group'),
          sb.from('groups').select('id, team_id'),
          sb.from('player_guardians').select('player_id'),
          sb.from('team_coaches').select('user_id'),
          sb.from('online_registrations').select('id, status'),
        ]);

      const firstError =
        playersRes.error ?? playerTeamsRes.error ?? teamsRes.error ?? groupsRes.error ??
        guardiansRes.error ?? coachesRes.error ?? regsRes.error;
      if (firstError) console.error('[useAdminStats]', firstError);

      type PlayerRow = {
        id: string;
        active: boolean;
        team_id: string | null;
        date_of_birth: string | null;
        season_opt_in: 'In' | 'Out' | null;
        last_active: string | null;
      };
      const players = (playersRes.data ?? []) as PlayerRow[];
      const links = (playerTeamsRes.data ?? []) as { player_id: string; team_id: string }[];
      const teams = (teamsRes.data ?? []) as { id: string; name: string; age_group: string | null }[];
      const groups = (groupsRes.data ?? []) as { id: string; team_id: string | null }[];
      const guardianLinks = (guardiansRes.data ?? []) as { player_id: string }[];
      const coachLinks = (coachesRes.data ?? []) as { user_id: string }[];
      const regs = (regsRes.data ?? []) as { id: string; status: string }[];

      const teamsById = new Map(teams.map((t) => [t.id, t]));
      const groupedTeamIds = new Set(groups.map((g) => g.team_id).filter(Boolean) as string[]);
      const guardedPlayerIds = new Set(guardianLinks.map((g) => g.player_id));

      const teamsByPlayer = new Map<string, string[]>();
      for (const link of links) {
        const list = teamsByPlayer.get(link.player_id) ?? [];
        list.push(link.team_id);
        teamsByPlayer.set(link.player_id, list);
      }
      for (const p of players) {
        if (!p.team_id) continue;
        const list = teamsByPlayer.get(p.id) ?? [];
        if (!list.includes(p.team_id)) list.push(p.team_id);
        teamsByPlayer.set(p.id, list);
      }

      const engagementCutoff = Date.now() - ENGAGEMENT_WINDOW_DAYS * 86_400_000;

      let activeMembers = 0;
      let engagedMembers = 0;
      let playersNotInTeam = 0;
      let noGroup = 0;
      let ageGroupOutliers = 0;
      let missingDob = 0;
      let optedOut = 0;
      let playersWithoutGuardian = 0;

      for (const p of players) {
        if (p.active) activeMembers += 1;
        if (p.season_opt_in === 'Out') optedOut += 1;
        if (!p.date_of_birth) missingDob += 1;
        if (!guardedPlayerIds.has(p.id)) playersWithoutGuardian += 1;

        const seen = p.last_active ? new Date(p.last_active).getTime() : NaN;
        if (!Number.isNaN(seen) && seen >= engagementCutoff) engagedMembers += 1;

        const playerTeams = teamsByPlayer.get(p.id) ?? [];
        if (playerTeams.length === 0) {
          playersNotInTeam += 1;
          noGroup += 1;
          continue;
        }
        if (!playerTeams.some((id) => groupedTeamIds.has(id))) noGroup += 1;

        const age = ageFromDob(p.date_of_birth);
        if (age !== null) {
          const overAge = playerTeams.every((id) => {
            const team = teamsById.get(id);
            const ceiling = ageCeiling(team?.age_group, team?.name);
            return ceiling !== null && age >= ceiling;
          });
          if (overAge) ageGroupOutliers += 1;
        }
      }

      setStats({
        totalMembers: players.length,
        activeMembers,
        engagedMembers,
        engagedPct: players.length ? Math.round((engagedMembers / players.length) * 100) : 0,
        inactiveMembers: players.length - activeMembers,
        waitingRoom: regs.filter((r) => r.status === 'pending').length,
        playersNotInTeam,
        noGroup,
        guardians: guardianLinks.length,
        playersWithoutGuardian,
        coaches: new Set(coachLinks.map((c) => c.user_id)).size,
        teams: teams.length,
        groups: groups.length,
        ageGroupOutliers,
        missingDob,
        optedOut,
      });
    } catch (e) {
      console.error('[useAdminStats] threw', e);
      setError(e instanceof Error ? e.message : 'Failed to load stats');
      setStats(EMPTY);
    } finally {
      setLoading(false);
    }
  }, []);

  useEffect(() => {
    void reload();
  }, [reload]);

  return { stats, loading, error, reload };
}
