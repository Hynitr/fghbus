-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2021 at 11:56 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

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
(1, 'FGS', '184da1856d2c36dc9e95cff7582a07dc', '2021/2022', '1st Term');

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
