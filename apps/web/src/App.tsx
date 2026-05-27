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
import { FixtureDetail } from './pages/FixtureDetail';
import { MatchConsole } from './pages/MatchConsole';
import { PlayerProfile } from './pages/PlayerProfile';
import { Stats } from './pages/Stats';
import { Training } from './pages/Training';
import { Gallery } from './pages/Gallery';
import { ContentPage } from './pages/ContentPage';
import { History } from './pages/History';
import { Register } from './pages/Register';
import { RegistrationWizard } from './pages/RegistrationWizard';
import { TeamCalendar } from './pages/TeamCalendar';
import { NotFound } from './pages/NotFound';
import { RequireAuth } from './auth/RequireAuth';

export default function App() {
  return (
    <Routes>
      <Route element={<RootLayout />}>
        <Route index element={<Home />} />
        <Route path="news" element={<News />} />
        <Route path="fixtures" element={<Fixtures />} />
        <Route path="fixtures/:id" element={<FixtureDetail />} />
        <Route path="results" element={<Results />} />
        <Route path="teams" element={<Teams />} />
        <Route path="teams/:slug" element={<TeamDetail />} />
        <Route path="players/:id" element={<PlayerProfile />} />
        <Route path="stats" element={<Stats />} />
        <Route path="training" element={<Training />} />
        <Route path="gallery" element={<Gallery />} />
        <Route path="page/history" element={<History />} />
        <Route path="page/:slug" element={<ContentPage />} />
        <Route path="register" element={<Register />} />
        <Route path="register/start" element={<RegistrationWizard />} />
        <Route
          path="calendar/:teamSlug"
          element={
            <RequireAuth>
              <TeamCalendar />
            </RequireAuth>
          }
        />
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
          path="coach/match/:id"
          element={
            <RequireAuth roles={['coach', 'admin']}>
              <MatchConsole />
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
