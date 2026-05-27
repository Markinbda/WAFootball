-- Warwick FA — Demo cartoon avatars for seeded players.
-- Uses DiceBear (https://www.dicebear.com) which serves free, deterministic
-- cartoon SVGs based on a seed string. No API key required.
--
-- Safe to re-run: only fills in photo_url where it's still NULL, so any
-- real photos uploaded via Admin → Players are preserved.
--
-- Style mix:
--   * Senior teams (mens-first, mens-reserves) → `avataaars`  (classic cartoon)
--   * Youth teams  (u17, u15, u13, u11)        → `adventurer` (kid-friendly)
--   * Goalkeepers everywhere                   → `big-smile`  (so they stand out)

update public.players p
set photo_url =
  'https://api.dicebear.com/9.x/' ||
  case
    when p.position = 'Goalkeeper'              then 'big-smile'
    when t.slug in ('mens-first','mens-reserves') then 'avataaars'
    else 'adventurer'
  end ||
  '/svg?seed=' || replace(p.full_name, ' ', '-') ||
  '&backgroundType=gradientLinear' ||
  '&backgroundColor=00186C,1E8E3E,FFC72C'
from public.teams t
where p.team_id = t.id
  and p.photo_url is null;
