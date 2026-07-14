-- Warwick FA — Phase 15: Teamo import
--
-- Adds hierarchical group tree, many-to-many player↔team, extended player
-- fields (DOB / gender / member no. / uniform / consents / address / etc.),
-- medical + info + qualifications + activity log, and social event kind.
--
-- Idempotent. Run AFTER schema-phase14-online-registrations.sql.

-- =========================================================================
-- 1) GROUPS: hierarchical tree that mirrors Teamo's Edit Teams/Groups view.
--    A node can be a Club, Club Section, Registration node, Sub-section
--    or Team pointer. Team pointers reference an actual public.teams row so
--    fixtures / attendance / RSVPs continue to work unchanged.
-- =========================================================================
create table if not exists public.groups (
  id          uuid primary key default gen_random_uuid(),
  parent_id   uuid references public.groups(id) on delete cascade,
  name        text not null,
  kind        text not null check (kind in
                ('club','club_section','registration','sub_section','team')),
  team_id     uuid references public.teams(id) on delete set null,
  slug        text unique,
  color       text,      -- optional hex/tailwind hint for the tree UI
  short_code  text,      -- short badge like "U7B", "PW", "22P"
  sort_order  int not null default 0,
  created_at  timestamptz not null default now()
);

create index if not exists groups_parent_idx on public.groups (parent_id);
create index if not exists groups_team_idx   on public.groups (team_id);
create index if not exists groups_kind_idx   on public.groups (kind);

-- A team pointer node must actually reference a team row.
do $$
begin
  if not exists (
    select 1 from pg_constraint where conname = 'groups_team_pointer_check'
  ) then
    alter table public.groups
      add constraint groups_team_pointer_check
      check ((kind = 'team') = (team_id is not null));
  end if;
end $$;

alter table public.groups enable row level security;
drop policy if exists "public read groups"  on public.groups;
drop policy if exists "admin writes groups" on public.groups;
create policy "public read groups"  on public.groups for select using (true);
create policy "admin writes groups" on public.groups for all
  using (public.has_role('admin')) with check (public.has_role('admin'));

-- =========================================================================
-- 2) TEAM ↔ GROUP many-to-many for teams that live under multiple sections.
--    (The `groups.team_id` pointer covers the primary placement; this table
--     lets a team appear in additional sections, e.g. cross-club rosters.)
-- =========================================================================
create table if not exists public.team_groups (
  team_id  uuid not null references public.teams(id)  on delete cascade,
  group_id uuid not null references public.groups(id) on delete cascade,
  primary key (team_id, group_id)
);

alter table public.team_groups enable row level security;
drop policy if exists "public read team_groups"  on public.team_groups;
drop policy if exists "admin writes team_groups" on public.team_groups;
create policy "public read team_groups"  on public.team_groups for select using (true);
create policy "admin writes team_groups" on public.team_groups for all
  using (public.has_role('admin')) with check (public.has_role('admin'));

-- =========================================================================
-- 3) PLAYER ↔ TEAM many-to-many. A player can now be rostered on multiple
--    teams simultaneously (e.g. dual-registered U9 girl also training with
--    U11 girls). We keep `players.team_id` as the "primary/home team" for
--    backward compat with fixtures, roster listings, etc.
-- =========================================================================
create table if not exists public.player_teams (
  player_id  uuid not null references public.players(id) on delete cascade,
  team_id    uuid not null references public.teams(id)   on delete cascade,
  is_primary boolean not null default false,
  role       text not null default 'player'
    check (role in ('player','goalkeeper','coach','manager','captain')),
  joined_at  date,
  left_at    date,
  primary key (player_id, team_id)
);

create index if not exists player_teams_team_idx   on public.player_teams (team_id);
create index if not exists player_teams_player_idx on public.player_teams (player_id);

alter table public.player_teams enable row level security;
drop policy if exists "player_teams read"  on public.player_teams;
drop policy if exists "player_teams write" on public.player_teams;
create policy "player_teams read"
  on public.player_teams for select
  using (true);  -- roster visibility mirrors players
create policy "player_teams write"
  on public.player_teams for all
  using (public.has_role('admin') or public.has_role('coach'))
  with check (public.has_role('admin') or public.has_role('coach'));

-- Backfill existing single-team players into the junction as primary.
insert into public.player_teams (player_id, team_id, is_primary, role)
select id, team_id, true, 'player'
from public.players
where team_id is not null
on conflict (player_id, team_id) do nothing;

