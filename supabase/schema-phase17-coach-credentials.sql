-- Warwick FA — Phase 17: coach credentials on profiles
--
-- Extends public.profiles with coaching-specific fields captured on the
-- WFA 2025/2026 Coach Assignments spreadsheet:
--   - coach_license        (e.g. "UEFA B", "Bermuda D", "B License")
--   - scars_expires_at     SCARS certification expiry (date)
--   - first_aid_expires_at First-aid certification expiry (date)
--
-- Idempotent. Safe to re-run.

alter table public.profiles
  add column if not exists coach_license        text,
  add column if not exists scars_expires_at     date,
  add column if not exists first_aid_expires_at date;

comment on column public.profiles.coach_license        is 'Highest coaching license held (e.g. UEFA B, Bermuda D, B License).';
comment on column public.profiles.scars_expires_at     is 'SCARS safeguarding certification expiry date.';
comment on column public.profiles.first_aid_expires_at is 'First-aid certification expiry date.';
