-- Warwick FA — Demo content seed (fixtures, news, match events, gallery)
-- Idempotent: re-running will not duplicate rows.
-- Run AFTER schema.sql, schema-phase3.sql, schema-phase7.sql, and seed-phase3.sql.

-- =========================================================
-- FIXTURES — recent finals + upcoming
-- =========================================================
-- Past results (status = 'final' with scores)
insert into public.fixtures (team_id, opponent, kickoff_at, venue, competition, status, score_for, score_against)
select t.id, v.opponent, v.kickoff_at::timestamptz, v.venue, v.competition, 'final', v.sf, v.sa
from public.teams t
join (values
  ('mens-first',   'PHC Zebras',          '2026-05-23 19:00-03', 'Away', 'Premier Division', 2, 1),
  ('mens-first',   'Robin Hood',          '2026-05-16 19:00-03', 'Home', 'Premier Division', 3, 0),
  ('mens-first',   'Somerset Trojans',    '2026-05-09 19:00-03', 'Home', 'FA Cup',           1, 1),
  ('mens-first',   'North Village',       '2026-05-02 15:00-03', 'Away', 'Premier Division', 0, 2),
  ('mens-first',   'Dandy Town',          '2026-04-25 19:00-03', 'Home', 'Premier Division', 4, 2),

  ('mens-reserves','PHC Reserves',        '2026-05-23 17:00-03', 'Home', 'Reserve League',   3, 2),
  ('mens-reserves','Robin Hood Reserves', '2026-05-16 17:00-03', 'Away', 'Reserve League',   1, 1),
  ('mens-reserves','Devonshire Cougars',  '2026-05-09 17:00-03', 'Home', 'Reserve League',   2, 0),

  ('u17',          'X-Roads U17',         '2026-05-24 14:00-03', 'Home', 'Youth Premier',    2, 1),
  ('u17',          'PHC U17',             '2026-05-17 14:00-03', 'Away', 'Youth Premier',    0, 0),
  ('u17',          'Dandy Town U17',      '2026-05-10 14:00-03', 'Home', 'Youth Premier',    4, 1),

  ('u15',          'Somerset Eagles',     '2026-05-24 12:00-03', 'Home', 'Youth League',     8, 7),
  ('u15',          'Devonshire Cougars',  '2026-05-17 12:00-03', 'Away', 'Youth League',     3, 0),
  ('u15',          'Boulevard',           '2026-05-10 12:00-03', 'Home', 'Youth League',     2, 2),

  ('u13',          'North Village U13',   '2026-05-17 10:00-03', 'Home', 'Youth League',     3, 3),
  ('u13',          'Dandy Town U13',      '2026-05-10 10:00-03', 'Away', 'Youth League',     5, 2),
  ('u13',          'X-Roads U13',         '2026-05-03 10:00-03', 'Home', 'Youth League',     1, 4),

  ('u11',          'Boulevard Blazers',   '2026-05-17 09:00-03', 'Away', 'Mini League',      5, 0),
  ('u11',          'PHC Cubs',            '2026-05-10 09:00-03', 'Home', 'Mini League',      3, 3),
  ('u11',          'Somerset Pups',       '2026-05-03 09:00-03', 'Home', 'Mini League',      6, 1)
) as v(slug, opponent, kickoff_at, venue, competition, sf, sa) on v.slug = t.slug
where not exists (
  select 1 from public.fixtures fx
  where fx.team_id = t.id and fx.opponent = v.opponent and fx.kickoff_at = v.kickoff_at::timestamptz
);

