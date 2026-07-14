import { useMemo, useState } from 'react';
import { Link, useParams } from 'react-router-dom';
import { usePlayerProfile, usePlayerGuardians, type PlayerGuardian } from '@/data/phase4';
import {
  useExtendedPlayer, usePlayerTeams, usePlayerMedical, usePlayerInfo,
  usePlayerQualifications, usePlayerActivity, ageFromDob,
  type ActivityItem, type PlayerMedical, type PlayerInfo,
} from '@/data/phase15';
import { useAuth } from '@/auth/AuthProvider';
import { getSupabase } from '@/lib/supabase';

type Tab = 'profile' | 'stats' | 'emergency' | 'info' | 'activity';

export function PlayerProfile() {
  const { id } = useParams<{ id: string }>();
  const { player: legacyPlayer, events, stats, loading: legacyLoading } = usePlayerProfile(id);
  const { player: xPlayer, loading: xLoading } = useExtendedPlayer(id);
  const { links: teamLinks } = usePlayerTeams(id);
  const { guardians } = usePlayerGuardians(id);
  const [tab, setTab] = useState<Tab>('profile');
  const [showActivityHistory, setShowActivityHistory] = useState(false);

  const loading = legacyLoading || xLoading;
  const player = xPlayer ?? legacyPlayer ?? null;

  if (loading) return <div className="container-page py-12">Loading…</div>;
  if (!player) {
    return (
      <div className="container-page py-20 text-center">
        <h1 className="text-3xl">Player not found</h1>
        <Link to="/teams" className="mt-4 inline-block btn-primary">All teams</Link>
      </div>
    );
  }

  const age = ageFromDob(xPlayer?.date_of_birth);
  const initials = player.full_name.split(' ').map((s) => s[0]).slice(0, 2).join('').toUpperCase();
  const primaryTeam = teamLinks.find((l) => l.is_primary) ?? teamLinks[0] ?? null;

  return (
    <>
      {/* -------- HERO -------- */}
      <section className="bg-navy text-white">
        <div className="container-page grid gap-8 py-10 md:grid-cols-[200px_1fr]">
          <div className="aspect-square w-full overflow-hidden rounded-lg bg-white/10">
            {player.photo_url ? (
              <img src={player.photo_url} alt={player.full_name} className="h-full w-full object-cover" />
            ) : (
              <div className="grid h-full w-full place-items-center font-display text-6xl text-white/40">
                {initials}
              </div>
            )}
          </div>
          <div className="min-w-0">
            {primaryTeam && (
              <Link
                to={`/teams/${primaryTeam.team_slug}`}
                className="text-xs font-semibold uppercase tracking-widest text-gold hover:underline"
              >
                ← {primaryTeam.team_name}
              </Link>
            )}
            <h1 className="mt-2 text-4xl md:text-5xl text-white">{player.full_name}</h1>

            <div className="mt-3 flex flex-wrap items-center gap-2 text-sm">
              {xPlayer?.member_number && (
                <span className="rounded bg-white/10 px-2 py-1 text-xs uppercase tracking-wider">
                  Mem #{xPlayer.member_number}
                </span>
              )}
              {xPlayer?.joined_at && (
                <span className="text-xs text-white/60">
                  Joined {new Date(xPlayer.joined_at).toLocaleDateString('en-GB')}
                </span>
              )}
              {xPlayer && !xPlayer.email && !xPlayer.phone && (
                <span className="rounded bg-slate-500 px-2 py-1 text-[10px] font-semibold uppercase tracking-widest">
                  No App
                </span>
              )}
              {xPlayer?.season_opt_in === 'Out' && (
                <span className="rounded bg-red-600 px-2 py-1 text-[10px] font-semibold uppercase tracking-widest">
                  Opted out
                </span>
              )}
              {player.active === false && (
                <span className="rounded bg-red-600 px-2 py-1 text-xs font-semibold uppercase">Inactive</span>
              )}
            </div>

            <div className="mt-3 flex flex-wrap gap-2 text-sm">
              {(xPlayer?.shirt_number ?? player.squad_number) != null && (
                <span className="rounded bg-gold px-2 py-1 font-display text-navy">
                  #{xPlayer?.shirt_number ?? player.squad_number}
                </span>
              )}
              {player.position && (
                <span className="rounded bg-white/20 px-2 py-1 font-semibold">{player.position}</span>
              )}
            </div>

            <div className="mt-4 flex gap-2">
              <button
                type="button"
                onClick={() => setShowActivityHistory(false)}
                className={`rounded-full px-4 py-1.5 text-xs font-semibold ${!showActivityHistory ? 'bg-white text-navy' : 'bg-white/10 text-white/80'}`}
              >
                Profile
              </button>
              <button
                type="button"
                onClick={() => { setShowActivityHistory(true); setTab('activity'); }}
                className={`rounded-full px-4 py-1.5 text-xs font-semibold ${showActivityHistory ? 'bg-white text-navy' : 'bg-white/10 text-white/80'}`}
              >
                Activity History
              </button>
            </div>
          </div>
        </div>
      </section>

      {/* -------- SUB-TABS -------- */}
      {!showActivityHistory && (
        <div className="container-page pt-6">
          <div className="inline-flex rounded-full bg-slate-100 p-1 text-sm">
            {(['profile', 'stats', 'emergency', 'info'] as Tab[]).map((k) => (
              <button
                key={k}
                type="button"
                onClick={() => setTab(k)}
                className={`rounded-full px-4 py-1.5 font-semibold capitalize transition-colors ${
                  tab === k ? 'bg-white text-navy shadow' : 'text-slate-500'
                }`}
              >
                {k}
              </button>
            ))}
          </div>
        </div>
      )}

      {/* -------- CONTENT -------- */}
      {showActivityHistory ? (
        <ActivityTab playerId={player.id} />
      ) : tab === 'profile' ? (
        <ProfileTab
          player={xPlayer ?? undefined}
          age={age}
          teamLinks={teamLinks}
          guardians={guardians}
        />
      ) : tab === 'stats' ? (
        <StatsTab stats={stats} events={events} />
      ) : tab === 'emergency' ? (
        <EmergencyTab playerId={player.id} />
      ) : (
        <InfoTab playerId={player.id} />
      )}
    </>
  );
}

