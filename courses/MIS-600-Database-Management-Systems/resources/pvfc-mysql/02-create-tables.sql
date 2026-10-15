-- MySQL 8: CREATE TABLES (parents → children)
-- Based on PVFC SQL - Tagged.pdf; setup corrections documented in README.md.
-- Expression defaults and enforced CHECK constraints require MySQL 8.0.16+.

CREATE TABLE Customer_T
(
  CustomerID         INT           NOT NULL,
  CustomerName       VARCHAR(25)   NOT NULL,
  CustomerAddress    VARCHAR(30),
  CustomerCity       VARCHAR(20),
  CustomerState      CHAR(2),
  CustomerPostalCode VARCHAR(10),
  CONSTRAINT Customer_PK PRIMARY KEY (CustomerID)
);

CREATE TABLE Territory_T
(
  TerritoryID   INT          NOT NULL,
  TerritoryName VARCHAR(50),
  CONSTRAINT Territory_PK PRIMARY KEY (TerritoryID)
);

CREATE TABLE DoesBusinessIn_T
(
  CustomerID  INT NOT NULL,
  TerritoryID INT NOT NULL,
  CONSTRAINT DoesBusinessIn_PK  PRIMARY KEY (CustomerID, TerritoryID),
  CONSTRAINT DoesBusinessIn_FK1 FOREIGN KEY (CustomerID) REFERENCES Customer_T(CustomerID),
  CONSTRAINT DoesBusinessIn_FK2 FOREIGN KEY (TerritoryID) REFERENCES Territory_T(TerritoryID)
);

CREATE TABLE Employee_T
(
  EmployeeID         VARCHAR(10)  NOT NULL,
  EmployeeName       VARCHAR(25),
  EmployeeAddress    VARCHAR(30),
  EmployeeBirthDate  DATE,
  EmployeeCity       VARCHAR(20),
  EmployeeState      CHAR(2),
  EmployeeZipCode    VARCHAR(10),
  EmployeeDateHired  DATE,
  EmployeeSupervisor VARCHAR(10),
  CONSTRAINT Employee_PK PRIMARY KEY (EmployeeID),
  -- Inferred eighteenth foreign key: a supervisor is another employee.
  CONSTRAINT Employee_FK1 FOREIGN KEY (EmployeeSupervisor) REFERENCES Employee_T(EmployeeID)
);

CREATE TABLE Skill_T
(
  SkillID          VARCHAR(12)  NOT NULL,
  SkillDescription VARCHAR(30),
  CONSTRAINT Skill_PK PRIMARY KEY (SkillID)
);

CREATE TABLE EmployeeSkills_T
(
  EmployeeID VARCHAR(10) NOT NULL,
  SkillID    VARCHAR(12) NOT NULL,
  CONSTRAINT EmployeeSkills_PK  PRIMARY KEY (EmployeeID, SkillID),
  CONSTRAINT EmployeeSkills_FK1 FOREIGN KEY (EmployeeID) REFERENCES Employee_T(EmployeeID),
  CONSTRAINT EmployeeSkills_FK2 FOREIGN KEY (SkillID) REFERENCES Skill_T(SkillID)
);

CREATE TABLE Order_T
(
  OrderID    INT  NOT NULL,
  CustomerID INT,
  OrderDate  DATE DEFAULT (CURRENT_DATE),
  CONSTRAINT Order_PK  PRIMARY KEY (OrderID),
  CONSTRAINT Order_FK1 FOREIGN KEY (CustomerID) REFERENCES Customer_T(CustomerID)
);

CREATE TABLE WorkCenter_T
(
  WorkCenterID       VARCHAR(12) NOT NULL,
  WorkCenterLocation VARCHAR(30),
  CONSTRAINT WorkCenter_PK PRIMARY KEY (WorkCenterID)
);

CREATE TABLE ProductLine_T
(
  ProductLineID   INT          NOT NULL,
  ProductLineName VARCHAR(50),
  CONSTRAINT ProductLine_PK PRIMARY KEY (ProductLineID)
);

CREATE TABLE Product_T
(
  ProductID            INT          NOT NULL,
  ProductLineID        INT,
  ProductDescription   VARCHAR(50),
  ProductFinish        VARCHAR(20),
  ProductStandardPrice NUMERIC(6,2),
  Saleprice            NUMERIC(6,2),
  CONSTRAINT Product_PK  PRIMARY KEY (ProductID),
  CONSTRAINT Product_FK1 FOREIGN KEY (ProductLineID) REFERENCES ProductLine_T(ProductLineID),
  -- Allowed finishes inferred from the five distinct supplied seed values.
  CONSTRAINT ProductFinish_CK CHECK
    (ProductFinish IN ('Cherry', 'Natural Ash', 'Natural Maple', 'White Ash', 'Walnut'))
);

