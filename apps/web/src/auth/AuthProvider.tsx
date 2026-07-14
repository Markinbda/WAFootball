import {
  createContext, useCallback, useContext, useEffect, useMemo, useState,
  type ReactNode,
} from 'react';
import type { Session, User } from '@supabase/supabase-js';
import { getSupabase, isSupabaseConfigured } from '@/lib/supabase';

export type Role = 'admin' | 'coach' | 'parent' | 'member';

type AuthContextValue = {
  ready: boolean;
  session: Session | null;
  user: User | null;
  roles: Role[];
  signInWithEmail: (email: string, password: string) => Promise<{ error?: string }>;
  signOut: () => Promise<void>;
  configured: boolean;
};

const AuthContext = createContext<AuthContextValue | undefined>(undefined);

export function AuthProvider({ children }: { children: ReactNode }) {
  const [ready, setReady] = useState(false);
  const [session, setSession] = useState<Session | null>(null);
  const [roles, setRoles] = useState<Role[]>([]);

  const supabase = getSupabase();

  const fetchRoles = useCallback(async (userId: string): Promise<Role[]> => {
    if (!supabase) return [];
    try {
      const { data, error } = await supabase
        .from('user_roles')
        .select('role')
        .eq('user_id', userId);
      if (error || !data) return [];
      return data.map((r) => r.role as Role);
    } catch (e) {
      console.error('[AuthProvider fetchRoles] threw', e);
      return [];
    }
  }, [supabase]);

  useEffect(() => {
    let mounted = true;
    if (!supabase) {
      setReady(true);
      return;
    }

    (async () => {
      try {
        // NOTE: we intentionally do NOT race against a short timeout here.
        // The no-op `lock` in getSupabase() already prevents navigator.locks
        // deadlocks, and a race was previously causing false-negative
        // sign-outs on page refresh when storage reads were slow (users got
        // bounced to /login before the real session hydrated).
        const { data, error } = await supabase.auth.getSession();
        if (error) console.error('[AuthProvider getSession]', error);
        const s = data.session ?? null;
        if (!mounted) return;
        setSession(s);
        // Kick off roles fetch but do NOT block `ready` on it — if the roles
        // query stalls the page will still render.
        if (s?.user) {
          void fetchRoles(s.user.id).then((r) => {
            if (mounted) setRoles(r);
          });
        }
      } catch (e) {
        console.error('[AuthProvider init] threw', e);
      } finally {
        if (mounted) setReady(true);
      }
    })();

    const { data: sub } = supabase.auth.onAuthStateChange(async (event, s) => {
      if (!mounted) return;
      setSession(s);
      if (event === 'SIGNED_OUT') {
        setRoles([]);
        return;
      }
      // Only refresh roles if we have a user (INITIAL_SESSION may carry null
      // even when storage has a session — don't wipe roles in that case).
      if (s?.user) {
        const r = await fetchRoles(s.user.id);
        if (mounted) setRoles(r);
      }
    });

    return () => {
      mounted = false;
      sub.subscription.unsubscribe();
    };
  }, [supabase, fetchRoles]);

  const signInWithEmail = useCallback(
    async (email: string, password: string) => {
      if (!supabase) return { error: 'Supabase not configured' };
      const { error } = await supabase.auth.signInWithPassword({ email, password });
      return error ? { error: error.message } : {};
    },
    [supabase],
  );

  const signOut = useCallback(async () => {
    if (!supabase) return;
    await supabase.auth.signOut();
  }, [supabase]);

  const value = useMemo<AuthContextValue>(() => ({
    ready,
    session,
    user: session?.user ?? null,
    roles,
    signInWithEmail,
    signOut,
    configured: isSupabaseConfigured,
  }), [ready, session, roles, signInWithEmail, signOut]);

  return <AuthContext.Provider value={value}>{children}</AuthContext.Provider>;
}

export function useAuth(): AuthContextValue {
  const ctx = useContext(AuthContext);
  if (!ctx) throw new Error('useAuth must be used within AuthProvider');
  return ctx;
}