// ---------------------------------------------------------------------------
// Profile tab
// ---------------------------------------------------------------------------
function ProfileTab({
  player, age, teamLinks, guardians,
}: {
  player?: ReturnType<typeof useExtendedPlayer>['player'];
  age: number | null;
  teamLinks: ReturnType<typeof usePlayerTeams>['links'];
  guardians: PlayerGuardian[];
}) {
  const { items: qualifications } = usePlayerQualifications(player?.id);
  const { medical } = usePlayerMedical(player?.id);

  return (
    <div className="container-page grid gap-6 py-8 lg:grid-cols-3">
      {/* left column */}
      <div className="space-y-6 lg:col-span-2">
        {/* Medical summary card (visible to coaches/guardians/admin only via RLS) */}
        <Card title="Medical Info" accent="border-red-500">
          {medical ? (
            <dl className="grid gap-4 sm:grid-cols-2 text-sm">
              <FieldRow label="Primary care physician's name" value={medical.physician_name} />
              <FieldRow label="Primary care physician - tel number" value={medical.physician_phone} />
              <FieldRow label="Allergies" value={medical.allergies ?? 'no answer'} lock />
              <FieldRow
                label="Medical conditions / medication"
                value={medical.medical_conditions ?? medical.medications ?? 'no answer'}
                lock
              />
            </dl>
          ) : (
            <p className="text-sm text-slate-500">
              No medical info on file. Coaches and guardians can add details on the Emergency tab.
            </p>
          )}
        </Card>

        {/* Qualifications */}
        <Card title="Qualifications & Checks">
          {qualifications.length === 0 ? (
            <p className="text-sm text-slate-500">No qualifications recorded.</p>
          ) : (
            <ul className="divide-y divide-slate-100 text-sm">
              {qualifications.map((q) => (
                <li key={q.id} className="flex items-center justify-between py-2">
                  <div>
                    <div className="font-semibold text-navy">{q.title}</div>
                    <div className="text-xs text-slate-500">
                      {q.issuer ?? ''} {q.expires_on ? `· expires ${new Date(q.expires_on).toLocaleDateString('en-GB')}` : ''}
                    </div>
                  </div>
                  <span
                    className={`rounded-full px-2 py-0.5 text-[10px] font-semibold uppercase ${
                      q.status === 'active' ? 'bg-emerald-100 text-emerald-700'
                        : q.status === 'expired' ? 'bg-red-100 text-red-700'
                        : 'bg-slate-100 text-slate-600'
                    }`}
                  >
                    {q.status}
                  </span>
                </li>
              ))}
            </ul>
          )}
        </Card>

        {/* Details */}
        <Card title="Details">
          <div className="rounded bg-slate-50 p-3 text-xs text-slate-600">
            <span className="font-semibold text-slate-800">Manager: Showing Contact Details</span><br />
            {(age ?? 99) < 18 && (
              <>Member is under 18: personal contact details may be limited to guardians.</>
            )}
          </div>
          <dl className="mt-4 grid gap-4 sm:grid-cols-2 text-sm">
            <FieldRow label="NGB Registration" value={player?.ngb_registration ? 'Yes' : 'No'} />
            <FieldRow
              label="Age"
              value={player?.date_of_birth
                ? `${new Date(player.date_of_birth).toLocaleDateString('en-GB')}, ${age ?? '—'}`
                : null}
            />
            <FieldRow label="Gender" value={player?.gender} />
            <FieldRow label="Family code" value={player?.family_code} />
            <FieldRow label="Occupation" value={player?.occupation} />
            <FieldRow label="Season opt-in" value={player?.season_opt_in ?? '—'} />
            <FieldRow label="First aider" value={player?.first_aider ? 'Yes' : 'No'} />
            <FieldRow label="Photo permission" value={player?.photo_permission ? 'Yes' : 'No'} />
            <FieldRow label="Publication consent" value={player?.publication_consent ? 'Yes' : 'No'} />
          </dl>
        </Card>
      </div>

      {/* right column */}
      <div className="space-y-6">
        <Card title="Relations / Fans">
          {guardians.length === 0 ? (
            <p className="text-sm text-slate-500">No guardians on file.</p>
          ) : (
            <ul className="space-y-3 text-sm">
              {guardians.map((g) => (
                <li key={g.id} className="flex items-center gap-3">
                  <span
                    className="grid h-9 w-9 place-items-center rounded-full bg-gold/20 font-semibold text-navy"
                    aria-hidden
                  >
                    {(g.guardian_name ?? '?').split(' ').map((s) => s[0]).slice(0, 2).join('').toUpperCase()}
                  </span>
                  <div className="min-w-0">
                    <div className="truncate font-semibold text-navy">{g.guardian_name ?? '—'}</div>
                    <div className="text-xs text-slate-500 capitalize">Guardian · {g.relationship ?? 'parent'}</div>
                  </div>
                </li>
              ))}
            </ul>
          )}
        </Card>

        <Card title="Availability">
          <p className="text-sm text-slate-500">No attendance record for current period.</p>
        </Card>

        <Card title="Teams / Groups Profile">
          {teamLinks.length === 0 ? (
            <p className="text-sm text-slate-500">Not currently rostered on a team.</p>
          ) : (
            <ul className="space-y-2 text-sm">
              {teamLinks.map((l) => (
                <li key={l.team_id} className="flex items-center gap-3">
                  <span className="grid h-9 w-9 shrink-0 place-items-center rounded-full bg-red-500 text-[10px] font-bold uppercase text-white">
                    {l.team_name.split(/\s+/).slice(-1)[0]?.slice(0, 4) ?? '—'}
                  </span>
                  <div className="min-w-0 flex-1">
                    <Link to={`/teams/${l.team_slug}`} className="truncate font-semibold text-navy hover:underline block">
                      {l.team_name}
                    </Link>
                    <div className="text-xs text-slate-500">
                      {l.role}{l.is_primary ? ' · primary' : ''}
                    </div>
                  </div>
                </li>
              ))}
            </ul>
          )}
        </Card>
      </div>
    </div>
  );
}