-- Upcoming fixtures (status = 'scheduled')
insert into public.fixtures (team_id, opponent, kickoff_at, venue, competition, status)
select t.id, v.opponent, v.kickoff_at::timestamptz, v.venue, v.competition, 'scheduled'
from public.teams t
join (values
  ('mens-first',   'Somerset Trojans',    '2026-06-06 19:00-03', 'Home', 'Premier Division'),
  ('mens-first',   'X-Roads',             '2026-06-13 19:00-03', 'Away', 'Premier Division'),
  ('mens-first',   'Boulevard',           '2026-06-20 19:00-03', 'Home', 'Premier Division'),

  ('mens-reserves','X-Roads Reserves',    '2026-06-06 17:00-03', 'Away', 'Reserve League'),
  ('mens-reserves','Boulevard Reserves',  '2026-06-13 17:00-03', 'Home', 'Reserve League'),

  ('u17',          'Somerset U17',        '2026-06-07 14:00-03', 'Away', 'Youth Premier'),
  ('u17',          'Robin Hood U17',      '2026-06-14 14:00-03', 'Home', 'Youth Premier'),

  ('u15',          'Devonshire Cougars',  '2026-06-07 12:00-03', 'Away', 'Youth League'),
  ('u15',          'PHC U15',             '2026-06-14 12:00-03', 'Home', 'Youth League'),

  ('u13',          'Dandy Town U13',      '2026-06-07 10:00-03', 'Home', 'Youth League'),
  ('u13',          'Boulevard U13',       '2026-06-14 10:00-03', 'Away', 'Youth League'),

  ('u11',          'Devonshire Pups',     '2026-06-07 09:00-03', 'Home', 'Mini League'),
  ('u11',          'Robin Hood Cubs',     '2026-06-14 09:00-03', 'Away', 'Mini League')
) as v(slug, opponent, kickoff_at, venue, competition) on v.slug = t.slug
where not exists (
  select 1 from public.fixtures fx
  where fx.team_id = t.id and fx.opponent = v.opponent and fx.kickoff_at = v.kickoff_at::timestamptz
);

-- =========================================================
-- NEWS
-- =========================================================
insert into public.news (slug, title, excerpt, body, tag, published_at)
values
  ('mens-first-edge-phc',
   'First Team edge PHC 2–1 in tight away trip',
   'Wells and Donawa goals seal a hard-fought win at PHC Field.',
   'Warwick''s First Team produced a battling display to come away from PHC Field with all three points. Nahki Wells opened the scoring on 23 minutes before Justin Donawa doubled the lead just after the hour. PHC pulled one back late but Dale Eve stood tall to preserve the win.',
   'Match Report',
   '2026-05-23 22:30-03'),
  ('u15-thriller-eagles',
   'U15s win 8–7 thriller against Somerset Eagles',
   'A breathless afternoon at Warwick Academy ends with the boys on top.',
   'Mason Cabral bagged a hat-trick and Noah Trott chipped in with two assists as the U15s edged a goal-fest at home. Coach Richard Todd: "Defensively we have work to do, but the character to keep going was outstanding."',
   'Match Report',
   '2026-05-24 18:00-03'),
  ('registration-open-2026-27',
   '2026/27 registration is open',
   'Sign up your child for the new season — all age groups, U7 through senior.',
   'Registration for the 2026/27 season is now open. Spaces are limited in some age groups so register early via the Contact page. Returning players still need to confirm their place for next season.',
   'Club News',
   '2026-05-20 09:00-03'),
  ('summer-camp-2026',
   'Warwick FA Summer Camp returns this July',
   'A week of football, fun and fundamentals for U7–U13 players.',
   'Our annual Summer Camp returns 13–17 July at Warwick Academy. Coaches Devarr Boyles and Kyle Lightbourne lead a fully-packed programme of small-sided games, technical drills and tournament finals. Limited spaces — register on the Contact page.',
   'Club News',
   '2026-05-18 10:00-03'),
  ('u17-routs-dandy',
   'U17s rout Dandy Town 4–1 at home',
   'Liam Outerbridge bagged a brace as the U17s extended their winning run.',
   'A clinical first-half performance saw the U17s race into a 3–0 lead by the break. Liam Outerbridge and Malachi Burgess were the standout performers in front of a strong home crowd.',
   'Match Report',
   '2026-05-10 17:00-03'),
  ('coach-todd-feature',
   'Coach Spotlight: Richard Todd',
   'The Reserves and U15 boss on doubling up across two age groups.',
   '"You have to be organised, otherwise you lose your evenings," laughs Richard Todd. We sat down with the dual-role coach to talk training plans, juggling pitch time and his proudest moments at the club.',
   'Feature',
   '2026-05-12 12:00-03')
