-- Warwick FA — Phase 13: demo data for the /stats leaderboards.
--
-- Populates public.match_events so the Top Scorers / Yellow Cards / Red Cards
-- boards on /stats are no longer empty. Designed to be safe to re-run.
--
-- Strategy: for each team that has at least one past fixture and at least one
-- player, attach a handful of goal/yellow/red events to the most recent past
-- fixture, targeting the first few active players of that team (ordered by
-- squad_number then name, so it's deterministic). Skips rows that already
-- exist with the same (fixture, player, minute, type) signature.

with team_fixture as (
  -- Most recent past fixture per team
  select distinct on (f.team_id)
    f.id      as fixture_id,
    f.team_id as team_id,
    f.kickoff_at
  from public.fixtures f
  where f.kickoff_at < now()
  order by f.team_id, f.kickoff_at desc
),
ranked_players as (
  select
    p.id,
    p.team_id,
    p.full_name,
    row_number() over (
      partition by p.team_id
      order by coalesce(p.squad_number, 999), p.full_name
    ) as rn
  from public.players p
  where p.active = true
),
plan as (
  -- (rn within team, type, minute) tuples — yields a realistic spread per team.
  select * from (values
    (1, 'goal_for'::match_event_type, 12),
    (1, 'goal_for'::match_event_type, 64),
    (2, 'goal_for'::match_event_type, 28),
    (3, 'goal_for'::match_event_type, 41),
    (4, 'goal_for'::match_event_type, 77),
    (2, 'yellow'::match_event_type,   35),
    (5, 'yellow'::match_event_type,   52),
    (6, 'yellow'::match_event_type,   88),
    (7, 'red'::match_event_type,      79)
  ) as v(rn, kind, minute)
)
insert into public.match_events (fixture_id, minute, type, player_id)
select tf.fixture_id, pl.minute, pl.kind, rp.id
from team_fixture tf
join ranked_players rp on rp.team_id = tf.team_id
join plan pl on pl.rn = rp.rn
where not exists (
  select 1 from public.match_events me
  where me.fixture_id = tf.fixture_id
    and me.player_id  = rp.id
    and me.minute     = pl.minute
    and me.type       = pl.kind
);

-- Sanity check (run interactively):
-- select type, count(*) from public.match_events group by type order by 1;
