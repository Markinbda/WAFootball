-- Warwick FA — Phase 13: live-match demo seed (ASCII-safe, single DO block)
--
-- Powers the homepage "Live Results Now" tile and the /live/mens-first page.
-- Creates a Men's First fixture if none exists, marks it live, ensures we
-- have at least 5 players on the team, and inserts 8 play-by-play events.
-- Safe to re-run.

do $$
declare
  v_team    uuid;
  v_fixture uuid;
  v_p1 uuid; v_p2 uuid; v_p3 uuid; v_p4 uuid; v_p5 uuid;
begin
  select id into v_team from public.teams where slug = 'mens-first' limit 1;
  if v_team is null then
    raise notice 'no mens-first team found - aborting';
    return;
  end if;

  -- Pick the nearest fixture for this team (prefer future / live)
  select id into v_fixture
  from public.fixtures
  where team_id = v_team
  order by case when kickoff_at >= now() then 0 else 1 end asc,
           abs(extract(epoch from (kickoff_at - now())))
  limit 1;

  if v_fixture is null then
    insert into public.fixtures (team_id, opponent, kickoff_at, venue, competition, status)
    values (v_team, 'Somerset Trojans', now() + interval '2 hours',
            'Home', 'Premier Division', 'live')
    returning id into v_fixture;
    raise notice 'created fixture %', v_fixture;
  else
    update public.fixtures set status = 'live' where id = v_fixture;
    raise notice 'marked fixture % as live', v_fixture;
  end if;

  -- Ensure at least 5 active players
  if (select count(*) from public.players where team_id = v_team and active = true) < 5 then
    insert into public.players (team_id, full_name, squad_number, active) values
      (v_team, 'Kwame Bascome',      9, true),
      (v_team, 'Reggie DeShields',  10, true),
      (v_team, 'Tariq Outerbridge', 11, true),
      (v_team, 'Justin Donawa',      7, true),
      (v_team, 'Damon Ming',         4, true)
    on conflict do nothing;
  end if;

  -- Pick five player ids, ordered by squad number then name
  select id into v_p1 from public.players
    where team_id = v_team and active = true
    order by coalesce(squad_number, 999), full_name offset 0 limit 1;
  select id into v_p2 from public.players
    where team_id = v_team and active = true
    order by coalesce(squad_number, 999), full_name offset 1 limit 1;
  select id into v_p3 from public.players
    where team_id = v_team and active = true
    order by coalesce(squad_number, 999), full_name offset 2 limit 1;
  select id into v_p4 from public.players
    where team_id = v_team and active = true
    order by coalesce(squad_number, 999), full_name offset 3 limit 1;
  select id into v_p5 from public.players
    where team_id = v_team and active = true
    order by coalesce(squad_number, 999), full_name offset 4 limit 1;

  -- Play-by-play events
  insert into public.match_events (fixture_id, minute, type, player_id, note) values
    (v_fixture,  0, 'kickoff',      null, 'Kick-off. Warwick underway.'),
    (v_fixture, 14, 'goal_for',     v_p1, 'Sweeping move finished first time.'),
    (v_fixture, 27, 'yellow',       v_p2, 'Late challenge in midfield.'),
    (v_fixture, 41, 'goal_for',     v_p3, 'Header from a corner. Brilliant leap.'),
    (v_fixture, 45, 'halftime',     null, 'Half-time. Warwick lead 2-0.'),
    (v_fixture, 58, 'goal_against', v_p4, 'Visitors pull one back from a spot kick.'),
    (v_fixture, 72, 'red',          v_p5, 'Second yellow. Warwick down to ten men.'),
    (v_fixture, 83, 'goal_for',     v_p1, 'Counter-attack finish into a bottom corner.')
  on conflict do nothing;

  raise notice 'seed complete for fixture %', v_fixture;
end $$;
