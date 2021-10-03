-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2021 at 01:24 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bursary`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `session` text NOT NULL,
  `term` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `session`, `term`) VALUES
(1, 'Daglore', '184da1856d2c36dc9e95cff7582a07dc', '2021/2022', '1st Term');

-- --------------------------------------------------------

--
-- Table structure for table `carol`
--

CREATE TABLE `carol` (
  `id` int(255) NOT NULL,
  `cusid` text DEFAULT NULL,
  `admno` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `class` text DEFAULT NULL,
  `term` text DEFAULT NULL,
  `ses` text DEFAULT NULL,
  `amt` text DEFAULT NULL,
  `datepaid` date DEFAULT NULL,
  `mode` text DEFAULT NULL,
  `type` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carol`
--

INSERT INTO `carol` (`id`, `cusid`, `admno`, `name`, `class`, `term`, `ses`, `amt`, `datepaid`, `mode`, `type`) VALUES
(1, 'dagtran/269', 'DMS/2019/2030', 'Abolade Greatness', 'Nursery 1', '1st Term', '2021/2022', '2000', '2021-09-24', 'Cash', 'Full Payment'),
(2, 'dagtran/9704', 'DMS/2019/2030', 'Abolade Greatness', 'Nursery 1', '1st Term', '2021/2022', '1000', '2021-09-24', 'Bank', 'Part Payment'),
(3, 'dagtran/2246', 'DMS/2019/2030', 'Abolade Greatness', 'Nursery 1', '1st Term', '2021/2022', '200', '2021-09-24', 'Cash', 'Full Payment'),
(4, 'dagtran/2144', 'DMS/2019/2030', 'Abolade Greatness', 'Nursery 1', '1st Term', '2021/2022', '202', '2021-09-24', 'Cash', 'Full Payment');

-- --------------------------------------------------------

--
-- Table structure for table `excursion`
--

