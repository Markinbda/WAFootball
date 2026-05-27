-- Warwick FA — Phase 8 hotfix: break infinite recursion between
-- team_coaches and player_guardians RLS policies.
--
-- Root cause: "team_coaches read" referenced player_guardians, and
-- "player_guardians read" referenced team_coaches. PostgREST evaluates the
-- policy on each referenced row → infinite recursion.
--
-- Fix: make team_coaches readable by any authenticated user. It only stores
-- the (team_id, user_id) pairing — not sensitive — and the client needs it
-- to render coach lists / "who coaches my child's team" without recursion.

drop policy if exists "team_coaches read" on public.team_coaches;

create policy "team_coaches read"
  on public.team_coaches for select
  using (auth.role() = 'authenticated');
