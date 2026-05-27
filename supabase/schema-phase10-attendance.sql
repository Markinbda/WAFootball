-- Warwick FA — Phase 10: attendance tracking for team_events
--
-- Coaches mark each player present/absent/late/excused for a given practice
-- or game. Re-runnable.

-- ---------------------------------------------------------------------------
-- 1) Enum
-- ---------------------------------------------------------------------------
do $$
begin
  if not exists (select 1 from pg_type where typname = 'attendance_status') then
    create type attendance_status as enum ('present', 'absent', 'late', 'excused');
  end if;
end $$;

-- ---------------------------------------------------------------------------
-- 2) Table
-- ---------------------------------------------------------------------------
create table if not exists public.attendance (
  id           uuid primary key default gen_random_uuid(),
  event_id     uuid not null references public.team_events(id) on delete cascade,
  player_id    uuid not null references public.players(id)     on delete cascade,
  status       attendance_status not null,
  note         text,
  recorded_by  uuid references auth.users(id) on delete set null,
  recorded_at  timestamptz not null default now(),
  unique (event_id, player_id)
);

create index if not exists attendance_event_idx  on public.attendance (event_id);
create index if not exists attendance_player_idx on public.attendance (player_id);

-- ---------------------------------------------------------------------------
-- 3) RLS — admin OR coach of the event's team can read & write
-- ---------------------------------------------------------------------------
alter table public.attendance enable row level security;

drop policy if exists "attendance read"  on public.attendance;
drop policy if exists "attendance write" on public.attendance;

create policy "attendance read"
  on public.attendance for select
  using (
    public.has_role('admin')
    or exists (
      select 1
      from public.team_events e
      join public.team_coaches tc on tc.team_id = e.team_id
      where e.id = attendance.event_id
        and tc.user_id = auth.uid()
    )
  );

create policy "attendance write"
  on public.attendance for all
  using (
    public.has_role('admin')
    or exists (
      select 1
      from public.team_events e
      join public.team_coaches tc on tc.team_id = e.team_id
      where e.id = attendance.event_id
        and tc.user_id = auth.uid()
    )
  )
  with check (
    public.has_role('admin')
    or exists (
      select 1
      from public.team_events e
      join public.team_coaches tc on tc.team_id = e.team_id
      where e.id = attendance.event_id
        and tc.user_id = auth.uid()
    )
  );
