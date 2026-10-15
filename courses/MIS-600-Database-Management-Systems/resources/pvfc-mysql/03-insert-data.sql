-- MySQL 8: INSERT DATA
-- Based on PVFC SQL - Tagged.pdf; setup corrections documented in README.md.

INSERT INTO Customer_T (CustomerID, CustomerName, CustomerAddress,
CustomerCity, CustomerState, CustomerPostalCode) VALUES
(1,  'Contemporary Casuals', '1355 S Hines Blvd',  'Gainesville', 'FL', '32601-2871'),
(2,  'Value Furniture',      '15145 S.W. 17th St.', 'Plano',      'TX', '75094-7743'),
(3,  'Home Furnishings',     '1900 Allard Ave.',   'Albany',     'NY', '12209-1125'),
(4,  'Eastern Furniture',    '1925 Beltline Rd.',  'Carteret',   'NJ', '07008-3188'),
(5,  'Impressions',          '5585 Westcott Ct.',  'Sacramento', 'CA', '94206-4056'),
(6,  'Furniture Gallery',    '325 Flatiron Dr.',   'Boulder',    'CO', '80514-4432'),
(7,  'Period Furniture',     '394 Rainbow Dr.',    'Seattle',    'WA', '97954-5589'),
(8,  'California Classics',  '816 Peach Rd.',      'Santa Clara','CA', '96915-7754'),
(9,  'M and H Casual Furniture', '3709 First Street',
'Clearwater','FL','34620-2314'),
(10, 'Seminole Interiors',   '2400 Rocky Point Dr.','Seminole',  'FL', '34646-4423'),
(11, 'American Euro Lifestyles', '2424 Missouri Ave N.','Prospect Park','NJ','07508-5621'),
(12, 'Battle Creek Furniture','345 Capitol Ave. SW','Battle Creek','MI','49015-3401'),
(13, 'Heritage Furnishings', '66789 College Ave.', 'Carlisle',   'PA', '17013-8834'),
(14, 'Kaneohe Homes',        '112 Kiowai St.',     'Kaneohe',    'HI', '96744-2537'),
(15, 'Mountain Scenes',      '4132 Main Street',   'Ogden',      'UT', '84403-4432');

INSERT INTO Territory_T (TerritoryID, TerritoryName) VALUES
(1, 'SouthEast'),
(2, 'SouthWest'),
(3, 'NorthEast'),
(4, 'NorthWest'),
(5, 'Central');

INSERT INTO DoesBusinessIn_T (CustomerID, TerritoryID) VALUES
(1,1),(1,2),(2,2),(3,3),(4,3),(5,2),(6,5);

-- Load the supervisor first: MySQL checks self-referencing foreign keys immediately.
INSERT INTO Employee_T (EmployeeID, EmployeeName,
EmployeeAddress, EmployeeCity, EmployeeState, EmployeeZipCode,
EmployeeDateHired, EmployeeBirthDate, EmployeeSupervisor) VALUES
('454-56-768', 'Robert Lewis', '17834 Deerfield Ln','Nashville','TN','', '1999-01-01', '1974-05-05', NULL);

INSERT INTO Employee_T (EmployeeID, EmployeeName,
EmployeeAddress, EmployeeCity, EmployeeState, EmployeeZipCode,
EmployeeDateHired, EmployeeBirthDate, EmployeeSupervisor) VALUES
('123-44-345', 'Jim Jason',    '2134 Hilltop Rd', '',         'TN', '', '1999-06-12',
'1958-12-12', '454-56-768');

INSERT INTO Skill_T (SkillID, SkillDescription) VALUES
('BS12','12in Band Saw'),
('QC1','Quality Control'),
('RT1','Router'),
('SO1','Sander-Orbital'),
('SB1','Sander-Belt'),
('TS10','10in Table Saw'),
('TS12','12in Table Saw'),
('UC1','Upholstery Cutter'),
('US1','Upholstery Sewer'),
('UT1','Upholstery Tacker');

INSERT INTO EmployeeSkills_T (EmployeeID, SkillID) VALUES
('123-44-345','BS12'),
('123-44-345','RT1'),
('454-56-768','BS12');

