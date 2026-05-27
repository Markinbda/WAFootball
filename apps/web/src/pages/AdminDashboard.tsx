import { useEffect, useMemo, useState } from 'react';
import { Link, useSearchParams } from 'react-router-dom';
import { getSupabase } from '@/lib/supabase';
import { useAuth } from '@/auth/AuthProvider';

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
        {tab === 'players' && <PlayerForm teams={teams} />}
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

function PlayerForm({ teams }: { teams: TeamOption[] }) {
  const sb = getSupabase()!;
  const [teamId, setTeamId] = useState('');
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


