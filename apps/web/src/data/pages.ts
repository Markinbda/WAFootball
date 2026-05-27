// Content for static pages mirrored from the original Warwick Football Academy site.
// Each entry renders via /page/:slug in ContentPage.tsx.

export type PageSection = {
  heading?: string;
  paragraphs?: string[];
  bullets?: string[];
  cta?: { label: string; href: string; external?: boolean };
};

export type PageContent = {
  title: string;
  subtitle?: string;
  sections: PageSection[];
};

export const PAGES: Record<string, PageContent> = {
  // ---------- ABOUT ----------
  history: {
    title: 'Our History',
    subtitle: 'A proud Bermudian football club since 1965.',
    sections: [
      {
        paragraphs: [
          'Warwick FA was founded in 1965 and has been a cornerstone of Bermudian football for over six decades. From humble beginnings on the pitches around Warwick Parish, the club has grown into one of the island\'s most active youth and senior football academies.',
          'Today the club fields squads at every level from U5 Pee Wee through a competitive Men\'s First Team, with hundreds of players and coaches across the programme.',
        ],
      },
    ],
  },
  mission: {
    title: 'Mission & Values',
    subtitle: 'Why we play.',
    sections: [
      {
        heading: 'Mission',
        paragraphs: [
          'To develop confident, competitive and well-rounded footballers who love the game — on and off the pitch.',
        ],
      },
      {
        heading: 'Programme Values',
        bullets: [
          'Respect — for teammates, coaches, opponents and officials.',
          'Effort — every session, every match.',
          'Enjoyment — football should be fun first.',
          'Long-term development — the player ahead of the result.',
          'Community — proud representatives of Warwick Parish.',
        ],
      },
    ],
  },
  management: {
    title: 'Management & Staff',
    subtitle: 'The team behind Warwick FA.',
    sections: [
      {
        paragraphs: [
          'Our coaching team brings decades of combined experience to every age group. Coaches are licensed, DBS-checked and committed to ongoing professional development.',
        ],
      },
      {
        heading: 'Head Coaches',
        bullets: [
          "Marcus Bean — Men's First Team",
          "Richard Todd — Men's Reserves & U15",
          'Andrew Bascome — U17',
          'Kyle Lightbourne — U13',
          'Devarr Boyles — U11',
        ],
      },
    ],
  },
  ltad: {
    title: 'Long-Term Athletic Development',
    subtitle: 'Our player-development philosophy.',
    sections: [
      {
        paragraphs: [
          'Warwick FA follows a Long-Term Athletic Development (LTAD) model adapted from international youth football best practice. The model emphasises age-appropriate technique, decision-making, and physical literacy over short-term results.',
        ],
      },
      {
        heading: 'Stages',
        bullets: [
          'FUNdamentals (U5–U7) — movement skills, ball mastery, lots of touches.',
          'Learn to Train (U8–U11) — technical foundations, small-sided games.',
          'Train to Train (U12–U15) — tactical awareness, position-specific work.',
          'Train to Compete (U16–U18) — competitive football, fitness and recovery.',
          'Train to Win (Senior) — peak performance, league and cup competition.',
        ],
      },
    ],
  },
  faq: {
    title: 'Frequently Asked Questions',
    sections: [
      {
        heading: 'How do I register my child?',
        paragraphs: ['Use our online registration form and a coordinator will follow up within 48 hours.'],
        cta: {
          label: 'Register Now',
          href: 'https://www.warwickfootball.bm/registration',
          external: true,
        },
      },
      {
        heading: 'What does it cost?',
        paragraphs: ['Fees vary by age group and include a Kappa-branded kit. Reach out for the current season\'s fee schedule.'],
      },
      {
        heading: 'What if it rains?',
        paragraphs: ['Field closures and weather cancellations are posted on the Field Closures page and pushed via Teamo to registered families.'],
      },
      {
        heading: 'Can my child try a session first?',
        paragraphs: ['Yes — taster sessions are welcome for new players. Contact us to arrange one.'],
      },
    ],
  },

  // ---------- PROGRAMS ----------
  'program-u5': {
    title: 'U5 Pee Wee — Introductory Football',
    subtitle: 'First steps with a football.',
    sections: [
      {
        bullets: [
          'For boys & girls in the youngest age group (birth years rolling each season).',
          'Introductory football skills and small-sided game play.',
          'Once-weekly 1-hour sessions, Saturday mornings 8:30–9:30am at Warwick Academy.',
          'WFA staff-coach led, with parental involvement required in delivery.',
          '10 weeks in Fall + 9 weeks in Spring.',
        ],
      },
    ],
  },
  'program-u7': {
    title: 'U7 Foundation Football',
    subtitle: 'Mini soccer fundamentals.',
    sections: [
      {
        bullets: [
          'Boys & girls aged 5–6.',
          'Twice-weekly training plus Saturday match-day fixtures.',
          'Focus on ball mastery, coordination, and joy of the game.',
          'WFA staff coaches; small-sided 4v4 format.',
        ],
      },
    ],
  },
  'program-u9': {
    title: 'U9 Junior Academy',
    sections: [
      {
        bullets: [
          'Boys & girls aged 7–8.',
          '5v5 / 7v7 game format.',
          'Two training sessions per week plus weekend fixtures.',
          'Introduction to positional play and tactical concepts.',
        ],
      },
    ],
  },
  'program-u11': {
    title: 'U11 Junior Academy',
    sections: [
      {
        bullets: [
          'Boys & girls aged 9–10.',
          '7v7 / 9v9 competitive league play.',
          'Technical and tactical development core to every session.',
          'Travel opportunities to off-island tournaments.',
        ],
      },
    ],
  },
  'program-u13': {
    title: 'U13 Academy',
    sections: [
      {
        bullets: [
          '9v9 transitioning to 11v11.',
          'Strength & conditioning introduction.',
          'Multiple competitive teams within the age group.',
        ],
      },
    ],
  },
  'program-u15': {
    title: 'U15 Academy',
    sections: [
      {
        bullets: [
          '11v11 competitive league play.',
          'Position-specific technical coaching.',
          'Pathway into U17 and senior football.',
        ],
      },
    ],
  },
  'program-u17': {
    title: 'U17 Academy',
    sections: [
      {
        bullets: [
          'High-performance youth football.',
          'Tactical periodisation and video analysis.',
          'Direct bridge to the Reserves and First Team programmes.',
        ],
      },
    ],
  },
  'program-senior': {
    title: "Senior Men's Football",
    subtitle: 'First Team & Reserves.',
    sections: [
      {
        paragraphs: [
          "Warwick FA's senior set-up competes in the Bermuda Football Association Premier Division and supporting reserve league. Training runs three nights a week with match days on Saturdays.",
        ],
      },
    ],
  },
  'high-performance': {
    title: 'High-Performance Football Programmes',
    sections: [
      {
        paragraphs: [
          'Invitation-only programmes for our most committed players, focused on the technical, tactical, physical and psychological demands of elite youth football.',
        ],
      },
    ],
  },
  camps: {
    title: 'Camps & Holiday Programmes',
    sections: [
      {
        paragraphs: [
          'Half-term, Easter, and Summer camps are run throughout the year. Camps mix small-sided games, technical drills and end-of-week tournaments. Open to club members and visitors.',
        ],
      },
    ],
  },

  // ---------- INFO ----------
  membership: {
    title: 'Join Warwick FA',
    subtitle: 'Membership and registration.',
    sections: [
      {
        paragraphs: [
          'Registration for the current season is open. Spaces are limited in some age groups so register early.',
        ],
        cta: {
          label: 'Register Now',
          href: 'https://www.warwickfootball.bm/registration',
          external: true,
        },
      },
      {
        heading: 'How to join',
        bullets: [
          'Complete the online registration form, or',
          'Email the registrar (see Contact page), or',
          'Speak to any coach on a training night.',
        ],
      },
    ],
  },
  gear: {
    title: 'Club Gear & Merchandise',
    sections: [
      {
        paragraphs: [
          'Warwick FA proudly partners with Kappa for kit and The Pro Shop Ltd. for retail. Match kit is included in player fees; training-wear, hoodies and replica shirts are available via the club shop.',
        ],
      },
    ],
  },
  closures: {
    title: 'Field Closures & Weather Cancellations',
    sections: [
      {
        paragraphs: [
          'In the event of bad weather, training and match cancellations are posted here and pushed to families via Teamo. When in doubt, check before travelling.',
        ],
      },
      {
        heading: 'Current status',
        paragraphs: ['All pitches open — no cancellations.'],
      },
    ],
  },
};