on conflict (slug) do nothing;

-- =========================================================
-- MATCH EVENTS — populate stats for finalized fixtures
-- =========================================================
-- Helper CTEs to map team slugs + player names to ids.
with
  finals as (
    select fx.id as fixture_id, t.slug as team_slug, fx.opponent, fx.score_for
    from public.fixtures fx
    join public.teams t on t.id = fx.team_id
    where fx.status = 'final'
  ),
  evs(team_slug, opponent, player_name, kind, minute) as (
    values
      -- Men's First: PHC 2-1
      ('mens-first', 'PHC Zebras', 'Nahki Wells',   'goal_for'::match_event_type, 23),
      ('mens-first', 'PHC Zebras', 'Justin Donawa', 'goal_for'::match_event_type, 64),
      ('mens-first', 'PHC Zebras', 'Tahj Bell',     'yellow'::match_event_type,   72),
      -- Men's First: Robin Hood 3-0
      ('mens-first', 'Robin Hood', 'Nahki Wells',   'goal_for'::match_event_type, 12),
      ('mens-first', 'Robin Hood', 'Reggie Lambe',  'goal_for'::match_event_type, 38),
      ('mens-first', 'Robin Hood', 'Zeiko Lewis',   'goal_for'::match_event_type, 77),
      -- Men's First: Dandy Town 4-2
      ('mens-first', 'Dandy Town', 'Nahki Wells',     'goal_for'::match_event_type, 14),
      ('mens-first', 'Dandy Town', 'Nahki Wells',     'goal_for'::match_event_type, 41),
      ('mens-first', 'Dandy Town', 'Justin Donawa',   'goal_for'::match_event_type, 55),
      ('mens-first', 'Dandy Town', 'Reggie Lambe',    'goal_for'::match_event_type, 81),
      ('mens-first', 'Dandy Town', 'Dante Leverock',  'yellow'::match_event_type,   62),
      -- Men's First: Somerset 1-1
      ('mens-first', 'Somerset Trojans', 'Justin Donawa', 'goal_for'::match_event_type, 49),
      -- U15: Somerset Eagles 8-7
      ('u15', 'Somerset Eagles', 'Mason Cabral',  'goal_for'::match_event_type, 9),
      ('u15', 'Somerset Eagles', 'Mason Cabral',  'goal_for'::match_event_type, 22),
      ('u15', 'Somerset Eagles', 'Mason Cabral',  'goal_for'::match_event_type, 67),
      ('u15', 'Somerset Eagles', 'Sam DeRoza',    'goal_for'::match_event_type, 35),
      ('u15', 'Somerset Eagles', 'Sam DeRoza',    'goal_for'::match_event_type, 71),
      ('u15', 'Somerset Eagles', 'Noah Trott',    'goal_for'::match_event_type, 44),
      ('u15', 'Somerset Eagles', 'Oliver Smith',  'goal_for'::match_event_type, 58),
      ('u15', 'Somerset Eagles', 'Ben Lightbourne','goal_for'::match_event_type, 80),
      ('u15', 'Somerset Eagles', 'Ryan Fox',      'yellow'::match_event_type,   29),
      -- U15: Devonshire 3-0
      ('u15', 'Devonshire Cougars', 'Mason Cabral', 'goal_for'::match_event_type, 18),
      ('u15', 'Devonshire Cougars', 'Sam DeRoza',   'goal_for'::match_event_type, 47),
      ('u15', 'Devonshire Cougars', 'Noah Trott',   'goal_for'::match_event_type, 70),
      -- U17: Dandy Town 4-1
      ('u17', 'Dandy Town U17', 'Liam Outerbridge', 'goal_for'::match_event_type, 11),
      ('u17', 'Dandy Town U17', 'Liam Outerbridge', 'goal_for'::match_event_type, 31),
      ('u17', 'Dandy Town U17', 'Malachi Burgess',  'goal_for'::match_event_type, 56),
      ('u17', 'Dandy Town U17', 'Daniel Furbert',   'goal_for'::match_event_type, 74),
      ('u17', 'Dandy Town U17', 'Caleb Simons',     'yellow'::match_event_type,   62),
      -- U17: X-Roads 2-1
      ('u17', 'X-Roads U17', 'Liam Outerbridge', 'goal_for'::match_event_type, 20),
      ('u17', 'X-Roads U17', 'Daniel Furbert',   'goal_for'::match_event_type, 68),
      -- U13: Dandy Town 5-2
      ('u13', 'Dandy Town U13', 'Isaiah Lambert', 'goal_for'::match_event_type, 8),
      ('u13', 'Dandy Town U13', 'Isaiah Lambert', 'goal_for'::match_event_type, 27),
      ('u13', 'Dandy Town U13', 'Henry Tucker',   'goal_for'::match_event_type, 42),
      ('u13', 'Dandy Town U13', 'Jayden Wells',   'goal_for'::match_event_type, 55),
      ('u13', 'Dandy Town U13', 'Isaiah Lambert', 'goal_for'::match_event_type, 70),
      -- U11: Boulevard 5-0
      ('u11', 'Boulevard Blazers', 'Charlie Bean',  'goal_for'::match_event_type, 12),
      ('u11', 'Boulevard Blazers', 'Charlie Bean',  'goal_for'::match_event_type, 24),
      ('u11', 'Boulevard Blazers', 'Charlie Bean',  'goal_for'::match_event_type, 38),
      ('u11', 'Boulevard Blazers', 'Caleb Astwood', 'goal_for'::match_event_type, 46),
      ('u11', 'Boulevard Blazers', 'Jasper Bell',   'goal_for'::match_event_type, 55)
  )
