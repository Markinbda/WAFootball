import { useEffect, useState } from 'react';
import { getSupabase } from '@/lib/supabase';

export type GalleryPhoto = {
  id: string;
  url: string;
  caption: string | null;
  team_id: string | null;
  created_at: string;
};

export type Sponsor = {
  id: string;
  name: string;
  logo_url: string | null;
  website_url: string | null;
  tier: 'headline' | 'gold' | 'silver' | 'partner';
  sort_order: number;
  active: boolean;
};

export function useGallery(limit = 60) {
  const [photos, setPhotos] = useState<GalleryPhoto[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const sb = getSupabase();
    if (!sb) { setLoading(false); return; }
    (async () => {
      try {
        const { data, error } = await sb
          .from('gallery_photos')
          .select('*')
          .order('created_at', { ascending: false })
          .limit(limit);
        if (error) console.error('[useGallery]', error);
        setPhotos((data ?? []) as GalleryPhoto[]);
      } catch (e) {
        console.error('[useGallery] threw', e);
        setPhotos([]);
      } finally {
        setLoading(false);
      }
    })();
  }, [limit]);

  return { photos, loading };
}

export function useSponsors() {
  const [sponsors, setSponsors] = useState<Sponsor[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const sb = getSupabase();
    if (!sb) { setLoading(false); return; }
    (async () => {
      try {
        const { data, error } = await sb
          .from('sponsors')
          .select('*')
          .eq('active', true)
          .order('sort_order')
          .order('name');
        if (error) console.error('[useSponsors]', error);
        setSponsors((data ?? []) as Sponsor[]);
      } catch (e) {
        console.error('[useSponsors] threw', e);
        setSponsors([]);
      } finally {
        setLoading(false);
      }
    })();
  }, []);

  return { sponsors, loading };
}
