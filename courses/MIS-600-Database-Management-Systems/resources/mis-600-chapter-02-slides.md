# Chapter 2: Modeling Data in the Organization

**Source:** [mis-600-chapter-02-slides.pdf](mis-600-chapter-02-slides.pdf) · 47 slides.

**Coverage:** Business rules and metadata; entities and attributes; strong, weak, and associative entities; identifiers; unary, binary, and ternary relationships; minimum/maximum cardinality; time-dependent data and user views.

## About this copy

Slide-by-slide text extraction for reading and searching. The original deck is authoritative. Slide numbers match the original; PDF page numbers match slide numbers. Repeated PDF headers/footers and decorative letter spacing are omitted. PDF diagrams, image-only text, table layout, underlining, and cardinality symbols remain in the original; follow the source link on each slide to inspect them. Source wording and examples are retained, including graduate-student instructions (the course README identifies this enrollment as undergraduate).

## Slide 1: Chapter 2

[Original slide](mis-600-chapter-02-slides.pdf#page=1)

Modeling Data in the Organization  
Dr. Nawaf Aljohani  
W. Frank Barton School of Business · Wichita State University  
Fall 2026  
Text: Modern Database Management, 14th ed. (Hoffer, Topi, Venkataraman, and Bala, 2026). Figures in this deck come from Chapter 2 and are used for instruction in this course.  

## Slide 2: The plan for tonight

[Original slide](mis-600-chapter-02-slides.pdf#page=2)

- First half. Why we model before we build. Business rules. Names and definitions.
- The E-R model. Entities, attributes, and identifiers.
- Break.
- Second half. Relationships, associative entities, and cardinality.
- Time. What changes when history matters.
- Pine Valley Furniture. Reading a complete model, then testing it with live SQL.
  Bring up DB Fiddle when we reach the worksheet.  

## Slide 3: What you should be able to do after this chapter

[Original slide](mis-600-chapter-02-slides.pdf#page=3)

- Explain why data modeling carries the highest payoff in systems work
- Write good names and definitions for entities, attributes, and relationships
- Read an E-R diagram out loud, in both directions, as business rules
- Model composite, multivalued, and derived attributes, and choose sound identifiers
- Tell apart strong, weak, and associative entities, and unary, binary, and ternary relationships
- State minimum and maximum cardinalities, and convert a many-to-many relationship into an associative entity
- Model simple time-dependent data with time stamps

## Slide 4: Rules of the business

[Original slide](mis-600-chapter-02-slides.pdf#page=4)


## Slide 5: Why we model before we build

[Original slide](mis-600-chapter-02-slides.pdf#page=5)

- The model drives everything. Tables, programs, and integrity checks all come from the facts and rules captured here.
- Data are the complex part. Most modern systems live or die by their data, not their process flow.
- Data outlive processes. How WSU registers students changes every few years. Data about students and courses go
  back a century.  
- Models are cheap to change. A wall moved on paper costs an eraser. Moved after the concrete is poured, it costs a
  fortune.  
  “Measure twice, cut once.”  

## Slide 6: Seven deadly sins of database design

[Original slide](mis-600-chapter-02-slides.pdf#page=6)

Embarcadero Technologies (2014), as cited in the text. Chapter 2 goes straight at three of them.  
The sin What it looks like Where we fix it  
Poor or missing documentation Nobody wrote down what the data mean, so every developer guesses Ch. 2 and 3  
Little or no normalization Facts repeated in the wrong places, updates go wrong Ch. 4  
Model treated as finished Drawn once, never revisited as requirements change All semester  
Reference data stored badly Lookup values scattered or hard-coded Parts II and III  
No foreign keys or check constraints The database cannot defend its own rules Ch. 4 and 8  
No domains or naming standards Every developer names things differently Ch. 2  
No primary keys Rows cannot be told apart reliably Ch. 2, 4, and 8  
If the data are wrong, nothing built on top of them can be right.  

## Slide 7: Business rules

[Original slide](mis-600-chapter-02-slides.pdf#page=7)

A business rule is a statement that defines or constrains some aspect of the business.  
GUIDE Business Rules Project (1997), as cited in the text  
- “A student may register for a section only after completing its prerequisites.”
- “A preferred customer gets a 10 percent discount unless the account is overdue.”
- Rules govern how data get created, updated, and removed
- In our scope only if it touches data. “Friday is business casual” is real policy, but not our problem.
- Businesspeople own and approve the rules. The analyst surfaces them and sharpens the vague ones.
  Data modeling is documenting the rules of the business that govern data.  

## Slide 8: What makes a rule good

[Original slide](mis-600-chapter-02-slides.pdf#page=8)

- Declarative. States policy, not the procedure that enforces it
- Precise. One interpretation only. “Large orders need approval”
  fails: how large?  
- Atomic. One statement, complete on its own
- Consistent. No contradictions with other rules
- Expressible. Can be written in structured plain language
- Distinct. Not a rephrased duplicate
- Business-oriented. In words businesspeople understand
  Keep asking: Always true? Special cases? One or many? Keep history?  

## Slide 9: Naming data objects

[Original slide](mis-600-chapter-02-slides.pdf#page=9)

Salin (1990), as cited in the text. Write the definition first, then build the name from it.  
A good name is Good Poor  
About the business, not the technology Customer File10, Bit7  
Meaningful, nearly self-documenting Order Date It, Has, Person  
Unique among all data objects Home Address / Campus Address Address  
Readable, the way people say it Grade Point Average Average Grade Relative To A  
Built from approved words Maximum Ceiling, Upper Limit  
Repeatable by different people Student Birth Date Emp DOB  
In a standard order Employee Hire Date Date Hired Emp  

## Slide 10: Defining data objects

[Original slide](mis-600-chapter-02-slides.pdf#page=10)

- A term is a word with a specific business meaning: course, flight, reservation
- A fact links terms in one declarative sentence: “A course is a module of instruction in a particular subject area.”
- Say what the thing is, when instances are created and deleted, and what history is kept
- Constraints are separate rules, not clauses buried inside a definition
- Harder than it sounds. Who counts as a “student”? Prospect, applicant, matriculated, former, graduate. Chapter 3 gives
  us subtypes for exactly this problem.  
  “The person who controls the meaning of data controls the data.”  

## Slide 11: The E-R model: entities and attributes

[Original slide](mis-600-chapter-02-slides.pdf#page=11)


## Slide 12: The entity-relationship model

[Original slide](mis-600-chapter-02-slides.pdf#page=12)

- E-R model. A logical picture of the data of a business: entities, relationships among them, and attributes of both
  (Chen, 1976)  
- E-R diagram (ERD). The drawing of that model
- Conceptual. It describes the business, not any DBMS. Normalization and foreign keys wait for Chapter 4.
- Our main tool for talking with users during analysis
- No single standard notation exists. The text blends what professional tools use, with Microsoft Visio shown for
  comparison. Draw.io reads like Visio.  

## Slide 13: Our first full diagram: Pine Valley Furniture

[Original slide](mis-600-chapter-02-slides.pdf#page=13)

Figure 2-1. Suppliers ship items, items build products, customers order products. Attributes omitted.  

## Slide 14: How to read the marks on the lines

[Original slide](mis-600-chapter-02-slides.pdf#page=14)

The single most common mistake in week one lives on this slide.  
- Walk to the far end. The marks next to ORDER answer: how many orders for one customer?
- Circle = zero allowed (optional). Bar = at least one (mandatory). Crow's foot = many. Single bar = one.
- The grammar. <entity> <min> <relationship> <max> <entity>, so: <CUSTOMER> <may> <Submit> <any number> <ORDER>
- Read every diagram aloud, both directions, before you trust it

## Slide 15: The definitions under the diagram are metadata

[Original slide](mis-600-chapter-02-slides.pdf#page=15)

The written half of Figure 2-1. The picture alone is not the model.  
- Every entity gets a written definition, agreed on by the
  business  
- Homonyms. Accounting's “customer” has paid an invoice.
  Marketing's has merely been contacted. Same word,  
  different data.  
- Here a CUSTOMER includes people who might order, so
  some customers have no orders. That is why Submits is  
  optional.  
- A clean diagram over fuzzy definitions still misleads

## Slide 16: The notation we use all semester

[Original slide](mis-600-chapter-02-slides.pdf#page=16)

Figure 2-2. Keep this page open while you draw. Chapter 3 adds a few more symbols.  

## Slide 17: Entities: the nouns of the business

[Original slide](mis-600-chapter-02-slides.pdf#page=17)

- A person, place, object, event, or concept the organization keeps data about
- Events count. A SALE or a REGISTRATION is an entity because we must remember it happened.
- Concepts count. You cannot touch an ACCOUNT, but the business runs on it.
- Singular noun, written in CAPITALS

## Slide 18: Entity type versus entity instance

[Original slide](mis-600-chapter-02-slides.pdf#page=18)

Figure 2-3. The type is the blank form, described once as metadata. Instances are the filled-in copies, stored by the thousand.  

## Slide 19: Not everything that moves is an entity

[Original slide](mis-600-chapter-02-slides.pdf#page=19)

Figure 2-4. A sorority expense system, before and after the cleanup.  
- The Treasurer enters the data and reads the reports. She
  is a user, and there is only one of her. Nothing to store.  
- The Expense Report is an output, computed from
  ACCOUNT and EXPENSE data already in the database  
- Verbs like Receives and Summarizes describe data
  moving, not data related. They are the tell.  
- The test. A real entity has many instances, each with a
  distinguishing characteristic plus other descriptive data.  

## Slide 20: Strong and weak entities

[Original slide](mis-600-chapter-02-slides.pdf#page=20)

Figure 2-5. Double box, double line, double underline: the whole weak-entity kit.  
- Strong. Stands on its own and has its own identifier:
  EMPLOYEE, COURSE  
- Weak. Exists only through its identifying owner, reached by
  the identifying relationship (Carries)  
- Partial identifier. Dependent Name repeats across
  employees. Add Employee ID and it becomes unique.  
- The delete test. Remove the employee and the dependent
  record has no reason to exist.  
- More pairs: BOOK and BOOK COPY, COURSE and COURSE
  OFFERING, MOVIE and DVD  

## Slide 21: Attributes: required or optional

[Original slide](mis-600-chapter-02-slides.pdf#page=21)

Figure 2-6. Bold means required. Plain means optional. An empty value is null.  
- Every instance must supply the bold attributes before it
  can be stored at all  
- Melissa Kraft has no Major yet. The model says that is
  fine.  
- Naming. Initial capitals, spaces between words: Student
  Home Address  
- An entity holding nothing but an identifier is a code list,
  not an entity  
- Attributes stay home: DEPENDENT carries no Employee
  ID. The relationship already knows.  

## Slide 22: Composite attributes

[Original slide](mis-600-chapter-02-slides.pdf#page=22)

Figure 2-7. One value with meaningful parts.  
- Users can ask for Employee Address whole, or for City alone
- Split only if someone will ever use the parts separately. Marketing sorts by state, so State earns its own part.
- Most drawing tools have no symbol for this. List the parts in parentheses, as the book does.

## Slide 23: Multivalued and derived attributes

[Original slide](mis-600-chapter-02-slides.pdf#page=23)

Figure 2-8. Curly brackets hold many values. Square brackets hold a calculation.  
- {Skill}. One employee, several values
- [Years Employed]. Computed from Date Employed and
  today's date. Store the formula, not the number.  
- Do not confuse them. Composite is one value with parts.
  Multivalued is several values.  
- They combine: {Customer Address (Street, City, State, Zip)}
  for home, office, and seasonal addresses  

## Slide 24: Identifiers

[Original slide](mis-600-chapter-02-slides.pdf#page=24)

Figure 2-9. Underline the identifier. It is bold too, because it can never be empty.  
- The attribute whose value singles out one instance:
  Student ID, Vehicle ID  
- Student Name fails. Names repeat, and people change
  them.  
- Composite identifier. Flight 1204 flies every day. Flight
  Number plus Date breaks the tie.  
- Keep asking the tie-breaker question: could two flights
  share a number and a date?  

## Slide 25: Choosing among candidate identifiers

[Original slide](mis-600-chapter-02-slides.pdf#page=25)

Bruce (1992), as cited in the text.  
- Stable. The value never changes over the life of the instance
- Always present. Guaranteed valid and never null, every part of it
- Not intelligent. Meaning baked into the digits goes stale when the warehouse moves
- Compact. Prefer a single surrogate (Game Number) to a long composite (Home Team plus Visiting Team)
  Your myWSU ID passes all four. Your name fails two, and Social Security numbers fail for a different reason: security.  

## Slide 26: Relationships and cardinality

[Original slide](mis-600-chapter-02-slides.pdf#page=26)


## Slide 27: Relationships: the verbs of the business

[Original slide](mis-600-chapter-02-slides.pdf#page=27)

Figure 2-10. Completes is the relationship type. Each of the ten lines below is one instance: one employee paired with one cours e.  

## Slide 28: Where does Date Completed belong?

[Original slide](mis-600-chapter-02-slides.pdf#page=28)

Table 2-2. Not on EMPLOYEE, not on COURSE. It describes the pair.  
- Melton has three completion dates, so no single date describes him
- C++ was completed on different dates by different people, so no single
  date describes the course  
- It belongs to the relationship. One value per instance of Completes.
- Allowed on many-to-many and one-to-one only. On one-to-many, the
  attribute already belongs to the many side: step away from the  
  relationship.  
- Book note. Table 2-2 swaps two rows against Figure 2-10 (Melton's
  Angular, Gosling's SQL). Follow the figure.  

## Slide 29: A relationship with attributes wants to be an entity

[Original slide](mis-600-chapter-02-slides.pdf#page=29)

Figure 2-11. Completes becomes CERTIFICATE, with its own identifier and Date Completed. The crow's feet move onto it, and both p arents become mandatory one.  

## Slide 30: When to convert: four conditions

[Original slide](mis-600-chapter-02-slides.pdf#page=30)

- Every surrounding relationship is a “many”
- It means something to users on its own, ideally with a one-attribute identifier
- It carries at least one attribute beyond that identifier
- It can enter relationships of its own
- A marriage. Links two PERSON instances, has its own date, place, and license number, and can relate to other things later.
  The marriage is the associative entity.  
- You have drawn one already. ENROLLMENT between STUDENT and SECTION, carrying Grade, in the Chapter 1 Draw.io
  starter. ORDER LINE plays the same part at Pine Valley.  

## Slide 31: Degree: how many entity types take part

[Original slide](mis-600-chapter-02-slides.pdf#page=31)

Figure 2-12. Unary loops back on one entity. Binary joins two. Ternary joins three at once. Cardinalities state one organization 's rules, not the world's.  

## Slide 32: The famous unary: a bill of materials

[Original slide](mis-600-chapter-02-slides.pdf#page=32)

Figure 2-13. Many-to-many on ITEM: WX240 goes into two assemblies, and MX300 has three components. Quantity rides the relationsh ip, so it becomes BOM  
STRUCTURE.  

## Slide 33: Ternary is not three binaries

[Original slide](mis-600-chapter-02-slides.pdf#page=33)

Figure 2-14. The Supplies relationship, rebuilt as an associative entity.  
- Unit Cost belongs to the triple: vendor, part, and
  warehouse together  
- “Vendor X ships part C for $8” is an incomplete fact. To
  which warehouse?  
- Split it into three pairs and the fact is gone
- Rule. Convert every ternary to an associative entity. Leave
  its lines unnamed. The identifier can wait for Chapter 4.  
- Most drawing tools cannot draw a true ternary anyway

## Slide 34: Attribute, or entity of its own?

[Original slide](mis-600-chapter-02-slides.pdf#page=34)

Figure 2-15. Promote it to an entity when the values are shared: many employees hold one SKILL, many things need one DEPARTMENT.  The right column is how the tables  
will look.  

## Slide 35: Cardinality constraints

[Original slide](mis-600-chapter-02-slides.pdf#page=35)

Figure 2-16. The kiosk may hold zero DVDs of a movie tonight. The plain line in (a) cannot say that.  
- Minimum. Fewest allowed. Zero means
  optional, one means mandatory.  
- Maximum. Most allowed. One, many, or a fixed
  number.  
- Every DVD copies exactly one MOVIE:
  mandatory one  
- DVD is weak. Copy Number plus Movie Name
  names one disc.  

## Slide 36: The four combinations

[Original slide](mis-600-chapter-02-slides.pdf#page=36)

Reading Marks at the far end Minimum Maximum  
Exactly one two bars 1 1  
One or more bar, then crow's foot 1 many  
Zero or one circle, then bar 0 1  
Zero, one, or more circle, then crow's foot 0 many  
Max sits against the box, min sits farther out. “Max inside, min outside.”  
A fixed number can replace many: write 5 at the crow's foot and the rule becomes “at most five.”  

## Slide 37: Every combination, with live instances

[Original slide](mis-600-chapter-02-slides.pdf#page=37)

Figure 2-17. Mandatory both ways, mixed, optional both ways. Pete has no project, and that is legal. Cover the left half and rec onstruct it from the sentences.  

## Slide 38: Cardinalities on the ternary

[Original slide](mis-600-chapter-02-slides.pdf#page=38)

Figure 2-18. Read the numbered rules on the right of the figure against the symbols.  
- Next to each strong entity: always mandatory one. Every schedule names exactly one vendor, one part, one warehouse.
- A vendor may sit idle (optional many). Every part and every warehouse must appear at least once.

## Slide 39: Time, Pine Valley, and the road ahead

[Original slide](mis-600-chapter-02-slides.pdf#page=39)


## Slide 40: When history matters

[Original slide](mis-600-chapter-02-slides.pdf#page=40)

Figure 2-19. A time stamp is a time value attached to a data value.  
- Only today's price? A single-valued attribute is enough
- Accounting wants every price and when it took effect: {Price History
  (Effective Date, Price)}  
- Regulation pushes history. Sarbanes-Oxley, HIPAA. So does analytics.
- History pushes toward many-to-many plus associative entities, at
  the cost of looser rules the database can no longer enforce  
- If history might ever be required, consider it now

## Slide 41: Time at Pine Valley: three tries

[Original slide](mis-600-chapter-02-slides.pdf#page=41)

Figure 2-20. (a) loses history when a product changes lines. (b) credits the line in effect at sale time. (c) records every assi gnment with dates, but allows overlap.  

## Slide 42: Two entities, several relationships

[Original slide](mis-600-chapter-02-slides.pdf#page=42)

Figure 2-21. Works In, Manages, and the unary Supervises all at once. The 2 is a fixed minimum: no course belongs to one profess or. SCHEDULE's full identifier is professor  
plus course plus Semester.  

## Slide 43: Naming relationships

[Original slide](mis-600-chapter-02-slides.pdf#page=43)

- A present-tense verb phrase. Assigned To, Supplies, Teaches
- Name the action, not its result: Assigned To, never Assignment
- Nothing vague. Has and Is Related To say almost nothing.
- The definition carries the rest. Optional participation, fixed maxima and their reasons, exclusivity, how much
  history, whether participation can transfer.  
  Entities Attributes Relationships  
  Singular nouns in CAPITALS  
  CUSTOMER, ORDER  
  Capitalized noun phrases  
  Order Date, Customer ID  
  Present-tense verb phrases  
  Submits, Assigned To  

## Slide 44: The Pine Valley model, complete

[Original slide](mis-600-chapter-02-slides.pdf#page=44)

Figure 2-22, in Visio notation. Every construct from tonight, on one page.  
- Find them. Seven associative entities: ORDER LINE, DOES
  BUSINESS IN, USES, SUPPLIES, PRODUCED IN, WORKS IN,  
  HAS SKILL  
- One unary relationship: Is Supervised By and Supervises
- Attributes riding an association: Ordered Quantity, Goes
  Into Quantity, Supply Unit Price  
- Dashed line: the child's identifier does not include the
  parent's  
- Read a few aloud. A product belongs to exactly one line. A
  customer may submit no orders at all. A work center must  
  hold at least one employee.  

## Slide 45: Does the model answer real questions?

[Original slide](mis-600-chapter-02-slides.pdf#page=45)

We check a design by walking real requests against it. SQL arrives properly in Chapter 5; you can already read this.  
SELECT *  
FROM Product  
WHERE ProductDescription LIKE 'Computer Desk%';  
- One entity holds everything the salesperson asked for. Good sign.
- The percent sign matches anything that follows
- The book prints double quotes around text. DB Fiddle wants single quotes, as shown here.

## Slide 46: User views: a named slice of the model

[Original slide](mis-600-chapter-02-slides.pdf#page=46)

Figure 2-23. Each user sees only the entities and attributes a task needs.  
SELECT COUNT(OrderID)  
FROM OrdersForCustomers  
WHERE CustomerName =  
'Value Furniture';  
- With the view, a two-entity question becomes a one-
  table query  
- Answer: 4 orders
- Without it, a subquery finds the ID first. Chapter 6.

## Slide 47: Before next class

[Original slide](mis-600-chapter-02-slides.pdf#page=47)

- Tonight's worksheet. Finding Chapter 2 in Live Data, in DB Fiddle against the full Pine Valley database. Turn it in for
  participation.  
- Study guide. The Chapter 2 guide on Blackboard walks every figure from tonight, with self-check questions.
- Blackboard tasks. Chapter 2 quiz, matching exercise, and the written assignment. Graduate students add the
  extension.  
- Draw.io habit. Read your diagram aloud, both directions, before you submit anything.
- Exam 1 is September 23. Chapters 1 through 4.
  Next: Chapter 3, the enhanced E-R model. Supertypes and subtypes settle the “who is a student” argument.  