CREATE TABLE `excursion` (
  `id` int(255) NOT NULL,
  `cusid` text DEFAULT NULL,
  `admno` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `class` text DEFAULT NULL,
  `term` text DEFAULT NULL,
  `ses` text DEFAULT NULL,
  `amt` text DEFAULT NULL,
  `datepaid` date DEFAULT NULL,
  `mode` text DEFAULT NULL,
  `type` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `id` int(11) NOT NULL,
  `fee` text NOT NULL,
  `amt` text NOT NULL,
  `term` text NOT NULL,
  `ses` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fee`
--

INSERT INTO `fee` (`id`, `fee`, `amt`, `term`, `ses`) VALUES
(1, 'Carol', '2000', '1st Term', '2021/2022');

-- --------------------------------------------------------

--
-- Table structure for table `feercrd`
--

CREATE TABLE `feercrd` (
  `id` int(11) NOT NULL,
  `feeid` text NOT NULL,
  `adid` text NOT NULL,
  `amount` text NOT NULL,
  `descr` text NOT NULL,
  `moredecr` text NOT NULL,
  `name` text NOT NULL,
  `class` text NOT NULL,
  `session` text NOT NULL,
  `term` text NOT NULL,
  `mode` text NOT NULL,
  `datepaid` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feercrd`
--

INSERT INTO `feercrd` (`id`, `feeid`, `adid`, `amount`, `descr`, `moredecr`, `name`, `class`, `session`, `term`, `mode`, `datepaid`) VALUES
(1, 'dagtran/8952', 'DMS/2019/2030', '10000', '', '', 'Abolade Greatness', 'Nursery 1', '2021/2022', '1st Term', 'Cash', '2021-09-14'),
(2, 'dagtran/5718', 'DMS/2019/2030', '10000', '', '', 'Abolade Greatness', 'Nursery 1', '2021/2022', '1st Term', 'Cash', '2021-09-14'),
(3, 'dagtran/4965', 'DMS/2019/2031', '2000', 'School Fees', '', 'Gabolade Greatness', 'Nursery 1', '2021/2022', '1st Term', 'Cash', '2021-09-14'),
(4, 'dagtran/2284', 'DMS/2019/2031', '2000', 'School Fees', '', 'Gabolade Greatness', 'Nursery 1', '2021/2022', '1st Term', 'Cash', '2021-09-14'),
(5, 'dagtran/3849', 'DMS/2019/2031', '2000', 'School Fees', '', 'Gabolade Greatness', 'Nursery 1', '2021/2022', '1st Term', 'Cash', '2021-09-14'),
(6, 'dagtran/7446', 'DMS/2019/2031', '2000', 'School Fees', '', 'Gabolade Greatness', 'Nursery 1', '2021/2022', '1st Term', 'Cash', '2021-09-14'),
(7, 'dagtran/985', 'DMS/2019/2030', '3000', 'School Fees', '', 'Abolade Greatness', 'Nursery 1', '2021/2022', '1st Term', 'Cash', '2021-09-16'),
(8, 'dagtran/7605', 'DMS/2019/2031', '20000', 'SpillOver Payment', 'Payment for last session', 'Gabolade Greatness', '', '', '', 'Cash', '2021-09-17'),
(9, 'dagtran/2282', 'DMS/2019/2031', '10000', 'SpillOver Payment', 'Last term fee', 'Gabolade Greatness', '', '', '', 'Cash', '2021-09-17'),
(10, 'dagtran/472', 'DMS/2019/2031', '4000', 'School Fees', '', 'Gabolade Greatness', 'Nursery 1', '2021/2022', '1st Term', 'Cash', '2021-09-17'),
(11, 'dagtran/2373', 'DMS/2019/2031', '11000', 'SpillOver Payment', 'Paid last term fee', 'Gabolade Greatness', '', '', '', 'Cash', '2021-09-17'),
(12, 'dagtran/871', 'DMS/2019/2031', '100000', 'SpillOver Payment', 'Last term balance', 'Gabolade Greatness', '', '', '', 'School App', '2021-09-17'),
(13, 'dagtran/8940', 'DMS/2019/20311', '10000', 'School Event', '', 'Bolade Greatness', 'Reception', '2021/2022', '1st Term', 'Cash', '2021-09-17'),
(14, 'dagtran/4780', 'DMS/2019/2031', '20000', 'School Fees', 'Excursion', 'Gabolade Greatness', 'Nursery 1', '2021/2022', '1st Term', 'Cash', '2021-09-18'),
(23, 'dagtran/5586', 'DMS/2019/2031', '30000', 'School Fees', 'Excursion', 'Gabolade Greatness', 'Nursery 1', '2021/2022', '1st Term', 'Cash', '2021-09-21');

-- --------------------------------------------------------

--
-- Table structure for table `spillover`
--

CREATE TABLE `spillover` (
  `id` int(11) NOT NULL,
  `spillid` text NOT NULL,
  `adid` text NOT NULL,
  `amount` text NOT NULL,
  `name` text NOT NULL,
  `class` text NOT NULL,
  `session` text NOT NULL,
  `term` text NOT NULL,
  `datespill` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spillover`
--

INSERT INTO `spillover` (`id`, `spillid`, `adid`, `amount`, `name`, `class`, `session`, `term`, `datespill`) VALUES
(2, 'dagspill/2542', 'DMS/2019/2031', '62000', 'Gabolade Greatness', 'Pre-School', '2021/2022', '1st Term', '2021-09-16'),
(3, 'dagspill/4095', 'DMS/2019/2031', '62000', 'Gabolade Greatness', 'Pre-School', '2021/2022', '1st Term', '2021-09-16'),
(4, 'dagspill/965', 'DMS/2019/2031', '62000', 'Gabolade Greatness', 'Pre-School', '2021/2022', '2nd Term', '2021-09-16'),
(5, 'dagspill/1828', 'DMS/2019/2031', '62000', 'Gabolade Greatness', 'Pre-School', '2021/2022', '2nd Term', '2021-09-16'),
(6, 'dagspill/3346', 'DMS/2019/2031', '62000', 'Gabolade Greatness', 'Pre-School', '2021/2022', '1st Term', '2021-09-16'),
(7, 'dagspill/2586', 'DMS/2019/2031', '62000', 'Gabolade Greatness', 'Pre-School', '2021/2022', '1st Term', '2021-09-16'),
(8, 'dagspill/3798', 'DMS/2019/2031', '62000', 'Gabolade Greatness', 'Pre-School', '2021/2022', '1st Term', '2021-09-16');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `stid` text NOT NULL,
  `adid` text NOT NULL,
  `name` text NOT NULL,
  `class` text NOT NULL,
  `fst` text NOT NULL,
  `snd` text NOT NULL,
  `trd` text NOT NULL,
  `session` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `stid`, `adid`, `name`, `class`, `fst`, `snd`, `trd`, `session`) VALUES
(3, 'dag/3604', 'DMS/2019/2030', 'Abolade Greatness', 'Nursery 1', '30000', '0', '0', '2021/2022'),
(5, 'dag/193', 'DMS/2019/2031', 'Gabolade Greatness', 'Nursery 1', '90000', '0', '0', '2021/2022'),
(10, 'dag/1832', 'DMS/2019/20000', 'Abolade Greatness', 'Pre-School', '300000', '0', '0', '2021/2022'),
(11, 'dag/1453', 'DMS/2019/20311', 'Bolade Greatness', 'Reception', '90000', '0', '0', '2021/2022');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carol`
--
ALTER TABLE `carol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `excursion`
--
ALTER TABLE `excursion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee`
--
ALTER TABLE `fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feercrd`
--
ALTER TABLE `feercrd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spillover`
--
ALTER TABLE `spillover`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carol`
--
ALTER TABLE `carol`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `excursion`
--
ALTER TABLE `excursion`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee`
--
ALTER TABLE `fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feercrd`
--
ALTER TABLE `feercrd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `spillover`
--
ALTER TABLE `spillover`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
