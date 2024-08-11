-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 26, 2023 at 05:09 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gym`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcity`
--

CREATE TABLE `tblcity` (
  `CityID` int(10) NOT NULL,
  `CityName` varchar(50) NOT NULL,
  `StateName` varchar(50) NOT NULL,
  `Pincode` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblevents`
--

CREATE TABLE `tblevents` (
  `EventsID` int(10) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `UserID` int(10) NOT NULL,
  `Fees` varchar(50) NOT NULL,
  `DateTime` varchar(50) NOT NULL,
  `CityName` varchar(50) NOT NULL,
  `StateName` varchar(50) NOT NULL,
  `Image` varchar(200) NOT NULL,
  `GymID` int(10) NOT NULL,
  `Description` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblfunevents`
--

CREATE TABLE `tblfunevents` (
  `FunEventsID` int(10) NOT NULL,
  `FunEventsName` varchar(50) NOT NULL,
  `GymID` int(10) NOT NULL,
  `Image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblgroup`
--

CREATE TABLE `tblgroup` (
  `GroupID` int(10) NOT NULL,
  `GroupName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblgroup`
--

INSERT INTO `tblgroup` (`GroupID`, `GroupName`) VALUES
(1, 'SuperAdmin'),
(2, 'Admin'),
(3, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `tblgym`
--

CREATE TABLE `tblgym` (
  `GymID` int(10) NOT NULL,
  `GymName` varchar(50) NOT NULL,
  `UserID` int(10) NOT NULL,
  `Image` varchar(200) NOT NULL,
  `CityName` varchar(50) NOT NULL,
  `StateName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblmembership`
--

CREATE TABLE `tblmembership` (
  `MembershipID` int(10) NOT NULL,
  `MembershipName` varchar(50) NOT NULL,
  `GymID` int(10) NOT NULL,
  `TrainerID` int(10) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `StartingDate` varchar(50) NOT NULL,
  `EndingDate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblreview`
--

CREATE TABLE `tblreview` (
  `ReviewID` int(10) NOT NULL,
  `UserID` int(10) NOT NULL,
  `GymID` int(10) NOT NULL,
  `EventsID` int(10) NOT NULL,
  `Feedback` varchar(1000) NOT NULL,
  `Rating` int(5) NOT NULL,
  `CreatedDateTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltrainer`
--

CREATE TABLE `tbltrainer` (
  `TrainerID` int(10) NOT NULL,
  `TrainerName` varchar(50) NOT NULL,
  `AadharCardNumber` int(12) NOT NULL,
  `ContactNumber` int(10) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `TrainerCategory` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `UserID` int(10) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `GroupID` int(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `EmailID` varchar(50) NOT NULL,
  `ContactNumber` int(10) NOT NULL,
  `AadharCardNumber` int(12) NOT NULL,
  `CityName` varchar(50) NOT NULL,
  `SateName` varchar(50) NOT NULL,
  `GymID` int(10) NOT NULL,
  `TrainerID` int(10) NOT NULL,
  `Weight` float NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Description` varchar(10000) NOT NULL,
  `BirthDate` date NOT NULL,
  `CreatedDateTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcity`
--
ALTER TABLE `tblcity`
  ADD PRIMARY KEY (`CityID`);

--
-- Indexes for table `tblevents`
--
ALTER TABLE `tblevents`
  ADD PRIMARY KEY (`EventsID`);

--
-- Indexes for table `tblfunevents`
--
ALTER TABLE `tblfunevents`
  ADD PRIMARY KEY (`FunEventsID`);

--
-- Indexes for table `tblgroup`
--
ALTER TABLE `tblgroup`
  ADD PRIMARY KEY (`GroupID`);

--
-- Indexes for table `tblgym`
--
ALTER TABLE `tblgym`
  ADD PRIMARY KEY (`GymID`);

--
-- Indexes for table `tblmembership`
--
ALTER TABLE `tblmembership`
  ADD PRIMARY KEY (`MembershipID`);

--
-- Indexes for table `tblreview`
--
ALTER TABLE `tblreview`
  ADD PRIMARY KEY (`ReviewID`);

--
-- Indexes for table `tbltrainer`
--
ALTER TABLE `tbltrainer`
  ADD PRIMARY KEY (`TrainerID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcity`
--
ALTER TABLE `tblcity`
  MODIFY `CityID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblevents`
--
ALTER TABLE `tblevents`
  MODIFY `EventsID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblfunevents`
--
ALTER TABLE `tblfunevents`
  MODIFY `FunEventsID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblgroup`
--
ALTER TABLE `tblgroup`
  MODIFY `GroupID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblgym`
--
ALTER TABLE `tblgym`
  MODIFY `GymID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblreview`
--
ALTER TABLE `tblreview`
  MODIFY `ReviewID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltrainer`
--
ALTER TABLE `tbltrainer`
  MODIFY `TrainerID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `UserID` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