// ---------------------------------------------------------------------------
// Stats tab — reuse existing stats + season chart
// ---------------------------------------------------------------------------
function StatsTab({
  stats,
  events,
}: {
  stats: { goals: number; appearances: number; yellows: number; reds: number };
  events: { type: string; created_at: string; id: string; fixture_id: string; note: string | null }[];
}) {
  return (
    <>
      <div className="container-page grid gap-6 py-8 md:grid-cols-4">
        <Stat label="Goals" value={stats.goals} tone="text-pitch" />
        <Stat label="Appearances" value={stats.appearances} />
        <Stat label="Yellow Cards" value={stats.yellows} tone="text-yellow-600" />
        <Stat label="Red Cards" value={stats.reds} tone="text-red-700" />
      </div>
      <SeasonChart events={events} />
      <div className="container-page pb-12">
        <h2 className="text-2xl">Match log</h2>
        {events.length === 0 ? (
          <p className="mt-4 text-sm text-slate-500">No recorded match events yet.</p>
        ) : (
          <ul className="mt-4 space-y-2">
            {events.map((e) => (
              <li key={e.id} className="card flex items-center justify-between gap-3 p-3 text-sm">
                <div className="font-semibold text-navy">{LABEL[e.type] ?? e.type}</div>
                <div className="flex-1 text-slate-600">{e.note ?? ''}</div>
                <Link to={`/fixtures/${e.fixture_id}`} className="text-xs text-slate-500 hover:underline">
                  {new Date(e.created_at).toLocaleDateString('en-GB')}
                </Link>
              </li>
            ))}
          </ul>
        )}
      </div>
    </>
  );
}

