-- Warwick FA — Phase 6
-- 1) Storage bucket for team banners (public read, staff write).
-- 2) Training schedule table with RLS.
-- Idempotent: safe to re-run.

-- ---------------------------------------------------------------
-- Storage: team-media bucket (used for team banners)
-- ---------------------------------------------------------------
insert into storage.buckets (id, name, public)
values ('team-media', 'team-media', true)
on conflict (id) do nothing;

drop policy if exists "team-media public read"   on storage.objects;
drop policy if exists "team-media staff insert"  on storage.objects;
drop policy if exists "team-media staff update"  on storage.objects;
drop policy if exists "team-media staff delete"  on storage.objects;

create policy "team-media public read" on storage.objects
  for select using (bucket_id = 'team-media');

create policy "team-media staff insert" on storage.objects
  for insert with check (
    bucket_id = 'team-media'
    and exists (
      select 1 from public.user_roles
      where user_id = auth.uid() and role in ('admin','coach')
    )
  );

create policy "team-media staff update" on storage.objects
  for update using (
    bucket_id = 'team-media'
    and exists (
      select 1 from public.user_roles
      where user_id = auth.uid() and role in ('admin','coach')
    )
  );

create policy "team-media staff delete" on storage.objects
  for delete using (
    bucket_id = 'team-media'
    and exists (
      select 1 from public.user_roles
      where user_id = auth.uid() and role in ('admin','coach')
    )
  );

-- ---------------------------------------------------------------
-- Training sessions
-- ---------------------------------------------------------------
create table if not exists public.training_sessions (
  id uuid primary key default gen_random_uuid(),
  team_id uuid not null references public.teams(id) on delete cascade,
  weekday smallint not null check (weekday between 0 and 6),  -- 0 = Sun .. 6 = Sat
  starts_at time not null,
  ends_at time,
  location text,
  notes text,
  active boolean not null default true,
  created_at timestamptz not null default now()
);

create index if not exists training_sessions_team_idx on public.training_sessions (team_id);

alter table public.training_sessions enable row level security;

drop policy if exists "training read"        on public.training_sessions;
drop policy if exists "training staff write" on public.training_sessions;

create policy "training read" on public.training_sessions
  for select using (true);

create policy "training staff write" on public.training_sessions
  for all
  using (exists (select 1 from public.user_roles where user_id = auth.uid() and role in ('admin','coach')))
  with check (exists (select 1 from public.user_roles where user_id = auth.uid() and role in ('admin','coach')));

-- ---------------------------------------------------------------
-- Demo training schedule (one or two slots per team)
-- ---------------------------------------------------------------
insert into public.training_sessions (team_id, weekday, starts_at, ends_at, location, notes)
select t.id, x.weekday, x.starts_at::time, x.ends_at::time, x.location, x.notes
from public.teams t
join (values
  ('mens-first',     2, '19:00', '20:30', 'Warwick Academy Pitch', 'Full squad'),
  ('mens-first',     4, '19:00', '20:30', 'Warwick Academy Pitch', 'Tactical'),
  ('mens-reserves',  2, '19:00', '20:30', 'Warwick Academy Pitch', 'Joint with first team'),
  ('u17',            1, '17:30', '19:00', 'Warwick Academy Pitch', null),
  ('u17',            3, '17:30', '19:00', 'Warwick Academy Pitch', null),
  ('u15',            1, '17:00', '18:30', 'Warwick Academy Pitch', null),
  ('u15',            3, '17:00', '18:30', 'Warwick Academy Pitch', null),
  ('u13',            2, '17:00', '18:00', 'Warwick Academy Pitch', null),
  ('u13',            4, '17:00', '18:00', 'Warwick Academy Pitch', null),
  ('u11',            6, '10:00', '11:00', 'Warwick Academy Pitch', 'Saturday mini-soccer')
) as x(slug, weekday, starts_at, ends_at, location, notes) on x.slug = t.slug
where not exists (
  select 1 from public.training_sessions ts
  where ts.team_id = t.id and ts.weekday = x.weekday and ts.starts_at = x.starts_at::time
);
