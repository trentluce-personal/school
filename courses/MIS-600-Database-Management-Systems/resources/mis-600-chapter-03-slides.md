# Chapter 3: The Enhanced E-R Model

**Source:** [mis-600-chapter-03-slides.pdf](mis-600-chapter-03-slides.pdf) · 46 slides.

**Coverage:** Supertypes, subtypes, and inheritance; generalization and specialization; total/partial and disjoint/overlapping constraints; discriminators and hierarchies; entity clusters; packaged models and analytical data models.

## About this copy

Slide-by-slide text extraction for reading and searching. The original deck is authoritative. Slide numbers match the original; PDF page numbers match slide numbers. Repeated PDF headers/footers and decorative letter spacing are omitted. PDF diagrams, image-only text, table layout, underlining, and cardinality symbols remain in the original; follow the source link on each slide to inspect them. Source wording and examples are retained, including graduate-student instructions (the course README identifies this enrollment as undergraduate).

## Slide 1: Chapter 3

[Original slide](mis-600-chapter-03-slides.pdf#page=1)

The Enhanced E-R Model  
Dr. Nawaf Aljohani  
W. Frank Barton School of Business · Wichita State University  
Fall 2026  
Text: Modern Database Management, 14th ed. (Hoffer, Topi, Venkataraman, and Bala, 2026). Figures in this deck come from Chapter 3 and are used for instruction in this course.  

## Slide 2: The plan for tonight

[Original slide](mis-600-chapter-03-slides.pdf#page=2)

- First half. Supertypes and subtypes: the problem they solve, the notation, and when
  to use them.  
- Finding them. Generalization and specialization.
- The rules. Completeness, disjointness, and discriminators.
- Break.
- Second half. Hierarchies, then the Pine Valley Furniture diagram rebuilt.
- The big picture. Entity clustering, packaged data models, and the data models behind
  analytics.  
  Have Draw.io open when we reach Pine Valley.  

## Slide 3: What you should be able to do after this chapter

[Original slide](mis-600-chapter-03-slides.pdf#page=3)

- Recognize when a supertype/subtype relationship belongs in a model
- Use specialization and generalization to define one
- Specify completeness and disjointness constraints, and add a subtype discriminator
- Develop a supertype/subtype hierarchy for a realistic business situation
- Develop an entity cluster to simplify a large E-R diagram
- Explain the structures of a universal (packaged) data model, and how a project that starts from one differs
- Explain the data modeling structures used for analytical applications

## Slide 4: Supertypes and subtypes

[Original slide](mis-600-chapter-03-slides.pdf#page=4)


## Slide 5: Why the E-R model needed an upgrade

[Original slide](mis-600-chapter-03-slides.pdf#page=5)

- The basic E-R model dates from the mid-1970s. It still handles most business problems well.
- Business got more complex: segmented markets, customized products, decisions driven by analytics
- The enhanced E-R (EER) model adds constructs for that complexity. The big one is the supertype/subtype
  relationship.  
- EER sits close to object-oriented modeling (Elmasri and Navathe, 2021, as cited in the text)
- Tonight also covers entity clustering, packaged data models, and a preview of the models used for analytics
  “Redundancy = bad. Simplicity = good.”  

## Slide 6: Entities that are almost the same

[Original slide](mis-600-chapter-03-slides.pdf#page=6)

- An entity type is a set of instances that share properties. Chapter 2 already allowed optional attributes.
- The hard case: instances that share most properties, but each kind has something of its own the business cares about
- Subtype: a subgrouping of the entities in an entity type that is meaningful to the organization
- Supertype: a generic entity type that has a relationship with one or more subtypes
- STUDENT with GRADUATE STUDENT and UNDERGRADUATE STUDENT. CAR with SEDAN, SPORTS CAR, and COUPE.
- This room is the example. Same roster, same exams, and graduate students add an extension. STUDENT is the supertype.
  They were hiding in Chapter 2. Why can a Pine Valley customer do business in no territory? Two kinds of customers, and only o ne kind is assigned. The  
  old diagram could not say so.  

## Slide 7: The notation

[Original slide](mis-600-chapter-03-slides.pdf#page=7)

Figure 3-1(a). The supertype connects to a circle, and the circle connects to each subtype.  
- Shared attributes, including the identifier, sit in the
  supertype  
- Attributes unique to one subtype sit in that subtype. Same
  rule for relationships.  
- The small U says subset and points the direction. It is
  optional, and the book usually leaves it out.  
- Relationships that all instances join attach to the
  supertype. Relationships that only some join attach to the  
  subtype.  
- The circle is not a relationship. No verb phrase, no crow's
  feet.  

## Slide 8: Two other notations you will meet

[Original slide](mis-600-chapter-03-slides.pdf#page=8)

Figure 3-1(b) and (c). Same information, drawn differently.  
(b) Microsoft Visio: a PK row and a category circle. The Pine Valley figures use this. (c) Subtypes drawn inside the supertype. CASE tools and published universal data models  
use this.  

## Slide 9: Three kinds of employees, three ways to model them

[Original slide](mis-600-chapter-03-slides.pdf#page=9)

Shared by all: Employee Number, Employee Name, Address, Date Hired. Then Hourly Rate, or Annual Salary and Stock Option, or C ontract Number and Billing Rate.  
Choice How it works What it costs  
One entity, EMPLOYEE All nine attributes in one box Every instance carries attributes that do not apply to it.  
Nulls everywhere, and complicated programs to handle  
the variations.  
Three separate entities HOURLY EMPLOYEE, SALARIED EMPLOYEE, and  
CONSULTANT, each complete on its own  
The four shared attributes are defined three times. Users  
must pick the right entity every time.  
A supertype with three subtypes EMPLOYEE holds the shared four. Each subtype  
holds only its own.  
Nothing. Common properties once, distinct properties  
kept. This is the EER answer.  

## Slide 10: The employee supertype

[Original slide](mis-600-chapter-03-slides.pdf#page=10)

Figure 3-2. Nothing is written twice. Employee Number stays with EMPLOYEE, Billing Rate with CONSULTANT.  

## Slide 11: Attribute inheritance

[Original slide](mis-600-chapter-03-slides.pdf#page=11)

- A subtype instance is the same entity instance as its supertype instance
- Therese Jones is a CONSULTANT, therefore she is an EMPLOYEE, with a value for every EMPLOYEE attribute including the
  identifier  
- Subtypes inherit all attributes and all relationships of the supertype
- So a subtype never repeats a supertype attribute. Employee Name appears once, at the top.
- Inheritance runs one way. Every subtype member is in the supertype. Whether every supertype member is in some
  subtype depends on the business. Notation for that is coming.  
  One person, two rectangles. The second rectangle adds facts. It never repeats them.  

## Slide 12: When to use subtypes: two triggers

[Original slide](mis-600-chapter-03-slides.pdf#page=12)

- Trigger 1. Some attributes apply to some, but not all, instances. Hourly Rate.
- Trigger 2. The instances of a subtype take part in a relationship unique to that subtype. Only resident patients get a
  bed.  
- Either trigger is enough. Both together is the textbook case.
- No trigger, no subtype. A kind with nothing of its own stays in the supertype. Remember this when we reach the
  motorcycle.  
  A bank. ACCOUNT holds Account Number, Owner, and Open Date. CHECKING ACCOUNT adds Overdraft Limit and the cards  
  issued on it. SAVINGS ACCOUNT adds Interest Rate. Both triggers fire.  

## Slide 13: Both triggers at once: the hospital

[Original slide](mis-600-chapter-03-slides.pdf#page=13)

Figure 3-3. Patient ID, Patient Name, and Admit Date belong to everyone.  
- Checkback Date belongs to outpatients. Date Discharged
  belongs to resident patients.  
- Only resident patients are assigned a bed, so Is Currently
  Assigned hangs off the subtype  
- Hung there, it can be mandatory. Hung on PATIENT it would
  have to be optional.  
- A bed may or may not hold a patient right now
- Relationship inheritance. Every patient, of either kind, Is
  Cared For by a responsible physician. Drawn once, at the  
  top.  

## Slide 14: Finding subtypes and stating the rules

[Original slide](mis-600-chapter-03-slides.pdf#page=14)


## Slide 15: Two ways to find subtypes

[Original slide](mis-600-chapter-03-slides.pdf#page=15)

Process Direction You start with You end with Figure  
Generalization Bottom-up Several specialized entity types that turn  
out to overlap  
One general supertype plus the  
specialized subtypes  
3-4  
Specialization Top-down One entity type whose attributes do not  
all apply to every instance  
The same entity as a supertype plus  
new subtypes  
3-5  
- Use both. Switch back and forth as the interviews and the old spreadsheets dictate.
- An interview with the warehouse manager (top-down) reveals that some parts are purchased
- Three spreadsheets named Cars, Trucks, and Motorcycles with the same first four columns (bottom-up) reveal one Vehicles
  list in three hats  

## Slide 16: Generalization: bottom-up

[Original slide](mis-600-chapter-03-slides.pdf#page=16)

Figure 3-4. Three entities that turn out to be one thing wearing three hats.  
- CAR, TRUCK, and MOTORCYCLE share Vehicle ID, Vehicle
  Name (Make, Model), Price, and Engine Displacement  
- A shared identifier is the tell. These are versions of one
  general thing.  
- VEHICLE takes the shared four. CAR keeps No Of Passengers.
  TRUCK keeps Capacity and Cab Type.  
- Where is MOTORCYCLE? It has nothing of its own, so it gets
  no subtype. A motorcycle lives in VEHICLE and nowhere else.  
- That means some vehicles are in no subtype. Hold that
  thought.  

## Slide 17: Specialization: top-down

[Original slide](mis-600-chapter-03-slides.pdf#page=17)

Figure 3-5. Start with PART and its attributes, then split by what the users tell you.  
- Parts are manufactured, purchased, or both
- Routing Number applies only to manufactured parts.
  Supplier ID and Unit Price only to purchased parts. Trigger 1.  
- MANUFACTURED PART keeps Routing Number
- The modeler went further: a SUPPLIER entity and a SUPPLIES
  associative entity, with Unit Price on SUPPLIES, because the  
  price varies by supplier  
- Chapter 2 and Chapter 3 working together

## Slide 18: Two constraints, two questions

[Original slide](mis-600-chapter-03-slides.pdf#page=18)

Elmasri and Navathe (2021), as cited in the text. Each answer is a business rule.  
Constraint The question If yes If no  
Completeness Must every supertype instance belong to at  
least one subtype?  
Total specialization: a double line  
from the supertype to the circle  
Partial specialization: a single  
line  
Disjointness Can one instance belong to two or more  
subtypes at the same time?  
Overlap rule: the letter o in the  
circle  
Disjoint rule: the letter d in  
the circle  
- The two are independent. Any supertype gets one word from each pair.
- Ask both questions every time you draw a circle

## Slide 19: Completeness: total or partial

[Original slide](mis-600-chapter-03-slides.pdf#page=19)

Figure 3-6. Double line means no leftovers. Single line means leftovers allowed.  
- (a) PATIENT. Every patient is an outpatient or a resident
  patient. This hospital has no third kind.  
- Insert a patient and a subtype instance goes in with it.
  Insert a resident and a bed assignment goes in too.  
- (b) VEHICLE. Cars go in CAR, trucks in TRUCK, and
  motorcycles stay in VEHICLE alone.  
- Visio calls total specialization “Category is complete”
- The circle in (b) is empty on purpose. Disjointness is the
  next figure.  

## Slide 20: Disjointness: disjoint or overlap

[Original slide](mis-600-chapter-03-slides.pdf#page=20)

Figure 3-7. The letter in the circle.  
- (a) d. At any given time a patient is one type, never both.
  The type can change next month.  
- (b) o. A part can be manufactured and purchased at once.
- An instance of PART is a part number, not a physical piece.
  Part 4000: 250 on hand, 100 made, 150 bought.  
- (b) also carries the double line. Every part is one or the
  other, and may be both.  
- Visio has no symbol for this. Type the letter into the circle.

## Slide 21: Every combination, with the chapter's examples

[Original slide](mis-600-chapter-03-slides.pdf#page=21)

Disjoint (d): never both at once Overlap (o): can be both at once  
Total (double line): every instance is in a  
subtype  
PATIENT: outpatient, resident (3-7a)  
EMPLOYEE: hourly, salaried, consultant (3-8)  
STUDENT: graduate, undergrad (3-10)  
PART: manufactured, purchased (3-7b)  
PERSON: employee, student, alumnus (3-10)  
CUSTOMER: regular, national account (3-12)  
Partial (single line): some instances are  
in no subtype  
EMPLOYEE: faculty, staff (3-10)  
EMPLOYEE: management, union (3-12)  
Not drawn in the chapter. A library PERSON:  
borrower, volunteer, both, or neither.  
- Only one subtype, as VENDOR to SUPPLIER? No letter. There is nothing to overlap with.
- Disjoint means never both at once, not never changes. A union employee promoted into management switches boxes.

## Slide 22: Subtype discriminator: disjoint subtypes

[Original slide](mis-600-chapter-03-slides.pdf#page=22)

Figure 3-8. Employee Type = H, S, or C.  
- Which subtype does a new supertype instance go into? An
  attribute of the supertype decides.  
- Employee Type= sits on the line to the circle. The value that
  picks each subtype sits on that subtype's line.  
- Employee Type=“S” sends the instance into SALARIED
  EMPLOYEE  
- The discriminator lives in the supertype, never in a subtype
- One code, one answer. That works only because the
  subtypes are disjoint.  

## Slide 23: Subtype discriminator: overlapping subtypes

[Original slide](mis-600-chapter-03-slides.pdf#page=23)

Figure 3-9. One yes/no component per subtype.  
- One code cannot send an instance into two subtypes
- Part Type is composite: Manufactured? and Purchased?,
  each Y or N  
- Manufactured?=“Y” fills MANUFACTURED PART.
  Purchased?=“Y” fills PURCHASED PART. Both Y, both  
  subtypes.  
- Works for any number of overlapping subtypes

## Slide 24: A hierarchy: the university

[Original slide](mis-600-chapter-03-slides.pdf#page=24)

Figure 3-10. Each subtype has exactly one supertype. Discriminators omitted for clarity.  
- Root: PERSON with SSN, Name, Address, Gender, Date Of Birth
- First level: EMPLOYEE, STUDENT, ALUMNUS. Total and overlap.
  Nobody else matters to the university, and one person can be  
  all three.  
- EMPLOYEE splits into FACULTY and STAFF: partial (student
  assistants exist) and disjoint  
- STUDENT splits into GRADUATE and UNDERGRAD: total and
  disjoint  
- Say the STUDENT rules out loud. Every student is one kind. No
  student is both.  

## Slide 25: Two rules about attributes in a hierarchy

[Original slide](mis-600-chapter-03-slides.pdf#page=25)

- Put each attribute at the highest level where it applies. SSN on the root, Date Hired on EMPLOYEE, Rank on FACULTY.
  That lets the most subtypes share it.  
- Inheritance runs all the way up the chain, not just one step
  What one FACUL TY instance carries  
  Attributes Inherited from Level  
  SSN, Name, Address, Gender, Date Of Birth PERSON Root  
  Date Hired, Salary EMPLOYEE First level  
  Rank FACULTY (its own) Second level  
  Wichita State keeps you as a PERSON who is a STUDENT. Work on campus or graduate, and EMPLOYEE or ALUMNUS facts get added. Yo ur name is  
  never stored twice.  

## Slide 26: Pine Valley Furniture and entity clusters

[Original slide](mis-600-chapter-03-slides.pdf#page=26)


## Slide 27: Pine Valley, as we left it

[Original slide](mis-600-chapter-03-slides.pdf#page=27)

Figure 3-11. Three cardinalities that raise questions.  
- Question 1. Why do some customers do business in no sales
  territory?  
- Question 2. Why do some employees supervise nobody,
  why are they not all supervised, and why do some work in  
  no work center?  
- Question 3. Why do some vendors supply no raw materials?
- The optional marks are correct. The reasons are invisible.
  That is what subtypes fix.  

## Slide 28: What the investigation found

[Original slide](mis-600-chapter-03-slides.pdf#page=28)

- Rule 1. Customers. Two types, regular and national account. Only regular customers do business in territories, and a
  territory needs at least one. A national account has an account manager. A customer can be both.  
- Rule 2. Employees. Management and union are special types. Only union employees work in work centers. Management
  supervises union. Other kinds of employees exist. Promotion moves a union employee into management.  
- Rule 3. Vendors. Not every vendor has supplied anything. A vendor gets a contract number once it becomes an official
  supplier.  
  Each rule answers one of the three questions. Now translate each one into notation.  

## Slide 29: Pine Valley, enhanced

[Original slide](mis-600-chapter-03-slides.pdf#page=29)

Figure 3-12. Most attributes are left off so the changes stand out.  
- CUSTOMER: total, overlap, Customer Type (National?, Regular?).
  Does Business In moves down to REGULAR CUSTOMER.  
- EMPLOYEE: partial, disjoint, Employee Type M or U. Works In
  moves to UNION EMPLOYEE and becomes mandatory. Supervises  
  now runs management to union.  
- VENDOR: partial, one subtype, so no letter. Contract Number and
  Supplies move to SUPPLIER. The minimum next to RAW MATERIAL  
  becomes one.  
- The figure says NATIONAL CUSTOMER. The text says NATIONAL
  ACCOUNT CUSTOMER. Same box.  

## Slide 30: What changes when E-R becomes EER

[Original slide](mis-600-chapter-03-slides.pdf#page=30)

Kind of change At Pine Valley  
New entities: supertypes and subtypes REGULAR CUSTOMER, NATIONAL ACCOUNT CUSTOMER, MANAGEMENT  
EMPLOYEE, UNION EMPLOYEE, SUPPLIER  
New attributes, including discriminators Customer Type, Employee Type, Account Manager, Contract Number  
Minimum cardinalities move from optional to mandatory Works In from UNION EMPLOYEE, Supplies toward RAW MATERIAL  
Relationships move from the supertype to the subtype  
that takes part  
Does Business In, Works In, Supervises, Supplies  
Given one rule, name the change it causes. “Only union employees work in work centers” moves Works In down and makes it mandatory.  

## Slide 31: A data model is not a database design

[Original slide](mis-600-chapter-03-slides.pdf#page=31)

- The EER diagram is a conceptual picture of the data the business needs
- It does not map one-for-one onto tables. A designer may still put every customer in one table.
- Our job now is to state every rule that governs the data. Storage and speed come later.
- Chapter 4 is where the tables get decided
  The drawing says kitchen and pantry. The builder may pour one slab under both.  

## Slide 32: Entity clustering: the problem and the idea

[Original slide](mis-600-chapter-03-slides.pdf#page=32)

- Some enterprise models hold more than 1,000 entity types and relationships
- A wall-sized printout helps nobody. Almost nobody needs the whole picture.
- Systems analysis solves this with functional decomposition (Valacich and George, 2020, as cited in the text)
- Data modeling borrows it: several linked diagrams, each showing one segment for one audience. Segments may overlap.
- An entity cluster is a set of entity types and their relationships grouped into one abstract entity type (Teorey, 1999, as
  cited in the text)  
- Clusters can be clustered again. Zoom out, zoom in, same territory.

## Slide 33: Marking the clusters

[Original slide](mis-600-chapter-03-slides.pdf#page=33)

Figure 3-13(a). The full Pine Valley EER diagram with shaded areas around possible clusters.  

## Slide 34: The cluster diagram

[Original slide](mis-600-chapter-03-slides.pdf#page=34)

Figure 3-13(b). Six clusters and the relationships between them. Nothing else.  
- SELLING UNIT: SALESPERSON, SALES TERRITORY, Serves
- CUSTOMER: the supertype, its subtypes, and their
  connection  
- ITEM SALE: ORDER, ORDER LINE, and the relationship
  between them  
- ITEM: PRODUCT LINE, PRODUCT, Includes
- MANUFACTURING: WORK CENTER, EMPLOYEE and its
  subtypes, Works In, Supervises  
- MATERIAL: RAW MATERIAL, VENDOR, SUPPLIER, Supplies

## Slide 35: Opening one cluster

[Original slide](mis-600-chapter-03-slides.pdf#page=35)

Figure 3-14. MANUFACTURING, exploded for the people who run the shop floor.  
- An inventory manager reads Figure 3-13(b) to see how manufacturing ties to items, then this figure for the detail. The selling
  structure never appears.  
- Three ways to form a cluster: abstract a supertype and its subtypes (CUSTOMER), combine directly related entities (the other five),
  or combine a strong entity with its weak entities  
- No single right clustering. Group for the audience. Move ORDER into CUSTOMER and ORDER LINE into ITEM, and ITEM SALE
  disappears.  

## Slide 36: Packaged data models and the models behind analytics

[Original slide](mis-600-chapter-03-slides.pdf#page=36)


## Slide 37: Why organizations buy a data model

[Original slide](mis-600-chapter-03-slides.pdf#page=37)

- Silverston (1998), as cited in the text: the modeler as artisan gives way to the modeler as engineer
- Universal or industry-specific, sold as “logical data models.” They are EER diagrams.
- The bet: enterprises in one industry share their underlying data structures
- Overstock.com, studied by the authors: the purchased model was about 80 percent right before customization and cost
  about one modeler-year  
- Proven components, fewer misses, a ready-made checklist for requirements, easier to evolve, easier to read, easier to
  share data across an industry  
- A universal data model is a starting point, never the “right” model
  A house plan from a catalog instead of an architect starting from a blank page. You still rename the study and drop the third  garage.  

## Slide 38: How the project changes

[Original slide](mis-600-chapter-03-slides.pdf#page=38)

- You buy metadata: every entity, attribute, and relationship, defined and typed, in a tool such as erwin. The tool can
  generate the SQL.  
- Find the parts that apply. Entities, then attributes, then relationships. Model the future, not just today.
- Rename the generic terms to the organization's own words
- Map the package to the current databases. Some elements will not map in either direction, and that is expected.
- The package's rules are deliberately loose. “At most one customer per order” is your rule to add.
- Users react to a concrete diagram, not a wish list. Build in phases, and use entity clusters to show the phases.
- It takes more skill, not less

## Slide 39: What the old databases will teach you

[Original slide](mis-600-chapter-03-slides.pdf#page=39)

Issue What it means What to do  
Overloaded columns One attribute used for several purposes over the years,  
usually undocumented  
Expect surprises during migration. Some data are dead, and  
some hide requirements nobody wrote down.  
Empty attributes Missing values from bugs, entry errors, or products  
older than the attribute  
Ask why. Sparse data hint at optional attributes, or at  
subtypes.  
Hidden structure Special-project shortcuts never undone, rule changes  
nobody dated  
Data profiling: statistics that expose outliers and shifts in the  
data over time  
Unverified rules The package guesses most rules right, but every one  
must be confirmed  
Walk each element with a subject matter expert. The hardest  
part of the job.  

## Slide 40: PARTY, PARTY ROLE, and ROLE TYPE

[Original slide](mis-600-chapter-03-slides.pdf#page=40)

Figure 3-15(a). The core of every universal model, in the inside-the-box notation.  
- PARTY: the actor, a PERSON or an ORGANIZATION
- PARTY ROLE: that actor playing a role from one date to
  another. EMPLOYEE, CONTACT, SUPPLIER, DEPARTMENT,  
  CUSTOMER.  
- ROLE TYPE: the description of a kind of role, written once
  for everyone who plays it  
- A role can override the party's values. A different Current
  Last Name while acting as BILL TO CUSTOMER.  
- The person is the party. Each hat is a role, with the dates it
  was worn.  

## Slide 41: Why not one long list of subtypes?

[Original slide](mis-600-chapter-03-slides.pdf#page=41)

Figure 3-15(b). The alternative a beginner would draw.  
- One PARTY supertype, partial and overlapping, with a
  subtype for every role  
- On paper it carries the same meaning
- But it sews every hat onto the person. Actor and role
  collapse into one box.  
- Keeping them apart makes the model more general, so it
  fits more organizations. That is the whole point of a  
  universal model.  

## Slide 42: Relationships between parties

[Original slide](mis-600-chapter-03-slides.pdf#page=42)

Figure 3-16. PARTY RELATIONSHIP, an associative entity with From Date and Thru Date.  
- Relates any number of parties in the roles they play. Subtypes:
  EMPLOYMENT, ORG CONTACT, ORG CUSTOMER, PARTNERSHIP.  
- EMPLOYMENT links a PERSON in the EMPLOYEE role to an
  ORGANIZATION in the ORGANIZATION UNIT role, for a period  
- It is really a unary many-to-many among PARTY ROLEs. Flexible,
  and vague.  
- Nothing stops EMPLOYMENT from linking two suppliers. Nothing
  limits an employee to one unit at a time.  
- Stricter rules end up in stored procedures or programs, or in a
  very busy diagram  

## Slide 43: Four older alternatives to E-R

[Original slide](mis-600-chapter-03-slides.pdf#page=43)

Model Core idea Where it lives  
Object-oriented Objects with their own attributes and methods. Handles graphs  
and trees.  
Software engineering. The book's web Chapter  
13.  
Semantic Models meaning the way people understand it. EER is one way  
to build one.  
Knowledge management systems  
UML A general-purpose modeling language. Data drawn as class  
diagrams.  
Object-oriented software development  
Hierarchical A tree of parent-child records A few old DBMSs. Popular in the 1960s and  
1970s.  
None of them replaces E-R or EER. None captures the full range of business rules.  

## Slide 44: Models built for analytics

[Original slide](mis-600-chapter-03-slides.pdf#page=44)

The right one depends on the application, the data, and the performance the system needs.  
Model What it is Good for Chapter  
Star schema A fact table of measures ringed by dimension tables OLAP: aggregate and drill down. Born in data warehousing. 10  
Snowflake A star whose dimensions are normalized into several  
tables  
Less redundancy, harder queries 10  
Columnar Data stored by column, not by row Scans and aggregates over very large tables 9  
NoSQL Key-value, graph, and document databases Large volumes of unstructured or semi-structured data, real-time  
analytics  
Time series Time-stamped points at regular intervals: prices,  
sensors, logs  
Real-time monitoring and analysis none  
Graph Nodes and relationships both hold data Social networks, fraud detection, recommendations 9  
Document Self-describing JSON or BSON documents, each with its  
own structure  
Flexible, scalable stores with no cross-document rules 9  
Chapter 9 is on our schedule. Chapter 10 is not, so this is your look at the star schema. Graph and document are NoSQL families.  

## Slide 45: The star schema, in one picture

[Original slide](mis-600-chapter-03-slides.pdf#page=45)

Drawn for this course. The fact sits in the middle, the context around it.  
SALES FACT  
Quantity, Amount  
CUSTOMER  
who  
DATE  
when  
PRODUCT  
what  
STORE  
where  
- The fact is a line on a receipt: how many, how much
- The dimensions answer who, what, where, and when
- “Office chair sales in Kansas last quarter” is one fact table
  filtered by three dimensions  
- Snowflake: split PRODUCT into PRODUCT and PRODUCT
  LINE, and so on, the way Chapter 4 normalizes  
- Not a substitute for the EER model. It answers questions
  fast. It does not state the rules of the business.  

## Slide 46: Before next class

[Original slide](mis-600-chapter-03-slides.pdf#page=46)

- Tonight's in-class exercise. Turn it in for participation credit.
- Study guide. The Chapter 3 guide on Blackboard walks every figure from tonight, with self-check questions.
- Blackboard tasks. Chapter 3 quiz, matching exercise, and the written assignment. Graduate students add the
  extension.  
- Draw.io habit. A circle with d or o inside, a double line for total specialization, shared attributes in the supertype
  only.  
- Exam 1 is September 23. Chapters 1 through 4.
  Next: Chapter 4. Supertypes and subtypes become tables, and normalization begins.  
