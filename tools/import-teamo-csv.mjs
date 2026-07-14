#!/usr/bin/env node
// tools/import-teamo-csv.mjs
//
// Parse the Teamo member export CSV and emit an idempotent SQL seed file
// that populates public.teams, public.groups, public.players,
// public.player_teams and public.player_guardians.
//
// Usage:
//   node tools/import-teamo-csv.mjs \
//     tools/teamo-members-export.csv \
//     supabase/seed-phase15-teamo-members.sql
//
// The script is intentionally forgiving: it flags but does not abort on
// unparseable dates, unknown team names, ambiguous guardian rows, etc.

import fs from 'node:fs';
import path from 'node:path';
import crypto from 'node:crypto';

const [, , inFile, outFile] = process.argv;
if (!inFile || !outFile) {
  console.error('usage: import-teamo-csv.mjs <in.csv> <out.sql>');
  process.exit(2);
}

// ---------------------------------------------------------------------------
// CSV parser (RFC 4180-ish; also handles embedded newlines inside quotes)
// ---------------------------------------------------------------------------
function parseCsv(text) {
  const rows = [];
  let row = [];
  let field = '';
  let inQuotes = false;
  for (let i = 0; i < text.length; i++) {
    const c = text[i];
    if (inQuotes) {
      if (c === '"') {
        if (text[i + 1] === '"') { field += '"'; i++; }
        else                     { inQuotes = false; }
      } else {
        field += c;
      }
    } else {
      if (c === '"')                      { inQuotes = true; }
      else if (c === ',')                 { row.push(field); field = ''; }
      else if (c === '\n')                { row.push(field); rows.push(row); row = []; field = ''; }
      else if (c === '\r')                { /* eat */ }
      else                                { field += c; }
    }
  }
  if (field.length || row.length) { row.push(field); rows.push(row); }
  return rows;
}

const raw = fs.readFileSync(inFile, 'utf8');
const rows = parseCsv(raw);
const header = rows.shift();
const H = Object.fromEntries(header.map((h, i) => [h.trim(), i]));

const col = (r, name) => (r[H[name]] ?? '').trim();

// ---------------------------------------------------------------------------
// Deterministic UUIDs so re-running the importer produces identical rows.
// v5 UUID hash of a namespace + key.
// ---------------------------------------------------------------------------
const NS = '18a1b0f0-1a5b-4a4a-8bee-77aa77aa77aa';
function uuidFor(kind, key) {
  const h = crypto.createHash('sha1')
    .update(NS + '|' + kind + '|' + key.toLowerCase())
    .digest();
  h[6] = (h[6] & 0x0f) | 0x50;   // version 5
  h[8] = (h[8] & 0x3f) | 0x80;   // variant
  const hex = h.slice(0, 16).toString('hex');
  return (
    hex.slice(0, 8)  + '-' +
    hex.slice(8, 12) + '-' +
    hex.slice(12,16) + '-' +
    hex.slice(16,20) + '-' +
    hex.slice(20,32)
  );
}

// ---------------------------------------------------------------------------
// SQL escaping helpers
// ---------------------------------------------------------------------------
const sqlStr = (v) => {
  if (v === null || v === undefined || v === '') return 'null';
  return "'" + String(v).replace(/'/g, "''").replace(/\\'/g, "''") + "'";
};
const sqlBool = (v) => v ? 'true' : 'false';
const sqlInt  = (v) => {
  if (v === null || v === undefined || v === '') return 'null';
  const n = parseInt(String(v).replace(/[^0-9-]/g, ''), 10);
  return Number.isFinite(n) ? String(n) : 'null';
};
const sqlDate = (dmy) => {
  if (!dmy) return 'null';
  const m = /^(\d{1,2})\/(\d{1,2})\/(\d{4})$/.exec(dmy.trim());
  if (!m) return 'null';
  const [, d, mo, y] = m;
  return `'${y}-${mo.padStart(2, '0')}-${d.padStart(2, '0')}'`;
};

// ---------------------------------------------------------------------------
// Slug helper
// ---------------------------------------------------------------------------
const slugify = (s) => s
  .toLowerCase()
  .normalize('NFKD').replace(/[\u0300-\u036f]/g, '')
  .replace(/&/g, ' and ')
  .replace(/[^a-z0-9]+/g, '-')
  .replace(/^-+|-+$/g, '')
  .slice(0, 80);

