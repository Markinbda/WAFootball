-- Phase 16 — event_notifications
-- Records "please notify players/parents" intent when a coach or admin
-- creates a team_events row with the "Notify" checkbox on. A future fan-out
-- worker (Supabase Edge Function or Netlify Function) will consume pending
-- rows and dispatch via email / Web Push / WhatsApp.
--
-- Safe to run repeatedly.

create table if not exists public.event_notifications (
  id           uuid primary key default gen_random_uuid(),
  event_id     uuid not null references public.team_events(id) on delete cascade,
  status       text not null default 'pending'
                 check (status in ('pending', 'sending', 'sent', 'failed')),
  channels     text[] not null default array['email'],
  requested_at timestamptz not null default now(),
  sent_at      timestamptz,
  error        text
);

create index if not exists event_notifications_status_idx
  on public.event_notifications (status, requested_at);

create index if not exists event_notifications_event_idx
  on public.event_notifications (event_id);

alter table public.event_notifications enable row level security;

drop policy if exists "event_notifications insert" on public.event_notifications;
drop policy if exists "event_notifications read"   on public.event_notifications;
drop policy if exists "event_notifications update" on public.event_notifications;

-- Admins and the event's team coaches may request notifications.
create policy "event_notifications insert"
  on public.event_notifications for insert
  with check (
    public.has_role('admin')
    or exists (
      select 1
        from public.team_events te
        join public.team_coaches tc on tc.team_id = te.team_id
       where te.id = event_notifications.event_id
         and tc.user_id = auth.uid()
    )
  );

-- Only admins read the queue (surface for a future admin "outbox" panel).
create policy "event_notifications read"
  on public.event_notifications for select
  using (public.has_role('admin'));

-- Only admins (or the future service-role worker) may mark as sent/failed.
create policy "event_notifications update"
  on public.event_notifications for update
  using (public.has_role('admin'))
  with check (public.has_role('admin'));
