-- Warwick FA — Phase 3 demo seed (coaches + players)
-- Run AFTER schema.sql and schema-phase3.sql. Idempotent-ish:
-- player inserts are guarded by (team_id, full_name) so re-running won't duplicate.

-- =========================================================
-- COACHES
-- =========================================================
-- Richard Todd coaches two teams in DIFFERENT age groups.
update public.teams set coach = 'Richard Todd' where slug in ('mens-reserves', 'u15');

-- Round out other coach names so the site doesn't look empty.
update public.teams set coach = 'Marcus Bean'      where slug = 'mens-first'  and (coach is null or coach = 'TBC');
update public.teams set coach = 'Andrew Bascome'   where slug = 'u17'         and (coach is null or coach = 'TBC');
update public.teams set coach = 'Kyle Lightbourne' where slug = 'u13'         and (coach is null or coach = 'TBC');
update public.teams set coach = 'Devarr Boyles'    where slug = 'u11'         and (coach is null or coach = 'TBC');

-- =========================================================
-- PLAYERS
-- =========================================================
-- Helper insert pattern: only insert if no player with the same name on that team yet.
with t as (select id, slug from public.teams)
insert into public.players (team_id, full_name, position, squad_number, bio, active)
select t.id, p.full_name, p.position, p.squad_number, p.bio, true
from t
join (values
  -- Men's First Team
  ('mens-first', 'Nahki Wells',        'Forward',    9,  'Captain and top scorer. Bermuda international.'),
  ('mens-first', 'Dante Leverock',     'Defender',   5,  'Commanding centre-back, leads from the back.'),
  ('mens-first', 'Reggie Lambe',       'Midfielder', 10, 'Creative number-10 with an eye for a through-ball.'),
  ('mens-first', 'Dale Eve',           'Goalkeeper', 1,  'Shot-stopper with sharp reflexes.'),
  ('mens-first', 'Justin Donawa',      'Forward',    11, 'Pacey winger, deadly on the counter.'),
  ('mens-first', 'Tahj Bell',          'Midfielder', 6,  'Box-to-box engine of the midfield.'),
  ('mens-first', 'Zeiko Lewis',        'Midfielder', 8,  'Tidy passer with composure in tight spaces.'),

  -- Men's Reserves (Richard Todd)
  ('mens-reserves', 'Cameron Hill',    'Defender',   4,  'No-nonsense centre-half, aerial dominance.'),
  ('mens-reserves', 'Marcus Symonds',  'Midfielder', 8,  'Steady deep-lying playmaker.'),
  ('mens-reserves', 'Tre DeShields',   'Forward',    9,  'Clinical finisher learning the senior game.'),
  ('mens-reserves', 'Jaden Masters',   'Goalkeeper', 1,  'Rising keeper, sharp on his line.'),
  ('mens-reserves', 'Kishawn Smith',   'Midfielder', 6,  'Combative ball-winner.'),
  ('mens-reserves', 'Aaron Denkins',   'Defender',   3,  'Marauding left-back.'),

  -- Under-17
  ('u17', 'Liam Outerbridge',          'Forward',    9,  'Top scorer in the U17 league this season.'),
  ('u17', 'Daniel Furbert',            'Midfielder', 10, 'Press-resistant, makes the team tick.'),
  ('u17', 'Ethan Pitcher',             'Defender',   5,  'Calm under pressure.'),
  ('u17', 'Joshua Bean',               'Goalkeeper', 1,  'Brave keeper with a long throw.'),
  ('u17', 'Caleb Simons',              'Defender',   2,  'Overlapping right-back.'),
  ('u17', 'Malachi Burgess',           'Midfielder', 7,  'Tricky winger, loves a step-over.'),

  -- Under-15 (Richard Todd)
  ('u15', 'Oliver Smith',              'Midfielder', 8,  'Captain of the U15s, leads by example.'),
  ('u15', 'Mason Cabral',              'Forward',    9,  'Strong centre-forward, holds the ball up well.'),
  ('u15', 'Ben Lightbourne',           'Defender',   4,  'Composed centre-back, reads the game.'),
  ('u15', 'Theo Astwood',              'Goalkeeper', 1,  'Promising young keeper with great hands.'),
  ('u15', 'Noah Trott',                'Midfielder', 10, 'Creative attacking midfielder.'),
  ('u15', 'Sam DeRoza',                'Forward',    11, 'Speedy left winger.'),
  ('u15', 'Ryan Fox',                  'Defender',   3,  'Tenacious left-back.'),

  -- Under-13
  ('u13', 'Henry Tucker',              'Midfielder', 8,  'Box-to-box with stamina to burn.'),
  ('u13', 'Isaiah Lambert',            'Forward',    9,  'Sharp finisher in the U13 league.'),
  ('u13', 'Owen Bascome',              'Defender',   5,  'Tackles for fun.'),
  ('u13', 'Finn Outerbridge',          'Goalkeeper', 1,  'Quick reflexes, loves a save.'),
  ('u13', 'Jayden Wells',              'Midfielder', 7,  'Loves to take on his man.'),

  -- Under-11
  ('u11', 'Charlie Bean',              'Forward',    9,  'Scored a hat-trick on his debut.'),
  ('u11', 'Jasper Bell',               'Midfielder', 8,  'Tireless little engine.'),
  ('u11', 'Eli Symonds',               'Defender',   4,  'Loves a sliding tackle.'),
  ('u11', 'Reuben Hollis',             'Goalkeeper', 1,  'Brave little keeper.'),
  ('u11', 'Caleb Astwood',             'Forward',    11, 'Quick on the wing.')
) as p(slug, full_name, position, squad_number, bio) on p.slug = t.slug
where not exists (
  select 1 from public.players px
  where px.team_id = t.id and px.full_name = p.full_name
);
