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
admin/             Degree plan, course checklist, notes for advising meetings
scripts/           Small utilities that keep this repo tidy
```

## Naming

- Course folders: `MIS-250-Intro-to-MIS` — number first so they sort in order.
- Assignments: `01-normalization`, `02-erd-draft` — zero-padded, sorts chronologically.
- Datasets: `source_topic_year.csv` (e.g. `census_kansas_pop_2020.csv`).
- Files and folders: lowercase with hyphens, no spaces. Spaces break command-line tools.

## Rules I'm holding myself to

- Every cleaned dataset in `datasets/clean/` has the script that produced it next to it.
  If I can't rerun it, it isn't clean, it's just a file.
- Notes go in Markdown, not Word, so diffs are readable and search works.
- No credentials, connection strings, or API keys. Ever. Use a local `.env` that git ignores.
- No graded work from other students, and nothing that would violate WSU's academic
  integrity policy if the repo were public. Assume it will be.

## Status

Just set up. Structure is in place; content comes as the semester does.
