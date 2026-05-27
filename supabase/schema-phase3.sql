-- Warwick FA — Phase 3 schema (players, RSVPs, live match events, storage)
-- Run AFTER schema.sql. Idempotent.

-- =========================================================
-- PLAYERS
-- =========================================================
create table if not exists public.players (
  id            uuid primary key default gen_random_uuid(),
  team_id       uuid not null references public.teams(id) on delete cascade,
  full_name     text not null,
  position      text,
  squad_number  int,
  photo_url     text,
  bio           text,
  active        boolean not null default true,
  created_at    timestamptz not null default now()
);

create index if not exists players_team_idx on public.players (team_id);

alter table public.players enable row level security;

drop policy if exists "public read players"  on public.players;
drop policy if exists "staff writes players" on public.players;

create policy "public read players"
  on public.players for select using (active = true or public.has_role('admin') or public.has_role('coach'));

create policy "staff writes players"
  on public.players for all
  using (public.has_role('admin') or public.has_role('coach'))
  with check (public.has_role('admin') or public.has_role('coach'));

-- =========================================================
-- RSVPS (per-fixture availability)
-- =========================================================
do $$
begin
  if not exists (select 1 from pg_type where typname = 'rsvp_status') then
    create type rsvp_status as enum ('yes', 'no', 'maybe');
  end if;
end $$;

create table if not exists public.rsvps (
  fixture_id  uuid not null references public.fixtures(id) on delete cascade,
  user_id     uuid not null references auth.users(id) on delete cascade,
  status      rsvp_status not null,
  note        text,
  updated_at  timestamptz not null default now(),
  primary key (fixture_id, user_id)
);

alter table public.rsvps enable row level security;

drop policy if exists "user manages own rsvp"   on public.rsvps;
drop policy if exists "staff reads all rsvps"   on public.rsvps;

-- A signed-in user may insert/update/delete only their own rsvp.
create policy "user manages own rsvp"
  on public.rsvps for all
  using (user_id = auth.uid())
  with check (user_id = auth.uid());

-- Coaches/admins can see everyone's RSVPs.
create policy "staff reads all rsvps"
  on public.rsvps for select
  using (public.has_role('admin') or public.has_role('coach'));

-- =========================================================
-- MATCH EVENTS (live scoring)
-- =========================================================
do $$
begin
  if not exists (select 1 from pg_type where typname = 'match_event_type') then
    create type match_event_type as enum ('goal_for','goal_against','yellow','red','sub_on','sub_off','note','kickoff','halftime','fulltime');
  end if;
end $$;

create table if not exists public.match_events (
  id          uuid primary key default gen_random_uuid(),
  fixture_id  uuid not null references public.fixtures(id) on delete cascade,
  minute      int,
  type        match_event_type not null,
  player_id   uuid references public.players(id) on delete set null,
  note        text,
  created_by  uuid references auth.users(id),
  created_at  timestamptz not null default now()
);

create index if not exists match_events_fixture_idx on public.match_events (fixture_id, created_at);

alter table public.match_events enable row level security;

drop policy if exists "public read events"  on public.match_events;
drop policy if exists "staff writes events" on public.match_events;

create policy "public read events"
  on public.match_events for select using (true);

create policy "staff writes events"
  on public.match_events for all
  using (public.has_role('admin') or public.has_role('coach'))
  with check (public.has_role('admin') or public.has_role('coach'));

-- =========================================================
-- STORAGE: player-photos bucket
-- =========================================================
insert into storage.buckets (id, name, public)
values ('player-photos', 'player-photos', true)
on conflict (id) do nothing;

-- Public read; only coach/admin can write.
drop policy if exists "public read player photos"  on storage.objects;
drop policy if exists "staff writes player photos" on storage.objects;

create policy "public read player photos"
  on storage.objects for select
  using (bucket_id = 'player-photos');

create policy "staff writes player photos"
  on storage.objects for insert
  with check (
    bucket_id = 'player-photos'
    and (public.has_role('admin') or public.has_role('coach'))
  );
