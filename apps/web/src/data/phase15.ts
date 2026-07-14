// Warwick FA — Phase 15 data hooks (Teamo-style member profile)
//
// Provides:
//   - useGroupTree()           — hierarchical groups + team pointers
//   - usePlayerTeams(id)       — all teams a player is rostered on
//   - usePlayerGroups(id)      — all groups a player is attached to
//   - usePlayerMedical(id)     — emergency/medical panel
//   - usePlayerInfo(id)        — Info tab custom fields
//   - usePlayerQualifications(id)
//   - usePlayerActivity(id)    — activity history timeline
//   - useExtendedPlayer(id)    — enriched Player with all Teamo fields

import { useCallback, useEffect, useState } from 'react';
import { getSupabase } from '@/lib/supabase';

// ---------------------------------------------------------------------------
// Types
// ---------------------------------------------------------------------------
export type GroupKind = 'club' | 'club_section' | 'registration' | 'sub_section' | 'team';

export type Group = {
  id: string;
  parent_id: string | null;
  name: string;
  kind: GroupKind;
  team_id: string | null;
  slug: string | null;
  short_code: string | null;
  color: string | null;
  sort_order: number;
};

export type GroupNode = Group & { children: GroupNode[] };

export type ExtendedPlayer = {
  id: string;
  team_id: string | null;
  full_name: string;
  position: string | null;
  squad_number: number | null;
  shirt_number: number | null;
  photo_url: string | null;
  bio: string | null;
  active: boolean;
  date_of_birth: string | null;
  gender: string | null;
  member_number: string | null;
  email: string | null;
  phone: string | null;
  joined_at: string | null;
  occupation: string | null;
  first_aider: boolean;
  photo_permission: boolean;
  publication_consent: boolean;
  has_medical_data: boolean;
  address_line1: string | null;
  address_city: string | null;
  address_country: string | null;
  address_postcode: string | null;
  family_code: string | null;
  season_opt_in: 'In' | 'Out' | null;
  ngb_registration: boolean;
  notes: string | null;
  last_active: string | null;
};

export type PlayerTeamLink = {
  team_id: string;
  team_name: string;
  team_slug: string;
  is_primary: boolean;
  role: string;
};

export type PlayerMedical = {
  player_id: string;
  physician_name: string | null;
  physician_phone: string | null;
  allergies: string | null;
  medical_conditions: string | null;
  medications: string | null;
  notes: string | null;
};

export type PlayerInfo = {
  player_id: string;
  player_email: string | null;
  player_cell: string | null;
  years_playing: number | null;
  previous_clubs: string | null;
  uniform_jersey: string | null;
  uniform_shorts: string | null;
  uniform_notes: string | null;
  school: string | null;
  u18_consent: boolean;
  extra: Record<string, unknown>;
};

export type Qualification = {
  id: string;
  player_id: string;
  title: string;
  issuer: string | null;
  status: 'active' | 'expired' | 'pending' | 'revoked';
  issued_on: string | null;
  expires_on: string | null;
  reference: string | null;
  notes: string | null;
};

export type ActivityItem = {
  id: string;
  player_id: string;
  kind:
    | 'joined_team' | 'left_team' | 'joined_group' | 'left_group'
    | 'email_sent' | 'sms_sent' | 'note' | 'payment' | 'rsvp'
    | 'attendance' | 'qualification' | 'profile_update' | 'other';
  title: string;
  detail: string | null;
  ref_team_id: string | null;
  ref_group_id: string | null;
  occurred_at: string;
};

