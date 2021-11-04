-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2021 at 07:53 PM
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
(1, 'fgsspill/5312', '', '-58800', '', '', '2021/2022', '1st Term', '2021-10-25'),
(2, 'fgsspill/2829', '', '-58800', '', '', '2021/2022', '1st Term', '2021-10-25'),
(3, 'fgsspill/9569', '', '-48200', '', '', '2021/2022', '1st Term', '2021-10-25'),
(4, 'fgsspill/4677', '', '-20000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(5, 'fgsspill/2513', '', '-49450', '', '', '2021/2022', '1st Term', '2021-10-25'),
(6, 'fgsspill/5856', '', '-40000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(7, 'fgsspill/5042', '', '-54480', '', '', '2021/2022', '1st Term', '2021-10-25'),
(8, 'fgsspill/4295', '', '-50000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(9, 'fgsspill/1491', '', '-47750', '', '', '2021/2022', '1st Term', '2021-10-25'),
(10, 'fgsspill/2612', '', '-49900', '', '', '2021/2022', '1st Term', '2021-10-25'),
(11, 'fgsspill/7135', '', '-58500', '', '', '2021/2022', '1st Term', '2021-10-25'),
(12, 'fgsspill/5612', '', '-46000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(13, 'fgsspill/5684', '', '-105000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(14, 'fgsspill/7787', '', '-55500', '', '', '2021/2022', '1st Term', '2021-10-25'),
(15, 'fgsspill/6787', '', '-78500', '', '', '2021/2022', '1st Term', '2021-10-25'),
(16, 'fgsspill/816', '', '-51700', '', '', '2021/2022', '1st Term', '2021-10-25'),
(17, 'fgsspill/3530', '', '-78000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(18, 'fgsspill/1067', '', '-95950', '', '', '2021/2022', '1st Term', '2021-10-25'),
(19, 'fgsspill/9935', '', '-44000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(20, 'fgsspill/7094', '', '-38400', '', '', '2021/2022', '1st Term', '2021-10-25'),
(21, 'fgsspill/8465', '', '-15600', '', '', '2021/2022', '1st Term', '2021-10-25'),
(22, 'fgsspill/7140', '', '-8000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(23, 'fgsspill/7517', '', '-52000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(24, 'fgsspill/6634', '', '-36000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(25, 'fgsspill/8928', '', '-38000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(26, 'fgsspill/5693', '', '-70000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(27, 'fgsspill/5470', '', '-54450', '', '', '2021/2022', '1st Term', '2021-10-25'),
(28, 'fgsspill/6623', '', '-59000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(29, 'fgsspill/8355', '', '-50000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(30, 'fgsspill/1415', '', '-50000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(31, 'fgsspill/4732', '', '-63800', '', '', '2021/2022', '1st Term', '2021-10-25'),
(32, 'fgsspill/9248', '', '-37400', '', '', '2021/2022', '1st Term', '2021-10-25'),
(33, 'fgsspill/5185', '', '-41400', '', '', '2021/2022', '1st Term', '2021-10-25'),
(34, 'fgsspill/3992', '', '-69800', '', '', '2021/2022', '1st Term', '2021-10-25'),
(35, 'fgsspill/1239', '', '-200', '', '', '2021/2022', '1st Term', '2021-10-25'),
(36, 'fgsspill/1698', '', '-45000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(37, 'fgsspill/2855', '', '-31000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(38, 'fgsspill/8111', '', '-69000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(39, 'fgsspill/5930', '', '-35440', '', '', '2021/2022', '1st Term', '2021-10-25'),
(40, 'fgsspill/6160', '', '-54000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(41, 'fgsspill/9802', '', '-54000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(42, 'fgsspill/3462', '', '-50000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(43, 'fgsspill/4743', '', '-61000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(44, 'fgsspill/9821', '', '-25000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(45, 'fgsspill/9464', '', '-24100', '', '', '2021/2022', '1st Term', '2021-10-25'),
(46, 'fgsspill/4730', '', '-79800', '', '', '2021/2022', '1st Term', '2021-10-25'),
(47, 'fgsspill/8613', '', '-65100', '', '', '2021/2022', '1st Term', '2021-10-25'),
(48, 'fgsspill/4869', '', '-42000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(49, 'fgsspill/278', '', '-57000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(50, 'fgsspill/1604', '', '-57000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(51, 'fgsspill/3480', '', '-50480', '', '', '2021/2022', '1st Term', '2021-10-25'),
(52, 'fgsspill/8490', '', '-60000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(53, 'fgsspill/5682', '', '-56000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(54, 'fgsspill/8771', '', '-44000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(55, 'fgsspill/281', '', '-15000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(56, 'fgsspill/2874', '', '-45920', '', '', '2021/2022', '1st Term', '2021-10-25'),
(57, 'fgsspill/4113', '', '-30000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(58, 'fgsspill/5918', '', '-59000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(59, 'fgsspill/4953', '', '-48200', '', '', '2021/2022', '1st Term', '2021-10-25'),
(60, 'fgsspill/5207', '', '-52800', '', '', '2021/2022', '1st Term', '2021-10-25'),
(61, 'fgsspill/9010', '', '-28000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(62, 'fgsspill/7733', '', '-30000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(63, 'fgsspill/8433', '', '-40000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(64, 'fgsspill/7676', '', '-21000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(65, 'fgsspill/8808', '', '-84800', '', '', '2021/2022', '1st Term', '2021-10-25'),
(66, 'fgsspill/3904', '', '-95200', '', '', '2021/2022', '1st Term', '2021-10-25'),
(67, 'fgsspill/6659', '', '-10000', '', '', '2021/2022', '1st Term', '2021-10-25'),
(68, 'fgsspill/7470', '', '-49500', '', '', '2021/2022', '1st Term', '2021-10-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `spillover`
--
ALTER TABLE `spillover`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `spillover`
--
ALTER TABLE `spillover`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
