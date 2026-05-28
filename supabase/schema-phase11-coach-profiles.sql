-- Warwick FA — Phase 11: extended coach profiles + avatars storage
--
-- Adds avatar / title / bio / phone columns to public.profiles so coaches
-- (and any user) can have a fuller profile. Adds an `avatars` storage
-- bucket and admin-write RLS so admins can upload on behalf of others.
-- Idempotent — safe to re-run.

-- ---------------------------------------------------------------
-- profiles: extra columns
-- ---------------------------------------------------------------
alter table public.profiles
  add column if not exists avatar_url text,
  add column if not exists title      text,
  add column if not exists bio        text,
  add column if not exists phone      text;

-- ---------------------------------------------------------------
-- profiles: allow admins to update / insert any row
-- (existing policies only allow self-management)
-- ---------------------------------------------------------------
drop policy if exists "profiles admin write"  on public.profiles;
drop policy if exists "profiles admin insert" on public.profiles;

create policy "profiles admin write"
  on public.profiles for update
  using (public.has_role('admin'))
  with check (public.has_role('admin'));

create policy "profiles admin insert"
  on public.profiles for insert
  with check (public.has_role('admin'));

-- ---------------------------------------------------------------
-- Storage: avatars bucket (public read, owner+admin write)
-- ---------------------------------------------------------------
insert into storage.buckets (id, name, public)
values ('avatars', 'avatars', true)
on conflict (id) do nothing;

drop policy if exists "avatars public read"   on storage.objects;
drop policy if exists "avatars owner write"   on storage.objects;
drop policy if exists "avatars owner update"  on storage.objects;
drop policy if exists "avatars owner delete"  on storage.objects;
drop policy if exists "avatars admin write"   on storage.objects;
drop policy if exists "avatars admin update"  on storage.objects;
drop policy if exists "avatars admin delete"  on storage.objects;

create policy "avatars public read" on storage.objects
  for select using (bucket_id = 'avatars');

-- Users may write to a path that starts with their own user-id
-- (convention: `<user-id>/<filename>`).
create policy "avatars owner write" on storage.objects
  for insert with check (
    bucket_id = 'avatars'
    and auth.uid()::text = (storage.foldername(name))[1]
  );

create policy "avatars owner update" on storage.objects
  for update using (
    bucket_id = 'avatars'
    and auth.uid()::text = (storage.foldername(name))[1]
  );

create policy "avatars owner delete" on storage.objects
  for delete using (
    bucket_id = 'avatars'
    and auth.uid()::text = (storage.foldername(name))[1]
  );

-- Admins may write/update/delete any avatar (so they can upload on behalf
-- of a coach during onboarding).
create policy "avatars admin write" on storage.objects
  for insert with check (
    bucket_id = 'avatars'
    and public.has_role('admin')
  );

create policy "avatars admin update" on storage.objects
  for update using (
    bucket_id = 'avatars'
    and public.has_role('admin')
  );

create policy "avatars admin delete" on storage.objects
  for delete using (
    bucket_id = 'avatars'
    and public.has_role('admin')
  );

-- ---------------------------------------------------------------
-- team_coaches: relax read policy so the public team page can show
-- the coach roster (display_name + avatar come from public.profiles,
-- which is already public-read). Only the link row is exposed —
-- no personal data lives on team_coaches itself.
-- ---------------------------------------------------------------
drop policy if exists "team_coaches read" on public.team_coaches;

create policy "team_coaches read"
  on public.team_coaches for select
  using (true);
