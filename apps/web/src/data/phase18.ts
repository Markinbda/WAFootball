// Coach portal data — drills library, team documents, team messages.
import { useCallback, useEffect, useState } from 'react';
import { getSupabase } from '@/lib/supabase';

export const DRILL_CATEGORIES = [
  'General', 'Warm-up', 'Technical', 'Possession', 'Finishing', 'Defending',
  'Set Pieces', 'Goalkeeping', 'Fitness', 'Small-sided Game', 'Cool-down',
] as const;

export const DOCUMENT_CATEGORIES = [
  'General', 'Policy', 'Consent Form', 'Medical', 'Schedule',
  'Training Plan', 'Match Report', 'Other',
] as const;

export const MESSAGE_AUDIENCES = ['guardians', 'players', 'coaches', 'everyone'] as const;

export type Drill = {
  id: string;
  team_id: string | null;
  title: string;
  category: string;
  age_group: string | null;
  duration_min: number | null;
  players_min: number | null;
  players_max: number | null;
  equipment: string | null;
  description: string | null;
  coaching_points: string | null;
  video_url: string | null;
  diagram_url: string | null;
  created_at: string;
};

export type TeamDocument = {
  id: string;
  team_id: string | null;
  title: string;
  category: string;
  url: string;
  file_name: string | null;
  file_size: number | null;
  notes: string | null;
  visible_to_guardians: boolean;
  created_at: string;
};

export type TeamMessage = {
  id: string;
  team_id: string | null;
  subject: string;
  body: string;
  audience: (typeof MESSAGE_AUDIENCES)[number];
  channels: string[];
  status: 'draft' | 'pending' | 'sending' | 'sent' | 'failed';
  sent_at: string | null;
  error: string | null;
  created_at: string;
};

/** Shared loader: team-scoped rows plus any club-wide rows (team_id is null). */
function useTeamScoped<T>(table: string, teamId: string | null, orderBy: string, ascending: boolean) {
  const [rows, setRows] = useState<T[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const reload = useCallback(async () => {
    const sb = getSupabase();
    if (!sb) { setLoading(false); return; }
    setLoading(true);
    setError(null);
    try {
      let query = sb.from(table).select('*').order(orderBy, { ascending });
      if (teamId) query = query.or(`team_id.eq.${teamId},team_id.is.null`);
      const { data, error } = await query;
      if (error) throw error;
      setRows((data ?? []) as T[]);
    } catch (e) {
      console.error(`[${table}] load failed`, e);
      setError(e instanceof Error ? e.message : 'Failed to load');
      setRows([]);
    } finally {
      setLoading(false);
    }
  }, [table, teamId, orderBy, ascending]);

  useEffect(() => { void reload(); }, [reload]);
  return { rows, loading, error, reload };
}

export function useDrills(teamId: string | null) {
  const { rows, loading, error, reload } = useTeamScoped<Drill>('drills', teamId, 'title', true);
  return { drills: rows, loading, error, reload };
}

export function useTeamDocuments(teamId: string | null) {
  const { rows, loading, error, reload } = useTeamScoped<TeamDocument>('team_documents', teamId, 'created_at', false);
  return { documents: rows, loading, error, reload };
}

export function useTeamMessages(teamId: string | null) {
  const { rows, loading, error, reload } = useTeamScoped<TeamMessage>('team_messages', teamId, 'created_at', false);
  return { messages: rows, loading, error, reload };
}
