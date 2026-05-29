import { useMemo, useState } from 'react';

const BENEFITS: { icon: string; title: string; body: string }[] = [
  {
    icon: '🌍',
    title: 'Visibility across the island',
    body: 'Your brand appears on our website, matchday banners, kit, social channels and weekly newsletter — reaching hundreds of Bermudian families.',
  },
  {
    icon: '⚽',
    title: 'Direct community impact',
    body: 'Every dollar funds equipment, pitch hire, coach education and reduced fees so that no child is turned away from the game.',
  },
  {
    icon: '🏆',
    title: 'Association with a winning programme',
    body: 'Warwick FA has been developing Bermudian footballers for 60 years — from Pee Wee through to senior national team players.',
  },
  {
    icon: '🤝',
    title: 'Hospitality & events',
    body: 'Invitations to club fixtures, end-of-season awards and our annual sponsors\' day. Tailored packages for headline sponsors.',
  },
];

const TIERS: { name: string; price: string; perks: string[]; highlight?: boolean }[] = [
  {
    name: 'Friend',
    price: '$500 / season',
    perks: ['Logo on Sponsors page', 'Social media thank-you'],
  },
  {
    name: 'Bronze',
    price: '$1,500 / season',
    perks: ['Logo on Sponsors page', 'Logo on home-match banner', 'Quarterly social media features'],
  },
  {
    name: 'Silver',
    price: '$3,500 / season',
    perks: ['All Bronze benefits', 'Logo on training kit (one age group)', '2 tickets to annual awards'],
  },
  {
    name: 'Gold',
    price: '$7,500 / season',
    perks: ['All Silver benefits', 'Logo on matchday kit', 'Naming rights on one club event', 'VIP hospitality'],
    highlight: true,
  },
];

