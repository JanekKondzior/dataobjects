
CREATE TABLE `Group` (
  `GroupId` int,
  PRIMARY KEY (`GroupId`)
);

CREATE TABLE `Product` (
  `ProductId` int,
  `ProductName` varchar(50),
  `ProductBrand` varchar(50),
  PRIMARY KEY (`ProductId`)
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

CREATE TABLE `Staff` (
  `StaffID` int,
  `FirstName` varchar(30),
  `LastName` varchar(30),
  `PositionId` int,
  PRIMARY KEY (`StaffID`),
  KEY `FK` (`PositionId`),
  CONSTRAINT `fk_position_staff` FOREIGN KEY (`PositionId`) REFERENCES `Position` (`PositionId`)
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

CREATE TABLE `Course` (
  `CourseId` int,
  `FeeId` int,
  `CourseName` varchar(255),
  PRIMARY KEY (`CourseId`),
  KEY `FK` (`FeeId`),
  CONSTRAINT `fk_Fee_Course` FOREIGN KEY (`FeeId`) REFERENCES `Fee` (`FeeId`)
);



CREATE TABLE `Customer` (
  `CustomerId` int,
  `ParentId` int,
  `FirstName` varchar(30),
  `LastName` varchar(30),
  PRIMARY KEY (`CustomerId`),
  KEY `FK` (`ParentId`),
  CONSTRAINT `fk_Parent_Customer` FOREIGN KEY (`ParentId`) REFERENCES `Parents` (`ParentID`)
);

CREATE TABLE `Order` (
  `OrderId` int,
  `StaffId` int,
  `Date` TIMESTAMP,
  PRIMARY KEY (`OrderId`),
  KEY `FK` (`StaffId`),
  CONSTRAINT `fk_Staff_Order` FOREIGN KEY (`StaffId`) REFERENCES `Staff` (`StaffID`)
);

CREATE TABLE `SupplierOrder` (
  `OrderId` int,
  `SupplierId` int,
  `ProductId` int,
  KEY `CK` (`OrderId`, `SupplierId`, `ProductId`),
  CONSTRAINT `fk_Order_SupplierOrder` FOREIGN KEY (`OrderID`) REFERENCES `Order` (`OrderId`),
  CONSTRAINT `fk_Supplier_SupplierOrder` FOREIGN KEY (`SupplierID`) REFERENCES `Supplier` (`SupplierID`),
  CONSTRAINT `fk_product_SupplierOrder` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ProductId`)

);

CREATE TABLE `Invoice` (
  `Invoiceid` int,
  `CustomerId` int,
  `FeeId` int,
  `Date` TIMESTAMP,
  PRIMARY KEY (`Invoiceid`),
  KEY `FK` (`CustomerId`, `FeeId`),
  CONSTRAINT `fk_Customer_Invoice` FOREIGN KEY (`CustomerId`) REFERENCES `Customer` (`CustomerID`)
);

CREATE TABLE `ProductOrder` (
  `Index` int,
  `InvoiceId` int,
  `ProductId` int,
  `Qty` int,
  PRIMARY KEY (`Index`),
  KEY `FK` (`InvoiceId`, `ProductId`),
  CONSTRAINT `fk_Invoice_ProductOrder` FOREIGN KEY (`InvoiceId`) REFERENCES `Invoice` (`InvoiceID`),
  CONSTRAINT `fk_Proudct_ProductOrder` FOREIGN KEY (`ProductId`) REFERENCES `Product` (`ProductID`)
);

CREATE TABLE `Timetable` (
  `TimetableID` int,
  `StaffID` int,
  PRIMARY KEY (`TimetableID`),
  KEY `FK` (`StaffID`),
  CONSTRAINT `fk_Staff_Timetable` FOREIGN KEY (`StaffID`) REFERENCES `Staff` (`StaffID`)
);

CREATE TABLE `Timeslot` (
  `TimeslotId` int,
  `StaffId` int,
  `GroupId` int,
  `CourseId` int,
  `Date` TIMESTAMP,
  PRIMARY KEY (`TimeslotId`),
  KEY `FK` (`StaffId`, `GroupId`, `CourseId`),
  CONSTRAINT `fk_Staff_Timeslot` FOREIGN KEY (`StaffId`) REFERENCES `Staff` (`StaffID`),
  CONSTRAINT `fk_Group_Timeslot` FOREIGN KEY (`GroupId`) REFERENCES `Group` (`GroupID`),
  CONSTRAINT `fk_Course_Timeslot` FOREIGN KEY (`CourseId`) REFERENCES `Course` (`CourseID`)
);


CREATE TABLE `Enrolment` (
  `EnrolementId` int,
  `CustomerId` int,
  `TimetableId` int,
  `GroupId` int,
  PRIMARY KEY (`EnrolementId`),
  KEY `FK` (`CustomerId`, `TimetableId`, `GroupId`),
  CONSTRAINT `fk_group_enrolment` FOREIGN KEY (`GroupId`) REFERENCES `Group` (`GroupId`),
  CONSTRAINT `fk_Customer_Enrolment` FOREIGN KEY (`CustomerId`) REFERENCES `Customer` (`CustomerId`),
  CONSTRAINT `fk_Timetable_Enrolment` FOREIGN KEY (`TimetableId`) REFERENCES `Timetable` (`TimetableID`)
);
