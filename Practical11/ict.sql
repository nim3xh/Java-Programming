-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 13, 2023 at 08:20 PM
-- Server version: 8.0.30
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ict`
--

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
CREATE TABLE IF NOT EXISTS `marks` (
  `RegNo` varchar(10) NOT NULL,
  `Quiz01` float NOT NULL,
  `Quiz02` float NOT NULL,
  `Quiz03` float NOT NULL,
  `Quiz04` float NOT NULL,
  `Assessment01` float NOT NULL,
  `Assessment02` float NOT NULL,
  `practical` float NOT NULL,
  `Theory` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`RegNo`, `Quiz01`, `Quiz02`, `Quiz03`, `Quiz04`, `Assessment01`, `Assessment02`, `practical`, `Theory`) VALUES
('ICT001', 89, 72, 85, 56, 67.5, 71.75, 42.67, 37),
('ICT002', 35, 70, 52, 35, 37.5, 51, 7, 12),
('ICT003', 47, 48, 64, 35, 15, 79.5, 30.33, 28),
('ICT004', 95, 94, 86, 81, 98, 90.25, 88, 77),
('ICT005', 63, 60, 74, 42, 70, 81.5, 52, 39.25),
('ICT006', 30, 48, 62, 28, 20, 78, 5, 12),
('ICT007', 54, 48, 47, 49, 35, 78.25, 30.67, 41.25),
('ICT008', 51, 76, 52, 42, 45, 51, 22.33, 25.5),
('ICT009', 74, 54, 65, 59, 67.5, 89, 56, 50.25),
('ICT010', 80, 76, 93, 63, 58.5, 90.25, 74, 62),
('ICT011', 65, 36, 50, 35, 50, 51.25, 9, 23.5),
('ICT012', 52, 36, 31, 35, 50, 80.25, 32.67, 50.75);

-- --------------------------------------------------------

--
-- Table structure for table `studentgrade`
--

DROP TABLE IF EXISTS `studentgrade`;
CREATE TABLE IF NOT EXISTS `studentgrade` (
  `RegNo` varchar(5) NOT NULL,
  `SubjectCode` varchar(7) NOT NULL,
  `Grade` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`RegNo`,`SubjectCode`),
  KEY `SubjectCode` (`SubjectCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `studentgrade`
--

INSERT INTO `studentgrade` (`RegNo`, `SubjectCode`, `Grade`) VALUES
('TG700', 'ENG1114', 'A+'),
('TG700', 'ENG1222', 'B+'),
('TG700', 'ICT1112', 'A'),
('TG700', 'ICT1122', 'A'),
('TG700', 'ICT1132', 'A+'),
('TG700', 'ICT1142', 'A+'),
('TG700', 'ICT1153', 'A'),
('TG700', 'ICT1161', 'B+'),
('TG700', 'ICT1212', 'B'),
('TG700', 'ICT1222', 'A+'),
('TG700', 'ICT1233', 'A'),
('TG700', 'ICT1242', 'A'),
('TG700', 'ICT1253', 'A'),
('TG700', 'TCS1212', 'B+'),
('TG700', 'TMS1112', 'A-'),
('TG700', 'TMS1233', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `SubjectCode` varchar(7) NOT NULL,
  `Credit` int DEFAULT NULL,
  `Semester` int DEFAULT NULL,
  PRIMARY KEY (`SubjectCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SubjectCode`, `Credit`, `Semester`) VALUES
('ENG1114', NULL, 1),
('ENG1222', NULL, 2),
('ICT1112', 2, 1),
('ICT1122', 2, 1),
('ICT1132', 2, 1),
('ICT1142', 2, 1),
('ICT1153', 3, 1),
('ICT1161', 1, 1),
('ICT1212', 2, 2),
('ICT1222', 2, 2),
('ICT1233', 3, 2),
('ICT1242', 2, 2),
('ICT1253', 3, 2),
('TCS1212', 2, 2),
('TMS1112', 2, 1),
('TMS1233', 3, 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `studentgrade`
--
ALTER TABLE `studentgrade`
  ADD CONSTRAINT `studentgrade_ibfk_1` FOREIGN KEY (`SubjectCode`) REFERENCES `subject` (`SubjectCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
