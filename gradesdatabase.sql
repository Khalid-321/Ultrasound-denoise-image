-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2020 at 12:53 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gradesdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `gpa`
--

CREATE TABLE `gpa` (
  `id` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `gpa` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gpa`
--

INSERT INTO `gpa` (`id`, `studentID`, `semester`, `gpa`) VALUES
(6, 4, 1, 2.6),
(7, 4, 2, 1.7),
(8, 4, 3, 2.8),
(9, 4, 4, 2.9);

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `id` int(11) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `high` float NOT NULL,
  `low` float NOT NULL,
  `point` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`id`, `grade`, `high`, `low`, `point`) VALUES
(1, 'A1', 100, 89.5, 4),
(2, 'A2', 89.4, 79.5, 4),
(3, 'A3', 79.4, 76.5, 3.66),
(4, 'B1', 76.4, 73.5, 3.33),
(5, 'B2', 73.4, 69.5, 3),
(6, 'B3', 69.5, 66.5, 2.66),
(7, 'C1', 66.4, 63.5, 2.33),
(8, 'C2', 63.4, 59.5, 2),
(9, 'D', 59.4, 49.5, 1.5),
(10, 'F', 49.4, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `logindetails`
--

CREATE TABLE `logindetails` (
  `id` int(2) NOT NULL,
  `name` varchar(20) NOT NULL,
  `degree` varchar(5) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `rollNo` int(11) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logindetails`
--

INSERT INTO `logindetails` (`id`, `name`, `degree`, `userName`, `rollNo`, `password`) VALUES
(2, 'Raja Roshaan', 'BSCS', 'RajaRoshaan', 2287, '1234'),
(4, 'Awais Khalid', 'BSCS', 'Awais', 1839, '123');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `subjectName` varchar(15) NOT NULL,
  `semester` int(11) NOT NULL,
  `marks` int(11) NOT NULL,
  `creditHours` int(11) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `points` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gpa`
--
ALTER TABLE `gpa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logindetails`
--
ALTER TABLE `logindetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gpa`
--
ALTER TABLE `gpa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `logindetails`
--
ALTER TABLE `logindetails`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
