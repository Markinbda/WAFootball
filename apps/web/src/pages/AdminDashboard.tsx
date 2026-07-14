import { useCallback, useEffect, useMemo, useRef, useState } from 'react';
import { Link, useSearchParams } from 'react-router-dom';
import { getSupabase } from '@/lib/supabase';
import { useAuth } from '@/auth/AuthProvider';
import { useGroupTree, useAllMembers, type GroupNode, type GroupKind, type MemberRow } from '@/data/phase15';

type TeamOption = { id: string; name: string };
type AdminTab = 'news' | 'fixture' | 'registrations' | 'members' | 'teams' | 'groups' | 'training' | 'gallery' | 'sponsors' | 'coaches';

const VALID_TABS: AdminTab[] = ['news', 'fixture', 'registrations', 'members', 'teams', 'groups', 'training', 'gallery', 'sponsors', 'coaches'];

export function AdminDashboard() {
  const { ready, roles } = useAuth();
  const sb = getSupabase();
  const isAdmin = roles.includes('admin');
  const [searchParams, setSearchParams] = useSearchParams();

  const [teams, setTeams] = useState<TeamOption[]>([]);
  const initialTab = (searchParams.get('section') as AdminTab) ?? 'news';
  const [tab, setTab] = useState<AdminTab>(VALID_TABS.includes(initialTab) ? initialTab : 'news');
  const allowedTabs = useMemo(
    () => (!ready || isAdmin ? VALID_TABS : VALID_TABS.filter((value) => value !== 'registrations' && value !== 'coaches')),
    [isAdmin, ready],
  );

  // Sync tab → URL so the section is shareable / back-button friendly.
  useEffect(() => {
    const nextTab = allowedTabs.includes(tab) ? tab : 'news';
    if (nextTab !== tab) {
      setTab(nextTab);
      return;
    }
    if (searchParams.get('section') !== nextTab) {
      const next = new URLSearchParams(searchParams);
      next.set('section', nextTab);
      setSearchParams(next, { replace: true });
    }
  }, [allowedTabs, tab, searchParams, setSearchParams]);

  // If the URL changes externally (e.g. user clicks a Coach Dashboard tile),
  // reflect that in the active tab.
  useEffect(() => {
    const fromUrl = searchParams.get('section') as AdminTab | null;
    if (fromUrl && allowedTabs.includes(fromUrl)) {
      setTab((current) => (fromUrl === current ? current : fromUrl));
    }
  }, [allowedTabs, searchParams]);

  useEffect(() => {
    if (!sb) return;
    (async () => {
      const { data } = await sb.from('teams').select('id, name').order('name');
      if (data) setTeams(data);
    })();
  }, [sb]);

  if (!sb) {
    return (
      <div className="container-page py-12">
        <h1 className="text-3xl">Admin</h1>
        <p className="mt-2 text-amber-700">Supabase not configured.</p>
      </div>
    );
  }

  return (
    <div className="container-page py-12">
      <h1 className="text-4xl">Admin Console</h1>
      <p className="mt-2 text-slate-600">
        {isAdmin ? 'Manage news, fixtures, and results.' : 'Coaches can post fixtures and results.'}
      </p>

      <div className="mt-6 flex gap-2 border-b border-slate-200">
        <button
          onClick={() => setTab('news')}
          className={`px-4 py-2 text-sm font-semibold ${tab === 'news' ? 'border-b-2 border-navy text-navy' : 'text-slate-500'}`}
        >
          News
        </button>
        <button
          onClick={() => setTab('fixture')}
          className={`px-4 py-2 text-sm font-semibold ${tab === 'fixture' ? 'border-b-2 border-navy text-navy' : 'text-slate-500'}`}
        >
          Fixtures &amp; Results
        </button>
        <button
          onClick={() => setTab('members')}
          className={`px-4 py-2 text-sm font-semibold ${tab === 'members' ? 'border-b-2 border-navy text-navy' : 'text-slate-500'}`}
        >
          Members
        </button>
        {isAdmin && (
          <button
            onClick={() => setTab('registrations')}
            className={`px-4 py-2 text-sm font-semibold ${tab === 'registrations' ? 'border-b-2 border-navy text-navy' : 'text-slate-500'}`}
          >
            Registrations
          </button>
        )}
        <button
          onClick={() => setTab('teams')}
          className={`px-4 py-2 text-sm font-semibold ${tab === 'teams' ? 'border-b-2 border-navy text-navy' : 'text-slate-500'}`}
        >
          Team photos
        </button>
        <button
          onClick={() => setTab('groups')}
          className={`px-4 py-2 text-sm font-semibold ${tab === 'groups' ? 'border-b-2 border-navy text-navy' : 'text-slate-500'}`}
        >
          Teams &amp; Groups
        </button>
        <button
          onClick={() => setTab('training')}
          className={`px-4 py-2 text-sm font-semibold ${tab === 'training' ? 'border-b-2 border-navy text-navy' : 'text-slate-500'}`}
        >
          Training
        </button>
        <button
          onClick={() => setTab('gallery')}
          className={`px-4 py-2 text-sm font-semibold ${tab === 'gallery' ? 'border-b-2 border-navy text-navy' : 'text-slate-500'}`}
        >
          Gallery
        </button>
        <button
          onClick={() => setTab('sponsors')}
          className={`px-4 py-2 text-sm font-semibold ${tab === 'sponsors' ? 'border-b-2 border-navy text-navy' : 'text-slate-500'}`}
        >
          Sponsors
        </button>
        {isAdmin && (
          <button
            onClick={() => setTab('coaches')}
            className={`px-4 py-2 text-sm font-semibold ${tab === 'coaches' ? 'border-b-2 border-navy text-navy' : 'text-slate-500'}`}
          >
            Coaches
          </button>
        )}
      </div>

      <div className="mt-6">
        {tab === 'news' && <NewsForm />}
        {tab === 'fixture' && <FixtureForm teams={teams} />}
        {tab === 'registrations' && isAdmin && <RegistrationsPanel />}
        {tab === 'members' && <MembersPanel />}
        {tab === 'teams' && <TeamPhotoForm teams={teams} />}
        {tab === 'groups' && <GroupsPanel />}
        {tab === 'training' && <TrainingForm teams={teams} />}
        {tab === 'gallery' && <GalleryForm teams={teams} />}
        {tab === 'sponsors' && <SponsorForm />}
        {tab === 'coaches' && isAdmin && <CoachesForm teams={teams} />}
      </div>
    </div>
  );
}

function NewsForm() {
  const sb = getSupabase()!;
  const [title, setTitle] = useState('');
  const [slug, setSlug] = useState('');
  const [excerpt, setExcerpt] = useState('');
  const [body, setBody] = useState('');
  const [tag, setTag] = useState('Club');
  const [publish, setPublish] = useState(true);
  const [status, setStatus] = useState<string | null>(null);
  const [busy, setBusy] = useState(false);

  async function submit(e: React.FormEvent) {
    e.preventDefault();
    setBusy(true);
    setStatus(null);
    const { error } = await sb.from('news').insert({
      title,
      slug: slug || title.toLowerCase().replace(/[^a-z0-9]+/g, '-').replace(/^-|-$/g, ''),
      excerpt,
      body,
      tag,
      published_at: publish ? new Date().toISOString() : null,
    });
    setBusy(false);
    if (error) setStatus(`Error: ${error.message}`);
    else {
      setStatus('Saved.');
      setTitle(''); setSlug(''); setExcerpt(''); setBody('');
    }
  }

  return (
    <form onSubmit={submit} className="card max-w-2xl space-y-4 p-6">
      <h2 className="text-xl font-semibold">New article</h2>
      <Field label="Title">
        <input required value={title} onChange={(e) => setTitle(e.target.value)} className="input" />
      </Field>
      <Field label="Slug (optional)">
        <input value={slug} onChange={(e) => setSlug(e.target.value)} className="input" placeholder="auto-generated from title" />
      </Field>
      <Field label="Tag">
        <select value={tag} onChange={(e) => setTag(e.target.value)} className="input">
          <option>Club</option>
          <option>Match Report</option>
          <option>Registration</option>
          <option>Community</option>
        </select>
      </Field>
      <Field label="Excerpt">
        <textarea required value={excerpt} onChange={(e) => setExcerpt(e.target.value)} className="input" rows={2} />
      </Field>
      <Field label="Body">
        <textarea value={body} onChange={(e) => setBody(e.target.value)} className="input" rows={6} />
      </Field>
      <label className="flex items-center gap-2 text-sm">
        <input type="checkbox" checked={publish} onChange={(e) => setPublish(e.target.checked)} />
        Publish immediately
      </label>
      {status && <p className={`text-sm ${status.startsWith('Error') ? 'text-red-700' : 'text-pitch'}`}>{status}</p>}
      <button type="submit" className="btn-primary" disabled={busy}>{busy ? 'Saving…' : 'Save'}</button>
    </form>
  );
}