// ---------------------------------------------------------------------------
// Split a comma-separated multi-value cell into distinct trimmed entries.
// Teamo often writes "(M)" suffix to indicate manager — strip it.
// ---------------------------------------------------------------------------
function splitList(cell) {
  if (!cell) return [];
  return cell
    .split(',')
    .map((s) => s.trim().replace(/\s*\(M\)\s*$/i, '').trim())
    .filter((s) => s && s !== '(Possible guardian with no child)');
}

// ---------------------------------------------------------------------------
// Classify Teamo group names into a { kind, ageGroup } hint.
// Playing team names look like "U11 BOYS - WFA AJAX" or "WFA PEE WEE FOOTBALL".
// Registration names look like "UNDER 11 BOYS - WARWICK FOOTBALL ACADEMY".
// ---------------------------------------------------------------------------
function ageBucketFrom(name) {
  const s = name.toUpperCase();
  if (/PEE\s*WEE|U-?\s?5|U-?\s?6/.test(s)) return 'Mini';
  const m = /U-?\s?(\d{1,2})/.exec(s) ?? /UNDER\s*(\d{1,2})/.exec(s);
  if (m) {
    const n = parseInt(m[1], 10);
    if (n <= 8) return 'Mini';
    if (n <= 14) return 'Youth';
    return 'Youth';
  }
  if (/SENIOR|FIRST|1ST|WOMEN/.test(s)) return 'Senior';
  return 'Youth';
}

// ---------------------------------------------------------------------------
// PASS 1 — collect unique entities
// ---------------------------------------------------------------------------
const teams = new Map();          // name -> { id, slug, name, age }
const groups = new Map();         // "kind|name" -> { id, name, kind }
const players = [];               // { id, ...fields }
const playerTeams = new Set();    // "player_id|team_id"
const guardians = [];             // { player_id, name, phone, email, relationship }
const playerGroups = new Map();   // player_id -> Set of group keys
const club = { id: uuidFor('group', 'WARWICK FOOTBALL ACADEMY'), name: 'WARWICK FOOTBALL ACADEMY', kind: 'club', parent: null };
groups.set('club|WARWICK FOOTBALL ACADEMY', club);

function ensureGroup(name, kind) {
  if (!name) return null;
  const key = kind + '|' + name;
  if (!groups.has(key)) {
    groups.set(key, {
      id: uuidFor('group|' + kind, name),
      name, kind,
      parent: club.id,           // default parent = club; refined below
    });
  }
  return groups.get(key);
}

function ensureTeam(name) {
  if (!name) return null;
  if (!teams.has(name)) {
    teams.set(name, {
      id: uuidFor('team', name),
      slug: slugify(name),
      name,
      age_group: ageBucketFrom(name),
    });
  }
  return teams.get(name);
}

// Rough heuristic: skip a row if it is clearly a standalone adult guardian
// with no team involvement of their own. Detected by:
//   - DoB is empty OR age > 21
//   - Playing Team(s) empty
//   - "Teams/Groups" text starts with descriptive guardianship, OR is a
//      "Possible guardian with no child" marker.
function isPlayerRow(r) {
  const dob   = col(r, 'DoB');
  const play  = col(r, 'Playing Team(s)');
  const reg   = col(r, 'Registration Group(s)');
  const groups = col(r, 'Teams/Groups');
  if (!dob && !play && !reg) return false;
  // Age check
  const ageStr = col(r, 'Age');
  const age = parseInt(ageStr, 10);
  if (Number.isFinite(age) && age >= 22 && !play && !reg) return false;
  // Descriptive guardian row (no own team)
  if (!play && !reg && /(Mother|Father|Guardian|mother|father) of /.test(groups)) return false;
  if (/Possible guardian with no child/.test(groups) && !play) return false;
  return !!(play || reg);
}

