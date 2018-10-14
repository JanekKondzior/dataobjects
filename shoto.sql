-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2018 at 12:36 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoto`
--
CREATE DATABASE IF NOT EXISTS `shoto` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `shoto`;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `Instructor` varchar(30) DEFAULT NULL,
  `Group` varchar(7) DEFAULT NULL,
  `ClassDay` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `consultation`
--

CREATE TABLE `consultation` (
  `ConsulID` int(11) NOT NULL,
  `StaffID` int(11) DEFAULT NULL,
  `Student` int(11) DEFAULT NULL,
  `ConsulDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ConsulTime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `enrolment`
--

CREATE TABLE `enrolment` (
  `Student` int(11) DEFAULT NULL,
  `Group` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grading`
--

CREATE TABLE `grading` (
  `GradingID` int(11) NOT NULL,
  `Instructor` int(11) DEFAULT NULL,
  `Student` int(11) DEFAULT NULL,
  `Grade` varchar(30) DEFAULT NULL,
  `Belt` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `GroupType` varchar(7) NOT NULL,
  `GroupFee` int(3) DEFAULT NULL,
  `SessionTime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`GroupType`, `GroupFee`, `SessionTime`) VALUES
('juniors', 60, '18:00:00'),
('seniors', 80, '19:00:00'),
('tigers', 50, '13:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `InvoiceID` int(11) NOT NULL,
  `PaymentID` int(11) DEFAULT NULL,
  `InvoiceDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`InvoiceID`, `PaymentID`, `InvoiceDate`) VALUES
(1, 1, '2017-09-01'),
(2, 2, '2018-10-02');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `MemberID` int(11) NOT NULL,
  `MemRegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FirstName` varchar(30) DEFAULT NULL,
  `LastName` varchar(30) DEFAULT NULL,
  `ParFirstName` varchar(30) DEFAULT NULL,
  `ParLastName` varchar(30) DEFAULT NULL,
  `ParContact` varchar(30) DEFAULT NULL,
  `ContactNo` varchar(30) DEFAULT NULL,
  `MemFee` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`MemberID`, `MemRegDate`, `FirstName`, `LastName`, `ParFirstName`, `ParLastName`, `ParContact`, `ContactNo`, `MemFee`) VALUES
(1, '2018-10-14 04:47:24', 'John', 'Doe', '', '', '', '', NULL),
(3, '2018-10-14 04:47:51', 'Riccardo ', 'comp', '', '', '', '', NULL),
(20, '2018-10-14 10:31:58', 'Candace', 'Pexton', 'Haily', 'De La Haye', '994-975-9871', '700-271-6903', NULL),
(21, '2018-10-14 10:31:58', 'Lorianne', 'Tort', 'Riannon', 'Penman', '644-446-7878', '815-831-3380', NULL),
(22, '2018-10-14 10:31:58', 'Rania', 'Semper', 'Lorilee', 'Lackmann', '645-834-1369', '531-707-9044', NULL),
(23, '2018-10-14 10:31:58', 'Bartel', 'Woodfin', 'Bunny', 'Haddock', '745-975-2902', '158-461-8705', NULL),
(24, '2018-10-14 10:31:58', 'Henryetta', 'Manvelle', 'Ame', 'Gherardesci', '809-891-2623', '615-670-4741', NULL),
(25, '2018-10-14 10:31:58', 'Karolina', 'McMennum', 'Geneva', 'Bill', '122-169-5774', '417-995-3814', NULL),
(26, '2018-10-14 10:31:58', 'Thomasa', 'Omar', 'Trixy', 'Pie', '819-499-6256', '467-280-7134', NULL),
(27, '2018-10-14 10:31:58', 'Katya', 'Kondratenko', 'Blaire', 'Kampshell', '137-965-7179', '797-748-3104', NULL),
(28, '2018-10-14 10:31:58', 'April', 'Hainge', 'Bobinette', 'Siemens', '601-745-2968', '123-759-2369', NULL),
(29, '2018-10-14 10:31:58', 'Allistir', 'Lummus', 'Gael', 'Wille', '592-896-6956', '727-840-0865', NULL),
(30, '2018-10-14 10:31:58', 'Filberte', 'Woolger', 'Demetris', 'Sex', '707-764-9518', '567-767-4662', NULL),
(31, '2018-10-14 10:31:58', 'Winne', 'Keynd', 'Inglis', 'Nelsen', '250-953-2353', '364-205-1177', NULL),
(32, '2018-10-14 10:31:58', 'Hugo', 'Winmill', 'Giselbert', 'Hallatt', '588-467-1820', '780-763-0696', NULL),
(33, '2018-10-14 10:31:58', 'Mellisa', 'Furlow', 'Kendall', 'Fowells', '214-623-9667', '857-542-5396', NULL),
(34, '2018-10-14 10:31:58', 'Guntar', 'Dearness', 'Annmarie', 'Fawkes', '140-303-7250', '865-933-3782', NULL),
(35, '2018-10-14 10:31:58', 'Hally', 'Wilmut', 'Chrysa', 'Camerello', '671-338-0973', '485-474-6184', NULL),
(36, '2018-10-14 10:31:58', 'Adriano', 'Morphey', 'Sheilakathryn', 'Lerego', '199-319-8014', '330-282-0982', NULL),
(37, '2018-10-14 10:31:58', 'Vivianne', 'O\'Lunny', 'Muffin', 'Goligher', '824-199-5765', '566-842-0519', NULL),
(38, '2018-10-14 10:31:58', 'Reggie', 'McSperron', 'Tam', 'Davern', '754-773-2467', '942-844-4618', NULL),
(39, '2018-10-14 10:31:58', 'Judas', 'Mellhuish', 'Rivkah', 'Ruusa', '345-760-4415', '230-473-1856', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `OrderID` int(11) NOT NULL,
  `StaffID` int(11) DEFAULT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PaymentID` int(11) NOT NULL,
  `MemberID` int(11) DEFAULT NULL,
  `PaymentAmt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PaymentID`, `MemberID`, `PaymentAmt`) VALUES
