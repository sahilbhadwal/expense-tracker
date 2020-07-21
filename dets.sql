-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 21, 2020 at 07:13 AM
-- Server version: 5.7.24
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pandu`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblelifeexpense`
--

DROP TABLE IF EXISTS `tblelifeexpense`;
CREATE TABLE IF NOT EXISTS `tblelifeexpense` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `ExpenseDate` date DEFAULT NULL,
  `ExpenseItem` varchar(200) DEFAULT NULL,
  `ExpenseCost` varchar(200) DEFAULT NULL,
  `NoteDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbleotherexpense`
--

DROP TABLE IF EXISTS `tbleotherexpense`;
CREATE TABLE IF NOT EXISTS `tbleotherexpense` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `ExpenseDate` date DEFAULT NULL,
  `ExpenseItem` varchar(200) DEFAULT NULL,
  `ExpenseCost` varchar(200) DEFAULT NULL,
  `NoteDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbleotherexpense`
--

INSERT INTO `tbleotherexpense` (`ID`, `UserId`, `ExpenseDate`, `ExpenseItem`, `ExpenseCost`, `NoteDate`) VALUES
(40, 11, '2020-07-21', '', '100', '2020-07-21 07:10:20'),
(41, 11, '2020-07-22', '', '1000', '2020-07-21 07:11:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblerentexpense`
--

DROP TABLE IF EXISTS `tblerentexpense`;
CREATE TABLE IF NOT EXISTS `tblerentexpense` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `ExpenseDate` date DEFAULT NULL,
  `ExpenseItem` varchar(200) DEFAULT NULL,
  `ExpenseCost` varchar(200) DEFAULT NULL,
  `NoteDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblerentexpense`
--

INSERT INTO `tblerentexpense` (`ID`, `UserId`, `ExpenseDate`, `ExpenseItem`, `ExpenseCost`, `NoteDate`) VALUES
(40, 11, '2020-07-21', '', '4000', '2020-07-21 07:12:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbletransportexpense`
--

DROP TABLE IF EXISTS `tbletransportexpense`;
CREATE TABLE IF NOT EXISTS `tbletransportexpense` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `ExpenseDate` date DEFAULT NULL,
  `ExpenseItem` varchar(200) DEFAULT NULL,
  `ExpenseCost` varchar(200) DEFAULT NULL,
  `NoteDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbletransportexpense`
--

INSERT INTO `tbletransportexpense` (`ID`, `UserId`, `ExpenseDate`, `ExpenseItem`, `ExpenseCost`, `NoteDate`) VALUES
(40, 11, '2020-07-21', '', '2000', '2020-07-21 07:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `tblexpense`
--

DROP TABLE IF EXISTS `tblexpense`;
CREATE TABLE IF NOT EXISTS `tblexpense` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `ExpenseDate` date DEFAULT NULL,
  `ExpenseItem` varchar(200) DEFAULT NULL,
  `ExpenseCost` varchar(200) DEFAULT NULL,
  `NoteDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblexpense`
--

INSERT INTO `tblexpense` (`ID`, `UserId`, `ExpenseDate`, `ExpenseItem`, `ExpenseCost`, `NoteDate`) VALUES
(36, 11, '2020-07-20', '', '1000', '2020-07-19 17:57:09'),
(37, 11, '2020-06-29', '', '50000', '2020-07-19 17:59:24'),
(38, 11, '2020-07-14', '', '2000', '2020-07-19 17:59:55'),
(39, 11, '2020-07-19', '', '5000', '2020-07-19 18:00:20'),
(40, 11, '2020-07-21', '', '1000', '2020-07-21 06:39:17'),
(41, 11, '2020-07-21', '', '5000000', '2020-07-21 06:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
CREATE TABLE IF NOT EXISTS `tbluser` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(150) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(11, 'Sahil Bhadwal', 'sbhadwalcool@gmail.com', 8090855180, '414bf470ad91acce23530c61316b7c13', '2020-07-18 10:36:39');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