// ---------------------------------------------------------------------------
// Emergency tab
// ---------------------------------------------------------------------------
function EmergencyTab({ playerId }: { playerId: string }) {
  const { medical, loading, reload } = usePlayerMedical(playerId);
  const { roles } = useAuth();
  const canEdit = roles.includes('admin') || roles.includes('coach');

  if (loading) return <div className="container-page py-8 text-sm text-slate-500">Loading…</div>;

  return (
    <div className="container-page py-8">
      <Card title="Medical Information & Consent" accent="border-red-500">
        {medical ? (
          <dl className="grid gap-6 md:grid-cols-2 text-sm">
            <FieldRow label="Primary care physician's name" value={medical.physician_name} />
            <FieldRow label="Primary care physician - tel number" value={medical.physician_phone} />
            <FieldRow label="Does the player have any allergies that the club needs to be aware of?"
                      value={medical.allergies} lock />
            <FieldRow label="Does the player have any medical conditions or require medication?"
                      value={medical.medical_conditions ?? medical.medications} lock />
            <FieldRow label="Additional medical notes" value={medical.notes} lock />
          </dl>
        ) : (
          <p className="text-sm text-slate-500">No medical info on file.</p>
        )}
        {canEdit && <EditMedicalForm playerId={playerId} initial={medical} onSaved={reload} />}
      </Card>
    </div>
  );
}

function EditMedicalForm({
  playerId, initial, onSaved,
}: { playerId: string; initial: PlayerMedical | null; onSaved: () => void }) {
  const sb = getSupabase();
  const [open, setOpen] = useState(false);
  const [busy, setBusy] = useState(false);
  const [phys, setPhys] = useState(initial?.physician_name ?? '');
  const [tel, setTel] = useState(initial?.physician_phone ?? '');
  const [allergies, setAllergies] = useState(initial?.allergies ?? '');
  const [cond, setCond] = useState(initial?.medical_conditions ?? '');
  const [meds, setMeds] = useState(initial?.medications ?? '');
  const [notes, setNotes] = useState(initial?.notes ?? '');
  const [err, setErr] = useState<string | null>(null);

  if (!open) {
    return (
      <button className="mt-4 btn-primary" type="button" onClick={() => setOpen(true)}>
        {initial ? 'Edit medical info' : 'Add medical info'}
      </button>
    );
  }

  async function save(e: React.FormEvent) {
    e.preventDefault();
    if (!sb) return;
    setBusy(true); setErr(null);
    const { error } = await sb.from('player_medical').upsert({
      player_id: playerId,
      physician_name: phys || null,
      physician_phone: tel || null,
      allergies: allergies || null,
      medical_conditions: cond || null,
      medications: meds || null,
      notes: notes || null,
      updated_at: new Date().toISOString(),
    });
    setBusy(false);
    if (error) setErr(error.message);
    else { setOpen(false); onSaved(); }
  }

  return (
    <form onSubmit={save} className="mt-6 space-y-3 border-t border-slate-100 pt-4 text-sm">
      <div className="grid gap-3 md:grid-cols-2">
        <label>Physician's name<input className="input mt-1" value={phys} onChange={(e) => setPhys(e.target.value)} /></label>
        <label>Physician's phone<input className="input mt-1" value={tel} onChange={(e) => setTel(e.target.value)} /></label>
      </div>
      <label className="block">Allergies<textarea className="input mt-1" rows={2} value={allergies} onChange={(e) => setAllergies(e.target.value)} /></label>
      <label className="block">Medical conditions<textarea className="input mt-1" rows={2} value={cond} onChange={(e) => setCond(e.target.value)} /></label>
      <label className="block">Medications<textarea className="input mt-1" rows={2} value={meds} onChange={(e) => setMeds(e.target.value)} /></label>
      <label className="block">Notes<textarea className="input mt-1" rows={2} value={notes} onChange={(e) => setNotes(e.target.value)} /></label>
      {err && <p className="text-red-700">{err}</p>}
      <div className="flex gap-2">
        <button className="btn-primary" disabled={busy} type="submit">{busy ? 'Saving…' : 'Save'}</button>
        <button className="rounded border border-slate-300 px-3 py-2" type="button" onClick={() => setOpen(false)}>Cancel</button>
      </div>
    </form>
  );
}

