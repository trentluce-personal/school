# School

Practice and coursework repo for my MIS degree at Wichita State University.

This is a working scratchpad, not a showcase. Things here are half-finished on purpose —
practice queries, lab rebuilds, notes I took while something was still confusing.
Anything polished enough to show someone gets copied into `portfolio/`.

## Layout

```
courses/           One folder per course, named by course number
  _TEMPLATE-COURSE/  Copy this when a new semester starts
    notes/           Lecture and reading notes
    assignments/     Graded work, one folder per assignment
    labs/            In-class / hands-on exercises
    project/         Semester project, if the course has one
    resources/       Syllabus, rubrics, provided starter files
  Template is a starting point, not a rule. Drop the folders a course
  doesn't use, and rename one to match what the course actually calls it
  (MIS 600 says "in-class exercises", so that folder is named that).
practice/          Skill practice outside of any one course
  sql/               Queries, schema drills, normalization exercises
  python/            Scripts, pandas work, automation
  excel/             Workbooks, formula and pivot practice
  r/                 R scripts and stats work
  powerbi-tableau/   Dashboards and .pbix / .twbx files
  web/               HTML/CSS/JS practice
  systems-analysis/  Diagrams — ERD, DFD, UML, BPMN, use cases
reference/         Stuff I look up repeatedly
  cheatsheets/       Syntax refs, keyboard shortcuts, function lists
  templates/         Reusable starting points (report format, ERD template)
  glossary/          Terms and acronyms, one file per domain
datasets/          Data used across practice work
  raw/               As downloaded, never edited
  clean/             After cleaning, with the script that produced it
portfolio/         Finished work worth showing in an interview
admin/             Degree plan, term schedule, notes for advising meetings
scripts/           Small utilities that keep this repo tidy
```

## Repo-local OpenCode

OpenCode configuration and skills live in `.opencode/`. The humanizer skill
is in `.opencode/skills/humanizer/`, not `.claude/`.

On Windows, install and launch from PowerShell:

```powershell
.\scripts\setup-opencode.ps1
.\scripts\opencode.ps1
```

If PowerShell blocks unsigned scripts, use a process-only execution policy:

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\scripts\setup-opencode.ps1
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\scripts\opencode.ps1
```

Setup downloads the pinned official Windows binary (X64 or Arm64), verifies its
SHA-256 digest, and installs it under `.opencode/bin/`. No Node.js, npm, global
installation, administrator access, or permanent PATH change is needed.
Rerunning setup checks the existing installation; use `-Force` to reinstall.
The release version and archive digests are recorded in `.opencode/install.json`.
To upgrade, update that manifest with the official release's version and digests,
then rerun setup. Automatic updates are disabled.

Always launch through `scripts/opencode.ps1`, which forwards CLI arguments:

```powershell
.\scripts\opencode.ps1 --version
.\scripts\opencode.ps1 auth login
.\scripts\opencode.ps1 run "Explain the repository layout"
```

The launcher runs from the repository root and redirects OpenCode's config,
credentials, sessions, logs, caches, helper downloads, and temporary files into
the git-ignored `.opencode/runtime/` directory. It does not reuse your home
directory's OpenCode configuration or skills, and restores the caller's
environment and working directory on exit. Session sharing is disabled.
Provider credentials still need to be configured locally using `auth login`
or `/connect`; never commit them.

This scopes OpenCode's installation and its own storage, not its tool permissions:
it is not a filesystem sandbox, and commands or third-party tools can still
access files outside the repository. Use the launcher rather than running the
downloaded executable directly to retain repo-local storage.

## Naming

- Course folders: `MIS-250-Intro-to-MIS` — number first so they sort in order.
- Assignments: `01-normalization`, `02-erd-draft` — zero-padded, sorts chronologically.
- Datasets: `source_topic_year.csv` (e.g. `census_kansas_pop_2020.csv`).
- Files and folders: lowercase with hyphens, no spaces. Spaces break command-line tools.

## Rules I'm holding myself to

- **Every course ends at A- or better.** Tuition reimbursement requires a letter A;
  A- and A both qualify, B+ does not. This is the target for every course every term,
  so every course README carries a `Grade goal` section with the cutoff in points and
  the margin left. Plan against the 90% line, not against 100% and not against passing.
- Every cleaned dataset in `datasets/clean/` has the script that produced it next to it.
  If I can't rerun it, it isn't clean, it's just a file.
- Notes go in Markdown, not Word, so diffs are readable and search works.
- Syllabi and handouts get a Markdown copy next to the original. The original
  file stays put and stays authoritative; the `.md` is for reading and grepping.
- No credentials, connection strings, or API keys. Ever. Use a local `.env` that git ignores.
- No graded work from other students, and nothing that would violate WSU's academic
  integrity policy if the repo were public. Assume it will be.

## Fall 2026

Junior, undergraduate, Barton School of Business, Info Tech & Mgmt Information Systems.
12 credits. Full schedule: [admin/schedule-fall-2026.pdf](admin/schedule-fall-2026.pdf).

| Course | Title | Format | Runs |
|---|---|---|---|
| [ACCT 210](courses/ACCT-210-Financial-Accounting/) | Financial Accounting | Online, async | Aug 17 – Oct 7 (8 wk) |
| [MIS 600](courses/MIS-600-Database-Management-Systems/) | Database Management Systems | Hybrid, Wed 7:05 PM | Aug 17 – Dec 10 |
| DS 350 | Operations Management | Online, async | Oct 8 – Dec 3 (8 wk) |
| [ENTR 310](courses/ENTR-310-The-Entrepreneurial-Experience/) | The Entrepreneurial Experience | Online, async | Aug 17 – Dec 10 |

ACCT 210 and DS 350 are back-to-back 8-week courses with one day between them.
No folder for DS 350 yet — nothing to put in it.

## Status

Structure in place. Three courses loaded with syllabi and schedules; content comes as
the semester does.
