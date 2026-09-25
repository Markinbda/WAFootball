-- Warwick FA — Phase 18: Coach Portal (drills, documents, communication)
--
-- Adds the three data stores behind the new coach sidebar:
--   * public.drills            — club drill library (optionally team-scoped)
--   * public.team_documents    — files/links shared with a team
--   * public.team_messages     — announcements a coach sends to a team
--
-- Re-runnable. Run AFTER schema-phase8.sql (team_coaches / team_events).

-- ---------------------------------------------------------------------------
-- 0) Helper — "is the current user a coach of this team?"
--    plpgsql + security definer + row_security=off so the planner can't see
--    the inner table references (avoids RLS recursion across policies).
-- ---------------------------------------------------------------------------
create or replace function public.is_team_coach(p_team_id uuid)
returns boolean
language plpgsql
stable
security definer
set search_path = public
set row_security = off
as $$
declare v_exists boolean;
begin
  if p_team_id is null then
    return false;
  end if;
  select exists(
    select 1 from public.team_coaches tc
    where tc.team_id = p_team_id and tc.user_id = auth.uid()
  ) into v_exists;
  return v_exists;
end;
$$;

-- ---------------------------------------------------------------------------
-- 1) DRILLS — shared library. team_id null = available to the whole club.
-- ---------------------------------------------------------------------------
create table if not exists public.drills (
  id           uuid primary key default gen_random_uuid(),
  team_id      uuid references public.teams(id) on delete cascade,
  title        text not null,
  category     text not null default 'General'
                 check (category in ('General','Warm-up','Technical','Possession',
                                     'Finishing','Defending','Set Pieces','Goalkeeping',
                                     'Fitness','Small-sided Game','Cool-down')),
  age_group    text,
  duration_min int check (duration_min is null or duration_min between 1 and 240),
  players_min  int,
  players_max  int,
  equipment    text,
  description  text,
  coaching_points text,
  video_url    text,
  diagram_url  text,
  created_by   uuid references auth.users(id),
  created_at   timestamptz not null default now()
);

create index if not exists drills_team_idx     on public.drills (team_id);
create index if not exists drills_category_idx on public.drills (category);

alter table public.drills enable row level security;
drop policy if exists "drills read"  on public.drills;
drop policy if exists "drills write" on public.drills;

-- Any signed-in coach/admin can browse the library.
create policy "drills read"
  on public.drills for select
  using (public.has_role('admin') or public.has_role('coach'));

create policy "drills write"
  on public.drills for all
  using (public.has_role('admin') or public.has_role('coach'))
  with check (public.has_role('admin') or public.has_role('coach'));

-- ---------------------------------------------------------------------------
-- 2) TEAM DOCUMENTS — uploaded files or external links.
-- ---------------------------------------------------------------------------
create table if not exists public.team_documents (
  id          uuid primary key default gen_random_uuid(),
  team_id     uuid references public.teams(id) on delete cascade,
  title       text not null,
  category    text not null default 'General'
                check (category in ('General','Policy','Consent Form','Medical',
                                    'Schedule','Training Plan','Match Report','Other')),
  url         text not null,
  file_name   text,
  file_size   bigint,
  notes       text,
  visible_to_guardians boolean not null default false,
  created_by  uuid references auth.users(id),
  created_at  timestamptz not null default now()
);

create index if not exists team_documents_team_idx on public.team_documents (team_id);

alter table public.team_documents enable row level security;
drop policy if exists "team_documents read"  on public.team_documents;
drop policy if exists "team_documents write" on public.team_documents;

create policy "team_documents read"
  on public.team_documents for select
  using (
    public.has_role('admin')
    or public.has_role('coach')
    or (visible_to_guardians and exists (
      select 1
      from public.player_guardians pg
      join public.players p on p.id = pg.player_id
      where pg.user_id = auth.uid()
        and (team_documents.team_id is null or p.team_id = team_documents.team_id)
    ))
  );

create policy "team_documents write"
  on public.team_documents for all
  using (public.has_role('admin') or public.is_team_coach(team_id))
  with check (public.has_role('admin') or public.is_team_coach(team_id));

-- Storage bucket for uploaded documents (private — served via signed URLs).
insert into storage.buckets (id, name, public)
values ('team-documents', 'team-documents', false)
on conflict (id) do nothing;

drop policy if exists "team docs read"   on storage.objects;
drop policy if exists "team docs write"  on storage.objects;
drop policy if exists "team docs delete" on storage.objects;

create policy "team docs read" on storage.objects for select
  using (bucket_id = 'team-documents'
         and (public.has_role('admin') or public.has_role('coach')));

create policy "team docs write" on storage.objects for insert
  with check (bucket_id = 'team-documents'
              and (public.has_role('admin') or public.has_role('coach')));

create policy "team docs delete" on storage.objects for delete
  using (bucket_id = 'team-documents'
         and (public.has_role('admin') or public.has_role('coach')));

-- ---------------------------------------------------------------------------
-- 3) TEAM MESSAGES — coach announcements to a squad.
--    Delivery is queued the same way event notifications are: a worker picks
--    up `status = 'pending'` rows and fans them out.
-- ---------------------------------------------------------------------------
create table if not exists public.team_messages (
  id          uuid primary key default gen_random_uuid(),
  team_id     uuid references public.teams(id) on delete cascade,
  subject     text not null,
  body        text not null,
  audience    text not null default 'guardians'
                check (audience in ('guardians','players','coaches','everyone')),
  channels    text[] not null default array['email'],
  status      text not null default 'pending'
                check (status in ('draft','pending','sending','sent','failed')),
  sent_at     timestamptz,
  error       text,
  created_by  uuid references auth.users(id),
  created_at  timestamptz not null default now()
);

create index if not exists team_messages_team_idx   on public.team_messages (team_id, created_at desc);
create index if not exists team_messages_status_idx on public.team_messages (status, created_at);

alter table public.team_messages enable row level security;
drop policy if exists "team_messages read"  on public.team_messages;
drop policy if exists "team_messages write" on public.team_messages;

create policy "team_messages read"
  on public.team_messages for select
  using (public.has_role('admin') or public.has_role('coach'));

create policy "team_messages write"
  on public.team_messages for all
  using (public.has_role('admin') or public.is_team_coach(team_id))
  with check (public.has_role('admin') or public.is_team_coach(team_id));

-- ---------------------------------------------------------------------------
-- 4) Force PostgREST to drop cached plans / pick up the new tables.
-- ---------------------------------------------------------------------------
notify pgrst, 'reload schema';
