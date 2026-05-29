-- Warwick FA — Phase 13: live-match demo seed (ASCII-safe)
--
-- Powers the homepage "Live Results Now" tile and the /live/mens-first page.
-- Marks the Mens First next fixture as live and inserts ~5 demo events
-- against the first few active players on the squad.
-- Safe to re-run: dedupes events by (fixture, player, minute, type).

-- Step 1: mark the chosen fixture as live
with mf as (
  select id from public.teams where slug = 'mens-first' limit 1
),
fx as (
  select id from (
    select f.id, f.kickoff_at,
           case when f.kickoff_at >= now() then 0 else 1 end as past
    from public.fixtures f
    join mf on mf.id = f.team_id
    order by past asc, abs(extract(epoch from (f.kickoff_at - now())))
    limit 1
  ) s
)
update public.fixtures
   set status = 'live'
 where id in (select id from fx);

-- Step 2: insert play-by-play events
with mf as (
  select id from public.teams where slug = 'mens-first' limit 1
),
fx as (
  select id as fixture_id, team_id from (
    select f.id, f.team_id, f.kickoff_at,
           case when f.kickoff_at >= now() then 0 else 1 end as past
    from public.fixtures f
    join mf on mf.id = f.team_id
    order by past asc, abs(extract(epoch from (f.kickoff_at - now())))
    limit 1
  ) s
),
ranked_players as (
  select
    p.id,
    row_number() over (order by coalesce(p.squad_number, 999), p.full_name) as rn
  from public.players p
  join fx on fx.team_id = p.team_id
  where p.active = true
),
plan(rn, kind, minute, note) as (
  values
    (null::int, 'kickoff'::match_event_type,      0,  'Kick-off. Warwick get us underway.'),
    (1,         'goal_for'::match_event_type,     14, 'Sweeping move down the right finished first time.'),
    (2,         'yellow'::match_event_type,       27, 'Late challenge in midfield.'),
    (3,         'goal_for'::match_event_type,     41, 'Header from the corner. Brilliant leap.'),
    (null::int, 'halftime'::match_event_type,     45, 'Half-time whistle. Warwick lead 2-0.'),
    (4,         'goal_against'::match_event_type, 58, 'Visitors pull one back from the spot.'),
    (5,         'red'::match_event_type,          72, 'Second yellow. Warwick down to ten men.'),
    (1,         'goal_for'::match_event_type,     83, 'Counter-attack finish into the bottom corner.')
)
insert into public.match_events (fixture_id, minute, type, player_id, note)
select
  fx.fixture_id,
  pl.minute,
  pl.kind,
  case when pl.rn is not null then rp.id else null end,
  pl.note
from fx
cross join plan pl
left join ranked_players rp on rp.rn = pl.rn
where (pl.rn is null or rp.id is not null)
  and not exists (
    select 1 from public.match_events me
    where me.fixture_id = fx.fixture_id
      and me.minute     = pl.minute
      and me.type       = pl.kind
      and (
        (pl.rn is null and me.player_id is null) or
        (pl.rn is not null and me.player_id = rp.id)
      )
  );
