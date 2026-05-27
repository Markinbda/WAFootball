import { useLeagueTable } from '@/data/phase4';
import { Link } from 'react-router-dom';

export function LeagueTable({ competition, limit }: { competition?: string; limit?: number }) {
  const { rows, loading } = useLeagueTable(competition);

  if (loading) return <p className="text-sm text-slate-500">Loading table…</p>;
  if (rows.length === 0) {
    return <p className="text-sm text-slate-500">No completed results yet.</p>;
  }

  const shown = limit ? rows.slice(0, limit) : rows;

  return (
    <div className="overflow-hidden card">
      <table className="min-w-full divide-y divide-slate-200 text-sm">
        <thead className="bg-navy text-white">
          <tr>
            <th className="px-3 py-2 text-left text-xs font-semibold uppercase tracking-wider">#</th>
            <th className="px-3 py-2 text-left text-xs font-semibold uppercase tracking-wider">Team</th>
            <Th>P</Th><Th>W</Th><Th>D</Th><Th>L</Th><Th>GF</Th><Th>GA</Th><Th>GD</Th>
            <th className="px-3 py-2 text-right text-xs font-semibold uppercase tracking-wider">Pts</th>
          </tr>
        </thead>
        <tbody className="divide-y divide-slate-100 bg-white">
          {shown.map((r, i) => (
            <tr key={r.team_id} className="hover:bg-slate-50">
              <td className="px-3 py-2 font-display text-slate-600">{i + 1}</td>
              <td className="px-3 py-2 font-semibold text-navy">
                {r.team_slug ? <Link to={`/teams/${r.team_slug}`} className="hover:underline">{r.team_name}</Link> : r.team_name}
              </td>
              <Td>{r.played}</Td><Td>{r.won}</Td><Td>{r.drawn}</Td><Td>{r.lost}</Td>
              <Td>{r.goals_for}</Td><Td>{r.goals_against}</Td>
              <Td>{r.goal_diff > 0 ? `+${r.goal_diff}` : r.goal_diff}</Td>
              <td className="px-3 py-2 text-right font-display text-base text-navy">{r.points}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
}

const Th = ({ children }: { children: React.ReactNode }) => (
  <th className="px-3 py-2 text-center text-xs font-semibold uppercase tracking-wider">{children}</th>
);
const Td = ({ children }: { children: React.ReactNode }) => (
  <td className="px-3 py-2 text-center text-slate-700">{children}</td>
);
