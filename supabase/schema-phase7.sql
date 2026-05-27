-- Warwick FA — Phase 7: gallery + sponsors
-- Idempotent. Public read, staff write.

-- ---------------------------------------------------------------
-- Storage: gallery bucket (photos + sponsor logos)
-- ---------------------------------------------------------------
insert into storage.buckets (id, name, public)
values ('gallery', 'gallery', true)
on conflict (id) do nothing;

drop policy if exists "gallery public read"  on storage.objects;
drop policy if exists "gallery staff insert" on storage.objects;
drop policy if exists "gallery staff update" on storage.objects;
drop policy if exists "gallery staff delete" on storage.objects;

create policy "gallery public read" on storage.objects
  for select using (bucket_id = 'gallery');

create policy "gallery staff insert" on storage.objects
  for insert with check (
    bucket_id = 'gallery'
    and exists (select 1 from public.user_roles where user_id = auth.uid() and role in ('admin','coach'))
  );

create policy "gallery staff update" on storage.objects
  for update using (
    bucket_id = 'gallery'
    and exists (select 1 from public.user_roles where user_id = auth.uid() and role in ('admin','coach'))
  );

create policy "gallery staff delete" on storage.objects
  for delete using (
    bucket_id = 'gallery'
    and exists (select 1 from public.user_roles where user_id = auth.uid() and role in ('admin','coach'))
  );

-- ---------------------------------------------------------------
-- gallery_photos
-- ---------------------------------------------------------------
create table if not exists public.gallery_photos (
  id uuid primary key default gen_random_uuid(),
  url text not null,
  caption text,
  team_id uuid references public.teams(id) on delete set null,
  uploaded_by uuid references auth.users(id) on delete set null,
  created_at timestamptz not null default now()
);

create index if not exists gallery_photos_created_idx on public.gallery_photos (created_at desc);

alter table public.gallery_photos enable row level security;

drop policy if exists "gallery_photos read"        on public.gallery_photos;
drop policy if exists "gallery_photos staff write" on public.gallery_photos;

create policy "gallery_photos read" on public.gallery_photos
  for select using (true);

create policy "gallery_photos staff write" on public.gallery_photos
  for all
  using (exists (select 1 from public.user_roles where user_id = auth.uid() and role in ('admin','coach')))
  with check (exists (select 1 from public.user_roles where user_id = auth.uid() and role in ('admin','coach')));

-- ---------------------------------------------------------------
-- sponsors
-- ---------------------------------------------------------------
create table if not exists public.sponsors (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  logo_url text,
  website_url text,
  tier text not null default 'partner' check (tier in ('headline','gold','silver','partner')),
  sort_order int not null default 100,
  active boolean not null default true,
  created_at timestamptz not null default now()
);

alter table public.sponsors enable row level security;

drop policy if exists "sponsors read"        on public.sponsors;
drop policy if exists "sponsors staff write" on public.sponsors;

create policy "sponsors read" on public.sponsors
  for select using (true);

create policy "sponsors staff write" on public.sponsors
  for all
  using (exists (select 1 from public.user_roles where user_id = auth.uid() and role in ('admin','coach')))
  with check (exists (select 1 from public.user_roles where user_id = auth.uid() and role in ('admin','coach')));

-- ---------------------------------------------------------------
-- Demo sponsors (placeholder logos via dummyimage.com)
-- ---------------------------------------------------------------
insert into public.sponsors (name, logo_url, website_url, tier, sort_order)
select x.name, x.logo, x.url, x.tier, x.so
from (values
  ('BF&M Insurance',     'https://dummyimage.com/240x80/00186c/ffc72c.png&text=BF%26M',           'https://bfm.bm',     'headline', 10),
  ('Butterfield Bank',   'https://dummyimage.com/240x80/00186c/ffffff.png&text=Butterfield',       'https://butterfieldgroup.com', 'gold',     20),
  ('Belco',              'https://dummyimage.com/240x80/1e8e3e/ffffff.png&text=Belco',             'https://belco.bm',   'silver',   30),
  ('Phoenix Stores',     'https://dummyimage.com/240x80/ffc72c/00186c.png&text=Phoenix',           'https://phoenix.bm', 'partner',  40),
  ('Hamilton Princess',  'https://dummyimage.com/240x80/00186c/ffc72c.png&text=Hamilton+Princess', 'https://thehamiltonprincess.com', 'partner', 50)
) as x(name, logo, url, tier, so)
where not exists (select 1 from public.sponsors s where s.name = x.name);
