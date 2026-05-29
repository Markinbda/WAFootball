-- Warwick FA — Phase 13: live-match demo seed v2 (PL/pgSQL block, paste-safe)
--
-- Powers the homepage "Live Results Now" tile and the /live/mens-first page.
-- Marks the Mens First next fixture as live and inserts 8 demo events
-- against the first five active players on the squad.
-- Safe to re-run.

do $$
declare
  v_fixture uuid;
  v_team    uuid;
  v_p1 uuid; v_p2 uuid; v_p3 uuid; v_p4 uuid; v_p5 uuid;
begin
  select id into v_team from public.teams where slug = 'mens-first';
  if v_team is null then raise notice 'no mens-first team'; return; end if;

  select id into v_fixture
  from public.fixtures
  where team_id = v_team
  order by case when kickoff_at >= now() then 0 else 1 end asc,
           abs(extract(epoch from (kickoff_at - now())))
  limit 1;

  if v_fixture is null then raise notice 'no fixture'; return; end if;

  update public.fixtures set status = 'live' where id = v_fixture;

  with ranked as (
    select id, row_number() over (order by coalesce(squad_number, 999), full_name) as rn
    from public.players where team_id = v_team and active = true
  )
  select max(case when rn=1 then id end),
         max(case when rn=2 then id end),
         max(case when rn=3 then id end),
         max(case when rn=4 then id end),
         max(case when rn=5 then id end)
    into v_p1, v_p2, v_p3, v_p4, v_p5
  from ranked;

  insert into public.match_events (fixture_id, minute, type, player_id, note) values
    (v_fixture,  0, 'kickoff',       null, 'Kick-off. Warwick underway.'),
    (v_fixture, 14, 'goal_for',      v_p1, 'Sweeping move finished first time.'),
    (v_fixture, 27, 'yellow',        v_p2, 'Late challenge in midfield.'),
    (v_fixture, 41, 'goal_for',      v_p3, 'Header from a corner. Brilliant leap.'),
    (v_fixture, 45, 'halftime',      null, 'Half-time. Warwick lead 2-0.'),
    (v_fixture, 58, 'goal_against',  v_p4, 'Visitors pull one back from a spot kick.'),
    (v_fixture, 72, 'red',           v_p5, 'Second yellow. Warwick down to ten men.'),
    (v_fixture, 83, 'goal_for',      v_p1, 'Counter-attack finish into a bottom corner.')
  on conflict do nothing;
end $$;