function FixtureForm({ teams }: { teams: TeamOption[] }) {
  const sb = getSupabase()!;
  const [teamId, setTeamId] = useState('');
  const [opponent, setOpponent] = useState('');
  const [kickoff, setKickoff] = useState('');
  const [venue, setVenue] = useState<'Home' | 'Away'>('Home');
  const [competition, setCompetition] = useState('Premier Division');
  const [recordResult, setRecordResult] = useState(false);
  const [scoreFor, setScoreFor] = useState('');
  const [scoreAgainst, setScoreAgainst] = useState('');
  const [busy, setBusy] = useState(false);
  const [status, setStatus] = useState<string | null>(null);

  async function submit(e: React.FormEvent) {
    e.preventDefault();
    setBusy(true);
    setStatus(null);
    const payload: Record<string, unknown> = {
      team_id: teamId,
      opponent,
      kickoff_at: new Date(kickoff).toISOString(),
      venue,
      competition,
      status: recordResult ? 'final' : 'scheduled',
    };
    if (recordResult) {
      payload.score_for = Number(scoreFor);
      payload.score_against = Number(scoreAgainst);
    }
    const { error } = await sb.from('fixtures').insert(payload);
    setBusy(false);
    if (error) setStatus(`Error: ${error.message}`);
    else {
      setStatus('Saved.');
      setOpponent(''); setKickoff(''); setScoreFor(''); setScoreAgainst('');
    }
  }

  return (
    <form onSubmit={submit} className="card max-w-2xl space-y-4 p-6">
      <h2 className="text-xl font-semibold">New fixture or result</h2>
      {teams.length === 0 && (
        <p className="rounded bg-amber-50 p-3 text-sm text-amber-800">
          No teams in database. Insert teams into the <code>teams</code> table first.
        </p>
      )}
      <Field label="Team">
        <select required value={teamId} onChange={(e) => setTeamId(e.target.value)} className="input">
          <option value="">Select…</option>
          {teams.map((t) => <option key={t.id} value={t.id}>{t.name}</option>)}
        </select>
      </Field>
      <Field label="Opponent">
        <input required value={opponent} onChange={(e) => setOpponent(e.target.value)} className="input" />
      </Field>
      <Field label="Kick-off">
        <input required type="datetime-local" value={kickoff} onChange={(e) => setKickoff(e.target.value)} className="input" />
      </Field>
      <div className="grid grid-cols-2 gap-4">
        <Field label="Venue">
          <select value={venue} onChange={(e) => setVenue(e.target.value as 'Home' | 'Away')} className="input">
            <option>Home</option>
            <option>Away</option>
          </select>
        </Field>
        <Field label="Competition">
          <input value={competition} onChange={(e) => setCompetition(e.target.value)} className="input" />
        </Field>
      </div>
      <label className="flex items-center gap-2 text-sm">
        <input type="checkbox" checked={recordResult} onChange={(e) => setRecordResult(e.target.checked)} />
        Record final result
      </label>
      {recordResult && (
        <div className="grid grid-cols-2 gap-4">
          <Field label="Warwick FA score">
            <input required type="number" min="0" value={scoreFor} onChange={(e) => setScoreFor(e.target.value)} className="input" />
          </Field>
          <Field label="Opponent score">
            <input required type="number" min="0" value={scoreAgainst} onChange={(e) => setScoreAgainst(e.target.value)} className="input" />
          </Field>
        </div>
      )}
      {status && <p className={`text-sm ${status.startsWith('Error') ? 'text-red-700' : 'text-pitch'}`}>{status}</p>}
      <button type="submit" className="btn-primary" disabled={busy}>{busy ? 'Saving…' : 'Save'}</button>
    </form>
  );
}

function Field({ label, children }: { label: string; children: React.ReactNode }) {
  return (
    <div>
      <label className="block text-sm font-semibold text-slate-700">{label}</label>
      <div className="mt-1">{children}</div>
    </div>
  );
}

type RegistrationStatus = 'pending' | 'approved' | 'rejected';

type RegistrationPerson = {
  firstName?: string;
  surname?: string;
  phone?: string;
  email?: string;
  street?: string;
  parish?: string;
  postcode?: string;
};

type RegistrationPlayer = {
  firstName?: string;
  surname?: string;
  dob?: string;
  gender?: string;
  school?: string;
  playerEmail?: string;
  playerPhone?: string;
  ageGroup?: string;
  yearsPlaying?: string;
  previousClubs?: string;
  jerseySize?: string;
  shortsSize?: string;
  physicianName?: string;
  physicianPhone?: string;
  allergies?: string;
  medical?: string;
};

type RegistrationRow = {
  id: string;
  type: 'adult' | 'junior';
  guardian: RegistrationPerson;
  players: RegistrationPlayer[];
  request_message: string | null;
  status: RegistrationStatus;
  submitted_at: string;
  reviewed_at: string | null;
};

