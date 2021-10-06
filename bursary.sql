-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2021 at 03:58 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
(1, 'FGS', '16a8a166b7c4d985de33351f6192bfe5', '2021/2022', '1st Term');

-- --------------------------------------------------------

--
-- Table structure for table `carol`
--

CREATE TABLE `carol` (
  `id` int(255) NOT NULL,
  `cusid` text,
  `admno` text,
  `name` text,
  `class` text,
  `term` text,
  `ses` text,
  `amt` text,
  `datepaid` date DEFAULT NULL,
  `mode` text,
  `type` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dye and bleaching`
--

CREATE TABLE `dye and bleaching` (
  `id` int(255) NOT NULL,
  `cusid` tinytext,
  `admno` tinytext,
  `name` tinytext,
  `class` tinytext,
  `term` tinytext,
  `ses` tinytext,
  `amt` tinytext,
  `datepaid` date DEFAULT NULL,
  `mode` tinytext,
  `type` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `excursion`
--

CREATE TABLE `excursion` (
  `id` int(255) NOT NULL,
  `cusid` text,
  `admno` text,
  `name` text,
  `class` text,
  `term` text,
  `ses` text,
  `amt` text,
  `datepaid` date DEFAULT NULL,
  `mode` text,
  `type` text
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
(1, 'dye and bleaching', '1000', '1st Term', '2021/2022');

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
(1, 'fgstran/9443', 'FGS/STUD/2015/10378', '50000', 'All', 'Tuition and Books', 'CHIDOLUE TRINITY', 'Grade 4', '2021/2022', '1st Term', 'Bank', '2021-10-04'),
(2, 'fgstran/8119', 'FGS/STUD/2019/10510', '37400', 'All', 'Tuition and Books', 'FAGBENRO OYINDAMOLA', 'Kindergarten', '2021/2022', '1st Term', 'Bank', '2021-10-05'),
(3, 'fgstran/952', 'FGS/457/STUD/2019/10457', '63800', 'All', 'Tuition and Books', 'FAGBENRO JOHN', 'Grade 1', '2021/2022', '1st Term', 'Bank', '2021-10-05'),
(4, 'fgstran/2720', 'FGS/STUD/2019/10054', '41400', 'School Fees', 'TUITION', 'FAGBENRO TOBILOBA', 'J.S.S 3', '2021/2022', '1st Term', 'Bank', '2021-10-05'),
(5, 'fgstran/3844', 'FGS/STUD/2021/10531', '65100', 'School Fees', 'TUITION, BOOKS AND UNIFORMS', 'MOSES PRAISE', 'Nursery 1', '2021/2022', '1st Term', 'Bank', '2021-10-05'),
(6, 'fgstran/586', 'FGS/STUD/2021/10532', '79800', 'All', 'TUITION, BOOKS AND UNIFORMS', 'MOSES OYINYE', 'Grade 3', '2021/2022', '1st Term', 'Bank', '2021-10-05'),
(7, 'fgstran/3761', 'FGS/STUD/2021/10533', '24100', 'School Fees', 'PART PAYMENT', 'MOSES DOMINION', 'Grade 5', '2021/2022', '1st Term', 'Bank', '2021-10-05'),
(8, 'fgstran/9806', 'FGS/STUD/2021/10534', '84800', 'All', 'TUITION, BOOKS, SHOE AND UNIFORMS', 'OYENIYI  TEMILOLUWA', 'Grade 2', '2021/2022', '1st Term', 'Bank', '2021-10-05');

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
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `stid`, `adid`, `name`, `class`, `fst`, `snd`, `trd`, `session`) VALUES
(1, 'fgs/6408', 'FGS/STUD/2015/10378', 'CHIDOLUE TRINITY', 'Grade 4', '54000', '0', '0', '2021/2022'),
(2, 'fgs/1000', 'FGS/STUD/2019/10', 'CHIDOLUE NOEL', 'Kindergarten', '35000', '0', '0', '2021/2022'),
(3, 'fgs/425', 'FGS/STUD/2019/10510', 'FAGBENRO OYINDAMOLA', 'Kindergarten', '37400', '0', '0', '2021/2022'),
(4, 'fgs/4841', 'FGS/457/STUD/2019/10457', 'FAGBENRO JOHN', 'Grade 1', '63800', '0', '0', '2021/2022'),
(5, 'fgs/5233', 'FGS/STUD/2019/10054', 'FAGBENRO TOBILOBA', 'J.S.S 3', '86500', '0', '0', '2021/2022'),
(6, 'fgs/1454', 'FGS/STUD/2021/10531', 'MOSES PRAISE', 'Nursery 1', '65100', '0', '0', '2021/2022'),
(7, 'fgs/5116', 'FGS/STUD/2021/10532', 'MOSES OYINYE', 'Grade 3', '79800', '0', '0', '2021/2022'),
(8, 'fgs/5413', 'FGS/STUD/2021/10533', 'MOSES DOMINION', 'Grade 5', '78200', '0', '0', '2021/2022'),
(9, 'fgs/6998', 'FGS/STUD/2021/10534', 'OYENIYI  TEMILOLUWA', 'Grade 2', '84800', '0', '0', '2021/2022');

-- --------------------------------------------------------

--
-- Table structure for table `tracker`
--

CREATE TABLE `tracker` (
  `id` int(11) NOT NULL,
  `trackid` text NOT NULL,
  `name` text NOT NULL,
  `date` datetime NOT NULL,
  `session` text NOT NULL,
  `term` text NOT NULL,
  `descrip` text NOT NULL,
  `amount` text NOT NULL,
  `mode` text NOT NULL,
  `type` text NOT NULL
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
-- Indexes for table `dye and bleaching`
--
ALTER TABLE `dye and bleaching`
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
-- Indexes for table `tracker`
--
ALTER TABLE `tracker`
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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dye and bleaching`
--
ALTER TABLE `dye and bleaching`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `spillover`
--
ALTER TABLE `spillover`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tracker`
--
ALTER TABLE `tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
