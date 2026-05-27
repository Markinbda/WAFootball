import { Link } from 'react-router-dom';

export function NotFound() {
  return (
    <div className="container-page flex min-h-[50vh] flex-col items-center justify-center py-12 text-center">
      <div className="font-display text-7xl text-navy">404</div>
      <p className="mt-2 text-slate-600">
        That page doesn't exist — try the home page instead.
      </p>
      <Link to="/" className="btn-primary mt-6">Back home</Link>
    </div>
  );
}
