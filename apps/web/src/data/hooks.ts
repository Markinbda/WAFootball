import { useEffect, useState } from 'react';
import { getSupabase } from '@/lib/supabase';
import {
  TEAMS, UPCOMING_FIXTURES, RECENT_RESULTS, NEWS,
  type Team, type Fixture, type Result, type NewsItem,
} from './seed';

type State<T> = { data: T; loading: boolean; error: string | null; source: 'seed' | 'supabase' };

function useResource<T>(
  fallback: T,
  loader: (sb: NonNullable<ReturnType<typeof getSupabase>>) => Promise<T | null>,
): State<T> {
  const [data, setData] = useState<T>(fallback);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [source, setSource] = useState<'seed' | 'supabase'>('seed');

  useEffect(() => {
    let mounted = true;
    const sb = getSupabase();
    if (!sb) {
      setLoading(false);
      return;
    }
    (async () => {
      try {
        const result = await loader(sb);
        if (!mounted) return;
        if (result && (Array.isArray(result) ? result.length > 0 : true)) {
          setData(result);
          setSource('supabase');
        }
      } catch (e) {
        if (mounted) setError(e instanceof Error ? e.message : String(e));
      } finally {
        if (mounted) setLoading(false);
      }
    })();
    return () => { mounted = false; };
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  return { data, loading, error, source };
}

export function useTeams() {
  return useResource<Team[]>(TEAMS, async (sb) => {
    const { data, error } = await sb.from('teams').select('id, slug, name, age_group, coach, blurb, photo_url').order('name');
    if (error) throw error;
    return data?.map((r) => ({
      id: r.id,
      slug: r.slug,
      name: r.name,
      ageGroup: r.age_group,
      coach: r.coach ?? 'TBC',
      blurb: r.blurb ?? '',
      photoUrl: r.photo_url ?? null,
    })) ?? null;
  });
}

export function useFixtures() {
  return useResource<Fixture[]>(UPCOMING_FIXTURES, async (sb) => {
    const { data, error } = await sb
      .from('fixtures')
      .select('id, opponent, kickoff_at, venue, competition, status, score_for, teams(name)')
      .in('status', ['scheduled', 'live', 'postponed'])
      .order('kickoff_at', { ascending: true });
    if (error) throw error;
    return data?.map((r) => ({
      id: r.id,
      // supabase returns teams as object when foreign-key alias used
      team: ((r as { teams?: { name?: string } | null }).teams?.name) ?? '—',
      opponent: r.opponent,
      date: r.kickoff_at,
      venue: r.venue as 'Home' | 'Away',
      competition: r.competition,
    })) ?? null;
  });
}

export function useResults() {
  return useResource<Result[]>(RECENT_RESULTS, async (sb) => {
    const { data, error } = await sb
      .from('fixtures')
      .select('id, opponent, kickoff_at, venue, competition, score_for, score_against, teams(name)')
      .eq('status', 'final')
      .order('kickoff_at', { ascending: false })
      .limit(20);
    if (error) throw error;
    return data?.map((r) => ({
      id: r.id,
      team: ((r as { teams?: { name?: string } | null }).teams?.name) ?? '—',
      opponent: r.opponent,
      date: r.kickoff_at,
      scoreFor: r.score_for ?? 0,
      scoreAgainst: r.score_against ?? 0,
      venue: r.venue as 'Home' | 'Away',
      competition: r.competition,
    })) ?? null;
  });
}

export function useNews() {
  return useResource<NewsItem[]>(NEWS, async (sb) => {
    const { data, error } = await sb
      .from('news')
      .select('id, slug, title, excerpt, published_at, tag')
      .not('published_at', 'is', null)
      .order('published_at', { ascending: false })
      .limit(20);
    if (error) throw error;
    return data?.map((r) => ({
      id: r.id,
      slug: r.slug,
      title: r.title,
      excerpt: r.excerpt ?? '',
      date: r.published_at ?? '',
      author: 'Warwick FA',
      tag: r.tag ?? 'News',
    })) ?? null;
  });
}

export type TickerEntry = {
  id: string;
  label: string;
  href: string | null;
  tag: string;
  sort: number;
};

export const TICKER_TAGS = ['NEWS', 'RESULT', 'FIXTURE', 'NOTICE', 'EVENT'] as const;
export type TickerTag = typeof TICKER_TAGS[number];

export function useTickerEntries() {
  return useResource<TickerEntry[]>([], async (sb) => {
    const { data, error } = await sb
      .from('ticker_entries')
      .select('id, label, href, tag, sort')
      .eq('active', true)
      .order('sort', { ascending: true })
      .order('created_at', { ascending: false })
      .limit(6);
    if (error) throw error;
    return (data ?? []).map((r) => ({
      id: r.id as string,
      label: r.label as string,
      href: (r.href as string | null) ?? null,
      tag: (r.tag as string) ?? 'NEWS',
      sort: (r.sort as number) ?? 0,
    }));
  });
}
