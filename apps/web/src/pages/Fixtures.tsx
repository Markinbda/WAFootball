import { UPCOMING_FIXTURES } from '@/data/seed';

export function Fixtures() {
  return (
    <div className="container-page py-12">
      <h1 className="text-4xl">Upcoming Fixtures</h1>
      <p className="mt-2 text-slate-600">All Warwick FA matches across every team and competition.</p>

      <div className="mt-8 overflow-hidden card">
        <table className="min-w-full divide-y divide-slate-200">
          <thead className="bg-navy text-white">
            <tr>
              <th className="px-4 py-3 text-left text-xs font-semibold uppercase tracking-wider">Date</th>
              <th className="px-4 py-3 text-left text-xs font-semibold uppercase tracking-wider">Team</th>
              <th className="px-4 py-3 text-left text-xs font-semibold uppercase tracking-wider">Opponent</th>
              <th className="px-4 py-3 text-left text-xs font-semibold uppercase tracking-wider">Venue</th>
              <th className="px-4 py-3 text-left text-xs font-semibold uppercase tracking-wider">Competition</th>
            </tr>
          </thead>
          <tbody className="divide-y divide-slate-200 bg-white text-sm">
            {UPCOMING_FIXTURES.map((f) => (
              <tr key={f.id} className="hover:bg-slate-50">
                <td className="px-4 py-3">
                  {new Date(f.date).toLocaleString('en-GB', {
                    weekday: 'short', day: 'numeric', month: 'short',
                    hour: '2-digit', minute: '2-digit',
                  })}
                </td>
                <td className="px-4 py-3 font-semibold text-navy">{f.team}</td>
                <td className="px-4 py-3">{f.opponent}</td>
                <td className="px-4 py-3">
                  <span className={`rounded px-2 py-1 text-xs font-semibold ${
                    f.venue === 'Home' ? 'bg-pitch/10 text-pitch' : 'bg-slate-200 text-slate-700'
                  }`}>
                    {f.venue}
                  </span>
                </td>
                <td className="px-4 py-3 text-slate-600">{f.competition}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}
