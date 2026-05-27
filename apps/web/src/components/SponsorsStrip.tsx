import { useSponsors } from '@/data/phase7';

export function SponsorsStrip() {
  const { sponsors, loading } = useSponsors();
  if (loading || sponsors.length === 0) return null;

  return (
    <section className="border-t border-slate-200 bg-white">
      <div className="container-page py-10">
        <div className="text-center text-xs font-semibold uppercase tracking-widest text-slate-500">
          Proudly supported by
        </div>
        <div className="mt-6 flex flex-wrap items-center justify-center gap-x-10 gap-y-6">
          {sponsors.map((s) => {
            const inner = s.logo_url ? (
              <img
                src={s.logo_url}
                alt={s.name}
                className="h-12 w-auto opacity-80 transition-opacity hover:opacity-100"
                loading="lazy"
              />
            ) : (
              <span className="font-display text-lg text-navy hover:text-gold">{s.name}</span>
            );
            return s.website_url ? (
              <a key={s.id} href={s.website_url} target="_blank" rel="noopener noreferrer" title={s.name}>
                {inner}
              </a>
            ) : (
              <div key={s.id} title={s.name}>{inner}</div>
            );
          })}
        </div>
      </div>
    </section>
  );
}
