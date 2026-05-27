import { Link } from 'react-router-dom';
import { usePlayers, type Player } from '@/data/phase3';
import { useAuth } from '@/auth/AuthProvider';

export function PlayerRoster({ teamId }: { teamId: string | undefined }) {
  const { players, loading } = usePlayers(teamId);
  const { roles } = useAuth();
  const canSeeInactive = roles.includes('admin') || roles.includes('coach');
  const visible = canSeeInactive ? players : players.filter((p) => p.active);

  if (loading) return <p className="text-sm text-slate-500">Loading roster…</p>;
  if (visible.length === 0) {
    return <p className="text-sm text-slate-500">No players in the squad yet.</p>;
  }

  return (
    <div className="grid grid-cols-2 gap-3 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6">
      {visible.map((p) => <PlayerCard key={p.id} player={p} />)}
    </div>
  );
}

function PlayerCard({ player }: { player: Player }) {
  return (
    <Link
      to={`/players/${player.id}`}
      className="card overflow-hidden block transition-transform hover:-translate-y-0.5"
    >
      <div className="relative aspect-square bg-gradient-to-br from-navy via-navy-600 to-navy-500">
        {player.photo_url ? (
          <img src={player.photo_url} alt={player.full_name} className="h-full w-full object-cover" />
        ) : (
          <div className="grid h-full w-full place-items-center font-display text-4xl text-white/40">
            {player.full_name.split(' ').map((s) => s[0]).slice(0, 2).join('')}
          </div>
        )}
        {player.squad_number != null && (
          <div className="absolute right-1.5 top-1.5 grid h-7 w-7 place-items-center rounded-full bg-gold font-display text-sm text-navy shadow-md">
            {player.squad_number}
          </div>
        )}
        {!player.active && (
          <div className="absolute left-1.5 top-1.5 rounded bg-slate-900/70 px-1.5 py-0.5 text-[10px] font-semibold uppercase text-white">
            Inactive
          </div>
        )}
      </div>
      <div className="px-2 py-1.5">
        <h4 className="truncate font-display text-sm leading-tight text-navy">{player.full_name}</h4>
        <p className="truncate text-[10px] uppercase tracking-wider text-slate-500">{player.position ?? '—'}</p>
      </div>
    </Link>
  );
}