function RegistrationsPanel() {
  const { session } = useAuth();
  const [rows, setRows] = useState<RegistrationRow[]>([]);
  const [loading, setLoading] = useState(true);
  const [status, setStatus] = useState<string | null>(null);
  const [filter, setFilter] = useState<RegistrationStatus | 'all'>('pending');
  const [busyId, setBusyId] = useState<string | null>(null);

  const supabaseUrl = import.meta.env.VITE_SUPABASE_URL as string;
  const anonKey = import.meta.env.VITE_SUPABASE_ANON_KEY as string;

  async function fetchWithTimeout(input: RequestInfo | URL, init: RequestInit) {
    const controller = new AbortController();
    const timeout = window.setTimeout(() => controller.abort(), 12000);
    try {
      return await fetch(input, { ...init, signal: controller.signal });
    } finally {
      window.clearTimeout(timeout);
    }
  }

  function authHeaders() {
    return {
      apikey: anonKey,
      Authorization: `Bearer ${session?.access_token ?? anonKey}`,
      'Content-Type': 'application/json',
    };
  }

  async function load() {
    if (!session?.access_token) {
      setLoading(false);
      setRows([]);
      setStatus('Please sign in as an admin to view registrations.');
      return;
    }
    setLoading(true);
    setStatus(null);
    try {
      const params = new URLSearchParams({
        select: 'id,type,guardian,players,request_message,status,submitted_at,reviewed_at',
        order: 'submitted_at.desc',
      });
      const response = await fetchWithTimeout(`${supabaseUrl}/rest/v1/online_registrations?${params}`, {
        headers: authHeaders(),
      });
      if (!response.ok) {
        const message = await response.text();
        setStatus(`Error loading registrations: ${message || response.statusText}`);
        setRows([]);
        return;
      }
      const data = await response.json();
      setRows((data ?? []) as RegistrationRow[]);
    } catch {
      setStatus('Error loading registrations.');
      setRows([]);
    } finally {
      setLoading(false);
    }
  }

  useEffect(() => {
    void load();
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [session?.access_token]);

  const filteredRows = useMemo(() => {
    if (filter === 'all') return rows;
    return rows.filter((row) => row.status === filter);
  }, [filter, rows]);

  async function approve(row: RegistrationRow) {
    setBusyId(row.id);
    setStatus(null);
    try {
      const response = await fetchWithTimeout(`${supabaseUrl}/functions/v1/invite-coach`, {
        method: 'POST',
        headers: authHeaders(),
        body: JSON.stringify({
          mode: 'approve_registration',
          registration_id: row.id,
          redirect_to: `${window.location.origin}/login`,
        }),
      });
      let result: { ok?: boolean; error?: string; email_sent?: boolean; email_note?: string | null } = {};
      try {
        result = await response.json();
      } catch {
        result = { error: await response.text().catch(() => response.statusText) };
      }
      if (!response.ok) {
        setStatus(`Error approving registration: ${result.error || response.statusText}`);
        return;
      }
      setStatus(result.email_sent ? 'Registration approved and email sent.' : `Registration approved. ${result.email_note ?? 'No email was sent.'}`);
      await load();
    } finally {
      setBusyId(null);
    }
  }

  const pendingCount = rows.filter((row) => row.status === 'pending').length;

  return (
    <div className="space-y-6">
      <div className="card p-6">
        <div className="flex flex-wrap items-end justify-between gap-4">
          <div>
            <h2 className="text-xl font-semibold">Online registrations</h2>
            <p className="mt-1 text-sm text-slate-600">
              {loading ? 'Loading…' : `${pendingCount} pending approval, ${rows.length} total`}
            </p>
          </div>
          <div className="flex items-center gap-2">
            <select value={filter} onChange={(e) => setFilter(e.target.value as typeof filter)} className="input w-40">
              <option value="pending">Pending</option>
              <option value="approved">Approved</option>
              <option value="rejected">Rejected</option>
              <option value="all">All</option>
            </select>
            <button type="button" onClick={load} className="btn-ghost">Refresh</button>
          </div>
        </div>

        {status && (
          <p className={`mt-4 text-sm ${status.startsWith('Error') ? 'text-red-700' : 'text-pitch'}`}>
            {status}
          </p>
        )}

        {!loading && filteredRows.length === 0 && (
          <p className="mt-5 text-sm text-slate-500">No registrations in this view.</p>
        )}

        <ul className="mt-5 space-y-4">
          {filteredRows.map((row) => (
            <li key={row.id} className="rounded-lg border border-slate-200 p-4">
              <div className="flex flex-wrap items-start justify-between gap-4">
                <div>
                  <div className="flex flex-wrap items-center gap-2">
                    <h3 className="text-lg font-semibold text-navy">
                      {row.type === 'adult' ? fullName(row.players[0]) : fullName(row.guardian)}
                    </h3>
                    <span className="rounded bg-slate-100 px-2 py-0.5 text-xs font-semibold uppercase text-slate-600">
                      {row.type}
                    </span>
                    <span className={`rounded px-2 py-0.5 text-xs font-semibold uppercase ${row.status === 'approved' ? 'bg-pitch/10 text-pitch' : 'bg-amber-100 text-amber-800'}`}>
                      {row.status}
                    </span>
                  </div>
                  <p className="mt-1 text-sm text-slate-600">
                    Submitted {new Date(row.submitted_at).toLocaleString()}
                    {row.reviewed_at ? ` · Reviewed ${new Date(row.reviewed_at).toLocaleString()}` : ''}
                  </p>
                </div>
                <button type="button" onClick={() => approve(row)} className="btn-primary" disabled={busyId === row.id}>
                  {busyId === row.id ? (row.status === 'approved' ? 'Sending…' : 'Approving…') : (row.status === 'approved' ? 'Send email' : 'Approve')}
                </button>
              </div>

              <div className="mt-4 grid gap-4 lg:grid-cols-3">
                <div className="rounded border border-slate-100 bg-slate-50 p-3 text-sm">
                  <div className="font-semibold text-navy">Contact</div>
                  <div className="mt-1 text-slate-700">{fullName(row.guardian)}</div>
                  <div className="text-slate-700">{row.guardian.email || 'No email'}</div>
                  <div className="text-slate-700">{row.guardian.phone || 'No phone'}</div>
                  <div className="text-slate-500">{address(row.guardian)}</div>
                </div>
                <div className="space-y-3 lg:col-span-2">
                  {row.players.map((player, index) => (
                    <div key={`${row.id}-${index}`} className="rounded border border-slate-100 p-3 text-sm">
                      <div className="font-semibold text-navy">{fullName(player)}</div>
                      <div className="text-slate-700">{player.ageGroup || 'No age group'} · DOB {player.dob || 'not provided'} · {player.gender || 'gender not provided'}</div>
                      <div className="text-slate-700">Kit: {player.jerseySize || 'n/a'} jersey, {player.shortsSize || 'n/a'} shorts</div>
                      <div className="text-slate-700">Physician: {player.physicianName || 'n/a'} {player.physicianPhone ? `(${player.physicianPhone})` : ''}</div>
                      {(player.allergies || player.medical) && (
                        <div className="text-slate-700">Medical: {player.allergies || 'No allergies listed'}; {player.medical || 'No conditions listed'}</div>
                      )}
                      {player.previousClubs && <div className="text-slate-700">Previous clubs: {player.previousClubs}</div>}
                      {player.school && <div className="text-slate-700">School: {player.school}</div>}
                    </div>
                  ))}
                </div>
              </div>
              {row.request_message && (
                <p className="mt-3 rounded bg-amber-50 p-3 text-sm text-amber-900">{row.request_message}</p>
              )}
            </li>
          ))}
        </ul>
      </div>
    </div>
  );
}

function fullName(person?: { firstName?: string; surname?: string }) {
  const name = [person?.firstName, person?.surname].filter(Boolean).join(' ');
  return name || 'Unnamed registration';
}

function address(person: RegistrationPerson) {
  const value = [person.street, person.parish, person.postcode].filter(Boolean).join(', ');
  return value || 'No address provided';
}

function TeamPhotoForm({ teams }: { teams: TeamOption[] }) {
  const sb = getSupabase()!;
  const [teamId, setTeamId] = useState('');
  const [file, setFile] = useState<File | null>(null);
  const [busy, setBusy] = useState(false);
  const [status, setStatus] = useState<string | null>(null);

  async function submit(e: React.FormEvent) {
    e.preventDefault();
    if (!teamId || !file) return;
    setBusy(true); setStatus(null);
    const ext = file.name.split('.').pop() ?? 'jpg';
    const path = `${teamId}/banner-${Date.now()}.${ext}`;
    const { error: upErr } = await sb.storage
      .from('team-media')
      .upload(path, file, { upsert: true, contentType: file.type });
    if (upErr) { setStatus(`Upload error: ${upErr.message}`); setBusy(false); return; }
    const publicUrl = sb.storage.from('team-media').getPublicUrl(path).data.publicUrl;
    const { error } = await sb.from('teams').update({ photo_url: publicUrl }).eq('id', teamId);
    setBusy(false);
    if (error) setStatus(`Error: ${error.message}`);
    else { setStatus('Team photo updated.'); setFile(null); }
  }

  return (
    <form onSubmit={submit} className="card max-w-2xl space-y-4 p-6">
      <h2 className="text-xl font-semibold">Upload team photo</h2>
      <p className="text-sm text-slate-600">Replaces the banner shown on the team page header.</p>
      <Field label="Team">
        <select required value={teamId} onChange={(e) => setTeamId(e.target.value)} className="input">
          <option value="">Select…</option>
          {teams.map((t) => <option key={t.id} value={t.id}>{t.name}</option>)}
        </select>
      </Field>
      <Field label="Photo">
        <input
          required
          type="file"
          accept="image/*"
          onChange={(e) => setFile(e.target.files?.[0] ?? null)}
          className="block w-full text-sm text-slate-600 file:mr-3 file:rounded file:border-0 file:bg-navy file:px-3 file:py-2 file:text-sm file:font-semibold file:text-white hover:file:bg-navy-600"
        />
      </Field>
      {status && (
        <p className={`text-sm ${status.startsWith('Error') || status.startsWith('Upload') ? 'text-red-700' : 'text-pitch'}`}>{status}</p>
      )}
      <button type="submit" className="btn-primary" disabled={busy || !file || !teamId}>
        {busy ? 'Uploading…' : 'Save photo'}
      </button>
    </form>
  );
}

function TrainingForm({ teams }: { teams: TeamOption[] }) {
  const sb = getSupabase()!;
  const [teamId, setTeamId] = useState('');
  const [weekday, setWeekday] = useState('2');
  const [startsAt, setStartsAt] = useState('17:00');
  const [endsAt, setEndsAt] = useState('18:30');
  const [location, setLocation] = useState('Warwick Academy Pitch');
  const [notes, setNotes] = useState('');
  const [busy, setBusy] = useState(false);
  const [status, setStatus] = useState<string | null>(null);

  async function submit(e: React.FormEvent) {
    e.preventDefault();
    if (!teamId) return;
    setBusy(true); setStatus(null);
    const { error } = await sb.from('training_sessions').insert({
      team_id: teamId,
      weekday: Number(weekday),
      starts_at: startsAt,
      ends_at: endsAt || null,
      location: location || null,
      notes: notes || null,
      active: true,
    });
    setBusy(false);
    if (error) setStatus(`Error: ${error.message}`);
    else { setStatus('Training session added.'); setNotes(''); }
  }

  const days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

  return (
    <form onSubmit={submit} className="card max-w-2xl space-y-4 p-6">
      <h2 className="text-xl font-semibold">Add training session</h2>
      <Field label="Team">
        <select required value={teamId} onChange={(e) => setTeamId(e.target.value)} className="input">
          <option value="">Select…</option>
          {teams.map((t) => <option key={t.id} value={t.id}>{t.name}</option>)}
        </select>
      </Field>
      <div className="grid grid-cols-3 gap-4">
        <Field label="Day">
          <select value={weekday} onChange={(e) => setWeekday(e.target.value)} className="input">
            {days.map((d, i) => <option key={d} value={i}>{d}</option>)}
          </select>
        </Field>
        <Field label="Starts">
          <input required type="time" value={startsAt} onChange={(e) => setStartsAt(e.target.value)} className="input" />
        </Field>
        <Field label="Ends">
          <input type="time" value={endsAt} onChange={(e) => setEndsAt(e.target.value)} className="input" />
        </Field>
      </div>
      <Field label="Location">
        <input value={location} onChange={(e) => setLocation(e.target.value)} className="input" />
      </Field>
      <Field label="Notes">
        <input value={notes} onChange={(e) => setNotes(e.target.value)} className="input" />
      </Field>
      {status && <p className={`text-sm ${status.startsWith('Error') ? 'text-red-700' : 'text-pitch'}`}>{status}</p>}
      <button type="submit" className="btn-primary" disabled={busy}>{busy ? 'Saving…' : 'Add session'}</button>
    </form>
  );
}

function GalleryForm({ teams }: { teams: TeamOption[] }) {
  const sb = getSupabase()!;
  const [files, setFiles] = useState<FileList | null>(null);
  const [caption, setCaption] = useState('');
  const [teamId, setTeamId] = useState('');
  const [busy, setBusy] = useState(false);
  const [status, setStatus] = useState<string | null>(null);

  async function submit(e: React.FormEvent) {
    e.preventDefault();
    if (!files || files.length === 0) return;
    setBusy(true); setStatus(null);
    let ok = 0;
    let fail = 0;
    for (const file of Array.from(files)) {
      const ext = file.name.split('.').pop() ?? 'jpg';
      const path = `${teamId || 'club'}/${Date.now()}-${crypto.randomUUID()}.${ext}`;
      const { error: upErr } = await sb.storage
        .from('gallery')
        .upload(path, file, { upsert: false, contentType: file.type });
      if (upErr) { fail++; continue; }
      const publicUrl = sb.storage.from('gallery').getPublicUrl(path).data.publicUrl;
      const { error } = await sb.from('gallery_photos').insert({
        url: publicUrl,
        caption: caption || null,
        team_id: teamId || null,
      });
      if (error) fail++; else ok++;
    }
    setBusy(false);
    setStatus(fail ? `Uploaded ${ok}, ${fail} failed.` : `Uploaded ${ok} photo${ok === 1 ? '' : 's'}.`);
    if (!fail) { setCaption(''); setFiles(null); }
  }

  return (
    <form onSubmit={submit} className="card max-w-2xl space-y-4 p-6">
      <h2 className="text-xl font-semibold">Upload gallery photos</h2>
      <Field label="Team (optional)">
        <select value={teamId} onChange={(e) => setTeamId(e.target.value)} className="input">
          <option value="">— Club-wide —</option>
          {teams.map((t) => <option key={t.id} value={t.id}>{t.name}</option>)}
        </select>
      </Field>
      <Field label="Caption (applied to all)">
        <input value={caption} onChange={(e) => setCaption(e.target.value)} className="input" />
      </Field>
      <Field label="Photos (multi-select)">
        <input
          required
          type="file"
          accept="image/*"
          multiple
          onChange={(e) => setFiles(e.target.files)}
          className="block w-full text-sm text-slate-600 file:mr-3 file:rounded file:border-0 file:bg-navy file:px-3 file:py-2 file:text-sm file:font-semibold file:text-white hover:file:bg-navy-600"
        />
      </Field>
      {status && (
        <p className={`text-sm ${status.includes('failed') ? 'text-red-700' : 'text-pitch'}`}>{status}</p>
      )}
      <button type="submit" className="btn-primary" disabled={busy || !files}>{busy ? 'Uploading…' : 'Upload'}</button>
    </form>
  );
}

function SponsorForm() {
  const sb = getSupabase()!;
  const [name, setName] = useState('');
  const [websiteUrl, setWebsiteUrl] = useState('');
  const [tier, setTier] = useState<'headline' | 'gold' | 'silver' | 'partner'>('partner');
  const [sortOrder, setSortOrder] = useState('100');
  const [file, setFile] = useState<File | null>(null);
  const [busy, setBusy] = useState(false);
  const [status, setStatus] = useState<string | null>(null);

  async function submit(e: React.FormEvent) {
    e.preventDefault();
    setBusy(true); setStatus(null);
    let logo_url: string | null = null;
    if (file) {
      const ext = file.name.split('.').pop() ?? 'png';
      const path = `sponsors/${Date.now()}-${crypto.randomUUID()}.${ext}`;
      const { error: upErr } = await sb.storage
        .from('gallery')
        .upload(path, file, { upsert: false, contentType: file.type });
      if (upErr) { setStatus(`Upload error: ${upErr.message}`); setBusy(false); return; }
      logo_url = sb.storage.from('gallery').getPublicUrl(path).data.publicUrl;
    }
    const { error } = await sb.from('sponsors').insert({
      name,
      logo_url,
      website_url: websiteUrl || null,
      tier,
      sort_order: Number(sortOrder) || 100,
      active: true,
    });
    setBusy(false);
    if (error) setStatus(`Error: ${error.message}`);
    else { setStatus('Sponsor added.'); setName(''); setWebsiteUrl(''); setFile(null); }
  }

  return (
    <form onSubmit={submit} className="card max-w-2xl space-y-4 p-6">
      <h2 className="text-xl font-semibold">Add sponsor</h2>
      <Field label="Name">
        <input required value={name} onChange={(e) => setName(e.target.value)} className="input" />
      </Field>
      <Field label="Website URL">
        <input type="url" value={websiteUrl} onChange={(e) => setWebsiteUrl(e.target.value)} className="input" placeholder="https://" />
      </Field>
      <div className="grid grid-cols-2 gap-4">
        <Field label="Tier">
          <select value={tier} onChange={(e) => setTier(e.target.value as typeof tier)} className="input">
            <option value="headline">Headline</option>
            <option value="gold">Gold</option>
            <option value="silver">Silver</option>
            <option value="partner">Partner</option>
          </select>
        </Field>
        <Field label="Sort order">
          <input value={sortOrder} onChange={(e) => setSortOrder(e.target.value)} className="input" inputMode="numeric" />
        </Field>
      </div>
      <Field label="Logo (optional)">
        <input
          type="file"
          accept="image/*"
          onChange={(e) => setFile(e.target.files?.[0] ?? null)}
          className="block w-full text-sm text-slate-600 file:mr-3 file:rounded file:border-0 file:bg-navy file:px-3 file:py-2 file:text-sm file:font-semibold file:text-white hover:file:bg-navy-600"
        />
      </Field>
      {status && (
        <p className={`text-sm ${status.startsWith('Error') || status.startsWith('Upload') ? 'text-red-700' : 'text-pitch'}`}>{status}</p>
      )}
      <button type="submit" className="btn-primary" disabled={busy}>{busy ? 'Saving…' : 'Add sponsor'}</button>
    </form>
  );
}


// ===================================================================
// Coaches admin: list coaches, add/remove team assignments, emulate.
// ===================================================================

type CoachAssignmentRow = {
  team_id: string;
  user_id: string;
  created_at: string;
  teams: { id: string; name: string; slug: string } | { id: string; name: string; slug: string }[] | null;
};

type CoachGroup = {
  userId: string;
  displayName: string;
  teams: { id: string; name: string; slug: string }[];
};

type ProfileOption = { id: string; display_name: string };

function CoachesForm({ teams }: { teams: TeamOption[] }) {
  const sb = getSupabase()!;
  const [rows, setRows] = useState<CoachAssignmentRow[]>([]);
  const [profiles, setProfiles] = useState<ProfileOption[]>([]);
  const [loading, setLoading] = useState(true);
  const [status, setStatus] = useState<string | null>(null);
  const [newUserId, setNewUserId] = useState('');
  const [newTeamId, setNewTeamId] = useState('');
  const [busy, setBusy] = useState(false);
  const [search, setSearch] = useState('');

  async function load() {
    setLoading(true);
    const [{ data: tc, error: tcErr }, { data: prof }] = await Promise.all([
      sb
        .from('team_coaches')
        .select('team_id, user_id, created_at, teams:teams(id,name,slug)')
        .order('created_at', { ascending: true }),
      sb.from('profiles').select('id, display_name').order('display_name'),
    ]);
    setLoading(false);
    if (tcErr) {
      setStatus(`Error loading coaches: ${tcErr.message}`);
      return;
    }
    setRows((tc ?? []) as unknown as CoachAssignmentRow[]);
    setProfiles((prof ?? []) as ProfileOption[]);
  }

  useEffect(() => {
    void load();
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  const groups: CoachGroup[] = useMemo(() => {
    const nameById = new Map(profiles.map((p) => [p.id, p.display_name]));
    const byUser = new Map<string, CoachGroup>();
    for (const r of rows) {
      if (!r.user_id) continue;
      const name = nameById.get(r.user_id) ?? '(unknown user)';
      const g = byUser.get(r.user_id) ?? { userId: r.user_id, displayName: name, teams: [] };
      const teamList = Array.isArray(r.teams) ? r.teams : r.teams ? [r.teams] : [];
      for (const t of teamList) g.teams.push(t);
      byUser.set(r.user_id, g);
    }
    const list = Array.from(byUser.values());
    list.sort((a, b) => a.displayName.localeCompare(b.displayName));
    return list;
  }, [rows, profiles]);

  const filteredGroups = useMemo(() => {
    if (!search.trim()) return groups;
    const q = search.toLowerCase();
    return groups.filter(
      (g) =>
        g.displayName.toLowerCase().includes(q) ||
        g.teams.some((t) => t.name.toLowerCase().includes(q)),
    );
  }, [groups, search]);

  async function addAssignment(e: React.FormEvent) {
    e.preventDefault();
    if (!newUserId || !newTeamId) return;
    setBusy(true);
    setStatus(null);
    const { error } = await sb
      .from('team_coaches')
      .insert({ user_id: newUserId, team_id: newTeamId });
    setBusy(false);
    if (error) {
      setStatus(`Error: ${error.message}`);
      return;
    }
    setStatus('Coach assigned.');
    setNewUserId('');
    setNewTeamId('');
    await load();
  }

  async function removeAssignment(userId: string, teamId: string) {
    if (!confirm('Remove this coach from this team?')) return;
    const { error } = await sb
      .from('team_coaches')
      .delete()
      .eq('user_id', userId)
      .eq('team_id', teamId);
    if (error) {
      setStatus(`Error removing: ${error.message}`);
      return;
    }
    await load();
  }

  async function addTeamToCoach(userId: string, teamId: string) {
    if (!teamId) return;
    const { error } = await sb
      .from('team_coaches')
      .insert({ user_id: userId, team_id: teamId });
    if (error) {
      setStatus(`Error: ${error.message}`);
      return;
    }
    await load();
  }

  return (
    <div className="space-y-6">
      <form onSubmit={addAssignment} className="card max-w-2xl space-y-4 p-6">
        <h2 className="text-xl font-semibold">Assign a coach</h2>
        <p className="text-sm text-slate-600">
          Pick any registered user and a team. Both fields are required. The user
          becomes a coach for that team (and can manage the team calendar).
        </p>
        <Field label="User">
          <select
            required
            value={newUserId}
            onChange={(e) => setNewUserId(e.target.value)}
            className="input"
          >
            <option value="">Select user…</option>
            {profiles.map((p) => (
              <option key={p.id} value={p.id}>
                {p.display_name}
              </option>
            ))}
          </select>
        </Field>
        <Field label="Team">
          <select
            required
            value={newTeamId}
            onChange={(e) => setNewTeamId(e.target.value)}
            className="input"
          >
            <option value="">Select team…</option>
            {teams.map((t) => (
              <option key={t.id} value={t.id}>
                {t.name}
              </option>
            ))}
          </select>
        </Field>
        {status && (
          <p className={`text-sm ${status.startsWith('Error') ? 'text-red-700' : 'text-pitch'}`}>
            {status}
          </p>
        )}
        <button type="submit" className="btn-primary" disabled={busy}>
          {busy ? 'Saving…' : 'Assign coach'}
        </button>
      </form>

      <div className="card p-6">
        <div className="flex flex-wrap items-end justify-between gap-3">
          <div>
            <h2 className="text-xl font-semibold">Coaches</h2>
            <p className="text-sm text-slate-600">
              {loading ? 'Loading…' : `${groups.length} coach${groups.length === 1 ? '' : 'es'}`}
            </p>
          </div>
          <input
            value={search}
            onChange={(e) => setSearch(e.target.value)}
            placeholder="Search name or team…"
            className="input max-w-xs"
          />
        </div>

        {!loading && filteredGroups.length === 0 && (
          <p className="mt-4 text-sm text-slate-500">No coaches yet.</p>
        )}

        <ul className="mt-4 divide-y divide-slate-200">
          {filteredGroups.map((g) => (
            <CoachRow
              key={g.userId}
              group={g}
              allTeams={teams}
              onRemove={(teamId) => removeAssignment(g.userId, teamId)}
              onAddTeam={(teamId) => addTeamToCoach(g.userId, teamId)}
            />
          ))}
        </ul>
      </div>
    </div>
  );
}

function CoachRow({
  group,
  allTeams,
  onRemove,
  onAddTeam,
}: {
  group: CoachGroup;
  allTeams: TeamOption[];
  onRemove: (teamId: string) => void;
  onAddTeam: (teamId: string) => void;
}) {
  const [extraTeam, setExtraTeam] = useState('');
  const availableTeams = useMemo(() => {
    const taken = new Set(group.teams.map((t) => t.id));
    return allTeams.filter((t) => !taken.has(t.id));
  }, [allTeams, group.teams]);

  return (
    <li className="py-4">
      <div className="flex flex-wrap items-center justify-between gap-3">
        <div>
          <div className="font-semibold text-navy">{group.displayName}</div>
          <div className="text-xs text-slate-500">{group.userId}</div>
        </div>
        <div className="flex gap-2">
          <ResetPasswordButton userId={group.userId} />
          <EditCoachButton
            userId={group.userId}
            currentDisplayName={group.displayName}
          />
          <Link
            to={`/coach?as=${group.userId}`}
            className="rounded border border-navy px-3 py-1 text-xs font-semibold text-navy hover:bg-navy hover:text-white"
          >
            Emulate
          </Link>
        </div>
      </div>

      <div className="mt-2 flex flex-wrap gap-2">
        {group.teams.map((t) => (
          <span
            key={t.id}
            className="inline-flex items-center gap-2 rounded-full bg-slate-100 px-3 py-1 text-xs font-medium text-slate-700"
          >
            <Link to={`/calendar/${t.slug}`} className="hover:text-navy">
              {t.name}
            </Link>
            <button
              type="button"
              onClick={() => onRemove(t.id)}
              aria-label={`Remove ${t.name}`}
              className="text-slate-400 hover:text-red-600"
            >
              ×
            </button>
          </span>
        ))}
        {group.teams.length === 0 && (
          <span className="text-xs text-slate-500">No teams assigned</span>
        )}
      </div>

      {availableTeams.length > 0 && (
        <div className="mt-2 flex items-center gap-2">
          <select
            value={extraTeam}
            onChange={(e) => setExtraTeam(e.target.value)}
            className="input max-w-xs text-xs"
          >
            <option value="">+ Add team…</option>
            {availableTeams.map((t) => (
              <option key={t.id} value={t.id}>
                {t.name}
              </option>
            ))}
          </select>
          <button
            type="button"
            disabled={!extraTeam}
            onClick={() => {
              onAddTeam(extraTeam);
              setExtraTeam('');
            }}
            className="rounded bg-navy px-3 py-1 text-xs font-semibold text-white disabled:opacity-50"
          >
            Add
          </button>
        </div>
      )}
    </li>
  );
}



function ResetPasswordButton({ userId }: { userId: string }) {
  const sb = getSupabase();
  const [open, setOpen] = useState(false);
  const [pw, setPw] = useState('');
  const [busy, setBusy] = useState(false);
  const [msg, setMsg] = useState<string | null>(null);
  const [ok, setOk] = useState(false);

  async function submit() {
    if (!sb) return;
    if (pw.length < 8) {
      setMsg('Password must be at least 8 characters.');
      return;
    }
    setBusy(true);
    setMsg(null);
    // Use direct fetch so we can surface the actual edge-function error body
    // instead of the generic "Edge Function returned a non-2xx status code".
    const supabaseUrl = import.meta.env.VITE_SUPABASE_URL as string;
    const anonKey = import.meta.env.VITE_SUPABASE_ANON_KEY as string;
    const { data: { session } } = await sb.auth.getSession();
    const token = session?.access_token;
    if (!token) {
      setBusy(false);
      setMsg('Not signed in.');
      return;
    }
    let result: { ok?: boolean; error?: string } = {};
    let status = 0;
    try {
      const res = await fetch(`${supabaseUrl}/functions/v1/invite-coach`, {
        method: 'POST',
        headers: {
          'content-type': 'application/json',
          authorization: `Bearer ${token}`,
          apikey: anonKey,
        },
        body: JSON.stringify({ mode: 'set_password', user_id: userId, password: pw }),
      });
      status = res.status;
      try {
        result = await res.json();
      } catch {
        result = { error: await res.text().catch(() => `HTTP ${status}`) };
      }
    } catch (e) {
      setBusy(false);
      setMsg(e instanceof Error ? e.message : 'Network error');
      return;
    }
    setBusy(false);
    if (status >= 200 && status < 300 && result?.ok) {
      setOk(true);
      setMsg('Password updated.');
      setPw('');
      setTimeout(() => {
        setOpen(false);
        setOk(false);
        setMsg(null);
      }, 1500);
    } else {
      setMsg(result?.error ?? `HTTP ${status}`);
    }
  }

  return (
    <div className="relative">
      <button
        type="button"
        onClick={() => setOpen((o) => !o)}
        className="rounded border border-slate-300 px-3 py-1 text-xs font-semibold text-slate-700 hover:border-navy hover:text-navy"
      >
        Reset password
      </button>
      {open && (
        <div className="absolute right-0 z-20 mt-2 w-72 rounded-md border border-slate-200 bg-white p-3 text-left shadow-lg">
          <label className="text-xs font-semibold uppercase tracking-wide text-slate-500">
            New password
          </label>
          <input
            type="password"
            value={pw}
            onChange={(e) => setPw(e.target.value)}
            className="input mt-1 text-sm"
            placeholder="Min 8 characters"
            autoFocus
            onKeyDown={(e) => {
              if (e.key === 'Enter' && pw.length >= 8 && !busy) submit();
            }}
          />
          <div className="mt-2 flex items-center justify-between gap-2">
            <button
              type="button"
              onClick={() => {
                setOpen(false);
                setPw('');
                setMsg(null);
              }}
              className="text-xs text-slate-500 hover:text-navy"
            >
              Cancel
            </button>
            <button
              type="button"
              onClick={submit}
              disabled={busy || pw.length < 8}
              className="rounded bg-navy px-3 py-1 text-xs font-semibold text-white disabled:opacity-50"
            >
              {busy ? 'Saving�' : 'Set password'}
            </button>
          </div>
          {msg && (
            <div className={`mt-2 text-xs ${ok ? 'text-pitch' : 'text-red-600'}`}>{msg}</div>
          )}
        </div>
      )}
    </div>
  );
}

function EditCoachButton({
  userId,
  currentDisplayName,
}: {
  userId: string;
  currentDisplayName: string;
}) {
  const sb = getSupabase();
  const [open, setOpen] = useState(false);
  const [loading, setLoading] = useState(false);
  const [busy, setBusy] = useState(false);
  const [displayName, setDisplayName] = useState(currentDisplayName);
  const [email, setEmail] = useState('');
  const [origEmail, setOrigEmail] = useState('');
  const [origDisplayName, setOrigDisplayName] = useState(currentDisplayName);
  const [msg, setMsg] = useState<string | null>(null);
  const [ok, setOk] = useState(false);

  async function callFn(body: Record<string, unknown>) {
    const supabaseUrl = import.meta.env.VITE_SUPABASE_URL as string;
    const anonKey = import.meta.env.VITE_SUPABASE_ANON_KEY as string;
    const { data: { session } } = await sb!.auth.getSession();
    const token = session?.access_token;
    if (!token) throw new Error('Not signed in');
    const res = await fetch(`${supabaseUrl}/functions/v1/invite-coach`, {
      method: 'POST',
      headers: {
        'content-type': 'application/json',
        authorization: `Bearer ${token}`,
        apikey: anonKey,
      },
      body: JSON.stringify(body),
    });
    let out: { ok?: boolean; error?: string; email?: string; display_name?: string } = {};
    try {
      out = await res.json();
    } catch {
      out = { error: `HTTP ${res.status}` };
    }
    if (!res.ok || !out.ok) throw new Error(out.error ?? `HTTP ${res.status}`);
    return out;
  }

  async function openAndLoad() {
    if (!sb) return;
    setOpen(true);
    setMsg(null);
    setOk(false);
    setLoading(true);
    try {
      const out = await callFn({ mode: 'get_coach', user_id: userId });
      const e = out.email ?? '';
      const d = out.display_name ?? currentDisplayName;
      setEmail(e);
      setOrigEmail(e);
      setDisplayName(d);
      setOrigDisplayName(d);
    } catch (err) {
      setMsg(err instanceof Error ? err.message : 'Failed to load');
    } finally {
      setLoading(false);
    }
  }

  async function save() {
    if (!sb) return;
    setBusy(true);
    setMsg(null);
    const body: Record<string, unknown> = { mode: 'update_coach', user_id: userId };
    if (email.trim() && email.trim().toLowerCase() !== origEmail.toLowerCase()) {
      body.email = email.trim();
    }
    if (displayName.trim() && displayName.trim() !== origDisplayName) {
      body.display_name = displayName.trim();
    }
    if (!body.email && !body.display_name) {
      setBusy(false);
      setMsg('No changes.');
      return;
    }
    try {
      await callFn(body);
      setOk(true);
      setMsg('Saved. Reloading…');
      setTimeout(() => window.location.reload(), 900);
    } catch (err) {
      setMsg(err instanceof Error ? err.message : 'Save failed');
    } finally {
      setBusy(false);
    }
  }

  return (
    <div className="relative">
      <button
        type="button"
        onClick={() => (open ? setOpen(false) : void openAndLoad())}
        className="rounded border border-slate-300 px-3 py-1 text-xs font-semibold text-slate-700 hover:border-navy hover:text-navy"
      >
        Edit
      </button>
      {open && (
        <div className="absolute right-0 z-20 mt-2 w-80 rounded-md border border-slate-200 bg-white p-3 text-left shadow-lg">
          {loading ? (
            <div className="text-xs text-slate-500">Loading…</div>
          ) : (
            <>
              <label className="text-xs font-semibold uppercase tracking-wide text-slate-500">
                Full name
              </label>
              <input
                type="text"
                value={displayName}
                onChange={(e) => setDisplayName(e.target.value)}
                className="input mt-1 text-sm"
                placeholder="Full name"
              />
              <label className="mt-2 block text-xs font-semibold uppercase tracking-wide text-slate-500">
                Email
              </label>
              <input
                type="email"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                className="input mt-1 text-sm"
                placeholder="coach@example.com"
              />
              <div className="mt-3 flex items-center justify-between gap-2">
                <button
                  type="button"
                  onClick={() => {
                    setOpen(false);
                    setMsg(null);
                  }}
                  className="text-xs text-slate-500 hover:text-navy"
                >
                  Cancel
                </button>
                <button
                  type="button"
                  onClick={save}
                  disabled={busy}
                  className="rounded bg-navy px-3 py-1 text-xs font-semibold text-white disabled:opacity-50"
                >
                  {busy ? 'Saving…' : 'Save'}
                </button>
              </div>
            </>
          )}
          {msg && (
            <div className={`mt-2 text-xs ${ok ? 'text-pitch' : 'text-red-600'}`}>{msg}</div>
          )}
        </div>
      )}
    </div>
  );
}

// ---------------------------------------------------------------------------
// GroupsPanel — Teams & Groups tree (mirrors Teamo's "Edit Teams/Groups")
// ---------------------------------------------------------------------------
function GroupsPanel() {
  const { tree, loading, reload } = useGroupTree();
  const [openId, setOpenId] = useState<string | null>(null);
  const [search, setSearch] = useState('');
  const [expanded, setExpanded] = useState<Set<string>>(new Set());

  // Once the tree loads, default to only the top-level nodes expanded so the
  // list is compact. Users can drill in from there.
  const initedRef = useRef(false);
  useEffect(() => {
    if (!initedRef.current && tree.length > 0) {
      setExpanded(new Set(tree.map((n) => n.id)));
      initedRef.current = true;
    }
  }, [tree]);

  const toggle = useCallback((id: string) => {
    setExpanded((prev) => {
      const next = new Set(prev);
      if (next.has(id)) next.delete(id); else next.add(id);
      return next;
    });
  }, []);

  const expandAll = useCallback(() => {
    const all = new Set<string>();
    const walk = (n: GroupNode) => { all.add(n.id); n.children.forEach(walk); };
    tree.forEach(walk);
    setExpanded(all);
  }, [tree]);

  const collapseAll = useCallback(() => setExpanded(new Set()), []);

  return (
    <div className="max-w-4xl">
      <div className="flex items-center justify-between gap-3">
        <div>
          <h2 className="text-xl font-semibold">Teams &amp; Groups</h2>
          <p className="mt-1 text-sm text-slate-600">
            Hierarchical structure that mirrors Teamo. Click a node to add sub-groups.
          </p>
        </div>
        <div className="flex flex-wrap items-center gap-2">
          <button
            type="button"
            className="rounded border border-slate-300 px-3 py-1.5 text-xs font-semibold text-slate-700 hover:bg-slate-50"
            onClick={expandAll}
          >
            Expand all
          </button>
          <button
            type="button"
            className="rounded border border-slate-300 px-3 py-1.5 text-xs font-semibold text-slate-700 hover:bg-slate-50"
            onClick={collapseAll}
          >
            Collapse all
          </button>
          <button className="btn-primary text-sm" type="button" onClick={() => setOpenId('__root__')}>
            + New top-level group
          </button>
        </div>
      </div>

      <input
        type="search"
        placeholder="Search teams and groups"
        className="input mt-4"
        value={search}
        onChange={(e) => setSearch(e.target.value)}
      />

      {loading ? (
        <p className="mt-6 text-sm text-slate-500">Loading…</p>
      ) : (
        <ul className="mt-4 space-y-1 text-sm">
          {tree
            .filter((n) => filterNode(n, search))
            .map((n) => (
              <GroupRow
                key={n.id}
                node={n}
                depth={0}
                search={search}
                openId={openId}
                setOpenId={setOpenId}
                onChanged={reload}
                expanded={expanded}
                toggle={toggle}
              />
            ))}
        </ul>
      )}

      {openId === '__root__' && (
        <NewGroupForm parentId={null} onClose={() => setOpenId(null)} onSaved={() => { setOpenId(null); void reload(); }} />
      )}
    </div>
  );
}

function filterNode(n: GroupNode, q: string): boolean {
  if (!q) return true;
  if (n.name.toLowerCase().includes(q.toLowerCase())) return true;
  return n.children.some((c) => filterNode(c, q));
}

function GroupRow({
  node, depth, search, openId, setOpenId, onChanged, expanded, toggle,
}: {
  node: GroupNode;
  depth: number;
  search: string;
  openId: string | null;
  setOpenId: (v: string | null) => void;
  onChanged: () => void;
  expanded: Set<string>;
  toggle: (id: string) => void;
}) {
  const sb = getSupabase()!;
  const [busy, setBusy] = useState(false);
  // When searching, force-open every ancestor so hits are visible.
  const isOpen = search ? true : expanded.has(node.id);
  const hasChildren = node.children.length > 0;

  async function remove() {
    if (!confirm(`Delete "${node.name}" and all descendants?`)) return;
    setBusy(true);
    await sb.from('groups').delete().eq('id', node.id);
    setBusy(false);
    onChanged();
  }

  const kindColor: Record<GroupKind, string> = {
    club:         'bg-navy text-white',
    club_section: 'bg-slate-800 text-white',
    registration: 'bg-slate-500 text-white',
    sub_section:  'bg-slate-300 text-slate-800',
    team:         'bg-gold text-navy',
  };

  return (
    <li>
      <div
        className="flex items-center gap-2 rounded border border-slate-100 bg-white p-2 hover:bg-slate-50"
        style={{ paddingLeft: 8 + depth * 24 }}
      >
        {hasChildren ? (
          <button
            type="button"
            onClick={() => toggle(node.id)}
            className="grid h-6 w-6 shrink-0 place-items-center rounded text-slate-500 hover:bg-slate-100 hover:text-navy"
            aria-label={isOpen ? 'Collapse' : 'Expand'}
            aria-expanded={isOpen}
          >
            <span className={`inline-block transition-transform ${isOpen ? 'rotate-90' : ''}`}>▶</span>
          </button>
        ) : (
          <span className="inline-block h-6 w-6 shrink-0" aria-hidden />
        )}
        <span className={`grid h-8 w-10 place-items-center rounded text-[10px] font-bold uppercase ${kindColor[node.kind]}`}>
          {node.short_code ?? node.kind.replace('_', ' ').split(' ').map((s) => s[0]).join('')}
        </span>
        <div className="min-w-0 flex-1">
          {node.kind === 'team' && node.team_slug ? (
            <Link to={`/teams/${node.team_slug}`} className="block w-full text-left hover:underline">
              <div className="truncate font-semibold text-navy">{node.name}</div>
              <div className="text-xs capitalize text-slate-500">
                {node.kind.replace('_', ' ')}{node.team_id ? ' · linked team' : ''}
              </div>
            </Link>
          ) : (
            <button
              type="button"
              onClick={() => hasChildren && toggle(node.id)}
              className="block w-full text-left"
            >
              <div className="truncate font-semibold text-navy">
                {node.name}
                {hasChildren && (
                  <span className="ml-2 rounded bg-slate-100 px-1.5 py-0.5 text-[10px] font-semibold text-slate-600">
                    {node.children.length}
                  </span>
                )}
              </div>
              <div className="text-xs capitalize text-slate-500">
                {node.kind.replace('_', ' ')}{node.team_id ? ' · linked team' : ''}
              </div>
            </button>
          )}
        </div>
        <button
          className="text-xs text-slate-600 hover:text-navy hover:underline"
          type="button"
          onClick={() => setOpenId(openId === node.id ? null : node.id)}
        >
          + Add child
        </button>
        <button
          className="text-xs text-red-600 hover:underline disabled:opacity-50"
          type="button"
          onClick={remove}
          disabled={busy}
        >
          Delete
        </button>
      </div>

      {openId === node.id && (
        <div style={{ paddingLeft: 8 + (depth + 1) * 24 }}>
          <NewGroupForm
            parentId={node.id}
            onClose={() => setOpenId(null)}
            onSaved={() => { setOpenId(null); onChanged(); }}
          />
        </div>
      )}

      {hasChildren && isOpen && (
        <ul className="mt-1 space-y-1">
          {node.children
            .filter((c) => filterNode(c, search))
            .map((c) => (
              <GroupRow
                key={c.id}
                node={c}
                depth={depth + 1}
                search={search}
                openId={openId}
                setOpenId={setOpenId}
                onChanged={onChanged}
                expanded={expanded}
                toggle={toggle}
              />
            ))}
        </ul>
      )}
    </li>
  );
}

function NewGroupForm({
  parentId, onClose, onSaved,
}: { parentId: string | null; onClose: () => void; onSaved: () => void }) {
  const sb = getSupabase()!;
  const [name, setName] = useState('');
  const [kind, setKind] = useState<GroupKind>(parentId ? 'sub_section' : 'club_section');
  const [teamId, setTeamId] = useState('');
  const [teams, setTeams] = useState<TeamOption[]>([]);
  const [busy, setBusy] = useState(false);
  const [err, setErr] = useState<string | null>(null);

  useEffect(() => {
    (async () => {
      const { data } = await sb.from('teams').select('id, name').order('name');
      if (data) setTeams(data);
    })();
  }, [sb]);

  async function save(e: React.FormEvent) {
    e.preventDefault();
    setBusy(true); setErr(null);
    const payload: Record<string, unknown> = {
      parent_id: parentId,
      name,
      kind,
      team_id: kind === 'team' ? teamId || null : null,
      slug: name.toLowerCase().replace(/[^a-z0-9]+/g, '-').replace(/^-|-$/g, ''),
    };
    const { error } = await sb.from('groups').insert(payload);
    setBusy(false);
    if (error) setErr(error.message);
    else onSaved();
  }

  return (
    <form onSubmit={save} className="my-3 space-y-3 rounded border border-slate-200 bg-slate-50 p-3 text-sm">
      <div className="grid gap-3 md:grid-cols-2">
        <label className="block">
          <span className="text-xs font-semibold text-slate-600">Name</span>
          <input required className="input mt-1" value={name} onChange={(e) => setName(e.target.value)} />
        </label>
        <label className="block">
          <span className="text-xs font-semibold text-slate-600">Type</span>
          <select className="input mt-1" value={kind} onChange={(e) => setKind(e.target.value as GroupKind)}>
            <option value="club_section">Club Section</option>
            <option value="registration">Registration</option>
            <option value="sub_section">Sub-section</option>
            <option value="team">Team pointer</option>
          </select>
        </label>
        {kind === 'team' && (
          <label className="block md:col-span-2">
            <span className="text-xs font-semibold text-slate-600">Linked team</span>
            <select className="input mt-1" required value={teamId} onChange={(e) => setTeamId(e.target.value)}>
              <option value="">— select —</option>
              {teams.map((t) => <option key={t.id} value={t.id}>{t.name}</option>)}
            </select>
          </label>
        )}
      </div>
      {err && <p className="text-red-700">{err}</p>}
      <div className="flex gap-2">
        <button className="btn-primary" disabled={busy} type="submit">{busy ? 'Saving…' : 'Save'}</button>
        <button className="rounded border border-slate-300 px-3 py-1.5" type="button" onClick={onClose}>Cancel</button>
      </div>
    </form>
  );
}

// ---------------------------------------------------------------------------
// MembersPanel — full membership list with search, gender & team filters,
// and a Teams / Groups column that shows every team a player is on.
// ---------------------------------------------------------------------------
function MembersPanel() {
  const { rows, loading, error, reload } = useAllMembers();
  const [q, setQ] = useState('');
  const [gender, setGender] = useState<'all' | 'male' | 'female' | 'other'>('all');
  const [teamFilter, setTeamFilter] = useState<string>('all');
  const [inactive, setInactive] = useState(false);

  const allTeams = useMemo(() => {
    const map = new Map<string, string>();
    for (const r of rows) {
      for (const t of r.teams) if (!map.has(t.id)) map.set(t.id, t.name);
    }
    return [...map.entries()]
      .sort((a, b) => a[1].localeCompare(b[1]))
      .map(([id, name]) => ({ id, name }));
  }, [rows]);

  const filtered = useMemo(() => {
    const needle = q.trim().toLowerCase();
    return rows.filter((r) => {
      if (!inactive && r.active === false) return false;
      if (gender !== 'all') {
        const g = (r.gender ?? '').toLowerCase();
        if (gender === 'other') {
          if (g === 'male' || g === 'female') return false;
        } else if (g !== gender) return false;
      }
      if (teamFilter !== 'all' && !r.teams.some((t) => t.id === teamFilter)) return false;
      if (needle) {
        const hay = [
          r.full_name, r.email, r.phone, r.member_number, r.family_code,
          ...r.teams.map((t) => t.name),
        ].filter(Boolean).join(' ').toLowerCase();
        if (!hay.includes(needle)) return false;
      }
      return true;
    });
  }, [rows, q, gender, teamFilter, inactive]);

  function exportCsv() {
    const header = [
      'Name', 'Gender', 'DoB', 'Age', 'Shirt', 'Position',
      'Member No', 'Email', 'Phone', 'Family', 'Opt-in', 'Active', 'Teams / Groups',
    ];
    const lines = [header.join(',')];
    for (const r of filtered) {
      const cells = [
        r.full_name, r.gender ?? '', r.date_of_birth ?? '', r.age ?? '',
        r.shirt_number ?? '', r.position ?? '',
        r.member_number ?? '', r.email ?? '', r.phone ?? '',
        r.family_code ?? '', r.season_opt_in ?? '', r.active ? 'yes' : 'no',
        r.teams.map((t) => t.name).join('; '),
      ].map((v) => {
        const s = String(v ?? '');
        return /[",\n]/.test(s) ? `"${s.replace(/"/g, '""')}"` : s;
      });
      lines.push(cells.join(','));
    }
    const blob = new Blob([lines.join('\n')], { type: 'text/csv;charset=utf-8' });
    const url = URL.createObjectURL(blob);
    const a = document.createElement('a');
    a.href = url;
    a.download = `wfa-members-${new Date().toISOString().slice(0, 10)}.csv`;
    a.click();
    URL.revokeObjectURL(url);
  }

  return (
    <div>
      <div className="flex flex-wrap items-end justify-between gap-3">
        <div>
          <h2 className="text-xl font-semibold">Members</h2>
          <p className="mt-1 text-sm text-slate-600">
            {loading ? 'Loading…' : `${filtered.length.toLocaleString()} of ${rows.length.toLocaleString()} shown`}
          </p>
        </div>
        <div className="flex gap-2">
          <button type="button" className="rounded border border-slate-300 px-3 py-1.5 text-xs font-semibold" onClick={reload}>
            Refresh
          </button>
          <button type="button" className="rounded bg-navy px-3 py-1.5 text-xs font-semibold text-white" onClick={exportCsv}>
            Export CSV
          </button>
        </div>
      </div>

      {/* Filters */}
      <div className="mt-4 grid gap-3 md:grid-cols-4">
        <label className="text-sm md:col-span-2">
          <span className="text-xs font-semibold text-slate-600">Search</span>
          <input
            type="search"
            className="input mt-1"
            placeholder="Name, email, phone, member #, family code, team…"
            value={q}
            onChange={(e) => setQ(e.target.value)}
          />
        </label>
        <label className="text-sm">
          <span className="text-xs font-semibold text-slate-600">Gender</span>
          <select
            className="input mt-1"
            value={gender}
            onChange={(e) => setGender(e.target.value as typeof gender)}
          >
            <option value="all">All</option>
            <option value="male">Male</option>
            <option value="female">Female</option>
            <option value="other">Other / unspecified</option>
          </select>
        </label>
        <label className="text-sm">
          <span className="text-xs font-semibold text-slate-600">Team</span>
          <select
            className="input mt-1"
            value={teamFilter}
            onChange={(e) => setTeamFilter(e.target.value)}
          >
            <option value="all">All teams</option>
            {allTeams.map((t) => (
              <option key={t.id} value={t.id}>{t.name}</option>
            ))}
          </select>
        </label>
        <label className="mt-1 flex items-center gap-2 text-xs font-semibold text-slate-600 md:col-span-4">
          <input type="checkbox" checked={inactive} onChange={(e) => setInactive(e.target.checked)} />
          Include inactive members
        </label>
      </div>

      {error && (
        <p className="mt-3 text-sm text-red-700">Error: {error}</p>
      )}

      {/* Spreadsheet */}
      <div className="mt-4 overflow-x-auto rounded border border-slate-200">
        <table className="min-w-full text-sm">
          <thead className="bg-slate-50 text-left text-xs font-semibold uppercase tracking-wider text-slate-600">
            <tr>
              <th className="px-3 py-2">Name</th>
              <th className="px-3 py-2">Gender</th>
              <th className="px-3 py-2">Age</th>
              <th className="px-3 py-2">Shirt</th>
              <th className="px-3 py-2">Teams / Groups</th>
              <th className="px-3 py-2">Email</th>
              <th className="px-3 py-2">Phone</th>
              <th className="px-3 py-2">Family</th>
              <th className="px-3 py-2">Opt-in</th>
            </tr>
          </thead>
          <tbody>
            {loading ? (
              <tr><td colSpan={9} className="px-3 py-6 text-center text-slate-500">Loading…</td></tr>
            ) : filtered.length === 0 ? (
              <tr><td colSpan={9} className="px-3 py-6 text-center text-slate-500">No matching members.</td></tr>
            ) : (
              filtered.map((r) => <MemberRowView key={r.id} r={r} />)
            )}
          </tbody>
        </table>
      </div>
    </div>
  );
}

function MemberRowView({ r }: { r: MemberRow }) {
  return (
    <tr className="border-t border-slate-100 hover:bg-slate-50">
      <td className="px-3 py-2 font-semibold text-navy">
        <Link to={`/players/${r.id}`} className="hover:underline">{r.full_name}</Link>
        {r.active === false && (
          <span className="ml-2 rounded bg-slate-200 px-1.5 py-0.5 text-[10px] font-semibold uppercase text-slate-600">inactive</span>
        )}
      </td>
      <td className="px-3 py-2 capitalize text-slate-700">{r.gender ?? '—'}</td>
      <td className="px-3 py-2 text-slate-700">{r.age ?? '—'}</td>
      <td className="px-3 py-2 text-slate-700">{r.shirt_number ?? '—'}</td>
      <td className="px-3 py-2">
        {r.teams.length === 0 ? (
          <span className="text-xs text-slate-400">—</span>
        ) : (
          <div className="flex flex-wrap gap-1">
            {r.teams.map((t) => (
              <Link
                key={t.id}
                to={`/teams/${t.slug}`}
                className={`rounded px-1.5 py-0.5 text-[11px] font-semibold ${
                  t.is_primary ? 'bg-gold text-navy' : 'bg-slate-200 text-slate-700'
                } hover:brightness-95`}
                title={t.is_primary ? 'Primary team' : ''}
              >
                {t.name}
              </Link>
            ))}
          </div>
        )}
      </td>
      <td className="px-3 py-2 text-xs text-slate-600">
        {r.email ? <a className="hover:underline" href={`mailto:${r.email}`}>{r.email}</a> : '—'}
      </td>
      <td className="px-3 py-2 text-xs text-slate-600">
        {r.phone ? <a className="hover:underline" href={`tel:${r.phone}`}>{r.phone}</a> : '—'}
      </td>
      <td className="px-3 py-2 text-xs text-slate-600">{r.family_code ?? '—'}</td>
      <td className="px-3 py-2">
        {r.season_opt_in === 'In' && <span className="rounded bg-emerald-100 px-1.5 py-0.5 text-[10px] font-semibold uppercase text-emerald-700">In</span>}
        {r.season_opt_in === 'Out' && <span className="rounded bg-red-100 px-1.5 py-0.5 text-[10px] font-semibold uppercase text-red-700">Out</span>}
        {!r.season_opt_in && <span className="text-xs text-slate-400">—</span>}
      </td>
    </tr>
  );
}


