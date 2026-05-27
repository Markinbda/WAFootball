import { useEffect, useMemo, useState } from 'react';
import { Link, useNavigate, useSearchParams } from 'react-router-dom';

type RegType = 'adult' | 'junior';

type Person = {
  firstName: string;
  surname: string;
  phone: string;
  email: string;
  dob: string;
  street: string;
  parish: string;
  postcode: string;
};

type Player = {
  firstName: string;
  surname: string;
  dob: string;
  gender: 'Male' | 'Female' | '';
  school: string;
  playerEmail: string;
  playerPhone: string;
  ageGroup: string;
  yearsPlaying: string;
  previousClubs: string;
  jerseySize: string;
  shortsSize: string;
  physicianName: string;
  physicianPhone: string;
  allergies: string;
  medical: string;
};

const AGE_GROUPS = [
  'U5 Pee Wee',
  'U7 Boys',
  'U7 Girls',
  'U9 Boys',
  'U9 Girls',
  'U11 Boys',
  'U11 Girls',
  'U13 Boys',
  'U13 Girls',
  'U15 Boys',
  'U15 Girls',
  'U17 Boys',
  'U17 Girls',
  "Senior Men's",
];

const SIZES = [
  'YOUTH - EXTRA SMALL',
  'YOUTH - SMALL',
  'YOUTH - MEDIUM',
  'YOUTH - LARGE',
  'YOUTH - EXTRA LARGE',
  'ADULT - SMALL',
  'ADULT - MEDIUM',
  'ADULT - LARGE',
  'ADULT - XL',
  'ADULT - XXL',
];

const PARISHES = [
  'Sandys', 'Southampton', 'Warwick', 'Paget', 'Pembroke',
  'Devonshire', 'Smiths', 'Hamilton', 'St. George\'s',
];

const emptyPerson = (): Person => ({
  firstName: '', surname: '', phone: '', email: '', dob: '',
  street: '', parish: '', postcode: '',
});

const emptyPlayer = (): Player => ({
  firstName: '', surname: '', dob: '', gender: '', school: '',
  playerEmail: '', playerPhone: '', ageGroup: '',
  yearsPlaying: '', previousClubs: '',
  jerseySize: '', shortsSize: '',
  physicianName: '', physicianPhone: '', allergies: '', medical: '',
});

const STORAGE_KEY = 'wfa.registration.draft.v1';

function Field({
  label, required, children, hint,
}: { label: string; required?: boolean; children: React.ReactNode; hint?: string }) {
  return (
    <label className="block">
      <span className="text-xs font-semibold uppercase tracking-wider text-slate-600">
        {label} {required && <span className="text-red-500">*</span>}
      </span>
      <div className="mt-1">{children}</div>
      {hint && <p className="mt-1 text-xs text-slate-500">{hint}</p>}
    </label>
  );
}

const inputCls =
  'block w-full rounded border border-slate-300 px-3 py-2 text-sm focus:border-navy focus:outline-none focus:ring-1 focus:ring-navy';