// ---------------------------------------------------------------------------
// useGroupTree
// ---------------------------------------------------------------------------
export function useGroupTree() {
  const [flat, setFlat] = useState<Group[]>([]);
  const [loading, setLoading] = useState(true);

  const reload = useCallback(async () => {
    const sb = getSupabase();
    if (!sb) { setLoading(false); return; }
    setLoading(true);
    try {
      const { data, error } = await sb
        .from('groups')
        .select('*')
        .order('sort_order', { ascending: true })
        .order('name', { ascending: true });
      if (error) console.error('[useGroupTree]', error);
      setFlat((data ?? []) as Group[]);
    } catch (e) {
      console.error('[useGroupTree] threw', e);
      setFlat([]);
    } finally {
      setLoading(false);
    }
  }, []);

  useEffect(() => { void reload(); }, [reload]);

  const tree: GroupNode[] = (() => {
    const byId = new Map<string, GroupNode>();
    for (const g of flat) byId.set(g.id, { ...g, children: [] });
    const roots: GroupNode[] = [];
    for (const n of byId.values()) {
      if (n.parent_id && byId.has(n.parent_id)) {
        byId.get(n.parent_id)!.children.push(n);
      } else {
        roots.push(n);
      }
    }
    return roots;
  })();

  return { flat, tree, loading, reload };
}

// ---------------------------------------------------------------------------
// usePlayerTeams
// ---------------------------------------------------------------------------
export function usePlayerTeams(playerId: string | undefined) {
  const [links, setLinks] = useState<PlayerTeamLink[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    let mounted = true;
    const sb = getSupabase();
    if (!sb || !playerId) { setLoading(false); return; }
    (async () => {
      try {
        const { data, error } = await sb
          .from('player_teams')
          .select('team_id, is_primary, role, teams(name, slug)')
          .eq('player_id', playerId)
          .order('is_primary', { ascending: false });
        if (error) console.error('[usePlayerTeams]', error);
        type Row = {
          team_id: string; is_primary: boolean; role: string;
          teams?: { name?: string; slug?: string } | null;
        };
        if (mounted) {
          setLinks(((data ?? []) as unknown as Row[]).map((r) => ({
            team_id: r.team_id,
            team_name: r.teams?.name ?? '—',
            team_slug: r.teams?.slug ?? '',
            is_primary: !!r.is_primary,
            role: r.role,
          })));
        }
      } catch (e) {
        console.error('[usePlayerTeams] threw', e);
        if (mounted) setLinks([]);
      } finally {
        if (mounted) setLoading(false);
      }
    })();
    return () => { mounted = false; };
  }, [playerId]);

  return { links, loading };
}

// ---------------------------------------------------------------------------
// useExtendedPlayer — pulls all Teamo columns off public.players
// ---------------------------------------------------------------------------
export function useExtendedPlayer(playerId: string | undefined) {
  const [player, setPlayer] = useState<(ExtendedPlayer & { team_name?: string; team_slug?: string }) | null>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    let mounted = true;
    const sb = getSupabase();
    if (!sb || !playerId) { setLoading(false); return; }
    (async () => {
      try {
        const { data, error } = await sb
          .from('players')
          .select('*, teams!players_team_id_fkey(name, slug)')
          .eq('id', playerId)
          .maybeSingle();
        if (error) console.error('[useExtendedPlayer]', error);
        if (!mounted) return;
        if (data) {
          const row = data as ExtendedPlayer & { teams?: { name?: string; slug?: string } | null };
          setPlayer({ ...row, team_name: row.teams?.name, team_slug: row.teams?.slug });
        } else {
          setPlayer(null);
        }
      } catch (e) {
        console.error('[useExtendedPlayer] threw', e);
        if (mounted) setPlayer(null);
      } finally {
        if (mounted) setLoading(false);
      }
    })();
    return () => { mounted = false; };
  }, [playerId]);

  return { player, loading, setPlayer };
}

