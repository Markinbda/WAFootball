export function Footer() {
  const year = new Date().getFullYear();
  return (
    <footer className="mt-16 bg-navy-800 text-white">
      <div className="container-page grid gap-8 py-10 md:grid-cols-4">
        <div>
          <div className="flex items-center gap-2">
            <div className="grid h-9 w-9 place-items-center rounded-full bg-white font-display text-navy">
              W
            </div>
            <div className="font-display tracking-wider">Warwick FA</div>
          </div>
          <p className="mt-3 text-sm text-white/70">
            The official home of Warwick Football Association.
          </p>
        </div>
        <div>
          <h4 className="text-sm font-semibold text-gold">Club</h4>
          <ul className="mt-3 space-y-2 text-sm text-white/80">
            <li>About</li>
            <li>Teams</li>
            <li>Coaches</li>
            <li>Sponsors</li>
          </ul>
        </div>
        <div>
          <h4 className="text-sm font-semibold text-gold">Get Involved</h4>
          <ul className="mt-3 space-y-2 text-sm text-white/80">
            <li>Registration</li>
            <li>Trials</li>
            <li>Volunteer</li>
            <li>Contact</li>
          </ul>
        </div>
        <div>
          <h4 className="text-sm font-semibold text-gold">Find Us</h4>
          <p className="mt-3 text-sm text-white/80">
            Warwick, Bermuda
            <br />
            <a href="mailto:info@warwickfootball.bm" className="text-white hover:text-gold">
              info@warwickfootball.bm
            </a>
          </p>
        </div>
      </div>
      <div className="border-t border-white/10 py-4 text-center text-xs text-white/60">
        © {year} Warwick Football Association. Built for Warwick FA.
      </div>
    </footer>
  );
}
