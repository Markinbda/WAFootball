import { NEWS } from '@/data/seed';

export function News() {
  return (
    <div className="container-page py-12">
      <h1 className="text-4xl">News</h1>
      <p className="mt-2 text-slate-600">Match reports, club announcements, and updates.</p>

      <div className="mt-10 grid gap-6 md:grid-cols-2 lg:grid-cols-3">
        {NEWS.map((item) => (
          <article key={item.id} className="card overflow-hidden">
            <div className="h-44 bg-gradient-to-br from-navy via-navy-600 to-navy-500" />
            <div className="p-5">
              <div className="text-xs font-semibold uppercase tracking-wider text-gold">
                {item.tag}
              </div>
              <h2 className="mt-2 text-xl">{item.title}</h2>
              <p className="mt-2 text-sm text-slate-600">{item.excerpt}</p>
              <div className="mt-4 text-xs text-slate-500">
                {new Date(item.date).toLocaleDateString('en-GB', {
                  day: 'numeric', month: 'short', year: 'numeric',
                })}{' '}· {item.author}
              </div>
            </div>
          </article>
        ))}
      </div>
    </div>
  );
}
