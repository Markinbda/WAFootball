-- Warwick FA — Phase 8 schema: team calendar (events, RSVPs, coach/guardian links)
-- Run AFTER previous phases. Idempotent.

-- =========================================================
-- TABLES FIRST (so cross-referencing RLS policies resolve)
-- =========================================================

-- Coaches → teams
create table if not exists public.team_coaches (
  team_id    uuid not null references public.teams(id) on delete cascade,
  user_id    uuid not null references auth.users(id) on delete cascade,
  created_at timestamptz not null default now(),
  primary key (team_id, user_id)
);

-- Guardians → players
create table if not exists public.player_guardians (
  player_id    uuid not null references public.players(id) on delete cascade,
  user_id      uuid not null references auth.users(id) on delete cascade,
  relationship text default 'parent',
  created_at   timestamptz not null default now(),
  primary key (player_id, user_id)
);

-- =========================================================
-- team_coaches RLS
-- =========================================================
alter table public.team_coaches enable row level security;

drop policy if exists "team_coaches read"  on public.team_coaches;
drop policy if exists "team_coaches write" on public.team_coaches;

create policy "team_coaches read"
  on public.team_coaches for select
  using (
    public.has_role('admin')
    or user_id = auth.uid()
    or exists (
      select 1 from public.player_guardians pg
      join public.players p on p.id = pg.player_id
      where p.team_id = team_coaches.team_id and pg.user_id = auth.uid()
    )
  );

create policy "team_coaches write"
  on public.team_coaches for all
  using (public.has_role('admin'))
  with check (public.has_role('admin'));

-- =========================================================
-- player_guardians RLS
-- =========================================================
alter table public.player_guardians enable row level security;

drop policy if exists "player_guardians read"  on public.player_guardians;
drop policy if exists "player_guardians write" on public.player_guardians;

create policy "player_guardians read"
  on public.player_guardians for select
  using (
    user_id = auth.uid()
    or public.has_role('admin')
    or exists (
      select 1 from public.team_coaches tc
      join public.players p on p.id = player_guardians.player_id
      where tc.team_id = p.team_id and tc.user_id = auth.uid()
    )
  );

create policy "player_guardians write"
  on public.player_guardians for all
  using (public.has_role('admin') or user_id = auth.uid())
  with check (public.has_role('admin') or user_id = auth.uid());

-- =========================================================
-- Calendar events (practices + games) per team
-- =========================================================
do $$
begin
  if not exists (select 1 from pg_type where typname = 'event_kind') then
    create type event_kind as enum ('practice', 'game');
  end if;
end $$;

create table if not exists public.team_events (
  id               uuid primary key default gen_random_uuid(),
  team_id          uuid not null references public.teams(id) on delete cascade,
  kind             event_kind not null,
  title            text not null,
  starts_at        timestamptz not null,
  ends_at          timestamptz,
  location         text,
  location_details text,
  opponent         text,
  home_away        text check (home_away in ('Home','Away')),
  notes            text,
  repeat_group_id  uuid,
  created_by       uuid references auth.users(id),
  created_at       timestamptz not null default now()
);

create index if not exists team_events_team_starts_idx
  on public.team_events (team_id, starts_at);

create index if not exists team_events_repeat_idx
  on public.team_events (repeat_group_id);

alter table public.team_events enable row level security;

drop policy if exists "team_events read"  on public.team_events;
drop policy if exists "team_events write" on public.team_events;

-- Read: admins, the team's coaches, guardians of players on the team.
create policy "team_events read"
  on public.team_events for select
  using (
    public.has_role('admin')
    or exists (
      select 1 from public.team_coaches tc
      where tc.team_id = team_events.team_id and tc.user_id = auth.uid()
    )
    or exists (
      select 1
      from public.player_guardians pg
      join public.players p on p.id = pg.player_id
      where p.team_id = team_events.team_id and pg.user_id = auth.uid()
    )
  );

-- Write: admins, the team's coaches.
create policy "team_events write"
  on public.team_events for all
  using (
    public.has_role('admin')
    or exists (
      select 1 from public.team_coaches tc
      where tc.team_id = team_events.team_id and tc.user_id = auth.uid()
    )
  )
  with check (
    public.has_role('admin')
    or exists (
      select 1 from public.team_coaches tc
      where tc.team_id = team_events.team_id and tc.user_id = auth.uid()
    )
  );

-- =========================================================
-- Per-event RSVPs (parents respond on behalf of a player)
-- =========================================================
-- rsvp_status type already exists from phase 3.

create table if not exists public.event_rsvps (
  event_id   uuid not null references public.team_events(id) on delete cascade,
  user_id    uuid not null references auth.users(id) on delete cascade,
  player_id  uuid references public.players(id) on delete set null,
  status     rsvp_status not null,
  note       text,
  updated_at timestamptz not null default now(),
  primary key (event_id, user_id)
);

create index if not exists event_rsvps_event_idx on public.event_rsvps (event_id);

alter table public.event_rsvps enable row level security;

drop policy if exists "event_rsvps user write" on public.event_rsvps;
drop policy if exists "event_rsvps read"       on public.event_rsvps;

create policy "event_rsvps user write"
  on public.event_rsvps for all
  using (user_id = auth.uid())
  with check (user_id = auth.uid());

create policy "event_rsvps read"
  on public.event_rsvps for select
  using (
    user_id = auth.uid()
    or public.has_role('admin')
    or exists (
      select 1 from public.team_events te
      join public.team_coaches tc on tc.team_id = te.team_id
      where te.id = event_rsvps.event_id and tc.user_id = auth.uid()
    )
  );