-- =========================================================================
-- 4) Extend `players` with Teamo member fields.
-- =========================================================================
alter table public.players
  add column if not exists date_of_birth       date,
  add column if not exists gender              text,
  add column if not exists member_number       text,
  add column if not exists email               text,
  add column if not exists phone               text,
  add column if not exists joined_at           date,
  add column if not exists occupation          text,
  add column if not exists shirt_number        int,          -- Teamo "Shirt No.", separate from squad_number legacy field
  add column if not exists first_aider         boolean default false,
  add column if not exists photo_permission    boolean default false,
  add column if not exists publication_consent boolean default false,
  add column if not exists has_medical_data    boolean default false,
  add column if not exists address_line1       text,
  add column if not exists address_city        text,
  add column if not exists address_country     text,
  add column if not exists address_postcode    text,
  add column if not exists family_code         text,
  add column if not exists season_opt_in       text
    check (season_opt_in is null or season_opt_in in ('In','Out')),
  add column if not exists ngb_registration    boolean default false,
  add column if not exists notes               text,
  add column if not exists last_active         date;

create index if not exists players_member_number_idx on public.players (member_number);
create index if not exists players_family_code_idx   on public.players (family_code);

-- Make team_id nullable now that multi-team is supported (some Teamo members
-- have no playing team, only a "club section" attachment).
alter table public.players alter column team_id drop not null;

-- =========================================================================
-- 5) player_medical — Emergency tab (medical info & consent)
-- =========================================================================
create table if not exists public.player_medical (
  player_id             uuid primary key references public.players(id) on delete cascade,
  physician_name        text,
  physician_phone       text,
  allergies             text,
  medical_conditions    text,
  medications           text,
  notes                 text,
  updated_by            uuid references auth.users(id) on delete set null,
  updated_at            timestamptz not null default now()
);

alter table public.player_medical enable row level security;

drop policy if exists "player_medical read"  on public.player_medical;
drop policy if exists "player_medical write" on public.player_medical;

-- Read: admin, the player's team coaches, or one of the player's guardians.
create policy "player_medical read"
  on public.player_medical for select
  using (
    public.has_role('admin')
    or exists (
      select 1 from public.player_teams pt
      join public.team_coaches tc on tc.team_id = pt.team_id
      where pt.player_id = player_medical.player_id and tc.user_id = auth.uid()
    )
    or exists (
      select 1 from public.player_guardians pg
      where pg.player_id = player_medical.player_id and pg.user_id = auth.uid()
    )
  );

create policy "player_medical write"
  on public.player_medical for all
  using (
    public.has_role('admin')
    or exists (
      select 1 from public.player_teams pt
      join public.team_coaches tc on tc.team_id = pt.team_id
      where pt.player_id = player_medical.player_id and tc.user_id = auth.uid()
    )
    or exists (
      select 1 from public.player_guardians pg
      where pg.player_id = player_medical.player_id and pg.user_id = auth.uid()
    )
  )
  with check (
    public.has_role('admin')
    or exists (
      select 1 from public.player_teams pt
      join public.team_coaches tc on tc.team_id = pt.team_id
      where pt.player_id = player_medical.player_id and tc.user_id = auth.uid()
    )
    or exists (
      select 1 from public.player_guardians pg
      where pg.player_id = player_medical.player_id and pg.user_id = auth.uid()
    )
  );

-- =========================================================================
-- 6) player_info — Info tab (contact/uniform/school/consent)
-- =========================================================================
create table if not exists public.player_info (
  player_id            uuid primary key references public.players(id) on delete cascade,
  player_email         text,
  player_cell          text,
  years_playing        int,
  previous_clubs       text,
  uniform_jersey       text,
  uniform_shorts       text,
  uniform_notes        text,
  school               text,
  u18_consent          boolean default false,
  u18_consent_at       timestamptz,
  extra                jsonb not null default '{}'::jsonb,  -- free-form Teamo custom fields
  updated_at           timestamptz not null default now()
);

alter table public.player_info enable row level security;

drop policy if exists "player_info read"  on public.player_info;
drop policy if exists "player_info write" on public.player_info;

create policy "player_info read"
  on public.player_info for select
  using (
    public.has_role('admin')
    or exists (
      select 1 from public.player_teams pt
      join public.team_coaches tc on tc.team_id = pt.team_id
      where pt.player_id = player_info.player_id and tc.user_id = auth.uid()
    )
    or exists (
      select 1 from public.player_guardians pg
      where pg.player_id = player_info.player_id and pg.user_id = auth.uid()
    )
  );

