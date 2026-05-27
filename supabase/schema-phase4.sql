-- Warwick FA — Phase 4 schema
-- Adds a public.profiles table (display name for RSVP roll-ups, comments, etc.)
-- Run AFTER schema-phase3.sql. Idempotent.

create table if not exists public.profiles (
  id           uuid primary key references auth.users(id) on delete cascade,
  display_name text not null,
  created_at   timestamptz not null default now(),
  updated_at   timestamptz not null default now()
);

alter table public.profiles enable row level security;

drop policy if exists "profiles public read"   on public.profiles;
drop policy if exists "profiles self update"   on public.profiles;
drop policy if exists "profiles self insert"   on public.profiles;
drop policy if exists "profiles staff read"    on public.profiles;

-- Public can read display names (so coach roll-ups & comment threads can render).
create policy "profiles public read"
  on public.profiles for select using (true);

-- Users manage their own profile.
create policy "profiles self insert"
  on public.profiles for insert with check (id = auth.uid());

create policy "profiles self update"
  on public.profiles for update using (id = auth.uid()) with check (id = auth.uid());

-- Auto-create a profile row on signup (display name = email local-part).
create or replace function public.handle_new_user()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
begin
  insert into public.profiles (id, display_name)
  values (
    new.id,
    coalesce(
      nullif(new.raw_user_meta_data->>'full_name', ''),
      split_part(new.email, '@', 1)
    )
  )
  on conflict (id) do nothing;
  return new;
end $$;

drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created
  after insert on auth.users
  for each row execute function public.handle_new_user();

-- Backfill any existing auth users so the trigger doesn't only help future signups.
insert into public.profiles (id, display_name)
select u.id,
       coalesce(nullif(u.raw_user_meta_data->>'full_name',''), split_part(u.email,'@',1))
from auth.users u
where not exists (select 1 from public.profiles p where p.id = u.id);
