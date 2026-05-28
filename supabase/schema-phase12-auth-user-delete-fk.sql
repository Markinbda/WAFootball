-- Warwick FA — Phase 12: allow deletion of auth.users by relaxing restrictive FKs.
--
-- Several tables (news.author_id, match_events.created_by, team_events.created_by)
-- referenced auth.users(id) without an ON DELETE rule, which made it impossible
-- to delete a user from the Supabase Auth dashboard once they had created any
-- of those rows. Switch them to ON DELETE SET NULL so the audit data survives
-- the user being removed.
-- Idempotent.

alter table public.news
  drop constraint if exists news_author_id_fkey,
  add  constraint news_author_id_fkey
    foreign key (author_id) references auth.users(id) on delete set null;

alter table public.match_events
  drop constraint if exists match_events_created_by_fkey,
  add  constraint match_events_created_by_fkey
    foreign key (created_by) references auth.users(id) on delete set null;

alter table public.team_events
  drop constraint if exists team_events_created_by_fkey,
  add  constraint team_events_created_by_fkey
    foreign key (created_by) references auth.users(id) on delete set null;
