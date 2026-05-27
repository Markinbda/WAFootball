import { useEffect, useState } from 'react';

const HERO_IMAGE =
  'https://media.sites.teamo.chat/3a98/58/291213/WFA_History.png';

type Photo = { src: string; caption: string };

const PHOTOS: Photo[] = [
  { src: 'https://media.sites.teamo.chat/3a98/58/291213/PHOTO_2020_10_10_11_15_26.jpeg', caption: 'Matchday — October 2020' },
  { src: 'https://media.sites.teamo.chat/3a98/58/291213/PHOTO_2022_02_12_20_05_19.jpeg', caption: 'Evening training — February 2022' },
  { src: 'https://media.sites.teamo.chat/3a98/58/291213/PHOTO_2022_04_30_16_15_03.jpeg', caption: 'Spring fixture — April 2022' },
  { src: 'https://media.sites.teamo.chat/3a98/58/291213/PHOTO_2023_03_18_11_39_03.jpeg', caption: 'Academy day — March 2023' },
  { src: 'https://media.sites.teamo.chat/3a98/58/291213/PHOTO_2023_03_18_16_57_25.jpeg', caption: 'Academy day — March 2023' },
  { src: 'https://media.sites.teamo.chat/3a98/58/291213/PHOTO_2025_02_01_20_17_15_1_.jpeg', caption: 'Senior squad — February 2025' },
  { src: 'https://media.sites.teamo.chat/3a98/58/291213/PHOTO_2025_04_13_17_32_18_1_.jpeg', caption: 'Cup celebration — April 2025' },
];

type Era = { year: string; title: string; body: string };

const TIMELINE: Era[] = [
  {
    year: '2001',
    title: 'A Club is Founded',
    body:
      'The Warwick Academy Football Club (WAFC) is founded with one boys team at U8 and another at U10, focused on football from Pee Wees (5 year olds) through Under 11s.',
  },
  {
    year: '2001 – 2014',
    title: 'A Decade of Growth',
    body:
      'Driven by volunteer coaches and committed parents, WAFC grows into one of the leading and most successful youth clubs in Bermuda.',
  },
  {
    year: '2015',
    title: 'Girls Football Takes Off',
    body:
      'Having reached the maximum two boys teams per age group, Warwick joins BHS and Bascombe FC to launch a Bermuda Girls League. Warwick win the inaugural Girls Cup, paving the way for girls fixtures in the end-of-season Kappa tournament and a BFA-run Girls League that continues today.',
  },
  {
    year: '2016',
    title: 'Warwick Archers FC',
    body:
      'Warwick Academy (the School) and WAFC partner with Robin Hood Football Club to create the Warwick Archers Football Club — a pathway from U13 to adult football aimed at competitive footballers and players developing in the older age groups.',
  },
  {
    year: '2023',
    title: 'One Club, One Badge',
    body:
      'After exploratory discussions, WAFC, Archers and the School merge as the Warwick Football Academy (WFA) for the 2023/24 season — registered with the Bermuda Football Association as one Club playing under one name, badge and kit.',
  },
  {
    year: 'Today',
    title: 'A Club For All',
    body:
      'Girls participation now matches the boys across every age group. From Pee Wees to the Mens First Team, Warwick Football Academy is very much a club for all ages and all players.',
  },
];

