import type { ReactNode } from 'react';
import { Navigate, useLocation } from 'react-router-dom';
import { useAuth, type Role } from './AuthProvider';

type Props = {
  children: ReactNode;
  roles?: Role[];
};

export function RequireAuth({ children, roles }: Props) {
  const { ready, user, roles: userRoles } = useAuth();
  const location = useLocation();

  if (!ready) {
    return (
      <div className="flex min-h-[40vh] items-center justify-center text-slate-500">
        Loading…
      </div>
    );
  }

  if (!user) {
    return <Navigate to="/login" state={{ from: location }} replace />;
  }

  if (roles && roles.length > 0 && !roles.some((r) => userRoles.includes(r))) {
    return <Navigate to="/" replace />;
  }

  return <>{children}</>;
}
