import { useState } from 'react';
import { useGallery } from '@/data/phase7';

export function Gallery() {
  const { photos, loading } = useGallery(120);
  const [lightbox, setLightbox] = useState<number | null>(null);

  return (
    <>
      <section className="bg-navy text-white">
        <div className="container-page py-14">
          <div className="text-xs font-semibold uppercase tracking-widest text-gold">Club</div>
          <h1 className="mt-2 text-5xl">Gallery</h1>
          <p className="mt-3 max-w-2xl text-white/80">
            Match photos, team line-ups, and moments from across the club.
          </p>
        </div>
      </section>

      <section className="container-page py-10">
        {loading ? (
          <p className="text-sm text-slate-500">Loading…</p>
        ) : photos.length === 0 ? (
          <p className="text-sm text-slate-500">
            No photos yet. Coaches and admins can upload via <strong>Admin → Gallery</strong>.
          </p>
        ) : (
          <div className="grid grid-cols-2 gap-3 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5">
            {photos.map((p, i) => (
              <button
                key={p.id}
                onClick={() => setLightbox(i)}
                className="group relative aspect-square overflow-hidden rounded-lg bg-slate-100"
              >
                <img
                  src={p.url}
                  alt={p.caption ?? ''}
                  className="h-full w-full object-cover transition-transform group-hover:scale-105"
                  loading="lazy"
                />
                {p.caption && (
                  <div className="absolute inset-x-0 bottom-0 bg-gradient-to-t from-navy/80 to-transparent p-2 text-left text-xs text-white opacity-0 transition-opacity group-hover:opacity-100">
                    {p.caption}
                  </div>
                )}
              </button>
            ))}
          </div>
        )}
      </section>

      {lightbox !== null && photos[lightbox] && (
        <div
          onClick={() => setLightbox(null)}
          className="fixed inset-0 z-50 grid place-items-center bg-black/90 p-4"
        >
          <img
            src={photos[lightbox].url}
            alt={photos[lightbox].caption ?? ''}
            className="max-h-full max-w-full object-contain"
          />
          {photos[lightbox].caption && (
            <div className="absolute bottom-6 left-0 right-0 text-center text-sm text-white/80">
              {photos[lightbox].caption}
            </div>
          )}
          <button
            onClick={(e) => { e.stopPropagation(); setLightbox(null); }}
            className="absolute right-4 top-4 rounded-full bg-white/20 px-3 py-1 text-sm text-white hover:bg-white/30"
          >
            Close ✕
          </button>
        </div>
      )}
    </>
  );
}
