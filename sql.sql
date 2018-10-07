CREATE TABLE `Timeslot` (
  `TimeslotId` int,
  `StaffId` int,
  `GroupId` int,
  `CourseId` int,
  `Date` TIMESTAMP,
  PRIMARY KEY (`TimeslotId`),
  KEY `FK` (`StaffId`, `GroupId`, `CourseId`)
);

CREATE TABLE `Group` (
  `GroupId` int,
  PRIMARY KEY (`GroupId`)
);

CREATE TABLE `Course` (
  `CourseId` int,
  `FeeId` int,
  `CourseName` varchar(255),
  PRIMARY KEY (`CourseId`),
  KEY `FK` (`FeeId`)
);

CREATE TABLE `Invoice` (
  `Invoiceid` int,
  `CustomerId` int,
  `FeeId` int,
  `Date` TIMESTAMP,
  PRIMARY KEY (`Invoiceid`),
  KEY `FK` (`CustomerId`, `FeeId`)
);

CREATE TABLE `Product` (
  `ProductId` int,
  `ProductName` varchar(50),
  `ProductBrand` varchar(50),
  KEY `FK` (`ProductId`)
);

CREATE TABLE `Parents` (
  `ParentID` int,
  `FirstName` varchar(30),
  `LastName` varchar(30),
  PRIMARY KEY (`ParentID`)
);

CREATE TABLE `Position` (
  `PositionId` int,
  `PositionTitle` varchar(30),
  `Salary` DOUBLE,
  PRIMARY KEY (`PositionId`)
);

CREATE TABLE `Order` (
  `OrderId` int,
  `StaffId` int,
  `Date` TIMESTAMP,
  PRIMARY KEY (`OrderId`),
  KEY `FK` (`StaffId`)
);

CREATE TABLE `Staff` (
  `StaffID` int,
  `FirstName` varchar(30),
  `LastName` varchar(30),
  `PositionId` int,
  PRIMARY KEY (`StaffID`),
  KEY `FK` (`PositionId`)
);

CREATE TABLE `Supplier` (
  `SupplierId` int,
  `StreetAddress` varchar(50),
  `City` varchar(30),
  PRIMARY KEY (`SupplierId`)
);

CREATE TABLE `Fee` (
  `FeeId` int,
  `Fee` int,
  PRIMARY KEY (`FeeId`)
);

CREATE TABLE `Enrolment` (
  `EnrolementId` int,
  `CustomerId` int,
  `TimetableId` int,
  `GroupId` int,
  PRIMARY KEY (`EnrolementId`),
  KEY `FK` (`CustomerId`, `TimetableId`, `GroupId`)
);

CREATE TABLE `Customer` (
  `CustomerId` int,
  `ParentId` int,
  `FirstName` varchar(30),
  `LastName` varchar(30),
  PRIMARY KEY (`CustomerId`),
  KEY `FK` (`ParentId`)
);

CREATE TABLE `SupplierOrder` (
  `OrderId` int,
  `SupplierId` int,
  `ProductId` int,
  KEY `CK` (`OrderId`, `SupplierId`, `ProductId`)
);

CREATE TABLE `ProductOrder` (
  `Index` int,
  `InvoiceId` int,
  `ProductId` int,
  `Qty` int,
  PRIMARY KEY (`Index`),
  KEY `FK` (`InvoiceId`, `ProductId`)
);

CREATE TABLE `Timetable` (
  `TimetableID` int,
  `StaffID` int,
  PRIMARY KEY (`TimetableID`),
  KEY `FK` (`StaffID`)
);