insert into public.match_events (fixture_id, minute, type, player_id)
select f.fixture_id, e.minute, e.kind, p.id
from evs e
join finals f on f.team_slug = e.team_slug and f.opponent = e.opponent
join public.teams tm on tm.slug = e.team_slug
join public.players p on p.team_id = tm.id and p.full_name = e.player_name
where not exists (
  select 1 from public.match_events me
  where me.fixture_id = f.fixture_id
    and me.player_id = p.id
    and me.minute = e.minute
    and me.type = e.kind
);

-- =========================================================
-- GALLERY — a handful of placeholder photos using dummyimage
-- =========================================================
insert into public.gallery_photos (url, caption, team_id)
select v.url, v.caption,
  (select id from public.teams where slug = v.slug)
from (values
  ('https://dummyimage.com/1200x800/00186C/FFC72C&text=Warwick+FA+Match+Day',  'Match day at Warwick Academy', null::text),
  ('https://dummyimage.com/1200x800/1E8E3E/FFFFFF&text=Training+Night',        'Tuesday training under the lights', null),
  ('https://dummyimage.com/1200x800/FFC72C/00186C&text=Trophy+Day',            'U15s lifting the league shield', 'u15'),
  ('https://dummyimage.com/1200x800/0A2A8A/FFFFFF&text=First+Team+Lineup',     'First Team starting XI', 'mens-first'),
  ('https://dummyimage.com/1200x800/1E8E3E/FFC72C&text=Mini+Soccer',           'U7s having a blast', 'u11'),
  ('https://dummyimage.com/1200x800/00186C/FFFFFF&text=Coaches+Huddle',        'Pre-match team talk', null),
  ('https://dummyimage.com/1200x800/FFFFFF/00186C&text=Warwick+vs+PHC',        'Wells celebrates v PHC', 'mens-first'),
  ('https://dummyimage.com/1200x800/00186C/FFC72C&text=U17+Champions',         'U17s lift the cup', 'u17')
) as v(url, caption, slug)
where not exists (
  select 1 from public.gallery_photos gp where gp.url = v.url
);
