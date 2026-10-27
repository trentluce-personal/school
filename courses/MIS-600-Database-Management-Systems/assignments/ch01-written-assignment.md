# MIS 600, chapter 1 written assignment (8 pts)

Trent Luce, undergraduate. Due Wednesday, September 2, 2026.
Source: Hoffer, Topi, Venkataraman and Bala, Modern Database Management, 14th ed., ch. 1.

## Section 1: term contrasts

1. Data dependence means the file layout is coded into every program, so changing one field breaks all of them. Data independence keeps that description in the DBMS catalog instead, which turns the same change into a schema edit and nothing more.

2. Structured data has a shape decided in advance: named fields, fixed types, rows and columns. Unstructured data has none of that, covering email, contracts, photos and video, and its volume is most of the reason NoSQL and big data platforms exist.

3. The number 3.85 is not information until something records that the field is GPA, numeric, on a four point scale and tied to a student. The 3.85 is data. The description around it is metadata.

4. A database holds what the business runs on, the customers and orders themselves. A repository holds descriptions instead: what the tables mean, who owns them and which processes use them.

5. An entity is one thing the organization tracks, like CUSTOMER or ORDER. The enterprise data model is the whole company at low resolution, showing major entities and how they connect. One is a box on the diagram, the other is the diagram.

6. A warehouse cleans and reshapes data into a fixed schema before storing any of it, so a report off it can be trusted. A lake stores data raw and works out the structure at read time. Cheaper, messier and aimed at data scientists.

7. Personal databases are single user and small enough that nobody thinks about concurrency. Multi-tiered databases split the work across thin clients, application servers and a database server, which is how thousands of users hit the same data at once.

8. The systems development life cycle goes in order, planning through maintenance, with documentation at every phase, and it suits projects whose requirements are already understood. Prototyping skips ahead: build something rough, show users, rebuild, and let the requirements come out of the loop.

9. Same kind of model, different zoom. The enterprise model is drawn in planning and stays vague on detail, while the conceptual model is drawn in analysis for a single project and includes every entity, attribute and business rule inside it.

10. Prototyping is a technique. Agile is a way of running the whole project, adding timeboxed iterations, constant customer involvement and small self-organizing teams, none of which prototyping has anything to say about.

## Section 2: five disadvantages of file processing systems

1. Program data dependence. Each program holds its own copy of the file layout, so one change means editing all of them.
2. Duplicated data. The same customer sits in two departments' files until the addresses disagree.
3. Poor data sharing. Files belong to the application that created them, so anything crossing departments takes custom code.
4. Slow development. Every new application starts over with its own file design and file handling code.
5. Heavy maintenance. The problems above feed each other, and most of the budget goes to old programs.

## Section 3: how relationships between tables are expressed

Through matching values, not links. Each table has a primary key that identifies a row uniquely, and a second table refers to it by carrying that column as a foreign key. Referential integrity requires every foreign key value to match a real primary key or be null.

One to many puts the foreign key on the many side, so ORDER carries CustomerID. Many to many needs an associative table between the two, like ENROLLMENT with StudentID, SectionID and the grade. Because nothing is stored as a pointer, the tables get joined at query time and a new relationship costs nothing.

## Section 4: data independence

Data independence means the description of the data lives in the DBMS catalog rather than inside every program that reads it. Physical independence covers storage, so a DBA can add an index or move to faster hardware without any application noticing. Logical independence covers the schema, so adding an attribute leaves programs alone unless they used the part that changed.

It matters because of cost. Without it, every change scales with the number of programs touching the data, which is what made file processing so expensive to live with. With it the change happens once, a DBA can tune performance freely and applications share the same data through their own views without breaking each other.