for (const r of rows) {
  if (r.length < 5) continue;
  const first = col(r, 'First Name');
  const last  = col(r, 'Last Name');
  if (!first && !last) continue;
  if (!isPlayerRow(r)) continue;

  const fullName = `${first} ${last}`.replace(/\s+/g, ' ').trim();
  const memberNumber = col(r, 'Mem. No.');
  const playerId = uuidFor('player',
    (memberNumber && memberNumber !== 'null')
      ? `mem:${memberNumber}:${fullName}`
      : `name:${fullName}:${col(r, 'DoB')}`);

  const clubSectionNames  = splitList(col(r, 'Club Section(s)'));
  const subSectionNames   = splitList(col(r, 'Sub-section(s)'));
  const registrationNames = splitList(col(r, 'Registration Group(s)'));
  const playingTeamNames  = splitList(col(r, 'Playing Team(s)'));

  // Register hierarchy
  const pgKeys = new Set();
  for (const nm of clubSectionNames) {
    const g = ensureGroup(nm, 'club_section');
    pgKeys.add('club_section|' + nm);
  }
  for (const nm of subSectionNames) {
    const g = ensureGroup(nm, 'sub_section');
    // If this player has a club_section too, treat the first as parent.
    if (clubSectionNames.length && (!g.parent || g.parent === club.id)) {
      const parentG = ensureGroup(clubSectionNames[0], 'club_section');
      g.parent = parentG.id;
    }
    pgKeys.add('sub_section|' + nm);
  }
  for (const nm of registrationNames) {
    const g = ensureGroup(nm, 'registration');
    // Prefer sub_section parent, else club_section, else club.
    if ((!g.parent || g.parent === club.id) && subSectionNames.length) {
      const parentG = ensureGroup(subSectionNames[0], 'sub_section');
      g.parent = parentG.id;
    } else if ((!g.parent || g.parent === club.id) && clubSectionNames.length) {
      const parentG = ensureGroup(clubSectionNames[0], 'club_section');
      g.parent = parentG.id;
    }
    pgKeys.add('registration|' + nm);
  }

  // Ensure team rows for each playing team, plus each registration/sub_section
  // that is *also* used as a real team (some players play at the reg level).
  const teamNames = new Set(playingTeamNames);
  if (playingTeamNames.length === 0) {
    for (const nm of registrationNames) teamNames.add(nm);
  }

  const teamIds = [];
  for (const nm of teamNames) {
    const t = ensureTeam(nm);
    if (t) teamIds.push(t.id);
  }
  // Fall back: no discoverable team but has a club section — attach to first
  // available registration name we saw.
  if (teamIds.length === 0 && registrationNames.length > 0) {
    const t = ensureTeam(registrationNames[0]);
    if (t) teamIds.push(t.id);
  }

  const primaryTeamId = teamIds[0] ?? null;

  // Build player record
  const p = {
    id: playerId,
    full_name: fullName,
    team_id: primaryTeamId,
    date_of_birth: col(r, 'DoB'),
    gender: (col(r, 'Gender') || '').toLowerCase() || null,
    member_number: (memberNumber && memberNumber !== 'null') ? memberNumber : null,
    email: col(r, 'Email') === 'null' ? null : col(r, 'Email') || null,
    phone: col(r, 'Mobile') || null,
    joined_at: col(r, 'Joined Date'),
    occupation: col(r, 'Occupation') || null,
    shirt_number: col(r, 'Shirt No.'),
    position: col(r, 'Position') || null,
    first_aider: /yes/i.test(col(r, 'First Aider')),
    photo_permission: /yes/i.test(col(r, 'Photo Permission')),
    publication_consent: /yes/i.test(col(r, 'Publication Consent')),
    has_medical_data: /yes/i.test(col(r, 'Has Medical Data')),
    address_line1: col(r, 'Address') || null,
    address_city: col(r, 'City') || null,
    address_country: col(r, 'Country') || null,
    address_postcode: col(r, 'Postcode') || null,
    family_code: col(r, 'Family') || null,
    season_opt_in: (col(r, 'Season Opt-In') === 'In' ? 'In'
                  : col(r, 'Season Opt-In') === 'Out' ? 'Out'
                  : null),
    ngb_registration: /yes|true/i.test(col(r, 'NGB Registration')),
    notes: col(r, 'Notes') || null,
    last_active: col(r, 'Last Active'),
  };
  players.push(p);

  for (const tid of teamIds) {
    playerTeams.add(`${p.id}|${tid}`);
  }
  playerGroups.set(p.id, pgKeys);

  // Guardians on this player row
  for (const n of [1, 2]) {
    const nm  = col(r, `Guardian ${n} Name`);
    const ph  = col(r, `Guardian ${n} Phone`);
    const em  = col(r, `Guardian ${n} Email`);
    if (!nm && !ph && !em) continue;
    guardians.push({
      player_id: p.id,
      guardian_name: nm || null,
      guardian_phone: ph || null,
      guardian_email: (em && em !== 'null') ? em : null,
      relationship: 'parent',
    });
  }
}

