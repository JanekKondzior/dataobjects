CREATE TABLE `Class` (
  `Instructor` varchar(30),
  `Group` varchar(7),
  `ClassDay` varchar(30),
  KEY `CK` (`Instructor`, `Group`)
);

CREATE TABLE `Group` (
  `GroupType` varchar(7),
  `GroupFee` int(3),
  `SessionTime` date(11),
  PRIMARY KEY (`GroupType`)
);

CREATE TABLE `Invoice` (
  `InvoiceID` int(11),
  `PaymentID` int(11),
  `InvoiceDate` timestamp,
  PRIMARY KEY (`InvoiceID`),
  KEY `FK` (`PaymentID`)
);

CREATE TABLE `Product` (
  `ProductID` int(11),
  `ProductName` varchar(30),
  `ProductBrand` varchar(30),
  `ProductPrice` int(11),
  KEY `FK` (`ProductID`)
);

CREATE TABLE `Staff` (
  `StaffID` int(11),
  `FirstName` varchar(30),
  `LastName` varchar(30),
  `Position` varchar(30),
  PRIMARY KEY (`StaffID`),
  KEY `FK` (`Position`)
);

CREATE TABLE `Order` (
  `OrderID` int(11),
  `StaffID` int(11),
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`OrderID`),
  KEY `FK` (`StaffID`)
);

CREATE TABLE `Position` (
  `PositionTitle` varchar(30),
  `PositionSalary` int(11),
  PRIMARY KEY (`PositionTitle`)
);

CREATE TABLE `Supplier` (
  `SupplierName` varchar(30),
  `SuppAddress` varchar(30),
  `SuppSuburb` varchar(30),
  PRIMARY KEY (`SupplierName`)
);

CREATE TABLE `Enrolment` (
  `Student` int(11),
  `Group` varchar(7),
  KEY `CK` (`Student`, `Group`)
);

CREATE TABLE `SupplierOrder` (
  `OrderID` int(11),
  `Supplier` varchar(30),
  `ProductID` int(11),
  `SupOrdQty` int(11),
  `ShipAddress` varchar(30),
  `ShipPostcode` varchar(30),
  KEY `CK` (`OrderID`, `Supplier`, `ProductID`),
  KEY `Key` (`ShipAddress`, `ShipPostcode`)
);

CREATE TABLE `Member` (
  `MemberID` int(11),
  `MemRegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FirstName` varchar(30),
  `LastName` varchar(30),
  `ParFirstName` varchar(30),
  `ParLastName` varchar(30),
  `ParContact` varchar(30),
  `ContactNo` varchar(30),
  `MemFee` int(11),
  PRIMARY KEY (`MemberID`)
);

CREATE TABLE `ProductOrder` (
  `InvoiceID` int(11),
  `ProductID` int(11),
  `ProOrdQty` int(11),
  KEY `CK` (`InvoiceID`, `ProductID`)
);

CREATE TABLE `Consultation` (
  `ConsulID` int(11),
  `StaffID` int(11),
  `Student` int(11),
  `ConsulDate` timestamp,
  `ConsulTime` timestamp,
  PRIMARY KEY (`ConsulID`),
  KEY `FK` (`StaffID`, `Student`)
);

CREATE TABLE `Grading` (
  `GradingID` int(11),
  `Instructor` int(11),
  `Student` int(11),
  `Grade` varchar(30),
  `Belt` varchar(10),
  PRIMARY KEY (`GradingID`),
  KEY `FK` (`Instructor`, `Student`)
);

CREATE TABLE `StaffAttendance` (
  `AttendanceID` int(11),
  `StaffID` int(11),
  `Hours` int(11),
  PRIMARY KEY (`AttendanceID`),
  KEY `FK` (`StaffID`)
);

CREATE TABLE `Payment` (
  `PaymentID` int(11),
  `MemberID` int(11),
  `PaymentAmt` int(11),
  PRIMARY KEY (`PaymentID`),
  KEY `FK` (`MemberID`)
);

