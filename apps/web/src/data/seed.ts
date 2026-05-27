export type Team = {
  id?: string;
  slug: string;
  name: string;
  ageGroup: string;
  coach: string;
  blurb: string;
  photoUrl?: string | null;
};

export const TEAMS: Team[] = [
  { slug: 'mens-first', name: "Men's First Team", ageGroup: 'Senior', coach: 'TBC', blurb: 'The flagship senior side competing in the Bermuda Premier Division.' },
  { slug: 'mens-reserves', name: "Men's Reserves", ageGroup: 'Senior', coach: 'TBC', blurb: 'Developmental senior side feeding the first team.' },
  { slug: 'u17', name: 'Under-17', ageGroup: 'Youth', coach: 'TBC', blurb: 'Bridging youth football and the senior squad.' },
  { slug: 'u15', name: 'Under-15', ageGroup: 'Youth', coach: 'TBC', blurb: 'Building tactical understanding and match fitness.' },
  { slug: 'u13', name: 'Under-13', ageGroup: 'Youth', coach: 'TBC', blurb: 'Competitive 11-a-side football with a focus on game intelligence.' },
  { slug: 'u11', name: 'Under-11', ageGroup: 'Youth', coach: 'TBC', blurb: '9-a-side football introducing positional play.' },
  { slug: 'u9', name: 'Under-9', ageGroup: 'Mini', coach: 'TBC', blurb: 'Small-sided games developing first touch and confidence.' },
  { slug: 'u7', name: 'Under-7', ageGroup: 'Mini', coach: 'TBC', blurb: 'Fun-first introduction to football for our youngest players.' },
];

export type Fixture = {
  id: string;
  team: string;
  opponent: string;
  date: string; // ISO
  venue: 'Home' | 'Away';
  competition: string;
};

export const UPCOMING_FIXTURES: Fixture[] = [
  { id: 'f1', team: "Men's First", opponent: 'Somerset Trojans', date: '2026-06-06T19:00:00-03:00', venue: 'Home',  competition: 'Premier Division' },
  { id: 'f2', team: 'U15',          opponent: 'Devonshire Cougars', date: '2026-06-07T10:00:00-03:00', venue: 'Away', competition: 'Youth League' },
  { id: 'f3', team: 'U13',          opponent: 'Dandy Town',         date: '2026-06-07T12:00:00-03:00', venue: 'Home', competition: 'Youth League' },
  { id: 'f4', team: "Men's First", opponent: 'X-Roads',             date: '2026-06-13T19:00:00-03:00', venue: 'Away', competition: 'Premier Division' },
];

export type Result = {
  id: string;
  team: string;
  opponent: string;
  date: string;
  scoreFor: number;
  scoreAgainst: number;
  venue: 'Home' | 'Away';
  competition: string;
};

export const RECENT_RESULTS: Result[] = [
  { id: 'r1', team: 'U15',          opponent: 'Somerset Eagles',    date: '2026-05-24', scoreFor: 8, scoreAgainst: 7, venue: 'Home', competition: 'Youth League' },
  { id: 'r2', team: "Men's First", opponent: 'PHC Zebras',          date: '2026-05-23', scoreFor: 2, scoreAgainst: 1, venue: 'Away', competition: 'Premier Division' },
  { id: 'r3', team: 'U13',          opponent: 'North Village',       date: '2026-05-17', scoreFor: 3, scoreAgainst: 3, venue: 'Home', competition: 'Youth League' },
  { id: 'r4', team: 'U11',          opponent: 'Boulevard Blazers',   date: '2026-05-17', scoreFor: 5, scoreAgainst: 0, venue: 'Away', competition: 'Mini League' },
];

export type NewsItem = {
  id: string;
  slug: string;
  title: string;
  excerpt: string;
  date: string;
  author: string;
  tag: string;
};

export const NEWS: NewsItem[] = [
  {
    id: 'n1', slug: '2026-26-registration-open',
    title: '2026/27 Registration Now Open',
    excerpt: 'Sign your child up for the new season. All age groups from U7 to U17 plus senior teams.',
    date: '2026-05-26', author: 'Club Secretary', tag: 'Registration',
  },
  {
    id: 'n2', slug: 'u15-thriller-vs-somerset',
    title: 'U15 Win Thriller 8–7 Against Somerset',
    excerpt: 'A breathless end-to-end encounter saw our U15s edge past Somerset Eagles in injury time.',
    date: '2026-05-25', author: 'Match Reporter', tag: 'Match Report',
  },
  {
    id: 'n3', slug: 'new-bespoke-platform',
    title: 'New Club Website Launched',
    excerpt: 'Warwick FA unveils a bespoke digital home — built for our club, our teams, and our community.',
    date: '2026-05-24', author: 'Committee', tag: 'Club',
  },
];
