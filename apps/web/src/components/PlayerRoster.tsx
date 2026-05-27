import { useState } from 'react';
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
    <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
      {visible.map((p) => <PlayerCard key={p.id} player={p} />)}
    </div>
  );
}

function PlayerCard({ player }: { player: Player }) {
  const [hover, setHover] = useState(false);
  return (
    <div
      onMouseEnter={() => setHover(true)}
      onMouseLeave={() => setHover(false)}
      className="card overflow-hidden"
    >
      <div className="relative aspect-square bg-gradient-to-br from-navy via-navy-600 to-navy-500">
        {player.photo_url ? (
          <img src={player.photo_url} alt={player.full_name} className="h-full w-full object-cover" />
        ) : (
          <div className="grid h-full w-full place-items-center font-display text-7xl text-white/40">
            {player.full_name.split(' ').map((s) => s[0]).slice(0, 2).join('')}
          </div>
        )}
        {player.squad_number != null && (
          <div className="absolute right-3 top-3 grid h-10 w-10 place-items-center rounded-full bg-gold font-display text-xl text-navy shadow-md">
            {player.squad_number}
          </div>
        )}
        {!player.active && (
          <div className="absolute left-3 top-3 rounded bg-slate-900/70 px-2 py-1 text-xs font-semibold uppercase text-white">
            Inactive
          </div>
        )}
      </div>
      <div className="p-4">
        <h4 className="font-display text-lg leading-tight text-navy">{player.full_name}</h4>
        <p className="text-xs uppercase tracking-wider text-slate-500">{player.position ?? '—'}</p>
        {player.bio && hover && (
          <p className="mt-2 text-xs text-slate-600 line-clamp-3">{player.bio}</p>
        )}
      </div>
    </div>
  );
}
