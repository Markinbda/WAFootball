import { Link, useParams } from 'react-router-dom';
import { useAuth } from '@/auth/AuthProvider';
import { useFixture, useMyRsvp, useMatchEvents, type MatchEvent } from '@/data/phase3';
import { useRsvpRollup } from '@/data/phase4';
import { fixturesToIcs, downloadIcs } from '@/lib/ics';

export function FixtureDetail() {
  const { id } = useParams<{ id: string }>();
  const { fixture, loading } = useFixture(id);
  const { user, roles } = useAuth();
  const isStaff = roles.includes('admin') || roles.includes('coach');

  if (loading) return <div className="container-page py-12">Loading…</div>;
  if (!fixture) {
    return (
      <div className="container-page py-20 text-center">
        <h1 className="text-3xl">Fixture not found</h1>
        <Link to="/fixtures" className="mt-4 inline-block btn-primary">All fixtures</Link>
      </div>
    );
  }

  const isLive = fixture.status === 'live';
  const isFinal = fixture.status === 'final';

  return (
    <>
      <section className={`text-white ${isLive ? 'bg-red-700' : 'bg-navy'}`}>
        <div className="container-page py-10">
          <div className="text-xs font-semibold uppercase tracking-widest text-gold">
            {isLive ? 'LIVE NOW' : fixture.competition}
          </div>
          <h1 className="mt-2 text-4xl text-white sm:text-5xl">
            {fixture.team_name} vs {fixture.opponent}
          </h1>
          {(isLive || isFinal) && (
            <div className="mt-4 font-display text-6xl text-gold">
              {fixture.score_for ?? 0} – {fixture.score_against ?? 0}
            </div>
          )}
          <p className="mt-3 text-sm text-white/80">
            {new Date(fixture.kickoff_at).toLocaleString('en-GB', {
              weekday: 'long', day: 'numeric', month: 'long',
              hour: '2-digit', minute: '2-digit',
            })}{' '}· {fixture.venue} · {fixture.competition}
          </p>
        </div>
      </section>

      <div className="container-page grid gap-10 py-10 lg:grid-cols-3">
        <div className="lg:col-span-2 space-y-8">
          <LiveTimeline fixtureId={fixture.id} />
          {isStaff && <RsvpRollup fixtureId={fixture.id} />}
        </div>

        <div className="space-y-6">
          {user ? (
            <RsvpCard fixtureId={fixture.id} userId={user.id} />
          ) : (
            <div className="card p-5">
              <h3 className="text-lg">Going?</h3>
              <p className="mt-2 text-sm text-slate-600">
                <Link to="/login" className="font-semibold">Sign in</Link> or{' '}
                <Link to="/signup" className="font-semibold">join</Link> to RSVP.
              </p>
            </div>
          )}

          {isStaff && (
            <Link to={`/coach/match/${fixture.id}`} className="card block p-5 hover:shadow-md">
              <h3 className="text-lg text-pitch">Match-day Console →</h3>
              <p className="mt-2 text-sm text-slate-600">
                Open live scoring for coaches.
              </p>
            </Link>
          )}

          <button
            onClick={() => {
              const ics = fixturesToIcs([{
                id: fixture.id,
                team: fixture.team_name,
                opponent: fixture.opponent,
                date: fixture.kickoff_at,
                venue: fixture.venue,
                competition: fixture.competition,
              }]);
              downloadIcs(`wfa-${fixture.id}.ics`, ics);
            }}
            className="btn-secondary w-full"
          >
            Add to Calendar
          </button>
        </div>
      </div>
    </>
  );
}

function RsvpCard({ fixtureId, userId }: { fixtureId: string; userId: string }) {
  const { rsvp, upsert } = useMyRsvp(fixtureId, userId);

  const options: { value: 'yes' | 'no' | 'maybe'; label: string; tone: string }[] = [
    { value: 'yes',   label: 'Going',     tone: 'bg-pitch text-white' },
    { value: 'maybe', label: 'Maybe',     tone: 'bg-gold text-navy' },
    { value: 'no',    label: 'Can\u2019t make it', tone: 'bg-slate-200 text-slate-700' },
  ];

  return (
    <div className="card p-5">
      <h3 className="text-lg">Your RSVP</h3>
      <p className="mt-1 text-xs text-slate-500">
        Help the coach plan numbers. Visible to club staff only.
      </p>
      <div className="mt-3 flex flex-col gap-2">
        {options.map((o) => {
          const active = rsvp?.status === o.value;
          return (
            <button
              key={o.value}
              onClick={() => upsert(o.value)}
              className={`rounded px-3 py-2 text-sm font-semibold transition-all ${
                active ? o.tone + ' ring-2 ring-offset-1 ring-navy' : 'bg-slate-50 text-slate-700 hover:bg-slate-100'
              }`}
            >
              {o.label}
            </button>
          );
        })}
      </div>
    </div>
  );
}

