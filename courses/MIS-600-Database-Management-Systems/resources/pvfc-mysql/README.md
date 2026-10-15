# Pine Valley starter scripts — MySQL 8

Based on [PVFC SQL - Tagged.pdf](../PVFC%20SQL%20-%20Tagged.pdf), split at its four section headings. PDF line wraps inside dates, postal codes, and names have been removed. The setup corrections below align the starter with the assignment's checks. Use **MySQL 8.0.16 or later** for enforced CHECK constraints and expression defaults.

## Load in DB Fiddle

1. Open **https://www.db-fiddle.com/** and choose **MySQL 8.0**.
2. Paste these files into **Schema SQL**, in this order:
   - [01-drop-tables.sql](01-drop-tables.sql) — remove children before parents.
   - [02-create-tables.sql](02-create-tables.sql) — create parents before children.
   - [03-insert-data.sql](03-insert-data.sql) — load the supplied rows.
3. Build the schema using the controls shown by DB Fiddle.
4. Paste [04-sample-queries.sql](04-sample-queries.sql) into **Query SQL** and run it to inspect the tables. Empty results for the five tables listed below are expected.
5. Keep the setup in Schema SQL. The assignment says each Run rebuilds the database; when reaching tasks that change data, keep the prerequisite statements together in execution order in Query SQL.

These four files contain the corrected setup and supplied sample queries. The assignment submission is one Word document containing your own task SQL and result screenshots, with **MySQL** written at the top.

## Setup corrections

| Item | Supplied PDF | Corrected scripts |
|---|---|---|
| OrderDate | `DATE`, no default | `DATE DEFAULT (CURRENT_DATE)` |
| ProductFinish_CK | No CHECK constraint | Named CHECK allowing the five seeded finishes |
| Foreign-key count | 17 | 18, including Employee_FK1 |
| Missing supervisor | Robert Lewis has `''` (empty text) | SQL `NULL` |

**Inferred relationship:** Employee_FK1 links EmployeeSupervisor to Employee_T.EmployeeID. This models the supervisor relationship and brings the schema to 18 foreign keys. The assignment specifies the count, but does not identify the missing constraint. Robert Lewis is inserted in a separate statement before Jim Jason so the referenced supervisor exists when MySQL checks the foreign key.

**Inferred finish domain:** ProductFinish_CK allows Cherry, Natural Ash, Natural Maple, White Ash, and Walnut, the five distinct finishes in the supplied data. The assignment specifies the constraint's name but not its permitted values. This is a seed-based domain, not a confirmed instructor-provided list. It includes Natural Maple so all supplied products load.

## Loading checks

The corrected scripts were checked in an in-memory SQLite database with foreign-key enforcement enabled, adapting only MySQL's date-default parentheses for that check. Initial load, reset/reload, all seed counts, 18 foreign keys, the date default, the finish CHECK, and supervisor referential integrity were verified. This was **not** an execution test on MySQL 8, so check the actual build in DB Fiddle.

| Table | Rows |
|---|---:|
| Customer_T | 15 |
| Territory_T | 5 |
| DoesBusinessIn_T | 7 |
| Employee_T | 2 |
| Skill_T | 10 |
| EmployeeSkills_T | 3 |
| Order_T | 30 |
| WorkCenter_T | 2 |
| ProductLine_T | 3 |
| Product_T | 8 |
| OrderLine_T | 55 |
| Salesperson_T | 5 |
| WorksIn_T | 1 |
| RawMaterial_T, Vendor_T, Supplies_T, Uses_T, ProducedIn_T | 0 each |

## Assignment workflow

The handout explicitly prohibits generative AI on this assignment. Follow its worked example, error checklist, and Hint Bank for the graded queries; ask the instructor to clarify whether setup/transcription assistance is permitted.

- This enrollment is undergraduate: Parts 1–5 apply.
- Work in task order and capture each result before continuing.
- Type SQL into the Word document as text, with the corresponding screenshot underneath.
- For an error, read the first message, locate its line/word, check spelling/quotes/commas/clause order/parentheses, check the SQL dialect, then fix one thing and rerun.
- For Part 5's deliberate failures, capture each error before commenting out that statement so later statements can run.
- Keep the Part 5 prerequisite statements in order when using DB Fiddle's rebuilding execution model.
