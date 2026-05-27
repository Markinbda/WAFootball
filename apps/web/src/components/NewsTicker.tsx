import { Link } from 'react-router-dom';
import { useFixtures, useResults } from '@/data/hooks';

type Item = { key: string; href: string; label: string; tag: 'RESULT' | 'FIXTURE' };

function fmtDate(iso: string) {
  return new Date(iso).toLocaleDateString('en-GB', {
    day: 'numeric',
    month: 'short',
  }).toUpperCase();
}

function fmtTime(iso: string) {
  return new Date(iso).toLocaleTimeString('en-GB', {
    hour: '2-digit',
    minute: '2-digit',
  });
}

export function NewsTicker() {
  const { data: fixtures } = useFixtures();
  const { data: results } = useResults();

  const items: Item[] = [
    ...results.slice(0, 8).map<Item>((r) => {
      const verdict =
        r.scoreFor > r.scoreAgainst ? 'WIN' : r.scoreFor < r.scoreAgainst ? 'LOSS' : 'DRAW';
      return {
        key: `r-${r.id}`,
        href: '/results',
        tag: 'RESULT',
        label: `${fmtDate(r.date)} · ${r.venue.toUpperCase()} ${verdict} ${r.scoreFor}–${r.scoreAgainst} · ${r.team} v ${r.opponent}`,
      };
    }),
    ...fixtures.slice(0, 8).map<Item>((f) => ({
      key: `f-${f.id}`,
      href: '/fixtures',
      tag: 'FIXTURE',
      label: `${fmtDate(f.date)} · ${fmtTime(f.date)} · ${f.venue.toUpperCase()} · ${f.team} v ${f.opponent}`,
    })),
  ];

  if (items.length === 0) return null;

  // Duplicate the list so the marquee loops seamlessly.
  const loop = [...items, ...items];

  return (
    <div className="relative overflow-hidden border-y border-navy-600 bg-navy text-white">
      <div className="flex items-stretch">
        <div className="z-10 flex shrink-0 items-center gap-2 bg-gold px-4 py-2 text-xs font-bold uppercase tracking-widest text-navy">
          <span className="inline-block h-2 w-2 animate-pulse rounded-full bg-navy" />
          Latest
        </div>
        <div className="relative flex-1 overflow-hidden">
          <div
            className="flex w-max gap-8 whitespace-nowrap py-2 pl-8 pr-8"
            style={{ animation: 'wfa-ticker 60s linear infinite' }}
          >
            {loop.map((it, i) => (
              <Link
                key={`${it.key}-${i}`}
                to={it.href}
                className="inline-flex items-center gap-3 text-sm !text-white hover:!text-gold"
              >
                <span
                  className={`rounded px-2 py-0.5 text-[10px] font-bold uppercase tracking-wider ${
                    it.tag === 'RESULT' ? 'bg-pitch text-white' : 'bg-white/15 text-white'
                  }`}
                >
                  {it.tag}
                </span>
                <span>{it.label}</span>
                <span className="text-white/30">•</span>
              </Link>
            ))}
          </div>
        </div>
      </div>
      <style>{`
        @keyframes wfa-ticker {
          0% { transform: translateX(0); }
          100% { transform: translateX(-50%); }
        }
        @media (prefers-reduced-motion: reduce) {
          [style*="wfa-ticker"] { animation: none !important; }
        }
      `}</style>
    </div>
  );
}
