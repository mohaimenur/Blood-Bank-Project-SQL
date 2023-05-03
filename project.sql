-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2022 at 07:27 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `bb_manager`
--

CREATE TABLE `bb_manager` (
  `M_id` int(11) NOT NULL,
  `mName` varchar(1000) NOT NULL,
  `m_phNo` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bb_manager`
--

INSERT INTO `bb_manager` (`M_id`, `mName`, `m_phNo`) VALUES
(102, 'Jack', 4693959671),
(103, 'Peter', 4693959601),
(104, 'Mark', 4693959677),
(105, 'Jason', 4693957671),
(106, 'Steve', 4694959671),
(107, 'Jason', 4695959671),
(108, 'Stella', 4663959671),
(109, 'Monika', 4673959671),
(110, 'John', 4693859671);

-- --------------------------------------------------------

--
-- Table structure for table `bloodspecimen`
--

CREATE TABLE `bloodspecimen` (
  `specimen_number` int(11) NOT NULL,
  `b_group` varchar(10) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `dfind_ID` int(11) NOT NULL,
  `M_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bloodspecimen`
--

INSERT INTO `bloodspecimen` (`specimen_number`, `b_group`, `status`, `dfind_ID`, `M_id`) VALUES
(1001, 'B+', 1, 11, 101),
(1002, 'O+', 1, 12, 102),
(1003, 'AB+', 1, 11, 102),
(1004, 'O-', 1, 13, 103),
(1005, 'A+', 0, 14, 101),
(1006, 'A-', 1, 13, 104),
(1007, 'AB-', 1, 15, 104),
(1008, 'AB-', 0, 11, 105),
(1009, 'B+', 1, 13, 105),
(1010, 'O+', 0, 12, 105),
(1011, 'O+', 1, 13, 103),
(1012, 'O-', 1, 14, 102),
(1013, 'B-', 1, 14, 102),
(1014, 'AB+', 0, 15, 101);

-- --------------------------------------------------------

--
-- Table structure for table `blood_donor`
--

CREATE TABLE `blood_donor` (
  `bd_ID` int(11) NOT NULL,
  `bd_name` varchar(1000) NOT NULL,
  `bd_age` varchar(1000) DEFAULT NULL,
  `bd_sex` varchar(1000) DEFAULT NULL,
  `bd_Bgroup` varchar(10) DEFAULT NULL,
  `bd_reg_date` date DEFAULT NULL,
  `reco_ID` int(11) NOT NULL,
  `City_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_donor`
--

INSERT INTO `blood_donor` (`bd_ID`, `bd_name`, `bd_age`, `bd_sex`, `bd_Bgroup`, `bd_reg_date`, `reco_ID`, `City_ID`) VALUES
(150221, 'Mark', '25', 'M', 'B+', '2015-12-17', 101212, 1100),
(160011, 'Abdul', '35', 'F', 'A+', '2016-11-22', 101212, 1100),
(160101, 'Smith', '22', 'M', 'O+', '2016-01-04', 101312, 1200),
(150011, 'Pat', '29', 'M', 'O+', '2015-07-19', 101412, 1300),
(150021, 'Shyam', '42', 'F', 'A-', '2015-12-24', 101412, 1300),
(150121, 'Dan', '44', 'M', 'AB+', '2015-08-28', 101212, 1200),
(160031, 'Mike', '33', 'F', 'AB-', '2016-02-06', 101212, 1400),
(160301, 'Elisa', '31', 'F', 'AB+', '2016-09-10', 101312, 1200),
(160091, 'Carrol', '24', 'M', 'B-', '2016-10-15', 101312, 1500),
(160401, 'Mark', '29', 'M', 'O-', '2016-12-17', 101212, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `City_ID` int(11) NOT NULL,
  `City_name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`City_ID`, `City_name`) VALUES
(1200, 'Austin'),
(1300, 'Irving'),
(1400, 'Houston'),
(1500, 'Richardson'),
(1600, 'Plano'),
(1700, 'Frisco'),
(1800, 'Arlington'),
(1900, 'San Antonio'),
(2000, 'Allen');

-- --------------------------------------------------------

--
-- Table structure for table `diseasefinder`
--