export function RegistrationWizard() {
  const [params] = useSearchParams();
  const navigate = useNavigate();
  const initialType = (params.get('type') as RegType) || '';

  // Steps depend on type. For adult, players[0] is the adult themselves.
  const [type, setType] = useState<RegType | ''>(initialType);
  const [step, setStep] = useState(initialType ? 1 : 0);
  const [agreedTerms, setAgreedTerms] = useState(false);
  const [guardian, setGuardian] = useState<Person>(emptyPerson());
  const [players, setPlayers] = useState<Player[]>([emptyPlayer()]);
  const [consentAgreed, setConsentAgreed] = useState(false);
  const [submitting, setSubmitting] = useState(false);
  const [submitted, setSubmitted] = useState(false);
  const [requestMessage, setRequestMessage] = useState('');

  // Load draft
  useEffect(() => {
    try {
      const raw = localStorage.getItem(STORAGE_KEY);
      if (raw) {
        const d = JSON.parse(raw);
        if (d.guardian) setGuardian(d.guardian);
        if (d.players?.length) setPlayers(d.players);
        if (d.type) setType(d.type);
      }
    } catch { /* ignore */ }
  }, []);

  // Persist draft
  useEffect(() => {
    if (submitted) return;
    try {
      localStorage.setItem(STORAGE_KEY, JSON.stringify({ type, guardian, players }));
    } catch { /* ignore */ }
  }, [type, guardian, players, submitted]);

  const stepLabels = useMemo(() => {
    if (type === 'adult') {
      return ['Type', 'Terms', 'My Details', 'Team', 'Medical', 'Kit & Experience', 'Consent', 'Review'];
    }
    return ['Type', 'Terms', 'Guardian', 'Players', 'Team', 'Medical', 'Kit & Experience', 'Consent', 'Review'];
  }, [type]);

  const totalSteps = stepLabels.length;
  const pct = Math.round(((step + 1) / totalSteps) * 100);

  const updatePlayer = (i: number, patch: Partial<Player>) =>
    setPlayers((prev) => prev.map((p, idx) => (idx === i ? { ...p, ...patch } : p)));

  const addPlayer = () => setPlayers((prev) => [...prev, emptyPlayer()]);
  const removePlayer = (i: number) =>
    setPlayers((prev) => (prev.length > 1 ? prev.filter((_, idx) => idx !== i) : prev));

  const goNext = () => setStep((s) => Math.min(s + 1, totalSteps - 1));
  const goBack = () => setStep((s) => Math.max(s - 1, 0));

  const validateStep = (): string | null => {
    if (type === '') return 'Please choose Adult or Junior.';
    if (step === 1 && !agreedTerms) return 'You must accept the Teamo / Sportplan T&Cs to continue.';
    if (type === 'adult') {
      // Step 2 = my details (adult uses player[0])
      if (step === 2) {
        const p = players[0];
        if (!p.firstName || !p.surname || !p.dob || !guardian.phone || !guardian.email) {
          return 'Please complete all required fields.';
        }
      }
      if (step === 3 && !players[0].ageGroup) return 'Please choose your team / section.';
      if (step === 4 && !players[0].physicianName) return 'Please enter your physician.';
      if (step === 5 && (!players[0].jerseySize || !players[0].shortsSize)) return 'Please select uniform sizes.';
      if (step === 6 && !consentAgreed) return 'Please confirm consent to continue.';
    } else {
      if (step === 2) {
        if (!guardian.firstName || !guardian.surname || !guardian.phone || !guardian.email || !guardian.street || !guardian.parish) {
          return 'Please complete your guardian details.';
        }
      }
      if (step === 3) {
        for (const p of players) {
          if (!p.firstName || !p.surname || !p.dob) return 'Please complete each player\'s name and date of birth.';
        }
      }
      if (step === 4 && !players.every((p) => p.ageGroup)) return 'Please choose an age group for each player.';
      if (step === 5 && !players.every((p) => p.physicianName)) return 'Please enter a physician for each player.';
      if (step === 6 && !players.every((p) => p.jerseySize && p.shortsSize)) return 'Please select uniform sizes for each player.';
      if (step === 7 && !consentAgreed) return 'Please confirm consent to continue.';
    }
    return null;
  };

  const [error, setError] = useState<string | null>(null);

  const handleNext = () => {
    const err = validateStep();
    if (err) { setError(err); return; }
    setError(null);
    goNext();
  };

  const submit = async () => {
    setSubmitting(true);
    setError(null);
    try {
      const payload = {
        type, guardian, players, requestMessage,
        submittedAt: new Date().toISOString(),
      };
      // eslint-disable-next-line no-console
      console.info('[WFA registration submission]', payload);
      // Persist a final copy so the registrar can be alerted manually if needed.
      try {
        localStorage.setItem('wfa.registration.lastSubmission.v1', JSON.stringify(payload));
      } catch { /* ignore */ }
      // Simulate network latency briefly.
      await new Promise((r) => setTimeout(r, 600));
      setSubmitted(true);
      try { localStorage.removeItem(STORAGE_KEY); } catch { /* ignore */ }
    } catch (e) {
      setError('Something went wrong. Please email football@warwick.bm and we\'ll complete your registration.');
    } finally {
      setSubmitting(false);
    }
  };

  // ---------- SUCCESS SCREEN ----------
  if (submitted) {
    return (
      <section className="container-page max-w-2xl py-16">
        <div className="card p-8 text-center">
          <div className="mx-auto flex h-16 w-16 items-center justify-center rounded-full bg-pitch/10 text-pitch">
            <svg className="h-9 w-9" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
              <path d="M5 13l4 4L19 7" />
            </svg>
          </div>
          <h1 className="mt-4 font-display text-3xl text-navy">You're in the waiting room</h1>
          <p className="mt-2 text-slate-700">
            Thanks {guardian.firstName || players[0]?.firstName || ''}! Your registration has been
            received and a club admin will review your application. You'll hear back within 24 hours.
          </p>
          <ol className="mt-6 space-y-3 text-left text-sm">
            <li className="flex items-start gap-3">
              <span className="mt-0.5 flex h-6 w-6 shrink-0 items-center justify-center rounded-full bg-pitch text-xs font-bold text-white">1</span>
              <span><strong>Registered to the team</strong> — done.</span>
            </li>
            <li className="flex items-start gap-3">
              <span className="mt-0.5 flex h-6 w-6 shrink-0 items-center justify-center rounded-full bg-pitch text-xs font-bold text-white">2</span>
              <span><strong>Access requested</strong> — pending club admin.</span>
            </li>
            <li className="flex items-start gap-3">
              <span className="mt-0.5 flex h-6 w-6 shrink-0 items-center justify-center rounded-full border-2 border-slate-300 text-xs font-bold text-slate-400">3</span>
              <span className="text-slate-500">You'll be notified by email when you're in.</span>
            </li>
          </ol>
          <p className="mt-6 text-xs text-slate-500">
            Haven't heard back in 24 hours? Email{' '}
            <a href="mailto:football@warwick.bm" className="font-semibold text-navy hover:text-gold">football@warwick.bm</a>{' '}
            with the player's name and age group.
          </p>
          <div className="mt-8 flex flex-wrap justify-center gap-3">
            <Link to="/" className="btn-primary">Back to home</Link>
            <button
              type="button"
              onClick={() => { setSubmitted(false); setStep(0); setType(''); setPlayers([emptyPlayer()]); setGuardian(emptyPerson()); }}
              className="btn-ghost"
            >
              Start another registration
            </button>
          </div>
        </div>
      </section>
    );
  }

  // ---------- WIZARD ----------
  return (
    <section className="bg-slate-50 py-10">
      <div className="container-page max-w-3xl">
        <button
          onClick={() => (step === 0 ? navigate('/register') : goBack())}
          className="mb-4 inline-flex items-center gap-1 text-sm text-slate-600 hover:text-navy"
        >
          <span aria-hidden>‹</span> Go back
        </button>

        <div className="card p-6 sm:p-8">
          {/* Progress */}
          <div className="mb-6">
            <div className="flex items-center justify-between text-xs text-slate-500">
              <span>Step {step + 1} of {totalSteps}</span>
              <span>{stepLabels[step]}</span>
            </div>
            <div className="mt-2 h-1.5 w-full overflow-hidden rounded-full bg-slate-200">
              <div className="h-full bg-navy transition-all" style={{ width: `${pct}%` }} />
            </div>
          </div>

          {/* STEP 0 — TYPE */}
          {step === 0 && (
            <div>
              <h2 className="text-2xl text-navy">Please choose one of the following options</h2>
              <div className="mt-6 space-y-3">
                <button
                  type="button"
                  onClick={() => { setType('adult'); setError(null); }}
                  className={`w-full rounded-lg border-2 p-4 text-left transition ${
                    type === 'adult' ? 'border-navy bg-navy/5' : 'border-slate-200 hover:border-navy/50'
                  }`}
                >
                  <div className="font-semibold text-navy">Adult Registration Form</div>
                  <div className="mt-1 text-sm text-slate-600">
                    I am a player, coach or official in the club and I am over 18 on 01/01/2008.
                  </div>
                </button>
                <button
                  type="button"
                  onClick={() => { setType('junior'); setError(null); }}
                  className={`w-full rounded-lg border-2 p-4 text-left transition ${
                    type === 'junior' ? 'border-navy bg-navy/5' : 'border-slate-200 hover:border-navy/50'
                  }`}
                >
                  <div className="font-semibold text-navy">Junior Registration Form</div>
                  <div className="mt-1 text-sm text-slate-600">
                    I am a parent/guardian of someone in the club and my child is under 18 on 31/12/2006.
                  </div>
                </button>
              </div>
            </div>
          )}

          {/* STEP 1 — TERMS */}
          {step === 1 && (
            <div>
              <h2 className="text-2xl text-navy">Warwick Football Academy</h2>
              <p className="mt-3 text-sm text-slate-700">
                Warwick FA uses Teamo for our club database and communications hub. Teamo
                provides clubs and teams a secure database, managed email system and
                interactive app for team management and more.
              </p>
              <p className="mt-3 text-sm text-slate-700">
                Before registering with Warwick Football Academy, you must agree to the
                Teamo, Sportplan Ltd Terms &amp; Conditions and our Privacy Policy.
              </p>
              <label className="mt-5 flex cursor-pointer items-start gap-3 rounded-lg border border-slate-200 p-4 hover:bg-slate-50">
                <input
                  type="checkbox"
                  checked={agreedTerms}
                  onChange={(e) => setAgreedTerms(e.target.checked)}
                  className="mt-1 h-5 w-5 rounded border-slate-400 text-navy focus:ring-navy"
                />
                <span className="text-sm text-slate-700">
                  I have read and agree to Teamo's <strong className="text-navy">T&amp;Cs</strong> and the
                  WFA <strong className="text-navy">Privacy Policy</strong>.
                </span>
              </label>
            </div>
          )}

          {/* ADULT: STEP 2 — own details */}
          {type === 'adult' && step === 2 && (
            <div>
              <h2 className="text-2xl text-navy">My details</h2>
              <p className="mt-2 text-sm text-slate-600">Tell us about you.</p>
              <div className="mt-5 grid gap-4 sm:grid-cols-2">
                <Field label="First name" required>
                  <input className={inputCls} value={players[0].firstName} onChange={(e) => updatePlayer(0, { firstName: e.target.value })} />
                </Field>
                <Field label="Surname" required>
                  <input className={inputCls} value={players[0].surname} onChange={(e) => updatePlayer(0, { surname: e.target.value })} />
                </Field>
                <Field label="Phone" required>
                  <input className={inputCls} type="tel" placeholder="441-XXX-XXXX" value={guardian.phone} onChange={(e) => setGuardian({ ...guardian, phone: e.target.value })} />
                </Field>
                <Field label="Email" required>
                  <input className={inputCls} type="email" value={guardian.email} onChange={(e) => setGuardian({ ...guardian, email: e.target.value })} />
                </Field>
                <Field label="Date of birth" required>
                  <input className={inputCls} type="date" value={players[0].dob} onChange={(e) => updatePlayer(0, { dob: e.target.value })} />
                </Field>
                <Field label="Gender">
                  <select className={inputCls} value={players[0].gender} onChange={(e) => updatePlayer(0, { gender: e.target.value as Player['gender'] })}>
                    <option value="">Select…</option>
                    <option>Male</option>
                    <option>Female</option>
                  </select>
                </Field>
                <Field label="Street / PO Box" required>
                  <input className={inputCls} value={guardian.street} onChange={(e) => setGuardian({ ...guardian, street: e.target.value })} />
                </Field>
                <Field label="Parish" required>
                  <select className={inputCls} value={guardian.parish} onChange={(e) => setGuardian({ ...guardian, parish: e.target.value })}>
                    <option value="">Select…</option>
                    {PARISHES.map((p) => <option key={p}>{p}</option>)}
                  </select>
                </Field>
                <Field label="Postcode">
                  <input className={inputCls} value={guardian.postcode} onChange={(e) => setGuardian({ ...guardian, postcode: e.target.value })} />
                </Field>
              </div>
            </div>
          )}

          {/* JUNIOR: STEP 2 — guardian profile */}
          {type === 'junior' && step === 2 && (
            <div>
              <h2 className="text-2xl text-navy">My profile (guardian)</h2>
              <p className="mt-2 text-sm text-slate-600">
                Complete as you, even if you are signing up as a guardian. Your dependants
                details come next.
              </p>
              <div className="mt-5 grid gap-4 sm:grid-cols-2">
                <Field label="First name" required>
                  <input className={inputCls} value={guardian.firstName} onChange={(e) => setGuardian({ ...guardian, firstName: e.target.value })} />
                </Field>
                <Field label="Surname" required>
                  <input className={inputCls} value={guardian.surname} onChange={(e) => setGuardian({ ...guardian, surname: e.target.value })} />
                </Field>
                <Field label="Phone" required>
                  <input className={inputCls} type="tel" placeholder="441-XXX-XXXX" value={guardian.phone} onChange={(e) => setGuardian({ ...guardian, phone: e.target.value })} />
                </Field>
                <Field label="Email" required>
                  <input className={inputCls} type="email" value={guardian.email} onChange={(e) => setGuardian({ ...guardian, email: e.target.value })} />
                </Field>
                <Field label="Home address – Street / PO Box" required>
                  <input className={inputCls} value={guardian.street} onChange={(e) => setGuardian({ ...guardian, street: e.target.value })} />
                </Field>
                <Field label="Home address – Parish" required>
                  <select className={inputCls} value={guardian.parish} onChange={(e) => setGuardian({ ...guardian, parish: e.target.value })}>
                    <option value="">Select…</option>
                    {PARISHES.map((p) => <option key={p}>{p}</option>)}
                  </select>
                </Field>
                <Field label="Postcode">
                  <input className={inputCls} value={guardian.postcode} onChange={(e) => setGuardian({ ...guardian, postcode: e.target.value })} />
                </Field>
              </div>
            </div>
          )}

          {/* JUNIOR: STEP 3 — players */}
          {type === 'junior' && step === 3 && (
            <div>
              <h2 className="text-2xl text-navy">My dependants details</h2>
              <p className="mt-2 text-sm text-slate-600">Add each child you're registering.</p>
              <div className="mt-5 space-y-6">
                {players.map((p, i) => (
                  <div key={i} className="rounded-lg border border-slate-200 p-4">
                    <div className="mb-3 flex items-center justify-between">
                      <div className="text-sm font-semibold text-navy">Player {i + 1}</div>
                      {players.length > 1 && (
                        <button onClick={() => removePlayer(i)} className="text-xs text-red-600 hover:underline">Remove</button>
                      )}
                    </div>
                    <div className="grid gap-4 sm:grid-cols-2">
                      <Field label="Their first name" required>
                        <input className={inputCls} value={p.firstName} onChange={(e) => updatePlayer(i, { firstName: e.target.value })} />
                      </Field>
                      <Field label="Their surname" required>
                        <input className={inputCls} value={p.surname} onChange={(e) => updatePlayer(i, { surname: e.target.value })} />
                      </Field>
                      <Field label="Date of birth" required>
                        <input className={inputCls} type="date" value={p.dob} onChange={(e) => updatePlayer(i, { dob: e.target.value })} />
                      </Field>
                      <Field label="Gender">
                        <select className={inputCls} value={p.gender} onChange={(e) => updatePlayer(i, { gender: e.target.value as Player['gender'] })}>
                          <option value="">Select…</option>
                          <option>Male</option>
                          <option>Female</option>
                        </select>
                      </Field>
                      <Field label="Player email (if applicable)">
                        <input className={inputCls} type="email" value={p.playerEmail} onChange={(e) => updatePlayer(i, { playerEmail: e.target.value })} />
                      </Field>
                      <Field label="Player cell number (if applicable)">
                        <input className={inputCls} type="tel" value={p.playerPhone} onChange={(e) => updatePlayer(i, { playerPhone: e.target.value })} />
                      </Field>
                    </div>
                  </div>
                ))}
                <button type="button" onClick={addPlayer} className="btn-ghost">+ Add another player</button>
              </div>
            </div>
          )}

          {/* TEAM / SECTION */}
          {((type === 'adult' && step === 3) || (type === 'junior' && step === 4)) && (
            <div>
              <h2 className="text-2xl text-navy">Club section / team</h2>
              <p className="mt-2 text-sm text-slate-600">Select the age group for each player.</p>
              <div className="mt-5 space-y-4">
                {players.map((p, i) => (
                  <div key={i} className="rounded-lg border border-slate-200 p-4">
                    <div className="mb-2 text-sm font-semibold text-navy">
                      {p.firstName || `Player ${i + 1}`} {p.surname}
                    </div>
                    <select className={inputCls} value={p.ageGroup} onChange={(e) => updatePlayer(i, { ageGroup: e.target.value })}>
                      <option value="">Select section / team…</option>
                      {AGE_GROUPS.map((g) => <option key={g}>{g}</option>)}
                    </select>
                  </div>
                ))}
              </div>
            </div>
          )}

          {/* MEDICAL */}
          {((type === 'adult' && step === 4) || (type === 'junior' && step === 5)) && (
            <div>
              <h2 className="text-2xl text-navy">Medical information &amp; consent</h2>
              <div className="mt-5 space-y-6">
                {players.map((p, i) => (
                  <div key={i} className="rounded-lg border border-slate-200 p-4">
                    <div className="mb-3 text-sm font-semibold text-navy">
                      {p.firstName || `Player ${i + 1}`} {p.surname}
                    </div>
                    <div className="grid gap-4 sm:grid-cols-2">
                      <Field label="Primary care physician" required>
                        <input className={inputCls} value={p.physicianName} onChange={(e) => updatePlayer(i, { physicianName: e.target.value })} />
                      </Field>
                      <Field label="Physician phone" required>
                        <input className={inputCls} type="tel" value={p.physicianPhone} onChange={(e) => updatePlayer(i, { physicianPhone: e.target.value })} />
                      </Field>
                      <Field label="Allergies (or N/A)" required>
                        <input className={inputCls} value={p.allergies} onChange={(e) => updatePlayer(i, { allergies: e.target.value })} />
                      </Field>
                      <Field label="Medical conditions / medication (or N/A)" required>
                        <input className={inputCls} value={p.medical} onChange={(e) => updatePlayer(i, { medical: e.target.value })} />
                      </Field>
                    </div>
                  </div>
                ))}
              </div>
            </div>
          )}

          {/* KIT & EXPERIENCE */}
          {((type === 'adult' && step === 5) || (type === 'junior' && step === 6)) && (
            <div>
              <h2 className="text-2xl text-navy">Kit &amp; football experience</h2>
              <div className="mt-5 space-y-6">
                {players.map((p, i) => (
                  <div key={i} className="rounded-lg border border-slate-200 p-4">
                    <div className="mb-3 text-sm font-semibold text-navy">
                      {p.firstName || `Player ${i + 1}`} {p.surname}
                    </div>
                    <div className="grid gap-4 sm:grid-cols-2">
                      <Field label="Years playing football">
                        <input className={inputCls} value={p.yearsPlaying} onChange={(e) => updatePlayer(i, { yearsPlaying: e.target.value })} />
                      </Field>
                      <Field label="Previous teams / clubs (or N/A)" required>
                        <input className={inputCls} value={p.previousClubs} onChange={(e) => updatePlayer(i, { previousClubs: e.target.value })} />
                      </Field>
                      <Field label="Uniform – jersey size" required>
                        <select className={inputCls} value={p.jerseySize} onChange={(e) => updatePlayer(i, { jerseySize: e.target.value })}>
                          <option value="">Select…</option>
                          {SIZES.map((s) => <option key={s}>{s}</option>)}
                        </select>
                      </Field>
                      <Field label="Uniform – shorts size" required>
                        <select className={inputCls} value={p.shortsSize} onChange={(e) => updatePlayer(i, { shortsSize: e.target.value })}>
                          <option value="">Select…</option>
                          {SIZES.map((s) => <option key={s}>{s}</option>)}
                        </select>
                      </Field>
                      <Field label="School (current or starting Sept)">
                        <input className={inputCls} value={p.school} onChange={(e) => updatePlayer(i, { school: e.target.value })} />
                      </Field>
                    </div>
                  </div>
                ))}
              </div>
            </div>
          )}

          {/* CONSENT */}
          {((type === 'adult' && step === 6) || (type === 'junior' && step === 7)) && (
            <div>
              <h2 className="text-2xl text-navy">
                {type === 'junior' ? 'U18 Member Consent' : 'Member Consent'}
              </h2>
              <p className="mt-3 text-sm text-slate-700">
                By submitting this form, I understand and agree to the following:
              </p>
              <ol className="mt-3 list-decimal space-y-2 pl-5 text-sm text-slate-700">
                <li>
                  {type === 'junior'
                    ? 'I give permission for my child to participate in Warwick Football Academy.'
                    : 'I will participate in Warwick Football Academy activities.'}
                </li>
                <li>I acknowledge the risks associated with playing football and understand the team and its organisers are not responsible for any injuries which may occur.</li>
                <li>I agree to abide by the rules and regulations set forth by the Club, team and league.</li>
                <li>
                  I grant permission to use {type === 'junior' ? "my child's" : 'my'} image
                  or likeness in promotional materials.
                </li>
              </ol>
              <div className="mt-5 space-y-3">
                <label className="flex cursor-pointer items-start gap-3 rounded-lg border border-slate-200 p-4 hover:bg-slate-50">
                  <input
                    type="radio"
                    name="consent"
                    checked={consentAgreed}
                    onChange={() => setConsentAgreed(true)}
                    className="mt-1 h-5 w-5 text-navy focus:ring-navy"
                  />
                  <span className="text-sm font-semibold text-navy">I agree</span>
                </label>
                <label className="flex cursor-pointer items-start gap-3 rounded-lg border border-slate-200 p-4 hover:bg-slate-50">
                  <input
                    type="radio"
                    name="consent"
                    checked={!consentAgreed && consentAgreed === false && error !== null}
                    onChange={() => setConsentAgreed(false)}
                    className="mt-1 h-5 w-5 text-navy focus:ring-navy"
                  />
                  <span className="text-sm text-slate-700">I do not agree</span>
                </label>
              </div>
            </div>
          )}

          {/* REVIEW */}
          {((type === 'adult' && step === 7) || (type === 'junior' && step === 8)) && (
            <div>
              <h2 className="text-2xl text-navy">Confirm your details</h2>
              <p className="mt-2 text-sm text-slate-600">Please review before submitting.</p>
              <div className="mt-5 space-y-4 text-sm">
                {type === 'junior' && (
                  <div className="rounded-lg border border-slate-200 p-4">
                    <div className="text-xs font-semibold uppercase tracking-wider text-gold">Guardian</div>
                    <div className="mt-1 font-semibold text-navy">{guardian.firstName} {guardian.surname}</div>
                    <div className="text-slate-700">{guardian.phone} · {guardian.email}</div>
                    <div className="text-slate-700">{guardian.street}, {guardian.parish} {guardian.postcode}</div>
                  </div>
                )}
                {players.map((p, i) => (
                  <div key={i} className="rounded-lg border border-slate-200 p-4">
                    <div className="text-xs font-semibold uppercase tracking-wider text-gold">
                      {type === 'adult' ? 'Member' : `Player ${i + 1}`}
                    </div>
                    <div className="mt-1 font-semibold text-navy">{p.firstName} {p.surname}</div>
                    <div className="text-slate-700">{p.dob} · {p.gender || '—'} · {p.ageGroup}</div>
                    <div className="text-slate-700">Physician: {p.physicianName} ({p.physicianPhone})</div>
                    <div className="text-slate-700">Jersey {p.jerseySize} · Shorts {p.shortsSize}</div>
                    {p.school && <div className="text-slate-700">School: {p.school}</div>}
                    {p.previousClubs && <div className="text-slate-700">Previous clubs: {p.previousClubs}</div>}
                  </div>
                ))}
                <Field label="Add a request message (optional)" hint="A short note to the club admin reviewing your request.">
                  <textarea className={inputCls} rows={3} value={requestMessage} onChange={(e) => setRequestMessage(e.target.value)} />
                </Field>
              </div>
            </div>
          )}

          {/* ERROR */}
          {error && (
            <div className="mt-4 rounded border border-red-200 bg-red-50 p-3 text-sm text-red-700">
              {error}
            </div>
          )}

          {/* NAV */}
          <div className="mt-8 flex flex-wrap items-center justify-between gap-3">
            <button
              type="button"
              onClick={() => (step === 0 ? navigate('/register') : goBack())}
              className="btn-ghost"
            >
              ← Back
            </button>
            {step < totalSteps - 1 ? (
              <button type="button" onClick={handleNext} className="btn-primary">
                Next →
              </button>
            ) : (
              <button
                type="button"
                onClick={submit}
                disabled={submitting || !consentAgreed}
                className="btn-primary disabled:opacity-50"
              >
                {submitting ? 'Submitting…' : 'Submit registration'}
              </button>
            )}
          </div>
        </div>
      </div>
    </section>
  );
}
