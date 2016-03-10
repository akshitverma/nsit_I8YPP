-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2016 at 07:40 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nsit`
--

-- --------------------------------------------------------

--
-- Table structure for table `abtest`
--

CREATE TABLE `abtest` (
  `variant` varchar(100) NOT NULL,
  `hits` int(255) NOT NULL,
  `success` int(255) NOT NULL,
  `conversion` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abtest`
--

INSERT INTO `abtest` (`variant`, `hits`, `success`, `conversion`) VALUES
('dummy1', 24, 5, 20.8333),
('dummy2', 14, 3, 21.4286),
('dummy3', 0, 0, 0),
('dummy4', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `testcases`
--

CREATE TABLE `testcases` (
  `test_no` int(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `duration` int(100) NOT NULL,
  `page_variants` int(100) NOT NULL,
  `percentage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testcases`
--

INSERT INTO `testcases` (`test_no`, `url`, `duration`, `page_variants`, `percentage`) VALUES
(1, 'www.mytestsite.com', 300, 4, '25,25,25,25'),
(2, 'www.mytestsite.com', 300, 4, '25,25,25,25'),
(3, 'www.mytestsite.com', 100, 2, '50,50'),
(4, 'www.mytestsite.com', 100, 2, '50,50'),
(5, 'www.mytestsite.com', 500, 3, '50,50'),
(6, 'www.mytestsite.com', 500, 3, '50,50'),
(7, 'www.mytestsite.com', 500, 3, '50,50'),
(8, 'www.mytestsite.com', 500, 3, '50,50'),
(9, 'www.mytestsite.com', 500, 3, '50,50'),
(10, 'www.mytestsite.com', 500, 3, '50,50'),
(11, 'www.mytestsite.com', 500, 3, '50,50'),
(12, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(13, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(14, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(15, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(16, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(17, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(18, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(19, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(20, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(21, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(22, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(23, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(24, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(25, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(26, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(27, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(28, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(29, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(30, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(31, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(32, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(33, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(34, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(35, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(36, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(37, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(38, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(39, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(40, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(41, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(42, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(43, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(44, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(45, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(46, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(47, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(48, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(49, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(50, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(51, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(52, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(53, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(54, 'www.mytestsite.com', 500, 3, '25,25,25,25'),
(55, 'www.mytestsite.com', 500, 2, '25,25'),
(56, 'www.mytestsite.com', 500, 2, '25,25'),
(57, 'www.mytestsite.com', 500, 2, '25,25'),
(58, 'www.mytestsite.com', 500, 2, '25,25'),
(59, 'www.mytestsite.com', 500, 2, '25,25'),
(60, 'www.mytestsite.com', 500, 2, '25,25'),
(61, 'www.mytestsite.com', 500, 2, '25,25'),
(62, 'www.mytestsite.com', 500, 2, '25,25,50'),
(63, 'www.mytestsite.com', 500, 2, '25,25,50'),
(64, 'www.mytestsite.com', 500, 2, '25,25,50'),
(65, 'www.mytestsite.com', 500, 2, '25,25,50'),
(66, 'www.mytestsite.com', 500, 2, '25,25,50'),
(67, 'www.mytestsite.com', 500, 2, '25,25,50'),
(68, 'www.mytestsite.com', 500, 2, '50,50'),
(69, 'www.mytestsite.com', 500, 2, '50,50'),
(70, 'www.mytestsite.com', 500, 2, '50,50'),
(71, 'www.mytestsite.com', 500, 2, '50,50'),
(72, 'www.mytestsite.com', 500, 2, '50,50'),
(73, 'www.mytestsite.com', 500, 2, '50,50'),
(74, 'www.mytestsite.com', 500, 2, '50,50'),
(75, 'www.mytestsite.com', 500, 2, '50,50'),
(76, 'www.mytestsite.com', 500, 2, '50,50'),
(77, 'www.mytestsite.com', 500, 2, '50,50'),
(78, 'www.mytestsite.com', 500, 2, '50,50'),
(79, 'www.mytestsite.com', 500, 2, '50,50'),
(80, 'www.mytestsite.com', 500, 2, '50,50'),
(81, 'www.mytestsite.com', 500, 2, '50,50'),
(82, 'www.mytestsite.com', 500, 2, '50,50'),
(83, 'www.mytestsite.com', 500, 2, '50,50'),
(84, 'www.mytestsite.com', 500, 2, '50,50'),
(85, 'www.mytestsite.com', 500, 2, '50,50'),
(86, 'www.mytestsite.com', 500, 2, '50,50'),
(87, 'www.mytestsite.com', 500, 2, '50,50'),
(88, 'www.mytestsite.com', 500, 2, '50,50'),
(89, 'www.mytestsite.com', 500, 2, '50,50'),
(90, 'www.mytestsite.com', 500, 2, '50,50'),
(91, 'www.mytestsite.com', 500, 2, '50,50'),
(92, 'www.mytestsite.com', 500, 2, '50,50'),
(93, 'www.mytestsite.com', 500, 2, '50,50'),
(94, 'www.mytestsite.com', 500, 2, '50,50'),
(95, 'www.mytestsite.com', 500, 2, '50,50'),
(96, 'www.mytestsite.com', 500, 2, '50,50'),
(97, 'www.mytestsite.com', 500, 2, '50,50'),
(98, 'www.mytestsite.com', 500, 2, '50,50'),
(99, 'www.mytestsite.com', 500, 2, '50,50'),
(100, 'www.mytestsite.com', 500, 2, '50,50'),
(101, 'www.mytestsite.com', 500, 2, '50,50'),
(102, 'www.mytestsite.com', 500, 2, '50,50'),
(103, 'www.mytestsite.com', 500, 2, '50,50'),
(104, 'www.mytestsite.com', 500, 2, '50,50'),
(105, 'www.mytestsite.com', 500, 2, '50,50'),
(106, 'www.mytestsite.com', 500, 2, '50,50'),
(107, 'www.mytestsite.com', 500, 2, '50,50'),
(108, 'www.mytestsite.com', 500, 2, '50,50'),
(109, 'www.mytestsite.com', 500, 2, '50,50'),
(110, 'www.mytestsite.com', 500, 2, '50,50'),
(111, 'www.mytestsite.com', 500, 2, '50,50'),
(112, 'www.mytestsite.com', 500, 2, '50,50'),
(113, 'www.mytestsite.com', 500, 2, '50,50'),
(114, 'www.mytestsite.com', 500, 2, '50,50'),
(115, 'www.mytestsite.com', 500, 2, '50,50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abtest`
--
ALTER TABLE `abtest`
  ADD PRIMARY KEY (`variant`);

--
-- Indexes for table `testcases`
--
ALTER TABLE `testcases`
  ADD PRIMARY KEY (`test_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `testcases`
--
ALTER TABLE `testcases`
  MODIFY `test_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
