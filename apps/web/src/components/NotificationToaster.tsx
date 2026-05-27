import { useNotifications } from '@/data/phase4';
import { Link } from 'react-router-dom';

export function NotificationToaster() {
  const { items, dismiss } = useNotifications();
  if (items.length === 0) return null;

  return (
    <div className="pointer-events-none fixed bottom-4 right-4 z-50 flex w-80 max-w-[calc(100vw-2rem)] flex-col gap-2">
      {items.map((n) => (
        <div
          key={n.id}
          className="pointer-events-auto flex items-start gap-3 rounded-lg border border-slate-200 bg-white p-3 shadow-lg"
        >
          <div className={`mt-1 h-2.5 w-2.5 flex-shrink-0 rounded-full ${
            n.kind === 'fixture' ? 'bg-red-500' : 'bg-gold'
          }`} />
          <div className="flex-1 text-sm">
            <Link to={n.href} className="font-semibold text-navy hover:underline">
              {n.title}
            </Link>
            <div className="text-xs text-slate-500">
              {n.kind === 'fixture' ? 'Match update' : 'New article'}
            </div>
          </div>
          <button
            onClick={() => dismiss(n.id)}
            className="text-slate-400 hover:text-slate-700"
            aria-label="Dismiss"
          >
            ×
          </button>
        </div>
      ))}
    </div>
  );
}
