-- Warwick FA — Phase 1 schema
-- Run inside the Supabase SQL editor (or `supabase db push`).
-- This file is idempotent: safe to run multiple times.

-- =========================================================
-- ROLES
-- =========================================================
do $$
begin
  if not exists (select 1 from pg_type where typname = 'app_role') then
    create type app_role as enum ('admin', 'coach', 'parent', 'member');
  end if;
end $$;

create table if not exists public.user_roles (
  user_id uuid not null references auth.users(id) on delete cascade,
  role    app_role not null,
  created_at timestamptz not null default now(),
  primary key (user_id, role)
);

-- Helper: does the current user hold a role?
create or replace function public.has_role(p_role app_role)
returns boolean
language sql
stable
security definer
set search_path = public
as $$
  select exists (
    select 1 from public.user_roles
    where user_id = auth.uid() and role = p_role
  );
$$;

-- =========================================================
-- TEAMS
-- =========================================================
create table if not exists public.teams (
  id          uuid primary key default gen_random_uuid(),
  slug        text unique not null,
  name        text not null,
  age_group   text not null,
  coach       text,
  blurb       text,
  created_at  timestamptz not null default now()
);

-- =========================================================
-- FIXTURES & RESULTS
-- =========================================================
create table if not exists public.fixtures (
  id          uuid primary key default gen_random_uuid(),
  team_id     uuid not null references public.teams(id) on delete cascade,
  opponent    text not null,
  kickoff_at  timestamptz not null,
  venue       text not null check (venue in ('Home', 'Away')),
  competition text not null,
  status      text not null default 'scheduled'
                check (status in ('scheduled','live','postponed','cancelled','final')),
  score_for     int,
  score_against int,
  created_at  timestamptz not null default now()
);

create index if not exists fixtures_team_idx     on public.fixtures (team_id);
create index if not exists fixtures_kickoff_idx  on public.fixtures (kickoff_at);

-- =========================================================
-- NEWS
-- =========================================================
create table if not exists public.news (
  id          uuid primary key default gen_random_uuid(),
  slug        text unique not null,
  title       text not null,
  excerpt     text,
  body        text,
  tag         text,
  author_id   uuid references auth.users(id),
  published_at timestamptz,
  created_at  timestamptz not null default now()
);

-- =========================================================
-- ROW LEVEL SECURITY
-- =========================================================
alter table public.user_roles enable row level security;
alter table public.teams      enable row level security;
alter table public.fixtures   enable row level security;
alter table public.news       enable row level security;

-- user_roles: a user can read their own roles; only admins can modify.
drop policy if exists "user can read own roles"     on public.user_roles;
drop policy if exists "admin manages roles"         on public.user_roles;

create policy "user can read own roles"
  on public.user_roles for select
  using (user_id = auth.uid() or public.has_role('admin'));

create policy "admin manages roles"
  on public.user_roles for all
  using (public.has_role('admin'))
  with check (public.has_role('admin'));

-- Allow a freshly signed-up user to claim only the 'member' role for themselves.
drop policy if exists "user self-claim member role" on public.user_roles;
create policy "user self-claim member role"
  on public.user_roles for insert
  with check (user_id = auth.uid() and role = 'member');

-- teams / fixtures / news: public read; admin write.
drop policy if exists "public read teams"     on public.teams;
drop policy if exists "admin writes teams"    on public.teams;
drop policy if exists "public read fixtures"  on public.fixtures;
drop policy if exists "admin writes fixtures" on public.fixtures;
drop policy if exists "public read news"      on public.news;
drop policy if exists "admin writes news"     on public.news;

create policy "public read teams"     on public.teams    for select using (true);
create policy "admin writes teams"    on public.teams    for all    using (public.has_role('admin'))    with check (public.has_role('admin'));

create policy "public read fixtures"  on public.fixtures for select using (true);
create policy "admin writes fixtures" on public.fixtures for all    using (public.has_role('admin') or public.has_role('coach')) with check (public.has_role('admin') or public.has_role('coach'));

create policy "public read news"      on public.news     for select using (published_at is not null and published_at <= now());
create policy "admin writes news"     on public.news     for all    using (public.has_role('admin')) with check (public.has_role('admin'));
