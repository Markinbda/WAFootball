-- Warwick FA — Phase 8 seed: sample practices + games for coach Richard Todd
-- Run AFTER schema-phase8.sql. Idempotent-ish:
--   * team_coaches uses on conflict do nothing
--   * team_events are wiped for the two teams within the seeded window before reinsert,
--     so re-running just refreshes the sample data without duplicates.
--
-- PREREQ: Richard Todd must already exist in auth.users (he must have signed up /
-- been invited). The lookup below matches by profile display_name ILIKE 'Richard%Todd%'
-- and falls back to auth.users.email ILIKE 'richard%todd%'. Edit the WHERE clauses if
-- his account uses a different name/email.

do $$
declare
  v_user_id   uuid;
  v_reserves  uuid;
  v_u15       uuid;
  v_today     date := current_date;
  v_monday    date;      -- next Monday on/after today
  v_wed       date;      -- next Wednesday on/after today
  v_sat       date;      -- next Saturday on/after today
  v_group_a   uuid := gen_random_uuid();  -- Reserves Tue practice series
  v_group_b   uuid := gen_random_uuid();  -- U15 Wed practice series
  i           int;
begin
  -- 1) Resolve Richard Todd's auth user id ---------------------------------
  select p.id into v_user_id
    from public.profiles p
   where p.display_name ilike 'richard%todd%'
   limit 1;

  if v_user_id is null then
    select u.id into v_user_id
      from auth.users u
     where u.email ilike 'richard%todd%'
        or u.raw_user_meta_data->>'full_name' ilike 'richard%todd%'
     limit 1;
  end if;

  if v_user_id is null then
    raise exception 'Could not find a Richard Todd user in auth.users / profiles. Create his account first, or edit this script to use a known email.';
  end if;

  -- 2) Resolve the two teams he coaches ------------------------------------
  select id into v_reserves from public.teams where slug = 'mens-reserves';
  select id into v_u15      from public.teams where slug = 'u15';

  if v_reserves is null or v_u15 is null then
    raise exception 'Teams mens-reserves / u15 not found. Run seed-phase3.sql first.';
  end if;

  -- 3) Make sure he is registered as coach of both -------------------------
  insert into public.team_coaches (team_id, user_id) values
    (v_reserves, v_user_id),
    (v_u15,      v_user_id)
  on conflict do nothing;

  -- 4) Wipe any prior seeded events in the seeding window so reruns are clean
  delete from public.team_events
   where team_id in (v_reserves, v_u15)
     and starts_at >= (v_today - interval '1 day')
     and starts_at <  (v_today + interval '70 days');

  -- 5) Compute next Mon / Wed / Sat ----------------------------------------
  -- extract(dow from date): Sunday=0 .. Saturday=6
  v_monday := v_today + ((1 - extract(dow from v_today)::int + 7) % 7);
  v_wed    := v_today + ((3 - extract(dow from v_today)::int + 7) % 7);
  v_sat    := v_today + ((6 - extract(dow from v_today)::int + 7) % 7);

  -- 6) Insert 8 weekly practices for Men's Reserves (Tuesdays 19:00–20:30) -
  for i in 0..7 loop
    insert into public.team_events
      (team_id, kind, title, starts_at, ends_at, location, notes, repeat_group_id, created_by)
    values (
      v_reserves,
      'practice',
      'Reserves training',
      ((v_monday + 1 + (i * 7)) + time '19:00') at time zone 'Atlantic/Bermuda',
      ((v_monday + 1 + (i * 7)) + time '20:30') at time zone 'Atlantic/Bermuda',
      'Warwick Academy turf',
      'Bring boots + shin pads. Light scrimmage at the end.',
      v_group_a,
      v_user_id
    );
  end loop;

  -- 7) Insert 8 weekly practices for U15 (Wednesdays 17:30–19:00) ----------
  for i in 0..7 loop
    insert into public.team_events
      (team_id, kind, title, starts_at, ends_at, location, notes, repeat_group_id, created_by)
    values (
      v_u15,
      'practice',
      'U15 training',
      ((v_wed + (i * 7)) + time '17:30') at time zone 'Atlantic/Bermuda',
      ((v_wed + (i * 7)) + time '19:00') at time zone 'Atlantic/Bermuda',
      'Warwick Academy lower field',
      'Focus: pressing triggers + finishing.',
      v_group_b,
      v_user_id
    );
  end loop;

  -- 8) Sample games --------------------------------------------------------
  -- Men's Reserves: home vs Devonshire Cougars (this Saturday 15:00)
  insert into public.team_events
    (team_id, kind, title, starts_at, ends_at, location, opponent, home_away, notes, created_by)
  values (
    v_reserves,
    'game',
    'Reserves vs Devonshire Cougars',
    ((v_sat) + time '15:00') at time zone 'Atlantic/Bermuda',
    ((v_sat) + time '16:45') at time zone 'Atlantic/Bermuda',
    'Warwick Academy main pitch',
    'Devonshire Cougars',
    'Home',
    'League fixture. Arrive 14:00 for warm-up.',
    v_user_id
  );

  -- Men's Reserves: away at North Village (Saturday +14, 14:00)
  insert into public.team_events
    (team_id, kind, title, starts_at, ends_at, location, opponent, home_away, notes, created_by)
  values (
    v_reserves,
    'game',
    'North Village vs Reserves',
    ((v_sat + 14) + time '14:00') at time zone 'Atlantic/Bermuda',
    ((v_sat + 14) + time '15:45') at time zone 'Atlantic/Bermuda',
    'Bernard Park, Pembroke',
    'North Village',
    'Away',
    'Coach bus departs from clubhouse 12:30.',
    v_user_id
  );

  -- U15: home vs Dandy Town (Saturday +7, 10:00)
  insert into public.team_events
    (team_id, kind, title, starts_at, ends_at, location, opponent, home_away, notes, created_by)
  values (
    v_u15,
    'game',
    'U15 vs Dandy Town',
    ((v_sat + 7) + time '10:00') at time zone 'Atlantic/Bermuda',
    ((v_sat + 7) + time '11:30') at time zone 'Atlantic/Bermuda',
    'Warwick Academy main pitch',
    'Dandy Town Hornets',
    'Home',
    'Youth league fixture. Photos after the match.',
    v_user_id
  );

  -- U15: away at Somerset Trojans (Saturday +21, 10:30)
  insert into public.team_events
    (team_id, kind, title, starts_at, ends_at, location, opponent, home_away, notes, created_by)
  values (
    v_u15,
    'game',
    'Somerset Trojans vs U15',
    ((v_sat + 21) + time '10:30') at time zone 'Atlantic/Bermuda',
    ((v_sat + 21) + time '12:00') at time zone 'Atlantic/Bermuda',
    'Somerset Cricket Club ground',
    'Somerset Trojans',
    'Away',
    'Long travel — meet at clubhouse 08:30.',
    v_user_id
  );

  raise notice 'Seeded calendar for Richard Todd (user_id %): Reserves team %, U15 team %.', v_user_id, v_reserves, v_u15;
end $$;
