#!/usr/bin/env node
// tools/split-teamo-seed.mjs
//
// Splits supabase/seed-phase15-teamo-members.sql into per-section chunk files
// small enough for the Supabase SQL Editor. Each chunk is a self-contained
// transaction (begin; ...; commit;) that can be re-run safely.

import fs from 'node:fs';
import path from 'node:path';

const [, , inFile, outDir] = process.argv;
if (!inFile || !outDir) {
  console.error('usage: split-teamo-seed.mjs <in.sql> <outDir>');
  process.exit(2);
}

const src = fs.readFileSync(inFile, 'utf8');

// Strip the outer begin/commit so we can re-wrap per chunk.
const lines = src.split('\n').filter((l) =>
  l.trim() !== 'begin;' && l.trim() !== 'commit;'
);

// Section headers use the pattern:
//   -- --------------------------------------------------------------
//   -- NAME
//   -- --------------------------------------------------------------
const sections = [];
let current = null;
for (let i = 0; i < lines.length; i++) {
  const line = lines[i];
  const isRule = /^-- -{20,}$/.test(line.trim());
  const nextIsRule = i + 2 < lines.length && /^-- -{20,}$/.test(lines[i + 2]?.trim() ?? '');
  if (isRule && nextIsRule) {
    const title = lines[i + 1].replace(/^-- /, '').trim();
    if (current) sections.push(current);
    current = { title, lines: [line, lines[i + 1], lines[i + 2]] };
    i += 2;
    continue;
  }
  if (current) current.lines.push(line);
  else {
    // preamble (top-of-file comments) — attach to a synthetic "preamble" section
    current = { title: 'PREAMBLE', lines: [line] };
  }
}
if (current) sections.push(current);

// Merge "PREAMBLE" comments into the next section instead of writing a file.
if (sections[0]?.title === 'PREAMBLE') {
  const preamble = sections.shift();
  if (sections[0]) sections[0].lines = [...preamble.lines, '', ...sections[0].lines];
}

fs.mkdirSync(outDir, { recursive: true });

// Some sections (PLAYERS, PLAYER ↔ TEAM, ACTIVITY LOG) can still be several
// MB. Chunk those further at ~400 KB boundaries, always at statement ends —
// the Supabase SQL Editor rejects queries much above ~500 KB.
const MAX_BYTES = 400_000;

function chunkSection(section) {
  const chunks = [];
  let buf = [];
  let size = 0;
  for (const ln of section.lines) {
    buf.push(ln);
    size += ln.length + 1;
    if (size >= MAX_BYTES && /;\s*$/.test(ln)) {
      chunks.push(buf);
      buf = [];
      size = 0;
    }
  }
  if (buf.length) chunks.push(buf);
  return chunks;
}

let idx = 0;
for (const section of sections) {
  const chunks = chunkSection(section);
  chunks.forEach((chunkLines, ci) => {
    idx++;
    const safeTitle = section.title
      .toLowerCase()
      .replace(/[^a-z0-9]+/g, '-')
      .replace(/^-+|-+$/g, '')
      .slice(0, 40);
    const suffix = chunks.length > 1 ? `-part${ci + 1}` : '';
    const name = `seed-phase15-teamo-${String(idx).padStart(2, '0')}-${safeTitle}${suffix}.sql`;
    const out = ['begin;', '', ...chunkLines, '', 'commit;', ''].join('\n');
    fs.writeFileSync(path.join(outDir, name), out, 'utf8');
    console.log(`${(out.length / 1024).toFixed(0).padStart(4)} KB  ${name}`);
  });
}
