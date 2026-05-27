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
      const { data } = await sb
        .from('gallery_photos')
        .select('*')
        .order('created_at', { ascending: false })
        .limit(limit);
      setPhotos((data ?? []) as GalleryPhoto[]);
      setLoading(false);
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
      const { data } = await sb
        .from('sponsors')
        .select('*')
        .eq('active', true)
        .order('sort_order')
        .order('name');
      setSponsors((data ?? []) as Sponsor[]);
      setLoading(false);
    })();
  }, []);

  return { sponsors, loading };
}