// ---------------------------------------------------------------------------
// usePlayerMedical / usePlayerInfo — single-row-per-player upsertable panels
// ---------------------------------------------------------------------------
export function usePlayerMedical(playerId: string | undefined) {
  const [medical, setMedical] = useState<PlayerMedical | null>(null);
  const [loading, setLoading] = useState(true);
  const [canRead, setCanRead] = useState(true);

  const reload = useCallback(async () => {
    const sb = getSupabase();
    if (!sb || !playerId) { setLoading(false); return; }
    setLoading(true);
    try {
      const { data, error } = await sb
        .from('player_medical')
        .select('*')
        .eq('player_id', playerId)
        .maybeSingle();
      if (error) { setCanRead(false); setMedical(null); }
      else { setCanRead(true); setMedical((data ?? null) as PlayerMedical | null); }
    } catch (e) {
      console.error('[usePlayerMedical] threw', e);
      setMedical(null); setCanRead(false);
    } finally {
      setLoading(false);
    }
  }, [playerId]);

  useEffect(() => { void reload(); }, [reload]);
  return { medical, canRead, loading, reload };
}

export function usePlayerInfo(playerId: string | undefined) {
  const [info, setInfo] = useState<PlayerInfo | null>(null);
  const [loading, setLoading] = useState(true);
  const [canRead, setCanRead] = useState(true);

  const reload = useCallback(async () => {
    const sb = getSupabase();
    if (!sb || !playerId) { setLoading(false); return; }
    setLoading(true);
    try {
      const { data, error } = await sb
        .from('player_info')
        .select('*')
        .eq('player_id', playerId)
        .maybeSingle();
      if (error) { setCanRead(false); setInfo(null); }
      else { setCanRead(true); setInfo((data ?? null) as PlayerInfo | null); }
    } catch (e) {
      console.error('[usePlayerInfo] threw', e);
      setInfo(null); setCanRead(false);
    } finally {
      setLoading(false);
    }
  }, [playerId]);

  useEffect(() => { void reload(); }, [reload]);
  return { info, canRead, loading, reload };
}

// ---------------------------------------------------------------------------
// usePlayerQualifications
// ---------------------------------------------------------------------------
export function usePlayerQualifications(playerId: string | undefined) {
  const [items, setItems] = useState<Qualification[]>([]);
  const [loading, setLoading] = useState(true);

  const reload = useCallback(async () => {
    const sb = getSupabase();
    if (!sb || !playerId) { setLoading(false); return; }
    setLoading(true);
    try {
      const { data, error } = await sb
        .from('player_qualifications')
        .select('*')
        .eq('player_id', playerId)
        .order('created_at', { ascending: false });
      if (error) console.error('[usePlayerQualifications]', error);
      setItems((data ?? []) as Qualification[]);
    } catch (e) {
      console.error('[usePlayerQualifications] threw', e);
      setItems([]);
    } finally {
      setLoading(false);
    }
  }, [playerId]);

  useEffect(() => { void reload(); }, [reload]);
  return { items, loading, reload };
}

// ---------------------------------------------------------------------------
// usePlayerActivity
// ---------------------------------------------------------------------------
export function usePlayerActivity(playerId: string | undefined) {
  const [items, setItems] = useState<ActivityItem[]>([]);
  const [loading, setLoading] = useState(true);

  const reload = useCallback(async () => {
    const sb = getSupabase();
    if (!sb || !playerId) { setLoading(false); return; }
    setLoading(true);
    try {
      const { data, error } = await sb
        .from('player_activity')
        .select('*')
        .eq('player_id', playerId)
        .order('occurred_at', { ascending: false })
        .limit(200);
      if (error) console.error('[usePlayerActivity]', error);
      setItems((data ?? []) as ActivityItem[]);
    } catch (e) {
      console.error('[usePlayerActivity] threw', e);
      setItems([]);
    } finally {
      setLoading(false);
    }
  }, [playerId]);

  useEffect(() => { void reload(); }, [reload]);
  return { items, loading, reload };
}

// ---------------------------------------------------------------------------
// Small utility — calculate age from DoB (ISO date string).
// ---------------------------------------------------------------------------
export function ageFromDob(dob: string | null | undefined): number | null {
  if (!dob) return null;
  const d = new Date(dob);
  if (isNaN(d.getTime())) return null;
  const now = new Date();
  let age = now.getFullYear() - d.getFullYear();
  const m = now.getMonth() - d.getMonth();
  if (m < 0 || (m === 0 && now.getDate() < d.getDate())) age--;
  return age;
}
