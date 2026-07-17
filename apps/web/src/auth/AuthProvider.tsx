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

  // Returns null on error so callers can distinguish "no roles" (empty array)
  // from "we couldn't check" (null). We must NEVER clobber a good roles array
  // with an empty one just because a background token refresh had a network
  // blip — that's what makes the Admin button disappear on navigation.
  const fetchRoles = useCallback(async (userId: string): Promise<Role[] | null> => {
    if (!supabase) return [];
    try {
      const { data, error } = await supabase
        .from('user_roles')
        .select('role')
        .eq('user_id', userId);
      if (error) {
        console.error('[AuthProvider fetchRoles]', error);
        return null;
      }
      return (data ?? []).map((r) => r.role as Role);
    } catch (e) {
      console.error('[AuthProvider fetchRoles] threw', e);
      return null;
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
        // Race getSession against a timeout so a hung storage/auth read
        // can't strand the entire app on a "Loading…" spinner. If the race
        // times out, we still set `ready=true` — the eventual
        // onAuthStateChange('INITIAL_SESSION' | 'SIGNED_IN') callback will
        // populate the session when the real read completes, so the user
        // isn't falsely signed out. 8s is generous enough for slow storage
        // reads but short enough that a genuine hang doesn't strand users.
        const sessionPromise = supabase.auth.getSession()
          .then((r) => {
            if (r.error) console.error('[AuthProvider getSession]', r.error);
            return r.data.session ?? null;
          })
          .catch((e) => { console.error('[AuthProvider getSession threw]', e); return null; });
        const timeout = new Promise<Session | null>((resolve) => setTimeout(() => {
          console.warn('[AuthProvider] getSession timed out after 8s — rendering shell, will hydrate via onAuthStateChange');
          resolve(null);
        }, 8000));
        const s = await Promise.race([sessionPromise, timeout]);
        if (!mounted) return;
        setSession(s);
        // Kick off roles fetch but do NOT block `ready` on it — if the roles
        // query stalls the page will still render.
        if (s?.user) {
          void fetchRoles(s.user.id).then((r) => {
            if (mounted && r !== null) setRoles(r);
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
      // AND only overwrite roles when fetchRoles returns a definitive
      // answer (non-null). Otherwise a transient network error during a
      // TOKEN_REFRESHED event would wipe the Admin button mid-session.
      if (s?.user) {
        const r = await fetchRoles(s.user.id);
        if (mounted && r !== null) setRoles(r);
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
