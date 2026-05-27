import { useEffect, useState } from 'react';
import { Link, useParams } from 'react-router-dom';
import { usePlayerProfile, usePlayerGuardians, type PlayerGuardian } from '@/data/phase4';
import { useAuth } from '@/auth/AuthProvider';
import { getSupabase } from '@/lib/supabase';

export function PlayerProfile() {
  const { id } = useParams<{ id: string }>();
  const { player, events, stats, loading } = usePlayerProfile(id);

  if (loading) return <div className="container-page py-12">Loading…</div>;
  if (!player) {
    return (
      <div className="container-page py-20 text-center">
        <h1 className="text-3xl">Player not found</h1>
        <Link to="/teams" className="mt-4 inline-block btn-primary">All teams</Link>
      </div>
    );
  }

  return (
    <>
      <section className="bg-navy text-white">
        <div className="container-page grid gap-8 py-10 md:grid-cols-[200px_1fr]">
          <div className="aspect-square w-full overflow-hidden rounded-lg bg-white/10">
            {player.photo_url ? (
              <img src={player.photo_url} alt={player.full_name} className="h-full w-full object-cover" />
            ) : (
              <div className="grid h-full w-full place-items-center font-display text-6xl text-white/40">
                {player.full_name.split(' ').map((s) => s[0]).slice(0, 2).join('')}
              </div>
            )}
          </div>
          <div>
            {player.team_slug && (
              <Link to={`/teams/${player.team_slug}`} className="text-xs font-semibold uppercase tracking-widest text-gold hover:underline">
                ← {player.team_name}
              </Link>
            )}
            <h1 className="mt-2 text-5xl text-white">{player.full_name}</h1>
            <div className="mt-2 flex flex-wrap gap-2 text-sm">
              {player.squad_number != null && (
                <span className="rounded bg-gold px-2 py-1 font-display text-navy">#{player.squad_number}</span>
              )}
              {player.position && (
                <span className="rounded bg-white/20 px-2 py-1 font-semibold">{player.position}</span>
              )}
              {!player.active && (
                <span className="rounded bg-red-600 px-2 py-1 text-xs font-semibold uppercase">Inactive</span>
              )}
            </div>
            {player.bio && <p className="mt-4 max-w-2xl text-white/80">{player.bio}</p>}
          </div>
        </div>
      </section>

      <div className="container-page grid gap-8 py-10 md:grid-cols-4">
        <Stat label="Goals" value={stats.goals} tone="text-pitch" />
        <Stat label="Appearances" value={stats.appearances} />
        <Stat label="Yellow Cards" value={stats.yellows} tone="text-yellow-600" />
        <Stat label="Red Cards" value={stats.reds} tone="text-red-700" />
      </div>

      <SeasonChart events={events} />

      <GuardiansSection playerId={player.id} teamId={player.team_id} />

      <div className="container-page pb-16">
        <h2 className="text-2xl">Match log</h2>
        {events.length === 0 ? (
          <p className="mt-4 text-sm text-slate-500">No recorded match events yet.</p>
        ) : (
          <ul className="mt-4 space-y-2">
            {events.map((e) => (
              <li key={e.id} className="card flex items-center justify-between gap-3 p-3 text-sm">
                <div className="font-semibold text-navy">{LABEL[e.type]}</div>
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
  // Bucket by month-of-event for goals, yellows, reds.
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
            const label = new Date(Number(y), Number(m) - 1, 1)
              .toLocaleDateString('en-GB', { month: 'short' });
            const h = (n: number) => `${(n / max) * 140}px`;
            return (
              <div key={key} className="flex w-12 shrink-0 flex-col items-center">
                <div className="flex h-[160px] w-8 flex-col justify-end overflow-hidden rounded">
                  {v.reds > 0 && (
                    <div className="w-full bg-red-600" style={{ height: h(v.reds) }} title={`${v.reds} red`} />
                  )}
                  {v.yellows > 0 && (
                    <div className="w-full bg-yellow-500" style={{ height: h(v.yellows) }} title={`${v.yellows} yellow`} />
                  )}
                  {v.goals > 0 && (
                    <div className="w-full bg-pitch" style={{ height: h(v.goals) }} title={`${v.goals} goals`} />
                  )}
                </div>
                <div className="mt-1 font-mono text-[10px] text-slate-500">{label}</div>
              </div>
            );
          })}
        </div>
        <div className="mt-4 flex gap-4 text-xs text-slate-600">
          <span className="flex items-center gap-1.5"><span className="h-3 w-3 rounded bg-pitch" /> Goals</span>
          <span className="flex items-center gap-1.5"><span className="h-3 w-3 rounded bg-yellow-500" /> Yellows</span>
          <span className="flex items-center gap-1.5"><span className="h-3 w-3 rounded bg-red-600" /> Reds</span>
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

// ---------------------------------------------------------------------------
// Guardians (parental contacts) — visible to admin / coach of player's team
// ---------------------------------------------------------------------------
function GuardiansSection({ playerId, teamId }: { playerId: string; teamId: string }) {
  const { roles, user } = useAuth();
  const sb = getSupabase();
  const [isTeamCoach, setIsTeamCoach] = useState(false);
  const { guardians, loading, reload } = usePlayerGuardians(playerId);

  useEffect(() => {
    if (!sb || !user) { setIsTeamCoach(false); return; }
    let active = true;
    (async () => {
      const { data } = await sb
        .from('team_coaches')
        .select('team_id')
        .eq('team_id', teamId)
        .eq('user_id', user.id)
        .maybeSingle();
      if (active) setIsTeamCoach(!!data);
    })();
    return () => { active = false; };
  }, [sb, user, teamId]);

  const canEdit = roles.includes('admin') || isTeamCoach;
  const canSee  = canEdit; // RLS will also block non-authorized viewers

  if (!canSee) return null;

  return (
    <div className="container-page pb-6">
      <h2 className="text-2xl">Parents &amp; guardians</h2>
      <p className="mt-1 text-sm text-slate-500">
        Contact details for this player\u2019s parents or guardians. Visible to coaches and admins only.
      </p>

      {loading ? (
        <p className="mt-4 text-sm text-slate-500">Loading\u2026</p>
      ) : guardians.length === 0 ? (
        <p className="mt-4 text-sm text-slate-500">No guardians on file yet.</p>
      ) : (
        <ul className="mt-4 grid gap-3 md:grid-cols-2">
          {guardians.map((g) => (
            <GuardianCard key={g.id} g={g} canEdit={canEdit} onChanged={reload} />
          ))}
        </ul>
      )}
      {canEdit && <AddGuardianForm playerId={playerId} onAdded={reload} />}
    </div>
  );
}

function GuardianCard({
  g,
  canEdit,
  onChanged,
}: {
  g: PlayerGuardian;
  canEdit: boolean;
  onChanged: () => void;
}) {
  const sb = getSupabase();
  async function remove() {
    if (!sb) return;
    if (!confirm(`Remove ${g.guardian_name ?? 'this guardian'}?`)) return;
    await sb.from('player_guardians').delete().eq('id', g.id);
    onChanged();
  }
  return (
    <li className="card p-4 text-sm">
      <div className="flex items-start justify-between gap-2">
        <div>
          <div className="font-display text-lg text-navy">{g.guardian_name ?? 'Guardian'}</div>
          <div className="text-xs uppercase tracking-wider text-slate-500">
            {g.relationship ?? 'parent'}
          </div>
        </div>
        {canEdit && (
          <button
            onClick={remove}
            className="text-xs font-semibold text-red-700 hover:underline"
            type="button"
          >
            Remove
          </button>
        )}
      </div>
      <dl className="mt-3 space-y-1 text-slate-700">
        {g.guardian_phone && (
          <div className="flex gap-2"><dt className="w-14 text-slate-500">Phone</dt>
            <dd><a className="hover:underline" href={`tel:${g.guardian_phone}`}>{g.guardian_phone}</a></dd>
          </div>
        )}
        {g.guardian_email && (
          <div className="flex gap-2"><dt className="w-14 text-slate-500">Email</dt>
            <dd><a className="hover:underline" href={`mailto:${g.guardian_email}`}>{g.guardian_email}</a></dd>
          </div>
        )}
        {g.notes && (
          <div className="flex gap-2"><dt className="w-14 text-slate-500">Notes</dt>
            <dd>{g.notes}</dd>
          </div>
        )}
      </dl>
    </li>
  );
}

function AddGuardianForm({ playerId, onAdded }: { playerId: string; onAdded: () => void }) {
  const sb = getSupabase();
  const [open, setOpen] = useState(false);
  const [name, setName] = useState('');
  const [relationship, setRelationship] = useState('parent');
  const [email, setEmail] = useState('');
  const [phone, setPhone] = useState('');
  const [notes, setNotes] = useState('');
  const [busy, setBusy] = useState(false);
  const [status, setStatus] = useState<string | null>(null);

  if (!open) {
    return (
      <button
        type="button"
        onClick={() => setOpen(true)}
        className="mt-4 btn-primary"
      >
        Add guardian
      </button>
    );
  }

  async function submit(e: React.FormEvent) {
    e.preventDefault();
    if (!sb) return;
    setBusy(true); setStatus(null);
    const { error } = await sb.from('player_guardians').insert({
      player_id: playerId,
      user_id: null,
      relationship: relationship || 'parent',
      guardian_name: name || null,
      guardian_email: email || null,
      guardian_phone: phone || null,
      notes: notes || null,
    });
    setBusy(false);
    if (error) { setStatus(`Error: ${error.message}`); return; }
    setName(''); setEmail(''); setPhone(''); setNotes(''); setRelationship('parent');
    setOpen(false);
    onAdded();
  }

  return (
    <form onSubmit={submit} className="card mt-4 max-w-2xl space-y-3 p-5">
      <h3 className="font-display text-lg text-navy">Add guardian</h3>
      <div className="grid gap-3 md:grid-cols-2">
        <label className="block text-sm">
          <span className="font-semibold text-slate-700">Name</span>
          <input className="input mt-1" required value={name} onChange={(e) => setName(e.target.value)} />
        </label>
        <label className="block text-sm">
          <span className="font-semibold text-slate-700">Relationship</span>
          <select className="input mt-1" value={relationship} onChange={(e) => setRelationship(e.target.value)}>
            <option value="parent">Parent</option>
            <option value="mother">Mother</option>
            <option value="father">Father</option>
            <option value="guardian">Guardian</option>
            <option value="grandparent">Grandparent</option>
            <option value="other">Other</option>
          </select>
        </label>
        <label className="block text-sm">
          <span className="font-semibold text-slate-700">Phone</span>
          <input className="input mt-1" type="tel" value={phone} onChange={(e) => setPhone(e.target.value)} />
        </label>
        <label className="block text-sm">
          <span className="font-semibold text-slate-700">Email</span>
          <input className="input mt-1" type="email" value={email} onChange={(e) => setEmail(e.target.value)} />
        </label>
      </div>
      <label className="block text-sm">
        <span className="font-semibold text-slate-700">Notes</span>
        <textarea className="input mt-1" rows={2} value={notes} onChange={(e) => setNotes(e.target.value)} />
      </label>
      {status && <p className="text-sm text-red-700">{status}</p>}
      <div className="flex gap-2">
        <button type="submit" className="btn-primary" disabled={busy}>{busy ? 'Saving\u2026' : 'Save guardian'}</button>
        <button type="button" className="rounded border border-slate-300 px-3 py-2 text-sm" onClick={() => setOpen(false)}>Cancel</button>
      </div>
    </form>
  );
}