export function History() {
  const [lightbox, setLightbox] = useState<number | null>(null);

  useEffect(() => {
    if (lightbox === null) return;
    const onKey = (e: KeyboardEvent) => {
      if (e.key === 'Escape') setLightbox(null);
      if (e.key === 'ArrowRight') setLightbox((i) => (i === null ? null : (i + 1) % PHOTOS.length));
      if (e.key === 'ArrowLeft') setLightbox((i) => (i === null ? null : (i - 1 + PHOTOS.length) % PHOTOS.length));
    };
    document.addEventListener('keydown', onKey);
    const prev = document.body.style.overflow;
    document.body.style.overflow = 'hidden';
    return () => {
      document.removeEventListener('keydown', onKey);
      document.body.style.overflow = prev;
    };
  }, [lightbox]);

  return (
    <>
      {/* HERO */}
      <section className="relative overflow-hidden bg-navy text-white">
        <img
          src={HERO_IMAGE}
          alt=""
          aria-hidden
          className="absolute inset-0 h-full w-full object-cover opacity-20"
        />
        <div className="container-page relative py-14 sm:py-20">
          <div className="inline-block rounded bg-gold px-3 py-1 text-xs font-bold uppercase tracking-widest text-navy">
            Est. 2001 · Merged 2023
          </div>
          <h1 className="mt-3 font-display text-4xl text-white sm:text-5xl lg:text-6xl">
            Our History
          </h1>
          <p className="mt-3 max-w-2xl text-white/85">
            From a single boys team to one of Bermuda's largest football clubs — the story of Warwick Football Academy.
          </p>
        </div>
      </section>

      {/* INTRO */}
      <section className="container-page py-12">
        <div className="prose max-w-3xl">
          <p className="text-lg leading-relaxed text-slate-700">
            The Warwick Academy Football Club was founded in 2001 with just two boys teams. Two decades later,
            through the work of countless volunteer coaches and parents — and a 2023 merger of three football
            entities — it has become the Warwick Football Academy: a unified club fielding teams from Pee Wee
            through the Mens First Team, for boys and girls alike.
          </p>
        </div>
      </section>

      {/* TIMELINE */}
      <section className="bg-slate-50 py-16">
        <div className="container-page">
          <h2 className="mb-10 text-center text-3xl text-navy">A Timeline</h2>
          <div className="relative mx-auto max-w-3xl">
            <div className="absolute left-4 top-0 h-full w-px bg-navy/20 sm:left-1/2 sm:-translate-x-1/2" />
            <div className="space-y-8">
              {TIMELINE.map((era, i) => (
                <div
                  key={era.year}
                  className={`relative pl-12 sm:flex sm:items-start sm:gap-6 sm:pl-0 ${
                    i % 2 === 0 ? 'sm:flex-row' : 'sm:flex-row-reverse'
                  }`}
                >
                  <span className="absolute left-4 top-3 -translate-x-1/2 rounded-full bg-gold p-1.5 ring-4 ring-white sm:left-1/2" />
                  <div className="sm:w-1/2 sm:px-6">
                    <div
                      className={`card p-5 ${i % 2 === 0 ? 'sm:text-right' : 'sm:text-left'}`}
                    >
                      <div className="text-xs font-bold uppercase tracking-widest text-gold">
                        {era.year}
                      </div>
                      <h3 className="mt-1 text-xl text-navy">{era.title}</h3>
                      <p className="mt-2 text-sm leading-relaxed text-slate-700">{era.body}</p>
                    </div>
                  </div>
                  <div className="hidden sm:block sm:w-1/2" />
                </div>
              ))}
            </div>
          </div>
        </div>
      </section>

      {/* GALLERY */}
      <section className="container-page py-16">
        <div className="mb-8 text-center">
          <h2 className="text-3xl text-navy">Through the Years</h2>
          <p className="mt-2 text-sm text-slate-600">Click any photo to view full size.</p>
        </div>
        <div className="grid grid-cols-2 gap-3 sm:grid-cols-3 lg:grid-cols-4">
          {PHOTOS.map((p, i) => (
            <button
              key={p.src}
              type="button"
              onClick={() => setLightbox(i)}
              className="group relative aspect-square overflow-hidden rounded-lg bg-slate-200 shadow transition hover:shadow-xl focus:outline-none focus:ring-2 focus:ring-gold"
            >
              <img
                src={p.src}
                alt={p.caption}
                loading="lazy"
                className="h-full w-full object-cover transition duration-300 group-hover:scale-105"
              />
              <span className="pointer-events-none absolute inset-x-0 bottom-0 bg-gradient-to-t from-navy/80 to-transparent p-2 text-left text-[11px] font-medium text-white opacity-0 transition group-hover:opacity-100">
                {p.caption}
              </span>
            </button>
          ))}
        </div>
      </section>

      {/* PARTNERS */}
      <section className="bg-white py-12">
        <div className="container-page text-center">
          <h2 className="text-2xl text-navy">Our Partners</h2>
          <div className="mt-6 flex flex-wrap items-center justify-center gap-10">
            <img
              src="https://media.sites.teamo.chat/3a98/58/291213/kappa_clqassic.png"
              alt="Kappa"
              className="h-12 object-contain"
            />
            <a
              href="https://theproshopltd.com/"
              target="_blank"
              rel="noopener noreferrer"
              className="text-sm font-semibold text-navy hover:text-gold"
            >
              <img
                src="https://media.sites.teamo.chat/3a98/58/291213/The_Pro_Shop_Ltd.png"
                alt="The Pro Shop Ltd."
                className="h-12 object-contain"
              />
            </a>
          </div>
        </div>
      </section>

      {/* LIGHTBOX */}
      {lightbox !== null && (
        <div
          role="dialog"
          aria-modal="true"
          aria-label={PHOTOS[lightbox].caption}
          className="fixed inset-0 z-50 flex items-center justify-center bg-black/85 p-4"
          onClick={() => setLightbox(null)}
        >
          <button
            type="button"
            aria-label="Close"
            onClick={() => setLightbox(null)}
            className="absolute right-4 top-4 rounded-full bg-white/10 p-2 text-white hover:bg-white/20"
          >
            <svg className="h-6 w-6" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
              <path d="M6 6l12 12M18 6L6 18" />
            </svg>
          </button>
          <button
            type="button"
            aria-label="Previous"
            onClick={(e) => {
              e.stopPropagation();
              setLightbox((i) => (i === null ? null : (i - 1 + PHOTOS.length) % PHOTOS.length));
            }}
            className="absolute left-4 top-1/2 -translate-y-1/2 rounded-full bg-white/10 p-3 text-white hover:bg-white/20"
          >
            <svg className="h-6 w-6" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
              <path d="M15 6l-6 6 6 6" />
            </svg>
          </button>
          <button
            type="button"
            aria-label="Next"
            onClick={(e) => {
              e.stopPropagation();
              setLightbox((i) => (i === null ? null : (i + 1) % PHOTOS.length));
            }}
            className="absolute right-4 top-1/2 -translate-y-1/2 rounded-full bg-white/10 p-3 text-white hover:bg-white/20"
          >
            <svg className="h-6 w-6" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
              <path d="M9 6l6 6-6 6" />
            </svg>
          </button>
          <figure
            className="max-h-full max-w-5xl"
            onClick={(e) => e.stopPropagation()}
          >
            <img
              src={PHOTOS[lightbox].src}
              alt={PHOTOS[lightbox].caption}
              className="max-h-[80vh] w-auto rounded-lg shadow-2xl"
            />
            <figcaption className="mt-3 text-center text-sm text-white/90">
              {PHOTOS[lightbox].caption}
            </figcaption>
          </figure>
        </div>
      )}
    </>
  );
}