export function Sponsors() {
  const [name, setName] = useState('');
  const [company, setCompany] = useState('');
  const [email, setEmail] = useState('');
  const [phone, setPhone] = useState('');
  const [tier, setTier] = useState('Bronze');
  const [message, setMessage] = useState('');

  const mailtoHref = useMemo(() => {
    const subject = encodeURIComponent(
      `Sponsorship enquiry from ${company || name || 'a prospective sponsor'}`,
    );
    const lines = [
      `Name:    ${name}`,
      `Company: ${company}`,
      `Email:   ${email}`,
      `Phone:   ${phone}`,
      `Tier:    ${tier}`,
      '',
      'Message:',
      message,
      '',
      '— Sent from the Warwick FA Sponsors page',
    ];
    const body = encodeURIComponent(lines.join('\n'));
    return `mailto:info@warwickfootball.bm?subject=${subject}&body=${body}`;
  }, [name, company, email, phone, tier, message]);

  const canSubmit = name.trim() && email.trim() && message.trim();

  return (
    <>
      {/* HERO */}
      <section className="bg-gradient-to-br from-navy via-navy-700 to-navy-600 py-16 text-white">
        <div className="container-page text-center">
          <div className="text-sm font-semibold uppercase tracking-widest text-gold">
            Sponsor Warwick FA
          </div>
          <h1 className="mt-3 text-4xl md:text-5xl">Back Bermudian football. Back your community.</h1>
          <p className="mx-auto mt-4 max-w-2xl text-white/80">
            Warwick FA has been developing footballers from Pee Wee through Senior Men&apos;s for over
            60 years. Your sponsorship keeps the programme affordable, well-equipped and ambitious.
          </p>
        </div>
      </section>

      {/* BENEFITS */}
      <section className="bg-white py-16">
        <div className="container-page">
          <div className="mb-10 text-center">
            <h2 className="text-3xl">Why sponsor us?</h2>
            <p className="mt-2 text-slate-600">
              Real exposure, real community impact, real return on investment.
            </p>
          </div>
          <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-4">
            {BENEFITS.map((b) => (
              <div key={b.title} className="card p-6">
                <div className="text-3xl">{b.icon}</div>
                <h3 className="mt-3 text-lg">{b.title}</h3>
                <p className="mt-2 text-sm text-slate-600">{b.body}</p>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* TIERS */}
      <section className="bg-slate-50 py-16">
        <div className="container-page">
          <div className="mb-10 text-center">
            <h2 className="text-3xl">Sponsorship packages</h2>
            <p className="mt-2 text-slate-600">
              Pick the level that fits your business — or talk to us about a bespoke arrangement.
            </p>
          </div>
          <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-4">
            {TIERS.map((t) => (
              <div
                key={t.name}
                className={`card p-6 ${t.highlight ? 'ring-2 ring-gold' : ''}`}
              >
                {t.highlight && (
                  <div className="mb-3 inline-block rounded-full bg-gold px-3 py-0.5 text-xs font-bold uppercase tracking-widest text-navy">
                    Most popular
                  </div>
                )}
                <h3 className="text-xl">{t.name}</h3>
                <div className="mt-1 text-sm font-semibold text-navy">{t.price}</div>
                <ul className="mt-4 space-y-2 text-sm text-slate-700">
                  {t.perks.map((p) => (
                    <li key={p} className="flex gap-2">
                      <span aria-hidden="true">✓</span>
                      <span>{p}</span>
                    </li>
                  ))}
                </ul>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* FORM */}
      <section className="bg-white py-16">
        <div className="container-page max-w-3xl">
          <div className="mb-8 text-center">
            <h2 className="text-3xl">Become a sponsor</h2>
            <p className="mt-2 text-slate-600">
              Tell us a bit about your business and we&apos;ll be in touch within a few days.
            </p>
          </div>
          <form
            className="card grid gap-4 p-6 md:grid-cols-2"
            onSubmit={(e) => {
              e.preventDefault();
              if (!canSubmit) return;
              window.location.href = mailtoHref;
            }}
          >
            <label className="text-sm">
              <span className="font-semibold">Your name *</span>
              <input
                value={name}
                onChange={(e) => setName(e.target.value)}
                required
                className="mt-1 w-full rounded border border-slate-300 px-3 py-2"
                placeholder="Jane Smith"
              />
            </label>
            <label className="text-sm">
              <span className="font-semibold">Company</span>
              <input
                value={company}
                onChange={(e) => setCompany(e.target.value)}
                className="mt-1 w-full rounded border border-slate-300 px-3 py-2"
                placeholder="Acme Bermuda Ltd."
              />
            </label>
            <label className="text-sm">
              <span className="font-semibold">Email *</span>
              <input
                type="email"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                required
                className="mt-1 w-full rounded border border-slate-300 px-3 py-2"
                placeholder="you@company.bm"
              />
            </label>
            <label className="text-sm">
              <span className="font-semibold">Phone</span>
              <input
                value={phone}
                onChange={(e) => setPhone(e.target.value)}
                className="mt-1 w-full rounded border border-slate-300 px-3 py-2"
                placeholder="+1 441 ..."
              />
            </label>
            <label className="text-sm md:col-span-2">
              <span className="font-semibold">Interested in</span>
              <select
                value={tier}
                onChange={(e) => setTier(e.target.value)}
                className="mt-1 w-full rounded border border-slate-300 px-3 py-2"
              >
                {TIERS.map((t) => (
                  <option key={t.name} value={t.name}>{t.name} — {t.price}</option>
                ))}
                <option value="Bespoke / not sure">Bespoke / not sure</option>
              </select>
            </label>
            <label className="text-sm md:col-span-2">
              <span className="font-semibold">Tell us about your business and goals *</span>
              <textarea
                value={message}
                onChange={(e) => setMessage(e.target.value)}
                required
                rows={5}
                className="mt-1 w-full rounded border border-slate-300 px-3 py-2"
                placeholder="A few sentences about your company and what you'd like to get out of sponsoring Warwick FA."
              />
            </label>
            <div className="md:col-span-2 flex flex-col items-start gap-2 md:flex-row md:items-center md:justify-between">
              <p className="text-xs text-slate-500">
                Submitting opens your email client to send the details to{' '}
                <a href="mailto:info@warwickfootball.bm" className="text-navy underline">
                  info@warwickfootball.bm
                </a>
                .
              </p>
              <button
                type="submit"
                disabled={!canSubmit}
                className="rounded bg-navy px-6 py-2 font-semibold text-white hover:bg-navy-700 disabled:cursor-not-allowed disabled:opacity-50"
              >
                Send enquiry
              </button>
            </div>
          </form>
        </div>
      </section>
    </>
  );
}
