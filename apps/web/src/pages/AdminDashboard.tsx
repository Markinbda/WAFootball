import { useEffect, useState } from 'react';
import { getSupabase } from '@/lib/supabase';
import { useAuth } from '@/auth/AuthProvider';

type TeamOption = { id: string; name: string };

export function AdminDashboard() {
  const { roles } = useAuth();
  const sb = getSupabase();
  const isAdmin = roles.includes('admin');

  const [teams, setTeams] = useState<TeamOption[]>([]);
  const [tab, setTab] = useState<'news' | 'fixture' | 'players'>('news');

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
      </div>

      <div className="mt-6">
        {tab === 'news' && <NewsForm />}
        {tab === 'fixture' && <FixtureForm teams={teams} />}
        {tab === 'players' && <PlayerForm teams={teams} />}
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

