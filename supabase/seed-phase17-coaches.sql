-- Warwick FA — Phase 17 seed: WFA 2025/2026 Coaching Pool
--
-- Source: "WFA 20252026 Coach Assignments.xlsx" (sheet: WFA Coaches 2025-2026)
--
-- What this does:
--   1. Creates one auth.users account per coach (email + password), skipping
--      any that already exist by email. Default password: 'WfaCoach!2026'
--      (coaches should change on first sign-in).
--   2. Upserts public.profiles with display_name + coach_license.
--   3. Grants the 'coach' role in public.user_roles.
--   4. Assigns the coach to every WFA team matching their age group
--      (multiple squads per age group — e.g. every U11 Boys coach is added
--       to UNDER 11 BOYS + WFA AJAX + WFA PSV EINDHOVEN).
--
-- Fully idempotent — re-running is a no-op.
--
-- Depends on:
--   supabase/schema-phase17-coach-credentials.sql  (profiles columns)
--   supabase/schema-phase8.sql                     (team_coaches table)
--   Teamo team seed (supabase/seed-phase15-teamo-members.sql or chunks)
--
-- Default password used: 'WfaCoach!2026'
-- Coaches without an email in the spreadsheet are skipped (they must be
-- invited manually once an email is on file):
--   - Jamar Stovell's Pee Wee row (covered via his U13 email stovel71@…)
--   - Kieshon Smith is present (U18 Boys, has email)
--   - Dennis Brown (Director of Coaching) is present (no team assignment).

-- Ensure pgcrypto (for crypt / gen_salt) is available. On Supabase it lives
-- in the `extensions` schema.
create extension if not exists pgcrypto with schema extensions;

-- =========================================================================
-- 1) Helper: (re-)create a coach user + profile + role
-- =========================================================================
create or replace function public._wfa_upsert_coach(
  p_email   text,
  p_name    text,
  p_license text
) returns uuid
language plpgsql
security definer
-- include `extensions` so gen_salt/crypt (pgcrypto) resolve without qualification
set search_path = public, extensions
as $$
declare
  v_email   text := lower(trim(p_email));
  v_pass    text := 'WfaCoach!2026';
  v_user_id uuid;
begin
  if v_email is null or v_email = '' then
    raise notice 'skipping coach % — no email', p_name;
    return null;
  end if;

  select id into v_user_id from auth.users where lower(email) = v_email;

  if v_user_id is null then
    v_user_id := gen_random_uuid();
    insert into auth.users (
      id, instance_id, aud, role, email,
      encrypted_password, email_confirmed_at,
      raw_app_meta_data, raw_user_meta_data,
      created_at, updated_at,
      confirmation_token, recovery_token,
      email_change_token_new, email_change
    ) values (
      v_user_id,
      '00000000-0000-0000-0000-000000000000',
      'authenticated', 'authenticated',
      v_email,
      crypt(v_pass, gen_salt('bf')),
      now(),
      jsonb_build_object('provider', 'email', 'providers', jsonb_build_array('email')),
      jsonb_build_object('full_name', p_name),
      now(), now(),
      '', '', '', ''
    );
    insert into auth.identities (
      id, user_id, identity_data, provider, provider_id,
      last_sign_in_at, created_at, updated_at
    ) values (
      gen_random_uuid(),
      v_user_id,
      jsonb_build_object('sub', v_user_id::text, 'email', v_email),
      'email',
      v_user_id::text,
      now(), now(), now()
    )
    on conflict do nothing;
  end if;

  insert into public.profiles (id, display_name, coach_license)
  values (v_user_id, p_name, p_license)
  on conflict (id) do update
    set display_name  = excluded.display_name,
        coach_license = coalesce(excluded.coach_license, public.profiles.coach_license),
        updated_at    = now();

  insert into public.user_roles (user_id, role)
  values (v_user_id, 'coach')
  on conflict do nothing;

  return v_user_id;
end $$;

-- =========================================================================
-- 2) Helper: assign a coach to every WFA team matching an age-group pattern
-- =========================================================================
create or replace function public._wfa_assign_coach_by_age(
  p_user_id      uuid,
  p_name_pattern text     -- POSIX regex, e.g. 'U(NDER)?[- ]?11.*BOYS'
) returns int
language plpgsql
security definer
set search_path = public
as $$
declare
  v_count int;
begin
  if p_user_id is null then return 0; end if;

  with matched as (
    select id from public.teams
    where name ~* p_name_pattern
      and (name ~* 'WFA' or name ~* 'WARWICK')  -- exclude Paget FC Titans & other non-WFA sides
  ),
  ins as (
    insert into public.team_coaches (team_id, user_id)
    select id, p_user_id from matched
    on conflict do nothing
    returning 1
  )
  select count(*) into v_count from ins;

  return v_count;
end $$;

-- =========================================================================
-- 3) Create coaches and assign teams
-- =========================================================================
do $$
declare
  u uuid;
