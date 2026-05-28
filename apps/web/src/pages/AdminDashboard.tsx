import { useEffect, useMemo, useState } from 'react';
import { Link, useSearchParams } from 'react-router-dom';
import { getSupabase } from '@/lib/supabase';
import { useAuth } from '@/auth/AuthProvider';
import { usePlayers } from '@/data/phase3';

type TeamOption = { id: string; name: string };
type AdminTab = 'news' | 'fixture' | 'players' | 'teams' | 'training' | 'gallery' | 'sponsors' | 'coaches';

const VALID_TABS: AdminTab[] = ['news', 'fixture', 'players', 'teams', 'training', 'gallery', 'sponsors', 'coaches'];

export function AdminDashboard() {
  const { roles } = useAuth();
  const sb = getSupabase();
  const isAdmin = roles.includes('admin');
  const [searchParams, setSearchParams] = useSearchParams();

  const [teams, setTeams] = useState<TeamOption[]>([]);
  const initialTab = (searchParams.get('section') as AdminTab) ?? 'news';
  const [tab, setTab] = useState<AdminTab>(VALID_TABS.includes(initialTab) ? initialTab : 'news');

  // Sync tab → URL so the section is shareable / back-button friendly.
  useEffect(() => {
    if (searchParams.get('section') !== tab) {
      const next = new URLSearchParams(searchParams);
      next.set('section', tab);
      setSearchParams(next, { replace: true });
    }
  }, [tab, searchParams, setSearchParams]);

  // If the URL changes externally (e.g. user clicks a Coach Dashboard tile),
  // reflect that in the active tab.
  useEffect(() => {
    const fromUrl = searchParams.get('section') as AdminTab | null;
    if (fromUrl && VALID_TABS.includes(fromUrl) && fromUrl !== tab) {
      setTab(fromUrl);
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [searchParams]);

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
          onClick={() => setTab('players')}
          className={`px-4 py-2 text-sm font-semibold ${tab === 'players' ? 'border-b-2 border-navy text-navy' : 'text-slate-500'}`}
        >
          Players
        </button>
        <button
          onClick={() => setTab('teams')}
          className={`px-4 py-2 text-sm font-semibold ${tab === 'teams' ? 'border-b-2 border-navy text-navy' : 'text-slate-500'}`}
        >
          Team photos
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
        {tab === 'players' && <PlayersPanel teams={teams} />}
        {tab === 'teams' && <TeamPhotoForm teams={teams} />}
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

function PlayersPanel({ teams }: { teams: TeamOption[] }) {
  const [teamId, setTeamId] = useState<string>('');

  // Default selection to first team once teams arrive.
  useEffect(() => {
    if (!teamId && teams.length > 0) setTeamId(teams[0].id);
  }, [teams, teamId]);

  const { players, loading, reload } = usePlayers(teamId || undefined);
  const sorted = [...players].sort((a, b) => {
    const an = a.squad_number ?? 9999;
    const bn = b.squad_number ?? 9999;
    if (an !== bn) return an - bn;
    return a.full_name.localeCompare(b.full_name);
  });

  return (
    <div className="space-y-6">
      <div className="card max-w-2xl p-6">
        <h2 className="text-xl font-semibold">Squad</h2>
        <p className="mt-1 text-sm text-slate-600">
          Pick a team to view its current players. Click any player to open the full
          profile, including parental contact information.
        </p>
        <div className="mt-4">
          <Field label="Team">
            <select
              value={teamId}
              onChange={(e) => setTeamId(e.target.value)}
              className="input"
            >
              {teams.length === 0 && <option value="">No teams yet</option>}
              {teams.map((t) => (
                <option key={t.id} value={t.id}>{t.name}</option>
              ))}
            </select>
          </Field>
        </div>

        <div className="mt-5">
          {loading ? (
            <p className="text-sm text-slate-500">Loading squad…</p>
          ) : sorted.length === 0 ? (
            <p className="text-sm text-slate-500">No players on this team yet.</p>
          ) : (
            <ul className="divide-y divide-slate-100 rounded border border-slate-200">
              {sorted.map((p) => (
                <li key={p.id}>
                  <Link
                    to={`/players/${p.id}`}
                    className="flex items-center gap-3 px-3 py-2 text-sm hover:bg-slate-50"
                  >
                    <span className="grid h-7 w-7 shrink-0 place-items-center rounded-full bg-gold font-display text-xs text-navy">
                      {p.squad_number ?? '—'}
                    </span>
                    <span className="flex-1 font-semibold text-navy">{p.full_name}</span>
                    <span className="text-xs uppercase tracking-wider text-slate-500">
                      {p.position ?? '—'}
                    </span>
                    {!p.active && (
                      <span className="rounded bg-slate-200 px-1.5 py-0.5 text-[10px] font-semibold uppercase text-slate-600">
                        Inactive
                      </span>
                    )}
                  </Link>
                </li>
              ))}
            </ul>
          )}
        </div>
      </div>

      <PlayerForm teams={teams} teamId={teamId} onTeamChange={setTeamId} onCreated={reload} />
    </div>
  );
}

function PlayerForm({
  teams,
  teamId: teamIdProp,
  onTeamChange,
  onCreated,
}: {
  teams: TeamOption[];
  teamId?: string;
  onTeamChange?: (id: string) => void;
  onCreated?: () => void;
}) {
  const sb = getSupabase()!;
  const [teamIdLocal, setTeamIdLocal] = useState('');
  const teamId = teamIdProp ?? teamIdLocal;
  const setTeamId = onTeamChange ?? setTeamIdLocal;
  const [fullName, setFullName] = useState('');
  const [position, setPosition] = useState('');
  const [squadNumber, setSquadNumber] = useState('');
  const [bio, setBio] = useState('');
  const [file, setFile] = useState<File | null>(null);
  const [busy, setBusy] = useState(false);
  const [status, setStatus] = useState<string | null>(null);

  async function submit(e: React.FormEvent) {
    e.preventDefault();
    if (!teamId) return;
    setBusy(true); setStatus(null);
    let photo_url: string | null = null;
    if (file) {
      const ext = file.name.split('.').pop() ?? 'jpg';
      const path = `${teamId}/${crypto.randomUUID()}.${ext}`;
      const { error: upErr } = await sb.storage
        .from('player-photos')
        .upload(path, file, { upsert: false, contentType: file.type });
      if (upErr) {
        setStatus(`Upload error: ${upErr.message}`);
        setBusy(false);
        return;
      }
      photo_url = sb.storage.from('player-photos').getPublicUrl(path).data.publicUrl;
    }
    const { error } = await sb.from('players').insert({
      team_id: teamId,
      full_name: fullName,
      position: position || null,
      squad_number: squadNumber ? Number(squadNumber) : null,
      bio: bio || null,
      photo_url,
      active: true,
    });
    setBusy(false);
    if (error) setStatus(`Error: ${error.message}`);
    else {
      setStatus('Player added.');
      setFullName(''); setPosition(''); setSquadNumber(''); setBio(''); setFile(null);
      onCreated?.();
    }
  }

  return (
    <form onSubmit={submit} className="card max-w-2xl space-y-4 p-6">
      <h2 className="text-xl font-semibold">Add a player</h2>
      {teams.length === 0 && (
        <p className="rounded bg-amber-50 p-3 text-sm text-amber-800">
          No teams in database. Add teams first.
        </p>
      )}
      <Field label="Team">
        <select required value={teamId} onChange={(e) => setTeamId(e.target.value)} className="input">
          <option value="">Select…</option>
          {teams.map((t) => <option key={t.id} value={t.id}>{t.name}</option>)}
        </select>
      </Field>
      <Field label="Full name">
        <input required value={fullName} onChange={(e) => setFullName(e.target.value)} className="input" />
      </Field>
      <div className="grid grid-cols-2 gap-4">
        <Field label="Position">
          <select value={position} onChange={(e) => setPosition(e.target.value)} className="input">
            <option value="">—</option>
            <option>Goalkeeper</option>
            <option>Defender</option>
            <option>Midfielder</option>
            <option>Forward</option>
          </select>
        </Field>
        <Field label="Squad number">
          <input
            value={squadNumber}
            onChange={(e) => setSquadNumber(e.target.value)}
            className="input"
            inputMode="numeric"
          />
        </Field>
      </div>
      <Field label="Bio">
        <textarea value={bio} onChange={(e) => setBio(e.target.value)} className="input" rows={3} />
      </Field>
      <Field label="Photo (optional)">
        <input
          type="file"
          accept="image/*"
          onChange={(e) => setFile(e.target.files?.[0] ?? null)}
          className="block w-full text-sm text-slate-600 file:mr-3 file:rounded file:border-0 file:bg-navy file:px-3 file:py-2 file:text-sm file:font-semibold file:text-white hover:file:bg-navy-600"
        />
      </Field>
      {status && (
        <p className={`text-sm ${status.startsWith('Error') || status.startsWith('Upload') ? 'text-red-700' : 'text-pitch'}`}>
          {status}
        </p>
      )}
      <button type="submit" className="btn-primary" disabled={busy}>
        {busy ? 'Saving…' : 'Add player'}
      </button>
    </form>
  );
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
  avatarUrl: string | null;
  title: string | null;
  bio: string | null;
  phone: string | null;
  teams: { id: string; name: string; slug: string }[];
};

type ProfileOption = {
  id: string;
  display_name: string;
  avatar_url: string | null;
  title: string | null;
  bio: string | null;
  phone: string | null;
};

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
    try {
      const [{ data: tc, error: tcErr }, { data: prof, error: profErr }] = await Promise.all([
        sb
          .from('team_coaches')
          .select('team_id, user_id, created_at, teams:teams(id,name,slug)')
          .order('created_at', { ascending: true }),
        sb
          .from('profiles')
          .select('id, display_name, avatar_url, title, bio, phone')
          .order('display_name'),
      ]);
      if (tcErr) {
        setStatus(`Error loading coaches: ${tcErr.message}`);
        return;
      }
      if (profErr) console.error('[CoachesForm profiles]', profErr);
      setRows((tc ?? []) as unknown as CoachAssignmentRow[]);
      setProfiles((prof ?? []) as ProfileOption[]);
    } catch (e) {
      console.error('[CoachesForm load] threw', e);
    } finally {
      setLoading(false);
    }
  }

  useEffect(() => {
    void load();
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  const groups: CoachGroup[] = useMemo(() => {
    const profById = new Map(profiles.map((p) => [p.id, p]));
    const byUser = new Map<string, CoachGroup>();
    for (const r of rows) {
      if (!r.user_id) continue;
      const p = profById.get(r.user_id);
      const g = byUser.get(r.user_id) ?? {
        userId: r.user_id,
        displayName: p?.display_name ?? '(unknown user)',
        avatarUrl: p?.avatar_url ?? null,
        title: p?.title ?? null,
        bio: p?.bio ?? null,
        phone: p?.phone ?? null,
        teams: [],
      };
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
      <InviteCoachForm teams={teams} onInvited={load} />

      <form onSubmit={addAssignment} className="card max-w-2xl space-y-4 p-6">
        <h2 className="text-xl font-semibold">Assign an existing user as coach</h2>
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
              onSaved={load}
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
  onSaved,
}: {
  group: CoachGroup;
  allTeams: TeamOption[];
  onRemove: (teamId: string) => void;
  onAddTeam: (teamId: string) => void;
  onSaved: () => Promise<void> | void;
}) {
  const [extraTeam, setExtraTeam] = useState('');
  const [editing, setEditing] = useState(false);
  const availableTeams = useMemo(() => {
    const taken = new Set(group.teams.map((t) => t.id));
    return allTeams.filter((t) => !taken.has(t.id));
  }, [allTeams, group.teams]);

  return (
    <li className="py-4">
      <div className="flex flex-wrap items-center justify-between gap-3">
        <div className="flex items-center gap-3">
          {group.avatarUrl ? (
            <img
              src={group.avatarUrl}
              alt=""
              className="h-10 w-10 rounded-full border border-slate-200 object-cover"
            />
          ) : (
            <div
              className="grid h-10 w-10 place-items-center rounded-full bg-slate-200 text-xs font-semibold text-slate-600"
              aria-hidden
            >
              {group.displayName
                .split(' ')
                .map((s) => s[0])
                .slice(0, 2)
                .join('')
                .toUpperCase()}
            </div>
          )}
          <div>
            <div className="font-semibold text-navy">{group.displayName}</div>
            {group.title && <div className="text-xs text-slate-600">{group.title}</div>}
            <div className="text-[10px] text-slate-400">{group.userId}</div>
          </div>
        </div>
        <div className="flex gap-2">
          <button
            type="button"
            onClick={() => setEditing((v) => !v)}
            className="rounded border border-slate-300 px-3 py-1 text-xs font-semibold text-slate-700 hover:bg-slate-100"
          >
            {editing ? 'Close' : 'Edit details'}
          </button>
          <Link
            to={`/coach?as=${group.userId}`}
            className="rounded border border-navy px-3 py-1 text-xs font-semibold text-navy hover:bg-navy hover:text-white"
          >
            Emulate
          </Link>
        </div>
      </div>

      {editing && <CoachDetailsEditor group={group} onSaved={async () => { await onSaved(); setEditing(false); }} />}

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

// ===================================================================
// Invite-a-new-coach form (calls the `invite-coach` Edge Function)
// ===================================================================
function InviteCoachForm({
  teams,
  onInvited,
}: {
  teams: TeamOption[];
  onInvited: () => Promise<void> | void;
}) {
  const sb = getSupabase()!;
  const [email, setEmail] = useState('');
  const [displayName, setDisplayName] = useState('');
  const [title, setTitle] = useState('');
  const [teamId, setTeamId] = useState('');
  const [busy, setBusy] = useState(false);
  const [status, setStatus] = useState<string | null>(null);

  async function onSubmit(e: React.FormEvent) {
    e.preventDefault();
    if (!email.trim() || !displayName.trim()) return;
    setBusy(true);
    setStatus(null);
    try {
      // Hard timeout — don't let the UI hang forever if the function stalls.
      const invokePromise = sb.functions.invoke('invite-coach', {
        body: {
          email: email.trim().toLowerCase(),
          display_name: displayName.trim(),
          title: title.trim() || undefined,
          team_id: teamId || undefined,
          redirect_to: `${window.location.origin}/login`,
        },
      });
      const timeoutPromise = new Promise<never>((_, reject) =>
        setTimeout(() => reject(new Error('Request timed out after 30s')), 30_000),
      );
      const { data, error } = (await Promise.race([invokePromise, timeoutPromise])) as Awaited<typeof invokePromise>;
      if (error) {
        // Try to surface the function's JSON error body even on non-2xx.
        let detail = error.message;
        const ctx = (error as { context?: { body?: unknown } }).context;
        if (ctx?.body) {
          try {
            const parsed = typeof ctx.body === 'string' ? JSON.parse(ctx.body) : ctx.body;
            if (parsed && typeof parsed === 'object' && 'error' in parsed) {
              detail = String((parsed as { error: unknown }).error);
            }
          } catch { /* ignore */ }
        }
        setStatus(`Invite failed: ${detail}`);
        return;
      }
      const body = data as {
        ok?: boolean;
        error?: string;
        invited?: boolean;
        resent?: boolean;
        email_sent?: boolean;
        email_note?: string | null;
      } | null;
      if (!body?.ok) {
        setStatus(`Invite failed: ${body?.error ?? 'unknown error'}`);
        return;
      }
      const base = body.invited
        ? `Invite sent to ${email}. They will receive a magic-link email.`
        : body.resent
          ? `User ${email} already existed — a fresh sign-in link has been re-sent and coach role granted.`
          : `User ${email} already existed — profile updated and coach role granted (no email re-sent).`;
      setStatus(body.email_note ? `${base}\n\n⚠ ${body.email_note}` : base);
      setEmail('');
      setDisplayName('');
      setTitle('');
      setTeamId('');
      await onInvited();
    } catch (err) {
      const msg = err instanceof Error ? err.message : String(err);
      setStatus(`Invite failed: ${msg}`);
    } finally {
      setBusy(false);
    }
  }

  return (
    <form onSubmit={onSubmit} className="card max-w-2xl space-y-4 p-6">
      <div>
        <h2 className="text-xl font-semibold">Invite a new coach</h2>
        <p className="mt-1 text-sm text-slate-600">
          Sends a magic-link invite to the email you provide. On first sign-in
          they will land on the site already promoted to coach. Run after
          deploying the <code>invite-coach</code> Edge Function.
        </p>
      </div>
      <div className="grid gap-4 sm:grid-cols-2">
        <Field label="Email">
          <input
            type="email"
            required
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            className="input"
            placeholder="coach@example.com"
          />
        </Field>
        <Field label="Display name">
          <input
            type="text"
            required
            value={displayName}
            onChange={(e) => setDisplayName(e.target.value)}
            className="input"
            placeholder="Richard Todd"
          />
        </Field>
        <Field label="Title (optional)">
          <input
            type="text"
            value={title}
            onChange={(e) => setTitle(e.target.value)}
            className="input"
            placeholder="Head Coach U-15"
          />
        </Field>
        <Field label="Assign to team (optional)">
          <select value={teamId} onChange={(e) => setTeamId(e.target.value)} className="input">
            <option value="">— None —</option>
            {teams.map((t) => (
              <option key={t.id} value={t.id}>
                {t.name}
              </option>
            ))}
          </select>
        </Field>
      </div>
      {status && (
        <p className={`whitespace-pre-line text-sm ${status.startsWith('Invite failed') ? 'text-red-700' : 'text-pitch'}`}>
          {status}
        </p>
      )}
      <button type="submit" className="btn-primary" disabled={busy}>
        {busy ? 'Sending invite…' : 'Send invite'}
      </button>
    </form>
  );
}

// ===================================================================
// Per-coach details editor (avatar + title + bio + phone)
// ===================================================================
function CoachDetailsEditor({
  group,
  onSaved,
}: {
  group: CoachGroup;
  onSaved: () => Promise<void> | void;
}) {
  const sb = getSupabase()!;
  const [displayName, setDisplayName] = useState(group.displayName);
  const [title, setTitle] = useState(group.title ?? '');
  const [bio, setBio] = useState(group.bio ?? '');
  const [phone, setPhone] = useState(group.phone ?? '');
  const [file, setFile] = useState<File | null>(null);
  const [busy, setBusy] = useState(false);
  const [status, setStatus] = useState<string | null>(null);

  async function onSubmit(e: React.FormEvent) {
    e.preventDefault();
    setBusy(true);
    setStatus(null);
    try {
      let avatar_url: string | null | undefined = undefined; // undefined = leave unchanged
      if (file) {
        const ext = file.name.split('.').pop() ?? 'jpg';
        const path = `${group.userId}/${crypto.randomUUID()}.${ext}`;
        const { error: upErr } = await sb.storage
          .from('avatars')
          .upload(path, file, { upsert: true, contentType: file.type });
        if (upErr) {
          setStatus(`Upload failed: ${upErr.message}`);
          setBusy(false);
          return;
        }
        avatar_url = sb.storage.from('avatars').getPublicUrl(path).data.publicUrl;
      }
      const patch: Record<string, unknown> = {
        display_name: displayName.trim() || group.displayName,
        title: title.trim() || null,
        bio: bio.trim() || null,
        phone: phone.trim() || null,
        updated_at: new Date().toISOString(),
      };
      if (avatar_url !== undefined) patch.avatar_url = avatar_url;
      const { error } = await sb.from('profiles').update(patch).eq('id', group.userId);
      if (error) {
        setStatus(`Save failed: ${error.message}`);
        return;
      }
      setStatus('Saved.');
      await onSaved();
    } catch (err) {
      const msg = err instanceof Error ? err.message : String(err);
      setStatus(`Save failed: ${msg}`);
    } finally {
      setBusy(false);
    }
  }

  return (
    <form onSubmit={onSubmit} className="mt-4 space-y-3 rounded-lg border border-slate-200 bg-slate-50 p-4">
      <div className="grid gap-3 sm:grid-cols-2">
        <Field label="Display name">
          <input
            type="text"
            value={displayName}
            onChange={(e) => setDisplayName(e.target.value)}
            className="input"
          />
        </Field>
        <Field label="Title">
          <input
            type="text"
            value={title}
            onChange={(e) => setTitle(e.target.value)}
            className="input"
            placeholder="e.g. Head Coach U-15"
          />
        </Field>
        <Field label="Phone">
          <input
            type="tel"
            value={phone}
            onChange={(e) => setPhone(e.target.value)}
            className="input"
            placeholder="+1 441 …"
          />
        </Field>
        <Field label="Profile photo">
          <input
            type="file"
            accept="image/*"
            onChange={(e) => setFile(e.target.files?.[0] ?? null)}
            className="block w-full text-sm"
          />
        </Field>
      </div>
      <Field label="Bio">
        <textarea
          value={bio}
          onChange={(e) => setBio(e.target.value)}
          className="input min-h-[80px]"
          placeholder="Short bio — kept admin-only on the public site."
        />
      </Field>
      {status && (
        <p className={`text-sm ${status.startsWith('Save failed') || status.startsWith('Upload') ? 'text-red-700' : 'text-pitch'}`}>
          {status}
        </p>
      )}
      <div className="flex justify-end">
        <button type="submit" className="btn-primary" disabled={busy}>
          {busy ? 'Saving…' : 'Save details'}
        </button>
      </div>
    </form>
  );
}