(1, 1, 20),
(2, 2, 30);

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `PositionTitle` varchar(30) NOT NULL,
  `PositionSalary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`PositionTitle`, `PositionSalary`) VALUES
('gaylord', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` int(11) DEFAULT NULL,
  `ProductName` varchar(30) DEFAULT NULL,
  `ProductBrand` varchar(30) DEFAULT NULL,
  `ProductPrice` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `ProductName`, `ProductBrand`, `ProductPrice`) VALUES
(1, 'Green Belt', 'Belts R US', 10);

-- --------------------------------------------------------

--
-- Table structure for table `productorder`
--

CREATE TABLE `productorder` (
  `InvoiceID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `ProOrdQty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `StaffID` int(11) NOT NULL,
  `FirstName` varchar(30) DEFAULT NULL,
  `LastName` varchar(30) DEFAULT NULL,
  `Position` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`StaffID`, `FirstName`, `LastName`, `Position`) VALUES
(1, 'john', 'doe', 'gaylord');

-- --------------------------------------------------------

--
-- Table structure for table `staffattendance`
--

CREATE TABLE `staffattendance` (
  `AttendanceID` int(11) NOT NULL,
  `StaffID` int(11) DEFAULT NULL,
  `Hours` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SupplierName` varchar(30) NOT NULL,
  `SuppAddress` varchar(30) DEFAULT NULL,
  `SuppSuburb` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplierorder`
--

CREATE TABLE `supplierorder` (
  `OrderID` int(11) DEFAULT NULL,
  `Supplier` varchar(30) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `SupOrdQty` int(11) DEFAULT NULL,
  `ShipAddress` varchar(30) DEFAULT NULL,
  `ShipPostcode` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplierorder`
--

INSERT INTO `supplierorder` (`OrderID`, `Supplier`, `ProductID`, `SupOrdQty`, `ShipAddress`, `ShipPostcode`) VALUES
(1, 'Belt R US', 1, 4, '12 froggy pond', '2123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD KEY `CK` (`Instructor`,`Group`);

--
-- Indexes for table `consultation`
--
ALTER TABLE `consultation`
  ADD PRIMARY KEY (`ConsulID`),
  ADD KEY `FK` (`StaffID`,`Student`);

--
-- Indexes for table `enrolment`
--
ALTER TABLE `enrolment`
  ADD KEY `CK` (`Student`,`Group`);

--
-- Indexes for table `grading`
--
ALTER TABLE `grading`
  ADD PRIMARY KEY (`GradingID`),
  ADD KEY `FK` (`Instructor`,`Student`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`GroupType`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`InvoiceID`),
  ADD KEY `FK` (`PaymentID`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`MemberID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `FK` (`StaffID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PaymentID`),
  ADD KEY `FK` (`MemberID`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`PositionTitle`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD KEY `FK` (`ProductID`);

--
-- Indexes for table `productorder`
--
ALTER TABLE `productorder`
  ADD KEY `CK` (`InvoiceID`,`ProductID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffID`),
  ADD KEY `FK` (`Position`);

--
-- Indexes for table `staffattendance`
--
ALTER TABLE `staffattendance`
  ADD PRIMARY KEY (`AttendanceID`),
  ADD KEY `FK` (`StaffID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SupplierName`);

--
-- Indexes for table `supplierorder`
--
ALTER TABLE `supplierorder`
  ADD KEY `CK` (`OrderID`,`Supplier`,`ProductID`),
  ADD KEY `Key` (`ShipAddress`,`ShipPostcode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `MemberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
