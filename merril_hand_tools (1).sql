-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2022 at 12:46 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `merril_hand_tools`
--

-- --------------------------------------------------------

--
-- Table structure for table `assemblyline`
--

CREATE TABLE `assemblyline` (
  `AssemblyLineNo` int(100) NOT NULL,
  `AL_Status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerNo` int(100) NOT NULL,
  `C_Name` varchar(100) DEFAULT NULL,
  `C_Address` varchar(100) DEFAULT NULL,
  `C_PhoneNo` int(15) DEFAULT NULL,
  `C_Email` varchar(100) DEFAULT NULL,
  `Corporate` varchar(100) DEFAULT NULL,
  `DateAccountOpened` varchar(100) DEFAULT NULL,
  `CP_FirstName` varchar(100) DEFAULT NULL,
  `CP_LastName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `faultsreport`
--

CREATE TABLE `faultsreport` (
  `SerialNo` int(100) DEFAULT NULL,
  `FR_Date` varchar(100) NOT NULL,
  `ModelNo` int(100) DEFAULT NULL,
  `OwnerNo` int(100) DEFAULT NULL,
  `FR_Time` varchar(100) DEFAULT NULL,
  `FR_Description` varchar(100) DEFAULT NULL,
  `FaultTypeNo` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `faulttype`
--

CREATE TABLE `faulttype` (
  `FaultTypeNo` int(100) NOT NULL,
  `FT_Description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `invetory`
--

CREATE TABLE `invetory` (
  `SerialNo` int(100) NOT NULL,
  `ModelNo` int(100) DEFAULT NULL,
  `DateofManufacturing` varchar(100) DEFAULT NULL,
  `In_Status` varchar(100) DEFAULT NULL,
  `Sh_Date` varchar(100) DEFAULT NULL,
  `OrderNo` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `itemnecessary`
--

CREATE TABLE `itemnecessary` (
  `ItemNo` int(100) DEFAULT NULL,
  `ModelNo` int(100) DEFAULT NULL,
  `IN_Quantity` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `itemorder`
--

CREATE TABLE `itemorder` (
  `ItemOrderNo` int(100) NOT NULL,
  `SupplierNo` int(100) DEFAULT NULL,
  `IO_Quantity` varchar(100) DEFAULT NULL,
  `IO_Date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `itemorderline`
--

CREATE TABLE `itemorderline` (
  `ItemOrderNo` int(100) DEFAULT NULL,
  `ItemNo` int(100) DEFAULT NULL,
  `IOL_Quantity` varchar(100) DEFAULT NULL,
  `IOL_Price` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `ItemNo` int(100) NOT NULL,
  `I_Name` varchar(100) DEFAULT NULL,
  `I_quantity` varchar(100) DEFAULT NULL,
  `I_Description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lineprogram`
--

CREATE TABLE `lineprogram` (
  `AssemblyLineNo` int(100) DEFAULT NULL,
  `LP_Date` varchar(100) NOT NULL,
  `ModelNo` int(100) DEFAULT NULL,
  `LP_Quantity` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `ModelNo` int(100) NOT NULL,
  `M_Name` varchar(100) DEFAULT NULL,
  `M_Description` varchar(100) DEFAULT NULL,
  `M_Price` varchar(100) DEFAULT NULL,
  `M_Size` varchar(100) DEFAULT NULL,
  `M_Status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orderline`
--

CREATE TABLE `orderline` (
  `OrderNo` int(100) DEFAULT NULL,
  `ModelNo` int(100) DEFAULT NULL,
  `OL_Quantity` varchar(100) DEFAULT NULL,
  `OL_Price` varchar(100) DEFAULT NULL,
  `OL_Status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderNo` int(100) NOT NULL,
  `O_Date` varchar(100) DEFAULT NULL,
  `O_Status` varchar(100) DEFAULT NULL,
  `CustomerNo` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `OwnerNo` int(50) NOT NULL,
  `O_FirstName` varchar(100) DEFAULT NULL,
  `O_LastName` varchar(100) DEFAULT NULL,
  `O_Street` varchar(100) DEFAULT NULL,
  `O_City` varchar(100) DEFAULT NULL,
  `O_PostCode` varchar(100) DEFAULT NULL,
  `O_Email` varchar(100) DEFAULT NULL,
  `O_PhoneNo` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shipment`
--

CREATE TABLE `shipment` (
  `OrderNo` int(100) DEFAULT NULL,
  `ModelNo` int(100) DEFAULT NULL,
  `Sh_Quantity` varchar(100) DEFAULT NULL,
  `Sh_Date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SupplierNo` int(100) NOT NULL,
  `S_FirstName` varchar(50) DEFAULT NULL,
  `S_LastName` varchar(50) DEFAULT NULL,
  `S_Email` varchar(50) DEFAULT NULL,
  `S_PhoneNo` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `testingreports`
--

CREATE TABLE `testingreports` (
  `ModelNo` int(100) DEFAULT NULL,
  `TR_Date` varchar(100) NOT NULL,
  `TR_Location` varchar(100) DEFAULT NULL,
  `TR_TestType` varchar(150) DEFAULT NULL,
  `TR_TestDescription` varchar(100) DEFAULT NULL,
  `TR_TestResultsComments` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `testingtype`
--

CREATE TABLE `testingtype` (
  `TestingTypeNo` int(100) NOT NULL,
  `TT_Description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assemblyline`
--
ALTER TABLE `assemblyline`
  ADD PRIMARY KEY (`AssemblyLineNo`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerNo`);

--
-- Indexes for table `faultsreport`
--
ALTER TABLE `faultsreport`
  ADD PRIMARY KEY (`FR_Date`),
  ADD KEY `SerialNo` (`SerialNo`),
  ADD KEY `ModelNo` (`ModelNo`),
  ADD KEY `OwnerNo` (`OwnerNo`),
  ADD KEY `FaultTypeNo` (`FaultTypeNo`);

--
-- Indexes for table `faulttype`
--
ALTER TABLE `faulttype`
  ADD PRIMARY KEY (`FaultTypeNo`);

--
-- Indexes for table `invetory`
--
ALTER TABLE `invetory`
  ADD PRIMARY KEY (`SerialNo`),
  ADD KEY `ModelNo` (`ModelNo`),
  ADD KEY `OrderNo` (`OrderNo`);

--
-- Indexes for table `itemnecessary`
--
ALTER TABLE `itemnecessary`
  ADD KEY `ItemNo` (`ItemNo`),
  ADD KEY `ModelNo` (`ModelNo`);

--
-- Indexes for table `itemorder`
--
ALTER TABLE `itemorder`
  ADD PRIMARY KEY (`ItemOrderNo`),
  ADD KEY `SupplierNo` (`SupplierNo`);

--
-- Indexes for table `itemorderline`
--
ALTER TABLE `itemorderline`
  ADD KEY `ItemOrderNo` (`ItemOrderNo`),
  ADD KEY `ItemNo` (`ItemNo`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`ItemNo`);

--
-- Indexes for table `lineprogram`
--
ALTER TABLE `lineprogram`
  ADD PRIMARY KEY (`LP_Date`),
  ADD KEY `AssemblyLineNo` (`AssemblyLineNo`),
  ADD KEY `ModelNo` (`ModelNo`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`ModelNo`);

--
-- Indexes for table `orderline`
--
ALTER TABLE `orderline`
  ADD KEY `OrderNo` (`OrderNo`),
  ADD KEY `ModelNo` (`ModelNo`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderNo`),
  ADD KEY `CustomerNo` (`CustomerNo`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`OwnerNo`);

--
-- Indexes for table `shipment`
--
ALTER TABLE `shipment`
  ADD KEY `OrderNo` (`OrderNo`),
  ADD KEY `ModelNo` (`ModelNo`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SupplierNo`);

--
-- Indexes for table `testingreports`
--
ALTER TABLE `testingreports`
  ADD PRIMARY KEY (`TR_Date`),
  ADD KEY `ModelNo` (`ModelNo`);

--
-- Indexes for table `testingtype`
--
ALTER TABLE `testingtype`
  ADD PRIMARY KEY (`TestingTypeNo`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `faultsreport`
--
ALTER TABLE `faultsreport`
  ADD CONSTRAINT `faultsreport_ibfk_1` FOREIGN KEY (`SerialNo`) REFERENCES `invetory` (`SerialNo`),
  ADD CONSTRAINT `faultsreport_ibfk_2` FOREIGN KEY (`ModelNo`) REFERENCES `model` (`ModelNo`),
  ADD CONSTRAINT `faultsreport_ibfk_3` FOREIGN KEY (`OwnerNo`) REFERENCES `owner` (`OwnerNo`),
  ADD CONSTRAINT `faultsreport_ibfk_4` FOREIGN KEY (`FaultTypeNo`) REFERENCES `faulttype` (`FaultTypeNo`);

--
-- Constraints for table `invetory`
--
ALTER TABLE `invetory`
  ADD CONSTRAINT `invetory_ibfk_1` FOREIGN KEY (`ModelNo`) REFERENCES `model` (`ModelNo`),
  ADD CONSTRAINT `invetory_ibfk_2` FOREIGN KEY (`OrderNo`) REFERENCES `orders` (`OrderNo`);

--
-- Constraints for table `itemnecessary`
--
ALTER TABLE `itemnecessary`
  ADD CONSTRAINT `itemnecessary_ibfk_1` FOREIGN KEY (`ItemNo`) REFERENCES `items` (`ItemNo`),
  ADD CONSTRAINT `itemnecessary_ibfk_2` FOREIGN KEY (`ModelNo`) REFERENCES `model` (`ModelNo`);

--
-- Constraints for table `itemorder`
--
ALTER TABLE `itemorder`
  ADD CONSTRAINT `itemorder_ibfk_1` FOREIGN KEY (`SupplierNo`) REFERENCES `supplier` (`SupplierNo`);

--
-- Constraints for table `itemorderline`
--
ALTER TABLE `itemorderline`
  ADD CONSTRAINT `itemorderline_ibfk_1` FOREIGN KEY (`ItemOrderNo`) REFERENCES `itemorder` (`ItemOrderNo`),
  ADD CONSTRAINT `itemorderline_ibfk_2` FOREIGN KEY (`ItemNo`) REFERENCES `items` (`ItemNo`);

--
-- Constraints for table `lineprogram`
--
ALTER TABLE `lineprogram`
  ADD CONSTRAINT `lineprogram_ibfk_1` FOREIGN KEY (`AssemblyLineNo`) REFERENCES `assemblyline` (`AssemblyLineNo`),
  ADD CONSTRAINT `lineprogram_ibfk_2` FOREIGN KEY (`ModelNo`) REFERENCES `model` (`ModelNo`);

--
-- Constraints for table `orderline`
--
ALTER TABLE `orderline`
  ADD CONSTRAINT `orderline_ibfk_1` FOREIGN KEY (`OrderNo`) REFERENCES `orders` (`OrderNo`),
  ADD CONSTRAINT `orderline_ibfk_2` FOREIGN KEY (`ModelNo`) REFERENCES `model` (`ModelNo`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerNo`) REFERENCES `customer` (`CustomerNo`);

--
-- Constraints for table `shipment`
--
ALTER TABLE `shipment`
  ADD CONSTRAINT `shipment_ibfk_1` FOREIGN KEY (`OrderNo`) REFERENCES `orders` (`OrderNo`),
  ADD CONSTRAINT `shipment_ibfk_2` FOREIGN KEY (`ModelNo`) REFERENCES `model` (`ModelNo`);

--
-- Constraints for table `testingreports`
--
ALTER TABLE `testingreports`
  ADD CONSTRAINT `testingreports_ibfk_1` FOREIGN KEY (`ModelNo`) REFERENCES `model` (`ModelNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