// ---------------------------------------------------------------------------
// Info tab
// ---------------------------------------------------------------------------
function InfoTab({ playerId }: { playerId: string }) {
  const { info, loading, reload } = usePlayerInfo(playerId);
  const { player } = useExtendedPlayer(playerId);
  const { roles } = useAuth();
  const canEdit = roles.includes('admin') || roles.includes('coach');

  if (loading) return <div className="container-page py-8 text-sm text-slate-500">Loading…</div>;

  return (
    <div className="container-page py-8 space-y-6">
      <Card title="Member Information">
        <dl className="grid gap-4 md:grid-cols-2 text-sm">
          <FieldRow label="Player email address (if applicable)" value={info?.player_email ?? player?.email} />
          <FieldRow label="Player cell number (if applicable)"    value={info?.player_cell  ?? player?.phone} />
          <FieldRow label="Address"                                value={[player?.address_line1, player?.address_city, player?.address_postcode].filter(Boolean).join(', ') || null} />
        </dl>
      </Card>

      <Card title="General">
        <dl className="grid gap-4 md:grid-cols-2 text-sm">
          <FieldRow label="Number of years playing football" value={info?.years_playing ?? '—'} />
          <FieldRow label="Previous teams / clubs (if any)"    value={info?.previous_clubs} />
          <FieldRow label="Uniform size - jersey"              value={info?.uniform_jersey} />
          <FieldRow label="Uniform size - shorts"              value={info?.uniform_shorts} />
          <FieldRow label="Additional uniform notes"           value={info?.uniform_notes} />
          <FieldRow label="School"                              value={info?.school} />
          <FieldRow label="U18 member consent"                  value={info?.u18_consent ? 'Yes' : 'No'} />
        </dl>
      </Card>

      {canEdit && <EditInfoForm playerId={playerId} initial={info} onSaved={reload} />}
    </div>
  );
}

