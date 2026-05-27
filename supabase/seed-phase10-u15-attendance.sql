-- Warwick FA — seed attendance for the Under-15 team.
--
-- Populates the `attendance` table for every existing `team_events` row that
-- belongs to the U-15 squad, using a deterministic but varied mix of
-- present / late / excused / absent across active players.
--
-- Re-runnable: `on conflict (event_id, player_id) do nothing` so existing
-- marks (e.g. ones a coach has already taken) are preserved.

with u15 as (
  select id
  from public.teams
  where slug = 'u15'
     or lower(name) like 'under-15%'
     or lower(name) like 'u-15%'
     or lower(name) like 'u15%'
  limit 1
),
roster as (
  select p.id, row_number() over (order by p.squad_number nulls last, p.full_name) as rn
  from public.players p
  join u15 t on t.id = p.team_id
  where p.active is true
),
events as (
  select e.id, row_number() over (order by e.starts_at) as en
  from public.team_events e
  join u15 t on t.id = e.team_id
)
insert into public.attendance (event_id, player_id, status, note, recorded_at)
select
  ev.id,
  r.id,
  -- Deterministic but realistic mix:
  --   70% present, 12% late, 10% excused, 8% absent
  (case ((r.rn * 7 + ev.en * 11) % 100)
     when 0  then 'absent'
     when 1  then 'absent'
     when 2  then 'absent'
     when 3  then 'absent'
     when 4  then 'absent'
     when 5  then 'absent'
     when 6  then 'absent'
     when 7  then 'absent'
     when 8  then 'late'
     when 9  then 'late'
     when 10 then 'late'
     when 11 then 'late'
     when 12 then 'late'
     when 13 then 'late'
     when 14 then 'late'
     when 15 then 'late'
     when 16 then 'late'
     when 17 then 'late'
     when 18 then 'late'
     when 19 then 'late'
     when 20 then 'excused'
     when 21 then 'excused'
     when 22 then 'excused'
     when 23 then 'excused'
     when 24 then 'excused'
     when 25 then 'excused'
     when 26 then 'excused'
     when 27 then 'excused'
     when 28 then 'excused'
     when 29 then 'excused'
     else 'present'
   end)::attendance_status,
  null,
  -- Stamp recorded_at near the event itself so historic events look historic.
  (select starts_at from public.team_events where id = ev.id) + interval '15 minutes'
from events ev
cross join roster r
on conflict (event_id, player_id) do nothing;
