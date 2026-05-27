-- Warwick FA — Phase 5: team header photos
-- Adds a banner image URL to each team and populates with a deterministic
-- picsum.photos placeholder seeded on the slug. Idempotent.

alter table public.teams add column if not exists photo_url text;

update public.teams
set photo_url = 'https://picsum.photos/seed/wfa-' || slug || '/1600/500'
where photo_url is null;
