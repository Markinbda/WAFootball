-- Warwick FA — create coach account for Richard Todd
--
-- Creates an auth user (email/password), a profile row, and grants the 'coach'
-- role. Idempotent: re-running is a no-op if the email already exists.
--
-- Login after running:
--   email:    rtodd@warwick.bm
--   password: WfaCoach!2026
-- (Tell Richard to change it after first sign-in.)
--
-- After this, run seed-phase8-richard.sql to populate team_coaches +
-- sample calendar events, or assign teams via Admin → Coaches.

do $$
declare
  v_email   text := 'rtodd@warwick.bm';
  v_name    text := 'Richard Todd';
  v_pass    text := 'WfaCoach!2026';
  v_user_id uuid;
begin
  -- 1) Reuse existing auth user if email already there
  select id into v_user_id from auth.users where email = v_email;

  if v_user_id is null then
    v_user_id := gen_random_uuid();

    insert into auth.users (
      id,
      instance_id,
      aud,
      role,
      email,
      encrypted_password,
      email_confirmed_at,
      raw_app_meta_data,
      raw_user_meta_data,
      created_at,
      updated_at,
      confirmation_token,
      recovery_token,
      email_change_token_new,
      email_change
    ) values (
      v_user_id,
      '00000000-0000-0000-0000-000000000000',
      'authenticated',
      'authenticated',
      v_email,
      crypt(v_pass, gen_salt('bf')),
      now(),
      jsonb_build_object('provider', 'email', 'providers', jsonb_build_array('email')),
      jsonb_build_object('full_name', v_name),
      now(),
      now(),
      '', '', '', ''
    );

    -- identities row so password sign-in works in some Supabase setups
    insert into auth.identities (
      id, user_id, identity_data, provider, provider_id,
      last_sign_in_at, created_at, updated_at
    ) values (
      gen_random_uuid(),
      v_user_id,
      jsonb_build_object('sub', v_user_id::text, 'email', v_email),
      'email',
      v_user_id::text,
      now(), now(), now()
    )
    on conflict do nothing;
  end if;

  -- 2) Ensure profile row with friendly display name
  insert into public.profiles (id, display_name)
  values (v_user_id, v_name)
  on conflict (id) do update set display_name = excluded.display_name;

  -- 3) Grant coach role
  insert into public.user_roles (user_id, role)
  values (v_user_id, 'coach')
  on conflict do nothing;

  raise notice 'Richard Todd user_id = %', v_user_id;
end $$;