create policy "player_info write"
  on public.player_info for all
  using (
    public.has_role('admin')
    or exists (
      select 1 from public.player_teams pt
      join public.team_coaches tc on tc.team_id = pt.team_id
      where pt.player_id = player_info.player_id and tc.user_id = auth.uid()
    )
    or exists (
      select 1 from public.player_guardians pg
      where pg.player_id = player_info.player_id and pg.user_id = auth.uid()
    )
  )
  with check (
    public.has_role('admin')
    or exists (
      select 1 from public.player_teams pt
      join public.team_coaches tc on tc.team_id = pt.team_id
      where pt.player_id = player_info.player_id and tc.user_id = auth.uid()
    )
    or exists (
      select 1 from public.player_guardians pg
      where pg.player_id = player_info.player_id and pg.user_id = auth.uid()
    )
  );

-- =========================================================================
-- 7) player_qualifications — coaching/first-aid certificates & DBS checks
-- =========================================================================
create table if not exists public.player_qualifications (
  id          uuid primary key default gen_random_uuid(),
  player_id   uuid not null references public.players(id) on delete cascade,
  title       text not null,
  issuer      text,
  status      text not null default 'active'
    check (status in ('active','expired','pending','revoked')),
  issued_on   date,
  expires_on  date,
  reference   text,
  notes       text,
  created_at  timestamptz not null default now()
);

create index if not exists player_qualifications_player_idx
  on public.player_qualifications (player_id);

alter table public.player_qualifications enable row level security;
drop policy if exists "player_qualifications read"  on public.player_qualifications;
drop policy if exists "player_qualifications write" on public.player_qualifications;

create policy "player_qualifications read"
  on public.player_qualifications for select
  using (
    public.has_role('admin') or public.has_role('coach')
    or exists (
      select 1 from public.player_guardians pg
      where pg.player_id = player_qualifications.player_id and pg.user_id = auth.uid()
    )
  );

create policy "player_qualifications write"
  on public.player_qualifications for all
  using (public.has_role('admin') or public.has_role('coach'))
  with check (public.has_role('admin') or public.has_role('coach'));

-- =========================================================================
-- 8) player_activity — Activity History tab (immutable audit log)
-- =========================================================================
create table if not exists public.player_activity (
  id           uuid primary key default gen_random_uuid(),
  player_id    uuid not null references public.players(id) on delete cascade,
  kind         text not null check (kind in
                 ('joined_team','left_team','joined_group','left_group',
                  'email_sent','sms_sent','note','payment','rsvp',
                  'attendance','qualification','profile_update','other')),
  title        text not null,
  detail       text,
  ref_team_id  uuid references public.teams(id)  on delete set null,
  ref_group_id uuid references public.groups(id) on delete set null,
  actor_id     uuid references auth.users(id)    on delete set null,
  occurred_at  timestamptz not null default now(),
  created_at   timestamptz not null default now()
);

create index if not exists player_activity_player_idx
  on public.player_activity (player_id, occurred_at desc);

alter table public.player_activity enable row level security;
drop policy if exists "player_activity read"   on public.player_activity;
drop policy if exists "player_activity insert" on public.player_activity;

create policy "player_activity read"
  on public.player_activity for select
  using (
    public.has_role('admin') or public.has_role('coach')
    or exists (
      select 1 from public.player_guardians pg
      where pg.player_id = player_activity.player_id and pg.user_id = auth.uid()
    )
  );

create policy "player_activity insert"
  on public.player_activity for insert
  with check (public.has_role('admin') or public.has_role('coach'));

-- =========================================================================
-- 9) Extend team_events kind enum with 'social' (Fixture/Training/Social).
-- =========================================================================
do $$
begin
  if not exists (
    select 1 from pg_enum
    where enumlabel = 'social'
      and enumtypid = 'public.event_kind'::regtype
  ) then
    alter type public.event_kind add value if not exists 'social';
  end if;
end $$;

-- =========================================================================
-- 10) Data API grants (future-proof for Supabase 2026-10-30 default change).
-- =========================================================================
grant usage on schema public to anon, authenticated;
grant select, insert, update, delete on
  public.groups,
  public.team_groups,
  public.player_teams,
  public.player_medical,
  public.player_info,
  public.player_qualifications,
  public.player_activity
to authenticated;