// ---------------------------------------------------------------------------
// EMIT SQL
// ---------------------------------------------------------------------------
const out = [];
out.push(`-- Auto-generated by tools/import-teamo-csv.mjs`);
out.push(`-- Source: ${path.basename(inFile)}  (${rows.length} rows)`);
out.push(`-- Regenerate: node tools/import-teamo-csv.mjs tools/teamo-members-export.csv supabase/seed-phase15-teamo-members.sql`);
out.push(``);
out.push(`begin;`);
out.push(``);
out.push(`-- --------------------------------------------------------------`);
out.push(`-- TEAMS`);
out.push(`-- --------------------------------------------------------------`);
for (const t of teams.values()) {
  out.push(
`insert into public.teams (id, slug, name, age_group)
values ('${t.id}', ${sqlStr(t.slug)}, ${sqlStr(t.name)}, ${sqlStr(t.age_group)})
on conflict (id) do update
  set slug = excluded.slug, name = excluded.name, age_group = excluded.age_group;`
  );
}

out.push(``);
out.push(`-- --------------------------------------------------------------`);
out.push(`-- GROUPS (hierarchical) + team-pointer groups`);
out.push(`-- --------------------------------------------------------------`);

// Emit club first, then club_sections, then sub_sections, then registrations
const orderedKinds = ['club', 'club_section', 'sub_section', 'registration'];
for (const kind of orderedKinds) {
  for (const g of groups.values()) {
    if (g.kind !== kind) continue;
    out.push(
`insert into public.groups (id, parent_id, name, kind, slug, sort_order)
values ('${g.id}', ${g.parent ? `'${g.parent}'` : 'null'}, ${sqlStr(g.name)}, ${sqlStr(g.kind)}, ${sqlStr(slugify(g.kind + '-' + g.name))}, 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, kind = excluded.kind, slug = excluded.slug;`
    );
  }
}

// Team-pointer groups (kind='team') — one per team, nested under its most
// specific known group (registration → sub_section → club_section → club).
out.push(``);
for (const t of teams.values()) {
  const tGroupId = uuidFor('group|team', t.name);
  // Find best parent group: check groups whose name equals t.name (team is
  // often registered under a namesake registration group).
  let parent = null;
  const reg = groups.get('registration|' + t.name)
           || groups.get('sub_section|' + t.name)
           || groups.get('club_section|' + t.name);
  parent = reg ? reg.id : club.id;
  out.push(
`insert into public.groups (id, parent_id, name, kind, team_id, slug, sort_order)
values ('${tGroupId}', '${parent}', ${sqlStr(t.name)}, 'team', '${t.id}', ${sqlStr('team-' + t.slug)}, 0)
on conflict (id) do update
  set parent_id = excluded.parent_id, name = excluded.name, team_id = excluded.team_id;`
  );
}

out.push(``);
out.push(`-- --------------------------------------------------------------`);
out.push(`-- PLAYERS`);
out.push(`-- --------------------------------------------------------------`);
for (const p of players) {
  out.push(
`insert into public.players (
  id, team_id, full_name, position, shirt_number,
  date_of_birth, gender, member_number, email, phone,
  joined_at, occupation, first_aider, photo_permission, publication_consent,
  has_medical_data, address_line1, address_city, address_country, address_postcode,
  family_code, season_opt_in, ngb_registration, notes, last_active, active
)
values (
  '${p.id}',
  ${p.team_id ? `'${p.team_id}'` : 'null'},
  ${sqlStr(p.full_name)},
  ${sqlStr(p.position)},
  ${sqlInt(p.shirt_number)},
  ${sqlDate(p.date_of_birth)},
  ${sqlStr(p.gender)},
  ${sqlStr(p.member_number)},
  ${sqlStr(p.email)},
  ${sqlStr(p.phone)},
  ${sqlDate(p.joined_at)},
  ${sqlStr(p.occupation)},
  ${sqlBool(p.first_aider)},
  ${sqlBool(p.photo_permission)},
  ${sqlBool(p.publication_consent)},
  ${sqlBool(p.has_medical_data)},
  ${sqlStr(p.address_line1)},
  ${sqlStr(p.address_city)},
  ${sqlStr(p.address_country)},
  ${sqlStr(p.address_postcode)},
  ${sqlStr(p.family_code)},
  ${sqlStr(p.season_opt_in)},
  ${sqlBool(p.ngb_registration)},
  ${sqlStr(p.notes)},
  ${sqlDate(p.last_active)},
  true
)
on conflict (id) do update set
  team_id = excluded.team_id,
  full_name = excluded.full_name,
  position = excluded.position,
  shirt_number = excluded.shirt_number,
  date_of_birth = excluded.date_of_birth,
  gender = excluded.gender,
  member_number = excluded.member_number,
  email = excluded.email,
  phone = excluded.phone,
  joined_at = excluded.joined_at,
  occupation = excluded.occupation,
  first_aider = excluded.first_aider,
  photo_permission = excluded.photo_permission,
  publication_consent = excluded.publication_consent,
  has_medical_data = excluded.has_medical_data,
  address_line1 = excluded.address_line1,
  address_city = excluded.address_city,
  address_country = excluded.address_country,
  address_postcode = excluded.address_postcode,
  family_code = excluded.family_code,
  season_opt_in = excluded.season_opt_in,
  ngb_registration = excluded.ngb_registration,
  notes = excluded.notes,
  last_active = excluded.last_active;`
  );
}

