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
