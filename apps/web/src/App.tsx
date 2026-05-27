import { Routes, Route } from 'react-router-dom';
import { RootLayout } from './layout/RootLayout';
import { Home } from './pages/Home';
import { News } from './pages/News';
import { Fixtures } from './pages/Fixtures';
import { Results } from './pages/Results';
import { Teams } from './pages/Teams';
import { TeamDetail } from './pages/TeamDetail';
import { Contact } from './pages/Contact';
import { Login } from './pages/Login';
import { Signup } from './pages/Signup';
import { CoachDashboard } from './pages/CoachDashboard';
import { AdminDashboard } from './pages/AdminDashboard';
import { NotFound } from './pages/NotFound';
import { RequireAuth } from './auth/RequireAuth';

export default function App() {
  return (
    <Routes>
      <Route element={<RootLayout />}>
        <Route index element={<Home />} />
        <Route path="news" element={<News />} />
        <Route path="fixtures" element={<Fixtures />} />
        <Route path="results" element={<Results />} />
        <Route path="teams" element={<Teams />} />
        <Route path="teams/:slug" element={<TeamDetail />} />
        <Route path="contact" element={<Contact />} />
        <Route path="login" element={<Login />} />
        <Route path="signup" element={<Signup />} />
        <Route
          path="coach"
          element={
            <RequireAuth roles={['coach', 'admin']}>
              <CoachDashboard />
            </RequireAuth>
          }
        />
        <Route
          path="admin"
          element={
            <RequireAuth roles={['admin', 'coach']}>
              <AdminDashboard />
            </RequireAuth>
          }
        />
        <Route path="*" element={<NotFound />} />
      </Route>
    </Routes>
  );
}
