CREATE TABLE `Class` (
  `Instructor` <type>,
  `Group` <type>,
  `ClassDay` <type>,
  KEY `CK` (`Instructor`, `Group`)
);

CREATE TABLE `Group` (
  `GroupType` <type>,
  `GroupFee` <type>,
  `SessionTime` <type>,
  PRIMARY KEY (`GroupType`)
);

CREATE TABLE `Invoice` (
  `InvoiceID` <type>,
  `PaymentID` <type>,
  `InvoiceDate` <type>,
  PRIMARY KEY (`InvoiceID`),
  KEY `FK` (`PaymentID`)
);

CREATE TABLE `Product` (
  `ProductID` <type>,
  `ProductName` <type>,
  `ProductBrand` <type>,
  `ProductPrice` <type>,
  KEY `FK` (`ProductID`)
);

CREATE TABLE `Staff` (
  `StaffID` <type>,
  `FirstName` <type>,
  `LastName` <type>,
  `Position` <type>,
  PRIMARY KEY (`StaffID`),
  KEY `FK` (`Position`)
);

CREATE TABLE `Order` (
  `OrderID` <type>,
  `StaffID` <type>,
  `Date` <type>,
  PRIMARY KEY (`OrderID`),
  KEY `FK` (`StaffID`)
);

CREATE TABLE `Position` (
  `PositionTitle` <type>,
  `PositionSalary` <type>,
  PRIMARY KEY (`PositionTitle`)
);

CREATE TABLE `Supplier` (
  `SupplierName` <type>,
  `SuppAddress` <type>,
  `SuppSuburb` <type>,
  PRIMARY KEY (`SupplierName`)
);

CREATE TABLE `Enrolment` (
  `Student` <type>,
  `Group` <type>,
  KEY `CK` (`Student`, `Group`)
);

CREATE TABLE `SupplierOrder` (
  `OrderID` <type>,
  `Supplier` <type>,
  `ProductID` <type>,
  `SupOrdQty` <type>,
  `ShipAddress` <type>,
  `ShipPostcode` <type>,
  KEY `CK` (`OrderID`, `Supplier`, `ProductID`),
  KEY `Key` (`ShipAddress`, `ShipPostcode`)
);

CREATE TABLE `Member` (
  `MemberID` <type>,
  `MemRegDate` <type>,
  `FirstName` <type>,
  `LastName` <type>,
  `ParFirstName` <type>,
  `ParLastName` <type>,
  `ParContact` <type>,
  `ContactNo` <type>,
  `MemFee` <type>,
  PRIMARY KEY (`MemberID`)
);

CREATE TABLE `ProductOrder` (
  `InvoiceID` <type>,
  `ProductID` <type>,
  `ProOrdQty` <type>,
  KEY `CK` (`InvoiceID`, `ProductID`)
);

CREATE TABLE `Consultation` (
  `ConsulID` <type>,
  `StaffID` <type>,
  `Student` <type>,
  `ConsulDate` <type>,
  `ConsulTime` <type>,
  PRIMARY KEY (`ConsulID`),
  KEY `FK` (`StaffID`, `Student`)
);

CREATE TABLE `Grading` (
  `GradingID` <type>,
  `Instructor` <type>,
  `Student` <type>,
  `Grade` <type>,
  `Belt` <type>,
  PRIMARY KEY (`GradingID`),
  KEY `FK` (`Instructor`, `Student`)
);

CREATE TABLE `StaffAttendance` (
  `AttendanceID` <type>,
  `StaffID` <type>,
  `Hours` <type>,
  PRIMARY KEY (`AttendanceID`),
  KEY `FK` (`StaffID`)
);

CREATE TABLE `Payment` (
  `PaymentID` <type>,
  `MemberID` <type>,
  `PaymentAmt` <type>,
  PRIMARY KEY (`PaymentID`),
  KEY `FK` (`MemberID`)
);