function EditInfoForm({
  playerId, initial, onSaved,
}: { playerId: string; initial: PlayerInfo | null; onSaved: () => void }) {
  const sb = getSupabase();
  const [open, setOpen] = useState(false);
  const [busy, setBusy] = useState(false);
  const [err, setErr] = useState<string | null>(null);
  const [state, setState] = useState({
    player_email: initial?.player_email ?? '',
    player_cell: initial?.player_cell ?? '',
    years_playing: initial?.years_playing?.toString() ?? '',
    previous_clubs: initial?.previous_clubs ?? '',
    uniform_jersey: initial?.uniform_jersey ?? '',
    uniform_shorts: initial?.uniform_shorts ?? '',
    uniform_notes: initial?.uniform_notes ?? '',
    school: initial?.school ?? '',
    u18_consent: !!initial?.u18_consent,
  });

  function up<K extends keyof typeof state>(key: K, v: (typeof state)[K]) {
    setState((s) => ({ ...s, [key]: v }));
  }

  if (!open) {
    return (
      <button className="btn-primary" type="button" onClick={() => setOpen(true)}>
        {initial ? 'Edit info' : 'Add info'}
      </button>
    );
  }

  async function save(e: React.FormEvent) {
    e.preventDefault();
    if (!sb) return;
    setBusy(true); setErr(null);
    const yrsParsed = state.years_playing ? parseInt(state.years_playing, 10) : NaN;
    const yrs = Number.isFinite(yrsParsed) ? yrsParsed : null;
    const { error } = await sb.from('player_info').upsert({
      player_id: playerId,
      player_email: state.player_email || null,
      player_cell: state.player_cell || null,
      years_playing: yrs,
      previous_clubs: state.previous_clubs || null,
      uniform_jersey: state.uniform_jersey || null,
      uniform_shorts: state.uniform_shorts || null,
      uniform_notes: state.uniform_notes || null,
      school: state.school || null,
      u18_consent: state.u18_consent,
      u18_consent_at: state.u18_consent ? new Date().toISOString() : null,
      updated_at: new Date().toISOString(),
    });
    setBusy(false);
    if (error) setErr(error.message);
    else { setOpen(false); onSaved(); }
  }

  return (
    <form onSubmit={save} className="card space-y-3 p-5 text-sm">
      <h3 className="font-display text-lg text-navy">Edit info</h3>
      <div className="grid gap-3 md:grid-cols-2">
        <label>Player email<input className="input mt-1" type="email" value={state.player_email} onChange={(e) => up('player_email', e.target.value)} /></label>
        <label>Player cell<input className="input mt-1" type="tel" value={state.player_cell} onChange={(e) => up('player_cell', e.target.value)} /></label>
        <label>Years playing<input className="input mt-1" type="number" min={0} value={state.years_playing} onChange={(e) => up('years_playing', e.target.value)} /></label>
        <label>School<input className="input mt-1" value={state.school} onChange={(e) => up('school', e.target.value)} /></label>
        <label>Uniform - jersey<input className="input mt-1" value={state.uniform_jersey} onChange={(e) => up('uniform_jersey', e.target.value)} /></label>
        <label>Uniform - shorts<input className="input mt-1" value={state.uniform_shorts} onChange={(e) => up('uniform_shorts', e.target.value)} /></label>
      </div>
      <label className="block">Previous clubs<textarea className="input mt-1" rows={2} value={state.previous_clubs} onChange={(e) => up('previous_clubs', e.target.value)} /></label>
      <label className="block">Uniform notes<textarea className="input mt-1" rows={2} value={state.uniform_notes} onChange={(e) => up('uniform_notes', e.target.value)} /></label>
      <label className="flex items-center gap-2">
        <input type="checkbox" checked={state.u18_consent} onChange={(e) => up('u18_consent', e.target.checked)} />
        U18 member consent on file
      </label>
      {err && <p className="text-red-700">{err}</p>}
      <div className="flex gap-2">
        <button className="btn-primary" disabled={busy} type="submit">{busy ? 'Saving…' : 'Save'}</button>
        <button className="rounded border border-slate-300 px-3 py-2" type="button" onClick={() => setOpen(false)}>Cancel</button>
      </div>
    </form>
  );
}

// ---------------------------------------------------------------------------
// Activity tab
// ---------------------------------------------------------------------------
function ActivityTab({ playerId }: { playerId: string }) {
  const { items, loading } = usePlayerActivity(playerId);
  const [filter, setFilter] = useState<'all' | 'notes' | 'system'>('all');

  const filtered = useMemo(() => {
    if (filter === 'all') return items;
    if (filter === 'notes') return items.filter((i) => i.kind === 'note');
    return items.filter((i) => i.kind !== 'note');
  }, [items, filter]);

  return (
    <div className="container-page py-8">
      <div className="flex items-center justify-between">
        <h2 className="text-2xl">Activity History</h2>
        <div className="flex gap-1 rounded-full bg-slate-100 p-1 text-xs">
          {(['all', 'system', 'notes'] as const).map((f) => (
            <button
              key={f}
              type="button"
              onClick={() => setFilter(f)}
              className={`rounded-full px-3 py-1 capitalize font-semibold ${
                filter === f ? 'bg-white text-navy shadow' : 'text-slate-500'
              }`}
            >
              {f}
            </button>
          ))}
        </div>
      </div>
      {loading ? (
        <p className="mt-4 text-sm text-slate-500">Loading…</p>
      ) : filtered.length === 0 ? (
        <p className="mt-4 text-sm text-slate-500">No activity yet.</p>
      ) : (
        <ul className="mt-6 space-y-3">
          {filtered.map((a) => <ActivityRow key={a.id} a={a} />)}
        </ul>
      )}
    </div>
  );
}