CREATE TABLE `diseasefinder` (
  `dfind_ID` int(11) NOT NULL,
  `dfind_name` varchar(1000) NOT NULL,
  `dfind_PhNo` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diseasefinder`
--

INSERT INTO `diseasefinder` (`dfind_ID`, `dfind_name`, `dfind_PhNo`) VALUES
(11, 'Peter', 4693804223),
(12, 'Park', 4693804223),
(13, 'Jerry', 4693804223),
(14, 'Mark', 4693804223),
(15, 'Monika', 4693804223),
(16, 'Ram', 4693804123),
(17, 'Swathi', 4693804223),
(18, 'Gautham', 4693804323),
(19, 'Ashwin', 4693804423),
(20, 'Yash', 4693804523);

-- --------------------------------------------------------

--
-- Table structure for table `hospital_info_1`
--

CREATE TABLE `hospital_info_1` (
  `hosp_ID` int(11) NOT NULL,
  `hosp_name` varchar(1000) NOT NULL,
  `City_ID` int(11) NOT NULL,
  `M_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital_info_1`
--

INSERT INTO `hospital_info_1` (`hosp_ID`, `hosp_name`, `City_ID`, `M_id`) VALUES
(1, 'MayoClinic', 1100, 101),
(2, 'CleavelandClinic', 1200, 103),
(3, 'NYU', 1300, 103),
(4, 'Baylor', 1400, 104),
(5, 'Charlton', 1800, 103),
(6, 'Greenoaks', 1300, 106),
(7, 'Forestpark', 1300, 102),
(8, 'Parkland', 1200, 106),
(9, 'Pinecreek', 1500, 109),
(10, 'WalnutHill', 1700, 105);

-- --------------------------------------------------------

--
-- Table structure for table `hospital_info_2`
--

CREATE TABLE `hospital_info_2` (
  `hosp_ID` int(11) NOT NULL,
  `hosp_name` varchar(1000) NOT NULL,
  `hosp_needed_Bgrp` varchar(10) NOT NULL,
  `hosp_needed_qnty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital_info_2`
--

INSERT INTO `hospital_info_2` (`hosp_ID`, `hosp_name`, `hosp_needed_Bgrp`, `hosp_needed_qnty`) VALUES
(1, 'MayoClinic', 'A+', 20),
(1, 'MayoClinic', 'A-', 40),
(1, 'MayoClinic', 'AB+', 0),
(1, 'MayoClinic', 'AB-', 20),
(1, 'MayoClinic', 'B-', 10),
(2, 'CleavelandClinic', 'A+', 40),
(2, 'CleavelandClinic', 'A-', 10),
(2, 'CleavelandClinic', 'AB+', 20),
(2, 'CleavelandClinic', 'AB-', 10),
(2, 'CleavelandClinic', 'B+', 0),
(2, 'CleavelandClinic', 'B-', 30),
(3, 'NYU', 'A+', 0),
(3, 'NYU', 'A-', 0),
(3, 'NYU', 'AB+', 0),
(3, 'NYU', 'AB-', 0),
(3, 'NYU', 'B+', 10),
(3, 'NYU', 'B-', 20),
(4, 'Baylor', 'A+', 10),
(4, 'Baylor', 'A-', 40),
(7, 'Forestpark', 'B-', 40),
(8, 'Parkland', 'B+', 10),
(9, 'Pinecreek', 'AB-', 20);

-- --------------------------------------------------------

--
-- Table structure for table `recipient`
--

CREATE TABLE `recipient` (
  `reci_ID` int(11) NOT NULL,
  `reci_name` varchar(1000) NOT NULL,
  `reci_age` varchar(1000) DEFAULT NULL,
  `reci_Brgp` varchar(1000) DEFAULT NULL,
  `reci_Bqnty` float DEFAULT NULL,
  `reco_ID` int(11) NOT NULL,
  `City_ID` int(11) NOT NULL,
  `M_id` int(11) NOT NULL,
  `reci_sex` varchar(1000) DEFAULT NULL,
  `reci_reg_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipient`
--

INSERT INTO `recipient` (`reci_ID`, `reci_name`, `reci_age`, `reci_Brgp`, `reci_Bqnty`, `reco_ID`, `City_ID`, `M_id`, `reci_sex`, `reci_reg_date`) VALUES
(10001, 'Mark', '25', 'B+', 1.5, 101212, 1100, 101, 'M', '2015-12-17'),
(10002, 'Dan', '60', 'A+', 1, 101312, 1100, 102, 'M', '2015-12-16'),
(10003, 'Steve', '35', 'AB+', 0.5, 101312, 1200, 102, 'M', '2015-10-17'),
(10004, 'Parker', '66', 'B+', 1, 101212, 1300, 104, 'M', '2016-11-17'),
(10005, 'Jason', '53', 'B-', 1, 101412, 1400, 105, 'M', '2015-04-17'),
(10006, 'Preetham', '45', 'O+', 1.5, 101512, 1500, 105, 'M', '2015-12-17'),
(10007, 'Swetha', '22', 'AB-', 1, 101212, 1500, 101, 'F', '2015-05-17'),
(10008, 'Swathi', '25', 'B+', 2, 101412, 1300, 103, 'F', '2015-12-14'),
(10009, 'Lance', '30', 'A+', 1.5, 101312, 1100, 104, 'M', '2015-02-16'),
(10010, 'Marsh', '25', 'AB+', 3.5, 101212, 1200, 107, 'M', '2016-10-17');

-- --------------------------------------------------------

--
-- Table structure for table `recording_staff`
--

CREATE TABLE `recording_staff` (
  `reco_ID` int(11) NOT NULL,
  `reco_Name` varchar(1000) NOT NULL,
  `reco_phNo` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recording_staff`
--

INSERT INTO `recording_staff` (`reco_ID`, `reco_Name`, `reco_phNo`) VALUES
(101212, 'Walcot', 4045806553),
(101312, 'Henry', 4045806553),
(101412, 'Silva', 4045806553),
(101512, 'Adrian', 4045806553),
(101612, 'Mark', 4045806553);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hospital_info_1`
--
ALTER TABLE `hospital_info_1`
  ADD PRIMARY KEY (`hosp_ID`);

--
-- Indexes for table `hospital_info_2`
--
ALTER TABLE `hospital_info_2`
  ADD PRIMARY KEY (`hosp_ID`,`hosp_needed_Bgrp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
