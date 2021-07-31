-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2021 at 04:17 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`name`, `email`, `password`) VALUES
('Sara', 'sara@gmail.com', 'sara@123');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `serial_no` int(20) NOT NULL,
  `roll_no` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `class` int(20) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `remark` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`serial_no`, `roll_no`, `name`, `class`, `mobile`, `email`, `password`, `remark`) VALUES
(0, 11, 'Shahida Rahman', 12, 10820355, 'shahida@gmail.com', 'shahida', 'Good girl and attentive'),
(0, 14, 'Foujia', 9, 35845693, 'foujia@gmail.com', 'foujia', 'Good student'),
(0, 13, 'Hemel', 11, 43853853, 'hemel@gmail.com', 'hemel', 'Average student'),
(0, 15, 'Redwan', 12, 7476476, 'redwan@gmail.com', 'redwan', 'Needs improvement'),
(0, 10, 'Nahid Ahmed', 12, 757466, 'nahid@gmail.com', 'nahid123', 'He is a good student');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `T_serial` int(5) NOT NULL,
  `T-id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `courses` varchar(50) NOT NULL,
  `shift` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`T_serial`, `T-id`, `name`, `courses`, `shift`) VALUES
(1, 53, 'Sheersha', 'Math, Physics', 'Morning'),
(2, 56, 'Krishna', 'Chemistry, Biology', 'Day');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD KEY `serial_no` (`serial_no`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