function ActivityRow({ a }: { a: ActivityItem }) {
  const icons: Record<ActivityItem['kind'], string> = {
    joined_team: '👥',
    left_team: '👤',
    joined_group: '👥',
    left_group: '👤',
    email_sent: '✉️',
    sms_sent: '💬',
    note: '📝',
    payment: '💳',
    rsvp: '📅',
    attendance: '✅',
    qualification: '🎓',
    profile_update: '✏️',
    other: '•',
  };
  return (
    <li className="card p-4 text-sm">
      <div className="flex items-start gap-3">
        <span className="grid h-8 w-8 shrink-0 place-items-center rounded-full bg-slate-100" aria-hidden>
          {icons[a.kind]}
        </span>
        <div className="flex-1">
          <div className="font-semibold text-navy">{a.title}</div>
          {a.detail && <p className="mt-1 text-slate-600">{a.detail}</p>}
          <div className="mt-1 text-xs text-slate-500">
            {new Date(a.occurred_at).toLocaleString('en-GB', { dateStyle: 'medium', timeStyle: 'short' })}
          </div>
        </div>
      </div>
    </li>
  );
}

// ---------------------------------------------------------------------------
// Reusable bits
// ---------------------------------------------------------------------------
function Card({ title, accent, children }: { title: string; accent?: string; children: React.ReactNode }) {
  return (
    <section className={`card p-5 ${accent ? `border-l-4 ${accent}` : ''}`}>
      <h3 className="text-xs font-semibold uppercase tracking-widest text-slate-500">{title}</h3>
      <div className="mt-3">{children}</div>
    </section>
  );
}

function FieldRow({ label, value, lock }: { label: string; value: string | number | null | undefined; lock?: boolean }) {
  return (
    <div>
      <dt className="text-xs text-slate-500">{label}</dt>
      <dd className="mt-1 font-semibold text-navy flex items-center gap-1">
        {lock && <span aria-hidden>🔒</span>}
        {value ?? '—'}
      </dd>
    </div>
  );
}

function Stat({ label, value, tone }: { label: string; value: number; tone?: string }) {
  return (
    <div className="card p-5 text-center">
      <div className={`font-display text-5xl ${tone ?? 'text-navy'}`}>{value}</div>
      <div className="mt-1 text-xs uppercase tracking-wider text-slate-500">{label}</div>
    </div>
  );
}

type ChartEvent = { type: string; created_at: string };
function SeasonChart({ events }: { events: ChartEvent[] }) {
  const buckets = new Map<string, { goals: number; yellows: number; reds: number }>();
  for (const e of events) {
    const d = new Date(e.created_at);
    const key = `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, '0')}`;
    const slot = buckets.get(key) ?? { goals: 0, yellows: 0, reds: 0 };
    if (e.type === 'goal_for') slot.goals += 1;
    else if (e.type === 'yellow') slot.yellows += 1;
    else if (e.type === 'red') slot.reds += 1;
    buckets.set(key, slot);
  }
  const months = [...buckets.entries()].sort(([a], [b]) => a.localeCompare(b));
  if (months.length === 0) return null;

  const max = Math.max(1, ...months.map(([, v]) => v.goals + v.yellows + v.reds));
  return (
    <div className="container-page pb-6">
      <h2 className="text-2xl">Season breakdown</h2>
      <p className="mt-1 text-sm text-slate-500">Goals, yellows and reds by month.</p>
      <div className="mt-4 card p-6">
        <div className="flex items-end gap-4 overflow-x-auto pb-2">
          {months.map(([key, v]) => {
            const [y, m] = key.split('-');
            const label = new Date(Number(y), Number(m) - 1, 1).toLocaleDateString('en-GB', { month: 'short' });
            const h = (n: number) => `${(n / max) * 140}px`;
            return (
              <div key={key} className="flex w-12 shrink-0 flex-col items-center">
                <div className="flex h-[160px] w-8 flex-col justify-end overflow-hidden rounded">
                  {v.reds > 0 && (<div className="w-full bg-red-600" style={{ height: h(v.reds) }} />)}
                  {v.yellows > 0 && (<div className="w-full bg-yellow-500" style={{ height: h(v.yellows) }} />)}
                  {v.goals > 0 && (<div className="w-full bg-pitch" style={{ height: h(v.goals) }} />)}
                </div>
                <div className="mt-1 font-mono text-[10px] text-slate-500">{label}</div>
              </div>
            );
          })}
        </div>
      </div>
    </div>
  );
}

const LABEL: Record<string, string> = {
  goal_for: 'Goal',
  goal_against: 'Opp. Goal',
  yellow: 'Yellow Card',
  red: 'Red Card',
  sub_on: 'Substitution on',
  sub_off: 'Substitution off',
  note: 'Note',
  kickoff: 'Kick-off',
  halftime: 'Half-time',
  fulltime: 'Full-time',
};
