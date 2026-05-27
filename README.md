# Warwick Football Association — Platform

The bespoke digital home of Warwick FA, Bermuda. A monorepo containing the
public website (`apps/web`) and shared packages.

## Stack

- **Frontend:** React 18 + TypeScript + Vite + Tailwind CSS
- **Routing:** React Router v6
- **Backend:** Supabase (Postgres, Auth, Storage, Realtime, Edge Functions)
- **Hosting:** Netlify (CDN + automatic SSL)
- **Brand:** Navy `#00186C`, gold `#FFC72C`, pitch green `#1E8E3E`

## Repository layout

```
WAFootball/
├── apps/
│   └── web/                 # Public website (Vite + React)
├── packages/                # (future) shared TS packages
├── supabase/
│   └── schema.sql           # Database schema + RLS policies
├── netlify.toml             # Netlify build + redirect config
└── package.json             # npm workspaces root
```

## Prerequisites

- Node.js 20+ (currently using 24)
- npm 10+
- (Optional) Supabase project — for auth + database

## Quick start

```powershell
# 1. Install dependencies (root + all workspaces)
npm install

# 2. Set up env vars
Copy-Item apps\web\.env.example apps\web\.env.local
# then edit apps\web\.env.local and add your Supabase URL + anon key

# 3. Run the dev server
npm run dev
# → http://localhost:5173
```

## Supabase setup

1. Create a project at https://app.supabase.com.
2. From **Project Settings → API**, copy:
   - Project URL → `VITE_SUPABASE_URL`
   - `anon` public key → `VITE_SUPABASE_ANON_KEY`
3. In the **SQL editor**, paste & run `supabase/schema.sql`.
4. Create your admin user (sign up via the app's `/login` page), then in the SQL editor:

   ```sql
   insert into public.user_roles (user_id, role)
   values ('<your-user-uuid>', 'admin');
   ```

## Deploying to Netlify

The `netlify.toml` is preconfigured. Either:

- **CLI:** `netlify init` (from repo root) → link to a new site.
- **UI:** import this repo from GitHub.

Set the same env vars in Netlify → Site → Settings → Environment variables.
Use **all scopes** (`builds`, `functions`, `runtime`, `post-processing`) for
`VITE_*` vars — Vite inlines them at build time.

```powershell
netlify env:set VITE_SUPABASE_URL "https://xxx.supabase.co" `
  --scope builds --scope functions --scope runtime --scope post-processing --force
netlify env:set VITE_SUPABASE_ANON_KEY "eyJ..." `
  --scope builds --scope functions --scope runtime --scope post-processing --force
```

## Scripts

| Command            | What it does                       |
| ------------------ | ---------------------------------- |
| `npm run dev`      | Run Vite dev server                |
| `npm run build`    | Production build to `apps/web/dist`|
| `npm run preview`  | Preview the built site             |
| `npm run lint`     | Lint the web app                   |
| `npm run typecheck`| TypeScript check, no emit          |

## Roadmap

- **Phase 1 (now):** Branded homepage, news, fixtures, results, teams, contact, auth
- **Phase 2:** Per-team rosters, registration, calendar with ICS export
- **Phase 3:** Live match centre, media gallery, push notifications
- **Phase 4:** Coach dashboard with attendance and comms
- **Phase 5:** Sponsor analytics, merch store, alumni, volunteer rota

## License

© Warwick Football Association.
