import { Link, useParams } from 'react-router-dom';
import { PAGES } from '@/data/pages';

export function ContentPage() {
  const { slug = '' } = useParams();
  const page = PAGES[slug];

  if (!page) {
    return (
      <section className="container-page py-20 text-center">
        <h1 className="text-3xl">Page not found</h1>
        <p className="mt-3 text-slate-600">We couldn't find that page.</p>
        <Link to="/" className="btn-primary mt-6 inline-block">Back to home</Link>
      </section>
    );
  }

  return (
    <>
      <section className="bg-navy py-12 text-white">
        <div className="container-page">
          <h1 className="font-display text-4xl text-white sm:text-5xl">{page.title}</h1>
          {page.subtitle && <p className="mt-2 text-white/80">{page.subtitle}</p>}
        </div>
      </section>
      <section className="container-page py-12">
        <div className="prose max-w-3xl">
          {page.sections.map((s, i) => (
            <div key={i} className="mb-8">
              {s.heading && <h2 className="text-2xl text-navy">{s.heading}</h2>}
              {s.paragraphs?.map((p, j) => (
                <p key={j} className="mt-3 leading-relaxed text-slate-700">{p}</p>
              ))}
              {s.bullets && (
                <ul className="mt-3 space-y-2">
                  {s.bullets.map((b, j) => (
                    <li key={j} className="flex gap-2 text-slate-700">
                      <span className="mt-2 inline-block h-1.5 w-1.5 shrink-0 rounded-full bg-gold" />
                      <span>{b}</span>
                    </li>
                  ))}
                </ul>
              )}
            </div>
          ))}
        </div>
      </section>
    </>
  );
}