out.push(``);
out.push(`-- --------------------------------------------------------------`);
out.push(`-- PLAYER ↔ TEAM many-to-many`);
out.push(`-- --------------------------------------------------------------`);
let first = true;
for (const key of playerTeams) {
  const [pid, tid] = key.split('|');
  out.push(
`insert into public.player_teams (player_id, team_id, is_primary, role)
values ('${pid}', '${tid}', ${first ? 'true' : 'false'}, 'player')
on conflict (player_id, team_id) do nothing;`
  );
}

out.push(``);
out.push(`-- --------------------------------------------------------------`);
out.push(`-- Mark each player's primary team (their first Playing Team row)`);
out.push(`-- --------------------------------------------------------------`);
for (const p of players) {
  if (!p.team_id) continue;
  out.push(
`update public.player_teams
   set is_primary = (team_id = '${p.team_id}')
 where player_id = '${p.id}';`
  );
}

out.push(``);
out.push(`-- --------------------------------------------------------------`);
out.push(`-- GUARDIANS`);
out.push(`-- --------------------------------------------------------------`);
for (const g of guardians) {
  const gid = uuidFor('guardian', `${g.player_id}|${g.guardian_name ?? ''}|${g.guardian_phone ?? ''}`);
  out.push(
`insert into public.player_guardians (id, player_id, user_id, relationship, guardian_name, guardian_email, guardian_phone)
values ('${gid}', '${g.player_id}', null, ${sqlStr(g.relationship)}, ${sqlStr(g.guardian_name)}, ${sqlStr(g.guardian_email)}, ${sqlStr(g.guardian_phone)})
on conflict (id) do update set
  guardian_name = excluded.guardian_name,
  guardian_email = excluded.guardian_email,
  guardian_phone = excluded.guardian_phone,
  relationship = excluded.relationship;`
  );
}

out.push(``);
out.push(`-- --------------------------------------------------------------`);
out.push(`-- ACTIVITY LOG: joined-team + joined-group entries per player`);
out.push(`-- --------------------------------------------------------------`);
for (const p of players) {
  const dateExpr = sqlDate(p.joined_at);
  const occurred = dateExpr === 'null'
    ? 'now()'
    : `${dateExpr}::timestamptz`;
  // one activity per team
  for (const key of playerTeams) {
    const [pid, tid] = key.split('|');
    if (pid !== p.id) continue;
    const team = [...teams.values()].find((t) => t.id === tid);
    if (!team) continue;
    const actId = uuidFor('activity|joined-team', `${p.id}|${tid}`);
    out.push(
`insert into public.player_activity (id, player_id, kind, title, ref_team_id, occurred_at)
values ('${actId}', '${p.id}', 'joined_team', ${sqlStr('Joined ' + team.name)}, '${tid}', ${occurred})
on conflict (id) do nothing;`
    );
  }
  // one activity per group
  const gset = playerGroups.get(p.id) ?? new Set();
  for (const gk of gset) {
    const g = groups.get(gk);
    if (!g) continue;
    const actId = uuidFor('activity|joined-group', `${p.id}|${g.id}`);
    out.push(
`insert into public.player_activity (id, player_id, kind, title, ref_group_id, occurred_at)
values ('${actId}', '${p.id}', 'joined_group', ${sqlStr('Added to ' + g.name)}, '${g.id}', ${occurred})
on conflict (id) do nothing;`
    );
  }
}

out.push(``);
out.push(`commit;`);

fs.writeFileSync(outFile, out.join('\n') + '\n', 'utf8');

console.error(`Wrote ${outFile}`);
console.error(`  teams:       ${teams.size}`);
console.error(`  groups:      ${groups.size} + ${teams.size} team pointers`);
console.error(`  players:     ${players.length}`);
console.error(`  player_teams:${playerTeams.size}`);
console.error(`  guardians:   ${guardians.length}`);
