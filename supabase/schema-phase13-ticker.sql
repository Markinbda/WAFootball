-- Warwick FA — Phase 13: custom Live Ticker entries
--
-- Lets admins curate up to ~6 highlighted ticker entries on top of the
-- auto-generated fixtures/results ticker. Idempotent.

create table if not exists public.ticker_entries (
  id          uuid primary key default gen_random_uuid(),
  label       text not null,
  href        text,
  tag         text not null default 'NEWS',
  sort        integer not null default 0,
  active      boolean not null default true,
  created_by  uuid references auth.users(id) on delete set null,
  created_at  timestamptz not null default now(),
  updated_at  timestamptz not null default now()
);

alter table public.ticker_entries enable row level security;

-- Public read of active entries
drop policy if exists "ticker public read" on public.ticker_entries;
create policy "ticker public read"
  on public.ticker_entries for select
  using (active = true or public.has_role('admin') or public.has_role('coach'));

-- Admins manage everything
drop policy if exists "ticker admin write"  on public.ticker_entries;
drop policy if exists "ticker admin update" on public.ticker_entries;
drop policy if exists "ticker admin delete" on public.ticker_entries;

create policy "ticker admin write"
  on public.ticker_entries for insert
  with check (public.has_role('admin') or public.has_role('coach'));

create policy "ticker admin update"
  on public.ticker_entries for update
  using (public.has_role('admin') or public.has_role('coach'))
  with check (public.has_role('admin') or public.has_role('coach'));

create policy "ticker admin delete"
  on public.ticker_entries for delete
  using (public.has_role('admin') or public.has_role('coach'));

-- PostgREST exposure (explicit; future-proof per supabase-data-api-grants rule)
grant select on public.ticker_entries to anon;
grant select, insert, update, delete on public.ticker_entries to authenticated;
grant all    on public.ticker_entries to service_role;