CREATE TABLE ProducedIn_T
(
  ProductID    INT         NOT NULL,
  WorkCenterID VARCHAR(12) NOT NULL,
  CONSTRAINT ProducedIn_PK  PRIMARY KEY (ProductID, WorkCenterID),
  CONSTRAINT ProducedIn_FK1 FOREIGN KEY (ProductID) REFERENCES Product_T(ProductID),
  CONSTRAINT ProducedIn_FK2 FOREIGN KEY (WorkCenterID) REFERENCES WorkCenter_T(WorkCenterID)
);

CREATE TABLE OrderLine_T
(
  OrderID        INT NOT NULL,
  ProductID      INT NOT NULL,
  OrderedQuantity INT,
  CONSTRAINT OrderLine_PK  PRIMARY KEY (OrderID, ProductID),
  CONSTRAINT OrderLine_FK1 FOREIGN KEY (OrderID)   REFERENCES Order_T(OrderID),
  CONSTRAINT OrderLine_FK2 FOREIGN KEY (ProductID) REFERENCES Product_T(ProductID)
);

CREATE TABLE RawMaterial_T
(
  MaterialID           VARCHAR(12) NOT NULL,
  MaterialName         VARCHAR(30),
  MaterialStandardCost NUMERIC(6,2),
  UnitOfMeasure        VARCHAR(10),
  CONSTRAINT RawMaterial_PK PRIMARY KEY (MaterialID)
);

CREATE TABLE Salesperson_T
(
  SalespersonID   INT         NOT NULL,
  SalespersonName VARCHAR(25),
  SalespersonPhone VARCHAR(50),
  SalespersonFax   VARCHAR(50),
  TerritoryID      INT,
  CONSTRAINT Salesperson_PK  PRIMARY KEY (SalespersonID),
  CONSTRAINT Salesperson_FK1 FOREIGN KEY (TerritoryID) REFERENCES Territory_T(TerritoryID)
);

CREATE TABLE Vendor_T
(
  VendorID      INT         NOT NULL,
  VendorName    VARCHAR(25),
  VendorAddress VARCHAR(30),
  VendorCity    VARCHAR(20),
  VendorState   CHAR(2),
  VendorZipcode VARCHAR(50),
  VendorFax     VARCHAR(10),
  VendorPhone   VARCHAR(10),
  VendorContact VARCHAR(50),
  VendorTaxID   VARCHAR(50),
  CONSTRAINT Vendor_PK PRIMARY KEY (VendorID)
);

CREATE TABLE Supplies_T
(
  VendorID          INT         NOT NULL,
  MaterialID        VARCHAR(12) NOT NULL,
  SuppliesUnitPrice NUMERIC(6,2),
  CONSTRAINT Supplies_PK  PRIMARY KEY (VendorID, MaterialID),
  CONSTRAINT Supplies_FK1 FOREIGN KEY (MaterialID) REFERENCES RawMaterial_T(MaterialID),
  CONSTRAINT Supplies_FK2 FOREIGN KEY (VendorID)   REFERENCES Vendor_T(VendorID)
);

CREATE TABLE Uses_T
(
  ProductID        INT         NOT NULL,
  MaterialID       VARCHAR(12) NOT NULL,
  GoesIntoQuantity INT,
  CONSTRAINT Uses_PK  PRIMARY KEY (ProductID, MaterialID),
  CONSTRAINT Uses_FK1 FOREIGN KEY (ProductID)  REFERENCES Product_T(ProductID),
  CONSTRAINT Uses_FK2 FOREIGN KEY (MaterialID) REFERENCES RawMaterial_T(MaterialID)
);

CREATE TABLE WorksIn_T
(
  EmployeeID  VARCHAR(10) NOT NULL,
  WorkCenterID VARCHAR(12) NOT NULL,
  CONSTRAINT WorksIn_PK  PRIMARY KEY (EmployeeID, WorkCenterID),
  CONSTRAINT WorksIn_FK1 FOREIGN KEY (EmployeeID)  REFERENCES Employee_T(EmployeeID),
  CONSTRAINT WorksIn_FK2 FOREIGN KEY (WorkCenterID) REFERENCES WorkCenter_T(WorkCenterID)
);