begin
  -- ---------- Pee Wee Program ----------
  -- Richard Todd (AGC) also coaches U7 Boys, U11 Girls, U15/17 Girls
  u := public._wfa_upsert_coach('football@warwick.bm', 'Richard Todd', 'UEFA B');
  perform public._wfa_assign_coach_by_age(u, 'PEE\s*WEE');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?7.*BOYS');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?11.*GIRLS');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?1[57].*GIRLS');

  -- Omar Allen also coaches U15 Boys
  u := public._wfa_upsert_coach('omars.allen40@gmail.com', 'Omar Allen', 'Bermuda B');
  perform public._wfa_assign_coach_by_age(u, 'PEE\s*WEE');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?15.*BOYS');

  -- Jamar Stovell (Pee Wee row has no email; use his U13 Boys email) → also U13 Boys
  u := public._wfa_upsert_coach('stovel71@gmail.com', 'Jamar Stovell', 'Bermuda D');
  perform public._wfa_assign_coach_by_age(u, 'PEE\s*WEE');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?13.*BOYS');

  -- ---------- U7 Boys ----------
  u := public._wfa_upsert_coach('steve.c.horton@gmail.com', 'Steve Horton', 'Bermuda D');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?7.*BOYS');

  -- ---------- U7 Girls ----------
  u := public._wfa_upsert_coach('brogden.alex@gmail.com', 'Alex Brogden', 'Bermuda D');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?7.*GIRLS');

  u := public._wfa_upsert_coach('faisalhaddad@hotmail.com', 'Faisal Haddad', 'Bermuda D');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?7.*GIRLS');

  -- ---------- U9 Boys ----------
  u := public._wfa_upsert_coach('coach58@yahoo.com', 'Leroy Wilson', 'Bermuda B');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?9.*BOYS');

  u := public._wfa_upsert_coach('teddy@terceiras.bm', 'Teddy Terceira', null);
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?9.*BOYS');

  u := public._wfa_upsert_coach('nicholas.dunkle@harringtonre.com', 'Nic Dunkle', 'Bermuda D');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?9.*BOYS');

  u := public._wfa_upsert_coach('pemurphy83@gmail.com', 'Paul Murphy', 'Bermuda D');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?9.*BOYS');

  -- ---------- U9 Girls ----------
  -- Taurean Manders (Tech Lead) also coaches U13 Boys
  u := public._wfa_upsert_coach('andretmanders@gmail.com', 'Taurean Manders', 'UEFA B');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?9.*GIRLS');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?13.*BOYS');

  u := public._wfa_upsert_coach('d1barclay@gmail.com', 'Duncan Barclay', 'Bermuda D');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?9.*GIRLS');

  u := public._wfa_upsert_coach('sandrabalek@hotmail.com', 'Sandra Balek', 'Bermuda D');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?9.*GIRLS');

  -- ---------- U11 Boys ----------
  u := public._wfa_upsert_coach('chrisfosker@gmail.com', 'Chris Fosker', 'Bermuda D');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?11.*BOYS');

  u := public._wfa_upsert_coach('darchibald@onsite.bm', 'Dustin Archibald', 'Bermuda D');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?11.*BOYS');

  u := public._wfa_upsert_coach('jason.correia@live.com', 'Jason Correia', 'Bermuda D');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?11.*BOYS');

  u := public._wfa_upsert_coach('sjones@warwick.bm', 'Simon Jones', 'Bermuda D');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?11.*BOYS');

  u := public._wfa_upsert_coach('adam.bathgate@gmail.com', 'Adam Bathgate', 'Bermuda D');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?11.*BOYS');

  -- ---------- U11 Girls ----------
  u := public._wfa_upsert_coach('kimmisap@hotmail.com', 'Kimmie Perinchief', 'Bermuda B');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?11.*GIRLS');

  u := public._wfa_upsert_coach('tomgregory14@hotmail.com', 'Tom Gregory', 'Bermuda D');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?11.*GIRLS');

  -- ---------- U13 Boys ----------
  u := public._wfa_upsert_coach('torryldavis78@gmail.com', 'Torry Davis', 'Bermuda B');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?13.*BOYS');

  u := public._wfa_upsert_coach('simon.argent@axaxl.com', 'Simon Argent', 'Bermuda C');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?13.*BOYS');

  -- ---------- U13 Girls ----------
  u := public._wfa_upsert_coach('samuel.peters@chubb.com', 'Sam Peters', 'Bermuda C');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?13.*GIRLS');

  u := public._wfa_upsert_coach('akbar_lightbourne@outlook.com', 'Akbar Lightbourne', 'Bermuda D');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?13.*GIRLS');

  u := public._wfa_upsert_coach('haddersf@gmail.com', 'Hadleigh Farrer', 'Bermuda D');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?13.*GIRLS');

  u := public._wfa_upsert_coach('johann.hunter@gmail.com', 'Johann Hunter', 'Bermuda D');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?13.*GIRLS');

  -- ---------- U15 Boys ----------
  u := public._wfa_upsert_coach('firemarshall7@hotmail.com', 'Jameiko Marshall', 'Bermuda C');
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?15.*BOYS');

  -- ---------- U18 Boys ----------
  u := public._wfa_upsert_coach('shondedonone@hotmail.com', 'Kieshon Smith', null);
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?18.*BOYS');

  -- ---------- Director of Coaching (no team assignment) ----------
  u := public._wfa_upsert_coach('rockbrown50@gmail.com', 'Dennis Brown', 'B License');
  -- Give the DoC visibility across every WFA squad
  perform public._wfa_assign_coach_by_age(u, 'U(NDER)?[- ]?[0-9]+.*(BOYS|GIRLS)|PEE\s*WEE');
end $$;

-- =========================================================================
-- 4) Cleanup helpers (uncomment to drop after seeding)
-- =========================================================================
-- drop function if exists public._wfa_upsert_coach(text, text, text);
-- drop function if exists public._wfa_assign_coach_by_age(uuid, text);
