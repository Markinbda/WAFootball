import { Link } from 'react-router-dom';

export function Register() {
  return (
    <>
      {/* HERO */}
      <section className="bg-navy text-white">
        <div className="container-page py-14 sm:py-20">
          <div className="inline-block rounded bg-gold px-3 py-1 text-xs font-bold uppercase tracking-widest text-navy">
            2026/27 Season · Now Open
          </div>
          <h1 className="mt-3 font-display text-4xl text-white sm:text-5xl lg:text-6xl">
            Register with Warwick FA
          </h1>
          <p className="mt-3 max-w-2xl text-white/85">
            New to WFA or transferring from another club? Start your registration online —
            it takes about 10 minutes. Players new to WFA enter our waiting room until a
            club admin reviews and accepts placement in your age group.
          </p>
          <div className="mt-6 flex flex-wrap gap-3">
            <Link to="/register/start" className="btn-primary">Start Registration</Link>
            <a href="#what-to-know" className="btn-ghost !text-white hover:!bg-white/10">
              What to expect
            </a>
          </div>
        </div>
      </section>

      {/* WHAT TO KNOW */}
      <section id="what-to-know" className="container-page py-14">
        <div className="grid gap-6 md:grid-cols-3">
          <div className="card p-6">
            <div className="text-xs font-bold uppercase tracking-widest text-gold">Step 1</div>
            <h3 className="mt-2 text-xl">Create your profile</h3>
            <p className="mt-2 text-sm text-slate-700">
              Adults register themselves. Parents create a guardian profile and add each
              dependant player. You can add more than one child in the same session.
            </p>
          </div>
          <div className="card p-6">
            <div className="text-xs font-bold uppercase tracking-widest text-gold">Step 2</div>
            <h3 className="mt-2 text-xl">Complete the form</h3>
            <p className="mt-2 text-sm text-slate-700">
              Address, age group, medical &amp; consent, kit sizes and football experience.
              Required fields are marked with <span className="text-red-500">*</span>.
            </p>
          </div>
          <div className="card p-6">
            <div className="text-xs font-bold uppercase tracking-widest text-gold">Step 3</div>
            <h3 className="mt-2 text-xl">Waiting room</h3>
            <p className="mt-2 text-sm text-slate-700">
              You'll enter our waiting room until a club admin approves. Acceptances are
              based on available roster places, player profile and football experience.
            </p>
          </div>
        </div>
      </section>

      {/* TWO PATHS */}
      <section className="bg-slate-50 py-14">
        <div className="container-page">
          <h2 className="text-center text-3xl text-navy">Choose your registration</h2>
          <p className="mt-2 text-center text-sm text-slate-600">
            Select the option that matches you when you start.
          </p>
          <div className="mt-8 grid gap-6 md:grid-cols-2">
            <Link
              to="/register/start?type=adult"
              className="card group p-6 transition hover:-translate-y-0.5 hover:shadow-xl"
            >
              <div className="text-xs font-bold uppercase tracking-widest text-gold">Adult</div>
              <h3 className="mt-2 text-2xl text-navy">Adult Registration</h3>
              <p className="mt-2 text-sm text-slate-700">
                For players, coaches or officials over 18 (born on or before 01/01/2008).
              </p>
              <span className="mt-4 inline-block text-sm font-semibold text-navy group-hover:text-gold">
                Start Adult form →
              </span>
            </Link>
            <Link
              to="/register/start?type=junior"
              className="card group p-6 transition hover:-translate-y-0.5 hover:shadow-xl"
            >
              <div className="text-xs font-bold uppercase tracking-widest text-gold">Junior</div>
              <h3 className="mt-2 text-2xl text-navy">Junior Registration</h3>
              <p className="mt-2 text-sm text-slate-700">
                For parents or guardians of a child under 18 (born on or after 31/12/2006).
              </p>
              <span className="mt-4 inline-block text-sm font-semibold text-navy group-hover:text-gold">
                Start Junior form →
              </span>
            </Link>
          </div>
        </div>
      </section>

      {/* TRANSFERS */}
      <section className="container-page py-14">
        <div className="rounded-lg border border-gold/40 bg-gold/5 p-6">
          <h3 className="text-xl text-navy">Transferring from another club?</h3>
          <p className="mt-2 text-sm text-slate-700">
            Players who played for another club or programme in the last 2 years also need:
          </p>
          <ul className="mt-3 space-y-2 text-sm text-slate-700">
            <li className="flex gap-2">
              <span className="mt-2 inline-block h-1.5 w-1.5 shrink-0 rounded-full bg-gold" />
              A signed <strong>transfer release form</strong> from the previous club, plus a new
              player youth registration form for WFA — both available from the{' '}
              <a
                href="https://www.bermudafa.com/bfa-forms"
                target="_blank"
                rel="noopener noreferrer"
                className="font-semibold text-navy hover:text-gold"
              >
                BFA forms page
              </a>.
            </li>
            <li className="flex gap-2">
              <span className="mt-2 inline-block h-1.5 w-1.5 shrink-0 rounded-full bg-gold" />
              Both completed forms emailed to{' '}
              <a href="mailto:football@warwick.bm" className="font-semibold text-navy hover:text-gold">
                football@warwick.bm
              </a>{' '}
              along with a player head-shot photo.
            </li>
          </ul>
        </div>
      </section>

      {/* FAQ */}
      <section className="bg-white py-14">
        <div className="container-page max-w-3xl">
          <h2 className="text-center text-3xl text-navy">Frequently Asked</h2>
          <div className="mt-8 space-y-4">
            <details className="card group p-5">
              <summary className="flex cursor-pointer list-none items-center justify-between font-semibold text-navy">
                How long until I hear back?
                <span className="text-gold transition group-open:rotate-180">▾</span>
              </summary>
              <p className="mt-3 text-sm text-slate-700">
                You'll receive an indication of acceptance, placement or waitlisted status for
                the season. If you haven't heard within 24 hours, email{' '}
                <a href="mailto:football@warwick.bm" className="font-semibold text-navy hover:text-gold">
                  football@warwick.bm
                </a>{' '}with the player's name and age group.
              </p>
            </details>
            <details className="card group p-5">
              <summary className="flex cursor-pointer list-none items-center justify-between font-semibold text-navy">
                When are player assessments?
                <span className="text-gold transition group-open:rotate-180">▾</span>
              </summary>
              <p className="mt-3 text-sm text-slate-700">
                Player pool assessments take place at the end of August and into early
                September, prior to the BFA team registration date. Players are then assigned
                to specific team rosters within their age group.
              </p>
            </details>
            <details className="card group p-5">
              <summary className="flex cursor-pointer list-none items-center justify-between font-semibold text-navy">
                Can I edit my info later?
                <span className="text-gold transition group-open:rotate-180">▾</span>
              </summary>
              <p className="mt-3 text-sm text-slate-700">
                Yes. Once accepted you'll get access in the TeamO app — My Profile → Edit
                Information lets you update details, add another guardian, or add a child's
                phone/email.
              </p>
            </details>
            <details className="card group p-5">
              <summary className="flex cursor-pointer list-none items-center justify-between font-semibold text-navy">
                What about payment?
                <span className="text-gold transition group-open:rotate-180">▾</span>
              </summary>
              <p className="mt-3 text-sm text-slate-700">
                After acceptance you'll be sent payment details for the season. See the
                program options & fees guide for pricing.
              </p>
            </details>
          </div>
          <div className="mt-10 text-center">
            <Link to="/register/start" className="btn-primary">Start Registration</Link>
          </div>
        </div>
      </section>
    </>
  );
}