function LiveTimeline({ fixtureId }: { fixtureId: string }) {
  const { events } = useMatchEvents(fixtureId);

  if (events.length === 0) {
    return (
      <div className="card p-6 text-sm text-slate-500">
        No events yet. The timeline updates live during the match.
      </div>
    );
  }

  return (
    <div className="card p-6">
      <h2 className="text-2xl">Match Timeline</h2>
      <ul className="mt-4 space-y-3">
        {events.map((e) => <EventRow key={e.id} event={e} />)}
      </ul>
    </div>
  );
}

function RsvpRollup({ fixtureId }: { fixtureId: string }) {
  const { rows, loading } = useRsvpRollup(fixtureId, true);

  if (loading) return <div className="card p-5 text-sm text-slate-500">Loading RSVPs…</div>;

  const grouped = {
    yes:   rows.filter((r) => r.status === 'yes'),
    maybe: rows.filter((r) => r.status === 'maybe'),
    no:    rows.filter((r) => r.status === 'no'),
  };

  return (
    <div className="card p-6">
      <div className="flex items-baseline justify-between">
        <h2 className="text-2xl">Availability</h2>
        <span className="text-xs uppercase tracking-wider text-slate-500">Staff only</span>
      </div>
      <div className="mt-4 grid gap-4 sm:grid-cols-3">
        <RollupColumn title="Going" tone="bg-pitch text-white" names={grouped.yes.map((r) => r.display_name)} />
        <RollupColumn title="Maybe" tone="bg-gold text-navy"   names={grouped.maybe.map((r) => r.display_name)} />
        <RollupColumn title="Out"   tone="bg-slate-300 text-slate-800" names={grouped.no.map((r) => r.display_name)} />
      </div>
      {rows.length === 0 && (
        <p className="mt-4 text-sm text-slate-500">No responses yet.</p>
      )}
    </div>
  );
}

function RollupColumn({ title, tone, names }: { title: string; tone: string; names: string[] }) {
  return (
    <div>
      <div className={`inline-flex items-center gap-2 rounded px-2 py-1 text-xs font-semibold ${tone}`}>
        {title} <span className="rounded bg-white/30 px-1.5">{names.length}</span>
      </div>
      <ul className="mt-2 space-y-1 text-sm text-slate-700">
        {names.length === 0
          ? <li className="text-slate-400">—</li>
          : names.map((n) => <li key={n}>{n}</li>)}
      </ul>
    </div>
  );
}

const EVENT_META: Record<MatchEvent['type'], { icon: string; label: string; color: string }> = {
  goal_for:     { icon: '\u26BD', label: 'GOAL',         color: 'bg-pitch text-white' },
  goal_against: { icon: '\u26BD', label: 'Opp. Goal',    color: 'bg-slate-300 text-slate-800' },
  yellow:       { icon: '\u25A0', label: 'Yellow Card',  color: 'bg-yellow-400 text-yellow-900' },
  red:          { icon: '\u25A0', label: 'Red Card',     color: 'bg-red-600 text-white' },
  sub_on:       { icon: '\u2191', label: 'Sub On',       color: 'bg-slate-100 text-slate-700' },
  sub_off:      { icon: '\u2193', label: 'Sub Off',      color: 'bg-slate-100 text-slate-700' },
  note:         { icon: '\u00B7', label: 'Note',         color: 'bg-slate-50 text-slate-600' },
  kickoff:      { icon: '\u25B6', label: 'Kick-off',     color: 'bg-navy text-white' },
  halftime:     { icon: '\u23F8', label: 'Half Time',    color: 'bg-navy/70 text-white' },
  fulltime:     { icon: '\u23F9', label: 'Full Time',    color: 'bg-navy text-white' },
};

function EventRow({ event }: { event: MatchEvent }) {
  const meta = EVENT_META[event.type];
  return (
    <li className="flex items-start gap-3">
      <div className="w-10 text-right font-display text-sm text-slate-500">
        {event.minute != null ? `${event.minute}'` : ''}
      </div>
      <div className={`rounded px-2 py-1 text-xs font-semibold ${meta.color}`}>
        {meta.icon} {meta.label}
      </div>
      <div className="flex-1 text-sm text-slate-700">{event.note ?? ''}</div>
    </li>
  );
}
