import type { ReactNode } from 'react';

export type SideNavItem<T extends string> = { key: T; label: string };

/**
 * Flush-left console navigation rail shared by the Admin and Coach portals.
 * Collapses to a <select> below `lg` so it doesn't eat the screen on mobile.
 */
export function SideNav<T extends string>({
  title,
  subtitle,
  items,
  active,
  onSelect,
  footer,
}: {
  title: string;
  subtitle?: string | null;
  items: SideNavItem<T>[];
  active: T;
  onSelect: (key: T) => void;
  footer?: ReactNode;
}) {
  return (
    <aside className="border-b border-slate-200 bg-white lg:sticky lg:top-16 lg:h-[calc(100vh-4rem)] lg:self-start lg:overflow-y-auto lg:border-b-0 lg:border-r">
      <div className="px-4 py-4">
        <p className="font-display text-xl uppercase tracking-wide text-navy">{title}</p>
        {subtitle && <p className="mt-0.5 truncate text-xs text-slate-500">{subtitle}</p>}

        <label className="mt-4 block lg:hidden">
          <span className="sr-only">{title} section</span>
          <select className="input" value={active} onChange={(e) => onSelect(e.target.value as T)}>
            {items.map((item) => (
              <option key={item.key} value={item.key}>
                {item.label}
              </option>
            ))}
          </select>
        </label>

        <nav className="mt-4 hidden flex-col gap-1 lg:flex">
          {items.map((item) => {
            const isActive = item.key === active;
            return (
              <button
                key={item.key}
                type="button"
                onClick={() => onSelect(item.key)}
                aria-current={isActive ? 'page' : undefined}
                className={`rounded-lg px-3 py-2 text-left text-sm font-semibold transition ${
                  isActive ? 'bg-navy text-white' : 'text-slate-600 hover:bg-navy-50 hover:text-navy'
                }`}
              >
                {item.label}
              </button>
            );
          })}
        </nav>

        {footer && <div className="mt-6 border-t border-slate-200 pt-4">{footer}</div>}
      </div>
    </aside>
  );
}