-- Orders (ISO dates)
INSERT INTO Order_T (OrderID, CustomerID, OrderDate) VALUES
(1021,1,'2024-10-21'),
(1022,8,'2024-10-21'),
(1023,15,'2024-10-22'),
(1024,5,'2024-10-22'),
(1025,3,'2024-10-24'),
(1026,2,'2024-10-24'),
(1027,11,'2024-10-27'),
(1028,12,'2024-10-30'),
(1029,4,'2024-11-05'),
(1030,1,'2024-11-05'),
(1011,1,'2023-09-14'),
(1012,2,'2023-09-21'),
(1013,12,'2023-10-05'),
(1014,8,'2023-10-07'),
(1015,1,'2023-10-08'),
(1016,5,'2023-10-10'),
(1017,12,'2023-10-12'),
(1018,11,'2023-10-14'),
(1019,2,'2023-11-07'),
(1020,15,'2023-12-10'),
(1001,1,'2022-08-10'),
(1002,4,'2022-08-12'),
(1003,12,'2022-08-13'),
(1004,3,'2022-08-14'),
(1005,1,'2022-08-14'),
(1006,15,'2022-08-16'),
(1007,12,'2022-08-17'),
(1008,15,'2022-09-03'),
(1009,3,'2022-09-05'),
(1010,1,'2022-09-07');

INSERT INTO ProductLine_T (ProductLineID, ProductLineName) VALUES
(1,'Cherry Tree'),
(2,'Scandinavia'),
(3,'Country Look');

INSERT INTO Product_T (ProductID, ProductDescription, ProductFinish,
ProductStandardPrice, Saleprice, ProductLineID) VALUES
(1,'End Table','Cherry',         175, 148.75, 1),
(2,'Coffee Table','Natural Ash',  200, 127.50, 2),
(3,'Computer Desk','Natural Ash', 375, 318.75, 2),
(4,'Entertainment Center','Natural Maple',650, 585.00, 3),
(5,'Writers Desk','Cherry',       325, 276.25, 1),
(6,'8-Drawer Desk','White Ash',   750, 675.00, 2),
(7,'Dining Table','Natural Ash',  800, 720.00, 2),
(8,'Computer Desk','Walnut',      250, 212.50, 3);

INSERT INTO OrderLine_T (OrderID, ProductID, OrderedQuantity) VALUES
(1016,5,1),
(1001,1,2),
(1001,2,2),
(1001,4,1),
(1002,3,5),
(1003,3,3),
(1004,6,2),
(1004,8,2),
(1005,4,4),
(1006,4,1),
(1006,5,2),
(1006,7,2),
(1007,1,3),
(1007,2,2),
(1008,3,3),
(1008,8,3),
(1009,4,2),
(1009,7,3),
(1010,8,10),
(1021,8,2),
(1021,2,3),
(1021,5,1),
(1022,1,6),
(1023,2,2),
(1024,2,8),
(1024,5,6),
(1025,1,8),
(1026,8,9),
(1026,4,5),
(1026,2,5),
(1027,6,1),
(1027,1,2),
(1028,2,3),
(1028,7,3),
(1029,5,2),
(1029,2,3),
(1030,2,15),
(1011,4,2),
(1011,5,2),
(1011,2,1),
(1012,3,8),
(1013,4,3),
(1014,7,2),
(1014,4,3),
(1015,8,8),
(1016,2,2),
(1016,4,1),
(1016,6,5),
(1017,6,2),
(1017,3,5),
(1018,2,3),
(1018,5,3),
(1019,1,2),
(1019,7,3),
(1020,2,12);

INSERT INTO Salesperson_T (SalespersonID, SalespersonName,
SalespersonPhone, SalespersonFax, TerritoryID) VALUES
(1,'Doug Henny','8134445555','',1),
(2,'Robert Lewis','8139264006','',2),
(3,'William Strong','5053821212','',3),
(4,'Julie Dawson','4355346677','',4),
(5,'Jacob Winslow','2238973498','',5);

INSERT INTO WorkCenter_T (WorkCenterID, WorkCenterLocation) VALUES
('SM1','Main Saw Mill'),
('WR1','Warehouse and Receiving');

INSERT INTO WorksIn_T (EmployeeID, WorkCenterID) VALUES
('123-44-345','SM1');

-- (The original script had no data for RawMaterial_T / Vendor_T /
-- Supplies_T / Uses_T / ProducedIn_T beyond definitions.)
