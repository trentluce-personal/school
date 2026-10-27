# Working in this repo

This is a working coursework and practice repo for an MIS degree at Wichita
State University, not a single application. Read the root README and the relevant
course README before changing course materials.

## Where work belongs

- Keep course work in its existing course folder. Follow the course's own layout
  rather than forcing the template structure onto it.
- Keep independent practice in `practice/`, shared lookup material in
  `reference/`, and repo utilities in `scripts/`.
- Only put finished work in `portfolio/`.
- Use lowercase, hyphenated file names without spaces. Follow the README's
  course, assignment, and dataset naming conventions.

## Coursework and sources

- Follow the course's stated rules for AI assistance and WSU's academic integrity
  policy. Check the relevant syllabus and assignment instructions before helping
  with graded work; ask when the permitted scope is unclear.
- Do not invent citations, assignment requirements, grades, or deadlines.
- Keep original syllabi and handouts unchanged and authoritative. Markdown copies
  belong next to the originals.
- Keep notes in Markdown. When editing prose, use the existing `humanizer` skill
  in `.opencode/skills/humanizer/` (mirrored in `.claude/skills/humanizer/`).
- Every course targets A- or better. Preserve each course README's grade goal and
  plan against its documented 90% cutoff.

## Data and changes

- Never edit files in `datasets/raw/`. Put cleaned data in `datasets/clean/` with
  the script that produced it.
- Never commit credentials, API keys, or connection strings. Use a local ignored
  `.env` when needed.
- Keep changes focused on the request and preserve existing uncommitted work.
- Ask before deleting files, overwriting original materials, or committing.

## Validation

There is no repo-wide build or test runner. Check the relevant course or practice
folder for its own tooling and use the smallest applicable check. For prose-only
changes, verify the assignment requirements, sources, and Markdown links rather
than adding build tooling.
