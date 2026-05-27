import { useState } from 'react';

export function Contact() {
  const [submitted, setSubmitted] = useState(false);

  return (
    <div className="container-page py-12">
      <h1 className="text-4xl">Contact Us</h1>
      <p className="mt-2 text-slate-600">
        Get in touch about registration, sponsorship, or anything else Warwick FA.
      </p>

      <div className="mt-10 grid gap-10 md:grid-cols-2">
        <div>
          <h2 className="text-2xl">Find us</h2>
          <dl className="mt-4 space-y-3 text-slate-700">
            <div>
              <dt className="text-xs font-semibold uppercase tracking-wider text-slate-500">Email</dt>
              <dd><a href="mailto:info@warwickfootball.bm">info@warwickfootball.bm</a></dd>
            </div>
            <div>
              <dt className="text-xs font-semibold uppercase tracking-wider text-slate-500">Location</dt>
              <dd>Warwick, Bermuda</dd>
            </div>
            <div>
              <dt className="text-xs font-semibold uppercase tracking-wider text-slate-500">Office hours</dt>
              <dd>Tuesday & Thursday evenings · Saturday match days</dd>
            </div>
          </dl>
        </div>

        <form
          className="card p-6 space-y-4"
          onSubmit={(e) => {
            e.preventDefault();
            setSubmitted(true);
          }}
        >
          {submitted ? (
            <div className="text-center py-6">
              <h3 className="text-xl text-pitch">Thanks — message received.</h3>
              <p className="mt-2 text-sm text-slate-600">
                We'll reply within 48 hours.
              </p>
            </div>
          ) : (
            <>
              <div>
                <label className="block text-sm font-semibold text-slate-700">Name</label>
                <input required type="text" className="mt-1 w-full rounded border-slate-300 p-2 focus:border-navy focus:ring-navy" />
              </div>
              <div>
                <label className="block text-sm font-semibold text-slate-700">Email</label>
                <input required type="email" className="mt-1 w-full rounded border-slate-300 p-2 focus:border-navy focus:ring-navy" />
              </div>
              <div>
                <label className="block text-sm font-semibold text-slate-700">Topic</label>
                <select className="mt-1 w-full rounded border-slate-300 p-2 focus:border-navy focus:ring-navy">
                  <option>Registration</option>
                  <option>Sponsorship</option>
                  <option>Volunteering</option>
                  <option>General enquiry</option>
                </select>
              </div>
              <div>
                <label className="block text-sm font-semibold text-slate-700">Message</label>
                <textarea required rows={4} className="mt-1 w-full rounded border-slate-300 p-2 focus:border-navy focus:ring-navy" />
              </div>
              <button type="submit" className="btn-primary w-full">Send message</button>
              <p className="text-xs text-slate-500">
                We handle your data in line with Bermuda's PIPA. No marketing without consent.
              </p>
            </>
          )}
        </form>
      </div>
    </div>
  );
}
