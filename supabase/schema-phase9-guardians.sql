-- Warwick FA — Phase 9: extend player_guardians with contact info + coach write
--
-- Adds optional guardian_name / email / phone / notes so a coach can record
-- parental contact details for a player even when the parent has not (yet)
-- registered an auth account.
--
-- Re-runnable. Run AFTER schema-phase8.sql.

-- ---------------------------------------------------------------------------
-- 1) Add columns
-- ---------------------------------------------------------------------------
alter table public.player_guardians
  add column if not exists id             uuid default gen_random_uuid(),
  add column if not exists guardian_name  text,
  add column if not exists guardian_email text,
  add column if not exists guardian_phone text,
  add column if not exists notes          text;

-- ---------------------------------------------------------------------------
-- 2) Replace composite PK (player_id, user_id) with surrogate id PK so that
--    multiple un-linked guardians (user_id null) per player are allowed.
-- ---------------------------------------------------------------------------
do $$
declare
  pk_name text;
begin
  select conname into pk_name
  from pg_constraint
  where conrelid = 'public.player_guardians'::regclass
    and contype  = 'p';

  if pk_name is not null and pk_name <> 'player_guardians_pkey' then
    execute format('alter table public.player_guardians drop constraint %I', pk_name);
  elsif pk_name = 'player_guardians_pkey' then
    -- check if it's still the (player_id, user_id) composite
    if exists (
      select 1
      from pg_constraint c
      join pg_attribute a
        on a.attrelid = c.conrelid
       and a.attnum   = any (c.conkey)
      where c.conname = 'player_guardians_pkey'
        and a.attname in ('player_id','user_id')
    ) and not exists (
      select 1
      from pg_constraint c
      join pg_attribute a
        on a.attrelid = c.conrelid
       and a.attnum   = any (c.conkey)
      where c.conname = 'player_guardians_pkey'
        and a.attname = 'id'
    ) then
      alter table public.player_guardians drop constraint player_guardians_pkey;
    end if;
  end if;
end $$;

-- Ensure every existing row has an id, then set NOT NULL + new PK.
update public.player_guardians set id = gen_random_uuid() where id is null;
alter table public.player_guardians alter column id set not null;

do $$
begin
  if not exists (
    select 1 from pg_constraint
    where conrelid = 'public.player_guardians'::regclass and contype = 'p'
  ) then
    alter table public.player_guardians add primary key (id);
  end if;
end $$;

-- Allow user_id to be null (unregistered parent).
alter table public.player_guardians alter column user_id drop not null;

-- Prevent duplicate (player, user) pairs when user_id is set.
create unique index if not exists player_guardians_player_user_uidx
  on public.player_guardians (player_id, user_id)
  where user_id is not null;

-- ---------------------------------------------------------------------------
-- 3) RLS: let coaches of the player's team manage guardians too.
-- ---------------------------------------------------------------------------
drop policy if exists "player_guardians write" on public.player_guardians;

create policy "player_guardians write"
  on public.player_guardians for all
  using (
    public.has_role('admin')
    or user_id = auth.uid()
    or exists (
      select 1
      from public.team_coaches tc
      join public.players p on p.id = player_guardians.player_id
      where tc.team_id = p.team_id and tc.user_id = auth.uid()
    )
  )
  with check (
    public.has_role('admin')
    or user_id = auth.uid()
    or exists (
      select 1
      from public.team_coaches tc
      join public.players p on p.id = player_guardians.player_id
      where tc.team_id = p.team_id and tc.user_id = auth.uid()
    )
  );

-- ---------------------------------------------------------------------------
-- 4) Data API grants (future-proof for Supabase 2026-10-30 default change)
--    RLS still governs row access; these only expose the table to PostgREST.
-- ---------------------------------------------------------------------------
grant usage on schema public to anon, authenticated;
grant select, insert, update, delete on public.player_guardians to authenticated;
