import type { Fixture } from '@/data/seed';

function pad(n: number) { return n.toString().padStart(2, '0'); }

function toIcsDate(iso: string): string {
  const d = new Date(iso);
  return (
    d.getUTCFullYear().toString() +
    pad(d.getUTCMonth() + 1) +
    pad(d.getUTCDate()) +
    'T' +
    pad(d.getUTCHours()) +
    pad(d.getUTCMinutes()) +
    pad(d.getUTCSeconds()) +
    'Z'
  );
}

function escapeIcs(text: string): string {
  return text.replace(/\\/g, '\\\\').replace(/;/g, '\\;').replace(/,/g, '\\,').replace(/\n/g, '\\n');
}

export function fixturesToIcs(fixtures: Fixture[], calName = 'Warwick FA Fixtures'): string {
  const now = toIcsDate(new Date().toISOString());
  const lines: string[] = [
    'BEGIN:VCALENDAR',
    'VERSION:2.0',
    'PRODID:-//Warwick FA//Fixtures//EN',
    'CALSCALE:GREGORIAN',
    `X-WR-CALNAME:${escapeIcs(calName)}`,
  ];
  for (const f of fixtures) {
    const start = toIcsDate(f.date);
    // assume 2-hour fixture window
    const end = toIcsDate(new Date(new Date(f.date).getTime() + 2 * 60 * 60 * 1000).toISOString());
    lines.push(
      'BEGIN:VEVENT',
      `UID:wfa-${f.id}@warwickfootball.bm`,
      `DTSTAMP:${now}`,
      `DTSTART:${start}`,
      `DTEND:${end}`,
      `SUMMARY:${escapeIcs(`${f.team} vs ${f.opponent}`)}`,
      `LOCATION:${escapeIcs(f.venue === 'Home' ? 'Warwick FA Ground' : 'Away')}`,
      `DESCRIPTION:${escapeIcs(f.competition)}`,
      'END:VEVENT',
    );
  }
  lines.push('END:VCALENDAR');
  return lines.join('\r\n');
}

export function downloadIcs(filename: string, ics: string): void {
  const blob = new Blob([ics], { type: 'text/calendar;charset=utf-8' });
  const url = URL.createObjectURL(blob);
  const a = document.createElement('a');
  a.href = url;
  a.download = filename;
  document.body.appendChild(a);
  a.click();
  a.remove();
  URL.revokeObjectURL(url);
}
