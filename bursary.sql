-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2021 at 07:59 PM
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
(1, 'FGS', '16a8a166b7c4d985de33351f6192bfe5', '2021/2021', '1st Term');

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
(5, 'fgstran/3844', 'FGS/STUD/2021/10531', '65100', 'School Fees', 'TUITION, BOOKS AND UNIFORMS', 'MOSES PRAISE', 'Nursery 1', '2021/2022', '1st Term', 'Bank', '2021-10-05'),
(6, 'fgstran/586', 'FGS/STUD/2021/10532', '79800', 'All', 'TUITION, BOOKS AND UNIFORMS', 'MOSES OYINYE', 'Grade 3', '2021/2022', '1st Term', 'Bank', '2021-10-05'),
(7, 'fgstran/3761', 'FGS/STUD/2021/10533', '24100', 'School Fees', 'PART PAYMENT', 'MOSES DOMINION', 'Grade 5', '2021/2022', '1st Term', 'Bank', '2021-10-05'),
(8, 'fgstran/9806', 'FGS/STUD/2021/10534', '84800', 'All', 'TUITION, BOOKS, SHOE AND UNIFORMS', 'OYENIYI  TEMILOLUWA', 'Grade 2', '2021/2022', '1st Term', 'Bank', '2021-10-05'),
(9, 'fgstran/5220', 'FGS/STUD/2021/10535', '48200', 'All', 'TUITION, BOOKS AND UNIFORMS', 'ONIFADE SEYI', 'Reception', '2021/2022', '1st Term', 'Bank', '2021-10-07'),
(10, 'fgstran/8598', 'FGS/STUD/2021/10536', '48200', 'All', 'TUITION, BOOKS AND UNIFORMS', 'ADEBAYO ANU', 'Reception', '2021/2022', '1st Term', 'Bank', '2021-10-07'),
(11, 'fgstran/3928', 'FGS/STUD/2020', '000', 'Tuition', '', 'LESHI ISRAEL', 'Transition', '2021/2022', '1st Term', 'Bank', '2021-10-07'),
(12, 'fgstran/7747', 'FGS/STUD/2020', '25000', 'Tuition', 'PART PAYMENT', 'LESHI ISRAEL', 'Transition', '2021/2022', '1st Term', 'Bank', '2021-10-07'),
(13, 'fgstran/2947', 'FGS/STUD/2021/10538', '49900', 'Tuition', 'TUITION, BOOKS AND UNIFORMS', 'AKINBORO', 'Transition', '2021/2022', '1st Term', 'Bank', '2021-10-07'),
(14, 'fgstran/9813', 'FGS/STUD/2017/10415', '59000', 'All', 'Tuition and Books', 'CHIDOLUE CLARE ', 'Grade 2', '2021/2022', '1st Term', 'Bank', '2021-10-08'),
(15, 'fgstran/4326', 'FGS/STUD/2019/10054', '41400', 'Tuition', 'TUITION', 'FAGBENRO TOBILOBA', 'J.S.S 3', '2021/2022', '1st Term', 'Bank', '2021-10-08'),
(16, 'fgstran/5828', 'FGS/STUD/2019/10495', '52500', 'All', 'TUITION, BOOKS AND UNIFORMS', 'AKINSADEJU ELIZABETH', 'Kindergarten', '2021/2022', '1st Term', 'Bank', '2021-10-08'),
(17, 'fgstran/18', 'FGS/STUD/2019/10465', '55500', 'Tuition', 'Tuition and Books', 'AKINSADEJU EMMANUEL', 'Grade 3', '2021/2022', '1st Term', 'Bank', '2021-10-08'),
(18, 'fgstran/6535', 'FGS/STUD/2019/10056', '95950', 'All', 'TUITION,BOOKS, BECE ', 'AKISADEJU DAVID', 'J.S.S 3', '2021/2022', '1st Term', 'Bank', '2021-10-08'),
(19, 'fgstran/7103', 'FGS/STUD/2021/10539', '40000', 'All', 'TUITION, BOOKS AND UNIFORMS', 'ADELEKE SULTAN', 'Reception', '2021/2022', '1st Term', 'Bank', '2021-10-09'),
(20, 'fgstran/6971', 'FGS/STUD/2020/10528', '30000', 'Tuition', 'Tuition and Books', 'OMOBOYE GRACE', 'Transition', '2021/2022', '1st Term', 'Bank', '2021-10-16'),
(21, 'fgstran/5840', 'FGS/STUD/2021/10540', '0', 'Tuition', '', 'OBUSEZ SARAH', 'Transition', '2021/2022', '1st Term', 'Bank', '2021-10-16'),
(22, 'fgstran/2760', 'FGS/STUD/2019/10506', '38000', 'Tuition', '', 'ASOGWA RITA', 'Kindergarten', '2021/2022', '1st Term', 'Bank', '2021-10-16'),
(23, 'fgstran/1130', 'FGS/STUD/2019/10501', '35440', 'All', 'Tuition and Books', 'IYANDA SHINDARA', 'Kindergarten', '2021/2022', '1st Term', 'Bank', '2021-10-16'),
(24, 'fgstran/4354', 'FGS/STUD/2020/10508', '27000', 'Tuition', 'TUITION', 'IYAYI GREATER', 'Kindergarten', '2021/2022', '1st Term', 'Bank', '2021-10-16'),
(25, 'fgstran/8907', 'FGS/STUD/2020/10542', '27000', 'Books', 'BOOKS', 'IYAYI GREATER', 'Kindergarten', '2021/2022', '1st Term', 'Bank', '2021-10-16'),
(26, 'fgstran/6259', 'FGS/STUD/2021/10530', '0', 'Tuition', 'NIL', 'OIYIMEARELU KENDRICK', 'Kindergarten', '2021/2022', '1st Term', 'Bank', '2021-10-16'),
(27, 'fgstran/3941', 'FGS/STUD/2018/10419', '38400', 'Tuition', 'Tuition and Books', 'ALIMI ABIODUN', 'Nursery 1', '2021/2022', '1st Term', 'Bank', '2021-10-16'),
(28, 'fgstran/4117', 'FGS/STUD/2019/10488', '58500', 'Tuition', 'TUITION, BOOKS AND UNIFORMS', 'AKINOLA ERIOLUWA', 'Nursery 1', '2021/2022', '1st Term', 'Bank', '2021-10-16'),
(29, 'fgstran/7649', 'FGS/STUD/2019/10490', '52500', 'Tuition', 'TUITION, BOOKS AND UNIFORMS', 'AKINSADEJU ELIZABETH', 'Nursery 1', '2021/2022', '1st Term', 'Bank', '2021-10-16'),
(30, 'fgstran/1539', 'FSG/STUD/2018/10464', '70000', 'All', 'TUITION, BOOKS AND UNIFORMS', 'ASOGWA SOLOMON', 'Nursery 2', '2021/2022', '1st Term', 'Bank', '2021-10-17'),
(31, 'fgstran/9622', 'FGS/STUD/2018/10466', '54450', 'All', 'Tuition and Books', 'AYODELE OLAOLUWA', 'Nursery 2', '2021/2022', '1st Term', 'Bank', '2021-10-17'),
(32, 'fgstran/8523', 'FSG/STUD/2021/10544', '78000', 'All', 'TUITION, BOOKS AND UNIFORMS', 'AKINTAYO GIDEON', 'Nursery 2', '2021/2022', '1st Term', 'Bank', '2021-10-17'),
(33, 'fgstran/4306', 'FGS/STUD/2021/10545', '40000', 'Tuition', 'Tuition and Books', 'OSENI OLUWAGBEMIRO', 'Nursery 2', '2021/2022', '1st Term', 'Bank', '2021-10-17'),
(34, 'fgstran/4805', 'FGS/STUD/2021/10546', '58800', 'Tuition', 'Tuition and Books', 'ABUBARKAR ZIHADAT', 'Nursery 2', '2021/2022', '1st Term', 'Bank', '2021-10-17'),
(35, 'fgstran/5859', 'FGS/STUD/2019/10507', '69000', 'Tuition', 'Tuition and Books', 'ILORI JEREMAIH', 'Grade 1', '2021/2022', '1st Term', 'Bank', '2021-10-17'),
(36, 'fgstran/2439', 'FGS/STUD/2019/10509', '54000', 'Tuition', 'Tuition and Books', 'IZUZU EMMANUEL', 'Grade 1', '2021/2022', '1st Term', 'Bank', '2021-10-17'),
(37, 'fgstran/3661', 'FGS/STUD/2020/10512', '50480', 'Tuition', 'Tuition and Books', 'ODEYEMI ISAIAH', 'Grade 1', '2021/2022', '1st Term', 'Bank', '2021-10-17'),
(38, 'fgstran/2083', 'FGS/STUD/2021/10547', '45920', 'Tuition', 'PART PAYMENT', 'OIYIMEARELU KIANA ', 'Grade 1', '2021/2022', '1st Term', 'Bank', '2021-10-17'),
(39, 'fgstran/9215', 'FGS/STUD/2021/10530', '15000', 'Tuition', 'BOOKS', 'OIYIMEARELU KENDRICK', 'Kindergarten', '2021/2022', '1st Term', 'Bank', '2021-10-17'),
(40, 'fgstran/7399', 'FGS/STUD/2018/105454', '59000', 'Tuition', 'Tuition and Books', 'ONIFADE GBEMI', 'Grade 1', '2021/2022', '1st Term', 'Bank', '2021-10-17'),
(41, 'fgstran/4997', 'FGS/STUD/2020/10508', '20000', 'Tuition', 'BOOKS', 'OGUNFOLU FUWAAD', 'Grade 1', '2021/2022', '1st Term', 'Bank', '2021-10-17'),
(42, 'fgstran/9538', 'FGS/STUD/2020/10548', '40000', 'Tuition', 'PART PAYMENT', 'OGUNFOLU FUWAAD', 'Grade 1', '2021/2022', '1st Term', 'Cash', '2021-10-17'),
(43, 'fgstran/9721', 'FGS/STUD/2017/10456', '52000', 'Tuition', 'Tuition and Books', 'ANIPUPO IREMIDE ', 'Grade 1', '2021/2022', '1st Term', 'Bank', '2021-10-17'),
(44, 'fgstran/2057', 'FGS/STUD/2021/10548', '58800', 'Tuition', 'Tuition and Books', 'ABUBAKAR SALAMAT', 'Grade 2', '2021/2022', '1st Term', 'Bank', '2021-10-17'),
(45, 'fgstran/7036', 'FGS/STUD/2019/10494', '46000', 'Tuition', 'PART PAYMENT', 'AKINOLA IREOLUWA', 'Grade 2', '2021/2022', '1st Term', 'Bank', '2021-10-17'),
(46, 'fgstran/5430', 'FGS/STUD/2020/10513', '36000', 'Tuition', 'PART PAYMENT', 'ASOGWA HENRY', 'Grade 2', '2021/2022', '1st Term', 'Bank', '2021-10-17'),
(47, 'fgstran/6000', 'FGS/STUD/2017/10411', '57000', 'Tuition', 'Tuition and Books', 'OBIORAH ESTHER', 'Grade 2', '2021/2022', '1st Term', 'Bank', '2021-10-17'),
(48, 'fgstran/492', 'FGS/STUD/2017/10409', '57000', 'Tuition', 'Tuition and Books', 'OBIORAH FAITH', 'Grade 2', '2021/2022', '1st Term', 'Bank', '2021-10-17'),
(49, 'fgstran/4359', 'FGS/STUD/2017/10412', '42000', 'Tuition', 'Tuition and Books', 'OBIORAH DAVID ', 'Grade 2', '2021/2022', '1st Term', 'Bank', '2021-10-17'),
(50, 'fgstran/459', 'FGS/STUD/2016/10413', '44000', 'Tuition', 'Tuition and Books', 'OHAGU MICHEAL', 'Grade 2', '2021/2022', '1st Term', 'Bank', '2021-10-17'),
(51, 'fgstran/9849', 'FGS/STUD/2017/10448', '54480', 'Tuition', 'Tuition and Books', 'ADEOYE IYANU', 'Grade 3', '2021/2022', '1st Term', 'Bank', '2021-10-17'),
(52, 'fgstran/4553', 'FGS/STUD/2021/10549', '78500', 'Tuition', 'TUITION, BOOKS AND UNIFORMS', 'AKINTAO ISAAC', 'Grade 3', '2021/2022', '1st Term', 'Bank', '2021-10-17'),
(53, 'fgstran/4945', 'FGS/STUD/2014/10219', '50000', 'Tuition', 'PART PAYMENT', 'ERIC ROMILORUN', 'Grade 3', '2021/2022', '1st Term', 'Bank', '2021-10-17'),
(54, 'fgstran/3895', 'FGS/STUDENT/2013/10210', '0', 'Tuition', 'NIL', 'GOLD OSAMUDIEME', 'Grade 3', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(55, 'fgstran/8976', 'FGS/STUD/2013/10209', '45000', 'Tuition', 'Tuition and Books Part Payment', 'GOLD OSARENTI', 'Grade 3', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(56, 'fgstran/6145', 'FGS/STUD/2017/10448', '0', 'Tuition', 'NIL', 'ADEOYE IYANU', 'Grade 3', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(57, 'fgstran/7634', 'FGS/STUD/2017/10394', '0', 'Tuition', 'NIL', 'IYANDA FIYINFOLUWA', 'Grade 3', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(58, 'fgstran/5705', 'FGS/STUD/2019/10514', '0', 'Tuition', 'NIL', 'UBA CALEB', 'Grade 3', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(59, 'fgstran/1583', 'FGS/STUD/2020/10516', '0', 'Tuition', 'NIL', 'OGUNFOLU FAWAAZ', 'Grade 3', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(60, 'fgstran/6904', 'FGS/STUD/2017/10449', '0', 'Tuition', 'NIL', 'ADEFISAN SUCCESS', 'Grade 4', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(61, 'fgstran/4424', 'FGS/STUD/2017/10423', '0', 'Tuition', 'NIL', 'ADEOYE ISRAEL', 'Grade 4', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(64, 'fgstran/3322', 'FGS/STUD/2019/10515', '31000', 'Tuition', 'BOOKS & PART PAYMENT', 'KAYODE ISEOLUWA', 'Grade 4', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(65, 'fgstran/3657', 'FGS/STUD/2017/10443', '0', 'Tuition', 'NIL', 'JOSEPH JAMES', 'Grade 4', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(66, 'fgstran/7535', 'FGS/STUD/2014/10325', '49450', 'Tuition', 'Tuition and Books', 'ADEEKO ATINUKE', 'Grade 4', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(67, 'fgstran/8135', 'FGS/STUD/2014/10345', '42000', 'Tuition', 'Tuition and Books', 'ALAO DANIELLA', 'Grade 4', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(68, 'fgstran/8599', 'FGS/STUD/2014/10368', '56000', 'Tuition', 'Tuition and Books', 'OHAGU AUGUSTA', 'Grade 4', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(70, 'fgstran/7097', 'FGS/STUD/2018/10440', '0', 'Tuition', 'NIL', 'ANIMAKU HADASSAH', 'Grade 4', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(71, 'fgstran/1240', 'FGS/STUD/2018/10387', '30000', 'Tuition', 'BOOKS', 'OROBIYI SILVER', 'Grade 4', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(72, 'fgstran/7977', 'FGS/STUD/2017/10333', '8000', 'Tuition', 'PART PAYMENT', 'ANIPUPO ADESEWA', 'Grade 4', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(73, 'fgstran/4945', 'FGS/STUD/2021/10550', '50000', 'Tuition', 'BOOKS & UNIFORM', 'ADEREMI GAIUS', 'Grade 4', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(74, 'fgstran/374', 'FGS/STUD/2021/10551', '50000', 'Tuition', 'BOOKS & UNIFORM', 'JOHN ELIZABETH TOBILOBA', 'Grade 5', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(76, 'fgstran/5364', 'FGS/STUD/2019/10518', '0', 'Tuition', 'NIL', 'ODEYEMI DANIEL', 'Grade 5', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(77, 'fgstran/5481', 'FGS/STUD/2016/10330', '52800', 'Tuition', 'Tuition and Books Part Payment', 'ONIFADE TOYIN', 'Grade 5', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(78, 'fgstran/5784', 'FGS/STUD/2015/10301', '0', 'Tuition', 'NIL', 'ANIPUPO OLARENWAJU', 'Grade 5', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(79, 'fgstran/7447', 'FGS/STUD/2015/10231', '0', 'Tuition', 'NIL', 'OJO IFEOLUWA', 'J.S.S 1', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(81, 'fgstran/2419', 'FGS/STUD/2019/10051', '0', 'Tuition', 'NIL', 'OHAGU EMMANUEL', 'J.S.S 3', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(82, 'fgstran/2608', 'FGS/STUD/2014/10360', '0', 'Tuition', 'NIL', 'OHAGU MARY', 'J.S.S 1', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(83, 'fgstran/6434', 'FGS/STUD/2018/10396', '0', 'Tuition', 'NIL', 'OBIORAH EMEKA', 'J.S.S 2', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(84, 'fgstran/942', 'FGS/STUD/2017/10021', '0', 'Tuition', 'NIL', 'OKEIYI CHIAMAKA', 'S.S.S 3', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(85, 'fgstran/8789', 'FGS/STUD/2015/10280', '0', 'Tuition', 'NIL', 'OKEIYI EBUKA', 'J.S.S 1', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(87, 'fgstran/4029', 'FGS/STUD/2018/10044', '10000', 'Tuition', 'Tuition Part Payment', 'SHARAFADEEN MOZYD', 'S.S.S 1', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(88, 'fgstran/4235', 'FGS/STUD/2021/10554', '51700', 'Tuition', 'UNIFORM AND BOOKS', 'AKINTAYO DAVID', 'J.S.S 1', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(89, 'fgstran/3428', 'FGS/STUD/2019/10521', '31000', 'Tuition', 'TUITION', 'ILORI ISRAEL', 'J.S.S 1', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(91, 'fgstran/4922', 'FGS/STUD/2019/10525', '0', 'Tuition', 'NIL', 'ILORI BOLUWATIFE', 'J.S.S 3', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(92, 'fgstran/1469', 'FGS/STUD/2019/10527', '0', 'Tuition', 'NIL', 'ILORI BAYONLE', 'S.S.S 3', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(93, 'fgstran/2505', 'FGS/STUD/2019/10524', '0', 'Tuition', 'NIL', 'IZUZU ONYEKACHI', 'J.S.S 2', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(94, 'fgstran/3459', 'FGS/STUD/2015/10271', '15600', 'Tuition', 'DEV. FEE & UNIFORM', 'ALIMI HABEEB', 'J.S.S 1', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(95, 'fgstran/2816', 'FGS/STUD/2021/10553', '20000', 'Tuition', 'TUITION & DEV.FEE', 'ADEBAYO DAVID MUSA', 'J.S.S 1', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(96, 'fgstran/9981', 'FGS/STUD/2012/10350', '0', 'Tuition', 'NIL', 'ADEOYE ISAAC', 'J.S.S 2', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(98, 'fgstran/1082', 'FGS/STUD/2019/10522', '47750', 'Tuition', 'Tuition and Books', 'ADESHINA TOLULOPE', 'J.S.S 2', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(99, 'fgstran/8195', 'FGS/STUD/2021/10556', '95200', 'Tuition', 'PART PAYMENT', 'OYENIYI FIYINFOLUWA', 'J.S.S 3', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(100, 'fgstran/859', 'FGS/STUD/2021/10558', '0', 'Tuition', 'NIL', 'OYENIYI INIOLUWA', 'S.S.S 1', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(101, 'fgstran/3892', 'FGS/STUD/2019/10055', '0', 'Tuition', 'NIL', 'AKANNI OPEYEMI', 'J.S.S 3', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(102, 'fgstran/9886', 'FGS/STUD/2019/10061', '0', 'Tuition', 'NIL', 'AKINSADEJU DANIEL', 'S.S.S 3', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(103, 'fgstran/3566', 'FGS/STUD/2018/10042', '0', 'Tuition', 'NIL', 'ADEBAYO PRECIOUS', 'S.S.S 1', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(105, 'fgstran/3404', 'FGS/STUD/2018/10400', '0', 'Tuition', 'NIL', 'ANIMAKU EYIOIZA', 'J.S.S 2', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(107, 'fgstran/1889', 'FGS/STUD/2018/10047', '0', 'Tuition', 'NIL', 'ANIMAKU NAOMI', 'S.S.S 1', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(108, 'fgstran/9859', 'FGS/STUD/2018/10062', '0', 'Tuition', 'NIL', 'ANIMAKU ISRAEL', 'S.S.S 2', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(109, 'fgstran/3086', 'FGS/STUD/2019/10523', '21000', 'Tuition', 'TUITION', 'OYEJOLA DANIEL', 'J.S.S 2', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(110, 'fgstran/5606', 'FGS/STUD/2021/10557', '0', 'Tuition', 'NIL', 'ABUBAKAR FARIDAT', 'S.S.S 1', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(111, 'fgstran/8515', 'FGS/STUD/2017/10031', '200', 'Tuition', 'TUITION', 'FRANCIS HEZEKIAH', 'S.S.S 2', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(112, 'fgstran/1970', 'FGS/STUD/2019/10053', '69800', 'Tuition', 'TUITION & BECE', 'FRANCIS ESTHER', 'J.S.S 3', '2021/2022', '1st Term', 'Bank', '2021-10-20'),
(113, 'fgstran/6170', 'FGS/STUD/2020/10504', '28000', 'Tuition', 'Tuition and Books', 'OPUAMA JASON', 'Transition', '2021/2022', '1st Term', 'Bank', '2021-10-22'),
(118, 'fgstran/5866', 'FGS/STUD/2019/10515', '30000', 'Tuition', 'PART PAYMENT', 'KAYODE ISEOLUWA', 'Grade 4', '2021/2022', '1st Term', 'Bank', '2021-10-22'),
(120, 'fgstran/7182', 'FGS/STUD/2019/10514', '49500', 'Tuition', 'Tuition and Books', 'UBA CALEB', 'Grade 3', '2021/2022', '1st Term', 'Bank', '2021-10-23'),
(121, 'fgstran/291', 'FGS/STUD/2014/10345', '2000', 'Tuition', 'PART PAYMENT', 'ALAO DANIELLA', 'Grade 4', '2021/2022', '1st Term', 'Bank', '2021-10-23');

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
(1, 'fgs/6408', 'FGS/STUD/2015/10378', 'CHIDOLUE TRINITY', 'Nursery 1', '0', '0', '0', '2021/2022'),
(2, 'fgs/1000', 'FGS/STUD/2019/10500', 'CHIDOLUE NOEL', 'Nursery 1', '0', '0', '0', '2021/2022'),
(3, 'fgs/425', 'FGS/STUD/2019/10510', 'FAGBENRO OYINDAMOLA', 'Nursery 1', '0', '0', '0', '2021/2022'),
(4, 'fgs/4841', 'FGS/STUD/2019/10457', 'FAGBENRO JOHN', 'Nursery 1', '0', '0', '0', '2021/2022'),
(5, 'fgs/5233', 'FGS/STUD/2019/10054', 'FAGBENRO TOBILOBA', 'Nursery 1', '0', '0', '0', '2021/2022'),
(6, 'fgs/1454', 'FGS/STUD/2021/10531', 'MOSES PRAISE', 'Nursery 1', '0', '0', '0', '2021/2022'),
(7, 'fgs/5116', 'FGS/STUD/2021/10532', 'MOSES OYINYE', 'Nursery 1', '0', '0', '0', '2021/2022'),
(8, 'fgs/5413', 'FGS/STUD/2021/10533', 'MOSES DOMINION', 'Nursery 1', '0', '0', '0', '2021/2022'),
(9, 'fgs/6998', 'FGS/STUD/2021/10534', 'OYENIYI  TEMILOLUWA', 'Nursery 1', '0', '0', '0', '2021/2022'),
(10, 'fgs/7783', 'FGS/STUD/2021/10535', 'ONIFADE SEYI', 'Nursery 1', '0', '0', '0', '2021/2022'),
(11, 'fgs/7136', 'FGS/STUD/2021/10536', 'ADEBAYO ANU', 'Nursery 1', '0', '0', '0', '2021/2022'),
(14, 'fgs/2015', 'FGS/STUD/2020/10503', 'LESHI ISRAEL', 'Nursery 1', '0', '0', '0', '2021/2022'),
(16, 'fgs/8518', 'FGS/STUD/2020/10504', 'OPUAMA JASON', 'Nursery 1', '0', '0', '0', '2021/2022'),
(17, 'fgs/7113', 'FGS/STUD/2021/10538', 'AKINBORO IMRAN', 'Nursery 1', '0', '0', '0', '2021/2022'),
(18, 'fgs/2542', 'FGS/STUD/2017/10415', 'CHIDOLUE CLARE ', 'Nursery 1', '0', '0', '0', '2021/2022'),
(19, 'fgs/2089', 'FGS/STUD/2019/100054', 'FAGBENRO TOBILOBA', 'Nursery 1', '0', '0', '0', '2021/2022'),
(21, 'fgs/7483', 'FGS/STUD/2019/10465', 'AKINSADEJU EMMANUEL', 'Nursery 1', '0', '0', '0', '2021/2022'),
(22, 'fgs/7515', 'FGS/STUD/2019/10056', 'AKISADEJU DAVID', 'Nursery 1', '0', '0', '0', '2021/2022'),
(23, 'fgs/3744', 'FGS/STUD/2021/10539', 'ADELEKE SULTAN', 'Nursery 1', '0', '0', '0', '2021/2022'),
(25, 'fgs/3003', 'FGS/STUD/2020/10528 ', 'OMOBOYE GRACE', 'Nursery 1', '0', '0', '0', '2021/2022'),
(26, 'fgs/737', 'FGS/STUD/2021/10540', 'OBUSEZ SARAH', 'Nursery 1', '0', '0', '0', '2021/2022'),
(27, 'fgs/3151', 'FGS/STUD/2019/10506', 'ASOGWA RITA', 'Nursery 1', '0', '0', '0', '2021/2022'),
(28, 'fgs/3569', 'FGS/STUD/2019/10501', 'IYANDA SHINDARA', 'Nursery 1', '0', '0', '0', '2021/2022'),
(32, 'fgs/2412', 'FGS/STUD/2021/10530', 'OIYIMEARELU KENDRICK', 'Nursery 1', '0', '0', '0', '2021/2022'),
(33, 'fgs/9056', 'FGS/STUD/2018/10419', 'ALIMI ABIODUN', 'Nursery 1', '0', '0', '0', '2021/2022'),
(35, 'fgs/4155', 'FGS/STUD/2019/10488', 'AKINOLA ERIOLUWA', 'Nursery 1', '0', '0', '0', '2021/2022'),
(36, 'fgs/9192', 'FGS/STUD/2019/10490', 'AKINSADEJU ELIZABETH', 'Nursery 1', '0', '0', '0', '2021/2022'),
(37, 'fgs/8890', 'FSG/STUD/2018/10464', 'ASOGWA SOLOMON', 'Nursery 1', '0', '0', '0', '2021/2022'),
(38, 'fgs/8426', 'FGS/STUD/2018/10466', 'AYODELE OLAOLUWA', 'Nursery 1', '0', '0', '0', '2021/2022'),
(39, 'fgs/9009', 'FSG/STUD/2021/10544', 'AKINTAYO GIDEON', 'Nursery 1', '0', '0', '0', '2021/2022'),
(40, 'fgs/3452', 'FGS/STUD/2021/10545', 'OSENI OLUWAGBEMIRO', 'Nursery 1', '0', '0', '0', '2021/2022'),
(42, 'fgs/8954', 'FGS/STUD/2019/10507', 'ILORI JEREMAIH', 'Nursery 1', '0', '0', '0', '2021/2022'),
(43, 'fgs/2616', 'FGS/STUD/2019/10509', 'IZUZU EMMANUEL', 'Nursery 1', '0', '0', '0', '2021/2022'),
(44, 'fgs/2913', 'FGS/STUD/2020/10512', 'ODEYEMI ISAIAH', 'Nursery 1', '0', '0', '0', '2021/2022'),
(45, 'fgs/1810', 'FGS/STUD/2021/10547', 'OIYIMEARELU KIANA ', 'Nursery 1', '0', '0', '0', '2021/2022'),
(46, 'fgs/1213', 'FGS/STUD/2018/105454', 'ONIFADE GBEMI', 'Nursery 1', '0', '0', '0', '2021/2022'),
(47, 'fgs/7029', 'FGS/STUD/2020/10548', 'OGUNFOLU FUWAAD', 'Nursery 1', '0', '0', '0', '2021/2022'),
(48, 'fgs/6766', 'FGS/STUD/2017/10456', 'ANIPUPO IREMIDE ', 'Nursery 1', '0', '0', '0', '2021/2022'),
(49, 'fgs/5798', 'FGS/STUD/2021/10548', 'ABUBAKAR SALAMAT', 'Nursery 1', '0', '0', '0', '2021/2022'),
(50, 'fgs/3624', 'FGS/STUD/2019/10494', 'AKINOLA IREOLUWA', 'Nursery 1', '0', '0', '0', '2021/2022'),
(51, 'fgs/4332', 'FGS/STUD/2020/10513', 'ASOGWA HENRY', 'Nursery 1', '0', '0', '0', '2021/2022'),
(52, 'fgs/5114', 'FGS/STUD/2017/10411', 'OBIORAH ESTHER', 'Nursery 1', '0', '0', '0', '2021/2022'),
(53, 'fgs/2096', 'FGS/STUD/2017/10409', 'OBIORAH FAITH', 'Nursery 1', '0', '0', '0', '2021/2022'),
(54, 'fgs/2481', 'FGS/STUD/2017/10412', 'OBIORAH DAVID ', 'Nursery 1', '0', '0', '0', '2021/2022'),
(55, 'fgs/6641', 'FGS/STUD/2016/10413', 'OHAGU MICHEAL', 'Nursery 1', '0', '0', '0', '2021/2022'),
(56, 'fgs/1050', 'FGS/STUD/2017/10448', 'ADEOYE IYANU', 'Nursery 1', '0', '0', '0', '2021/2022'),
(57, 'fgs/9077', 'FGS/STUD/2021/10549', 'AKINTAYO ISAAC', 'Nursery 1', '0', '0', '0', '2021/2022'),
(58, 'fgs/5676', 'FGS/STUD/2014/10219', 'ERIC ROMILORUN', 'Nursery 1', '0', '0', '0', '2021/2022'),
(59, 'fgs/1419', 'FGS/STUD/2013/10210', 'GOLD OSAMUDIEME', 'Nursery 1', '0', '0', '0', '2021/2022'),
(60, 'fgs/510', 'FGS/STUD/2013/10209', 'GOLD OSARENTI', 'Nursery 1', '0', '0', '0', '2021/2022'),
(61, 'fgs/8135', 'FGS/STUD/2017/10394', 'IYANDA FIYINFOLUWA', 'Nursery 1', '0', '0', '0', '2021/2022'),
(62, 'fgs/9407', 'FGS/STUD/2019/10514', 'UBA CALEB', 'Nursery 1', '0', '0', '0', '2021/2022'),
(63, 'fgs/1232', 'FGS/STUD/2020/10516', 'OGUNFOLU FAWAAZ', 'Nursery 1', '0', '0', '0', '2021/2022'),
(64, 'fgs/2970', 'FGS/STUD/2017/10449', 'ADEFISAN SUCCESS', 'Nursery 1', '0', '0', '0', '2021/2022'),
(65, 'fgs/250', 'FGS/STUD/2017/10423', 'ADEOYE ISRAEL', 'Nursery 1', '0', '0', '0', '2021/2022'),
(66, 'fgs/7091', 'FGS/STUD/2019/10515', 'KAYODE ISEOLUWA', 'Nursery 1', '0', '0', '0', '2021/2022'),
(67, 'fgs/3771', 'FGS/STUD/2017/10443', 'JOSEPH JAMES', 'Nursery 1', '0', '0', '0', '2021/2022'),
(68, 'fgs/8570', 'FGS/STUD/2014/10325', 'ADEEKO ATINUKE', 'Nursery 1', '0', '0', '0', '2021/2022'),
(69, 'fgs/2001', 'FGS/STUD/2014/10345', 'ALAO DANIELLA', 'Nursery 1', '0', '0', '0', '2021/2022'),
(70, 'fgs/3837', 'FGS/STUD/2014/10368', 'OHAGU AUGUSTA', 'Nursery 1', '0', '0', '0', '2021/2022'),
(71, 'fgs/772', 'FGS/STUD/2018/10440', 'ANIMAKU HADASSAH', 'Nursery 1', '0', '0', '0', '2021/2022'),
(72, 'fgs/2392', 'FGS/STUD/2018/10387', 'OROBIYI SILVER', 'Nursery 1', '0', '0', '0', '2021/2022'),
(73, 'fgs/9558', 'FGS/STUD/2017/10333', 'ANIPUPO ADESEWA', 'Nursery 1', '0', '0', '0', '2021/2022'),
(74, 'fgs/3952', 'FGS/STUD/2021/10550', 'ADEREMI GAIUS', 'Nursery 1', '0', '0', '0', '2021/2022'),
(75, 'fgs/6981', 'FGS/STUD/2021/10551', 'JOHN ELIZABETH TOBILOBA', 'Nursery 1', '0', '0', '0', '2021/2022'),
(76, 'fgs/5904', 'FGS/STUD/2019/10518', 'ODEYEMI DANIEL', 'Nursery 1', '0', '0', '0', '2021/2022'),
(77, 'fgs/7740', 'FGS/STUD/2016/10330', 'ONIFADE TOYIN', 'Nursery 1', '0', '0', '0', '2021/2022'),
(78, 'fgs/7195', 'FGS/STUD/2015/10301', 'ANIPUPO OLARENWAJU', 'Nursery 1', '0', '0', '0', '2021/2022'),
(79, 'fgs/2634', 'FGS/STUD/2021/10552', 'OBUSEZ EMMANUEL', 'Nursery 1', '0', '0', '0', '2021/2022'),
(80, 'fgs/2153', 'FGS/STUD/2015/10231', 'OJO IFEOLUWA', 'Nursery 1', '0', '0', '0', '2021/2022'),
(81, 'fgs/2106', 'FGS/STUD/2019/10051', 'OHAGU EMMANUEL', 'Nursery 1', '0', '0', '0', '2021/2022'),
(82, 'fgs/4422', 'FGS/STUD/2014/10360', 'OHAGU MARY', 'Nursery 1', '0', '0', '0', '2021/2022'),
(83, 'fgs/329', 'FGS/STUD/2018/10396', 'OBIORAH EMEKA', 'Nursery 1', '0', '0', '0', '2021/2022'),
(84, 'fgs/7484', 'FGS/STUD/2017/10021', 'OKEIYI CHIAMAKA', 'Nursery 1', '0', '0', '0', '2021/2022'),
(85, 'fgs/9606', 'FGS/STUD/2015/10280', 'OKEIYI EBUKA', 'Nursery 1', '0', '0', '0', '2021/2022'),
(86, 'fgs/114', 'FGS/STUD/2018/10044', 'SHARAFADEEN MOZYD', 'Nursery 1', '0', '0', '0', '2021/2022'),
(87, 'fgs/5270', 'FGS/STUD/2021/10554', 'AKINTAYO DAVID', 'Nursery 1', '0', '0', '0', '2021/2022'),
(88, 'fgs/8735', 'FGS/STUD/2019/10521', 'ILORI ISRAEL', 'Nursery 1', '0', '0', '0', '2021/2022'),
(89, 'fgs/6898', 'FGS/STUD/2019/10525', 'ILORI BOLUWATIFE', 'Nursery 1', '0', '0', '0', '2021/2022'),
(90, 'fgs/4469', 'FGS/STUD/2019/10527', 'ILORI BAYONLE', 'Nursery 1', '0', '0', '0', '2021/2022'),
(91, 'fgs/6143', 'FGS/STUD/2019/10524', 'IZUZU ONYEKACHI', 'Nursery 1', '0', '0', '0', '2021/2022'),
(92, 'fgs/2680', 'FGS/STUD/2015/10271', 'ALIMI HABEEB', 'Nursery 1', '0', '0', '0', '2021/2022'),
(93, 'fgs/9213', 'FGS/STUD/2021/10553', 'ADEBAYO DAVID MUSA', 'Nursery 1', '0', '0', '0', '2021/2022'),
(94, 'fgs/4451', 'FGS/STUD/2012/10350', 'ADEOYE ISAAC', 'Nursery 1', '0', '0', '0', '2021/2022'),
(95, 'fgs/5726', 'FGS/STUD/2019/10522', 'ADESHINA TOLULOPE', 'Nursery 1', '0', '0', '0', '2021/2022'),
(96, 'fgs/3315', 'FGS/STUD/2021/10559', 'ABUBAKAR RAHMAT', 'Nursery 1', '0', '0', '0', '2021/2022'),
(97, 'fgs/1522', 'FGS/STUD/2021/10556', 'OYENIYI FIYINFOLUWA', 'Nursery 1', '0', '0', '0', '2021/2022'),
(98, 'fgs/5314', 'FGS/STUD/2021/10558', 'OYENIYI INIOLUWA', 'Nursery 1', '0', '0', '0', '2021/2022'),
(99, 'fgs/3464', 'FGS/STUD/2019/10055', 'AKANNI OPEYEMI', 'Nursery 1', '0', '0', '0', '2021/2022'),
(100, 'fgs/3833', 'FGS/STUD/2019/10061', 'AKINSADEJU DANIEL', 'Nursery 1', '0', '0', '0', '2021/2022'),
(101, 'fgs/9065', 'FGS/STUD/2018/10042', 'ADEBAYO PRECIOUS', 'Nursery 1', '0', '0', '0', '2021/2022'),
(102, 'fgs/4054', 'FGS/STUD/2018/10400', 'ANIMAKU EYIOIZA', 'Nursery 1', '0', '0', '0', '2021/2022'),
(103, 'fgs/6737', 'FGS/STUD/2018/10047', 'ANIMAKU NAOMI', 'Nursery 1', '0', '0', '0', '2021/2022'),
(104, 'fgs/2148', 'FGS/STUD/2018/10062', 'ANIMAKU ISRAEL', 'Nursery 1', '0', '0', '0', '2021/2022'),
(105, 'fgs/6112', 'FGS/STUD/2019/10523', 'OYEJOLA DANIEL', 'Nursery 1', '0', '0', '0', '2021/2022'),
(106, 'fgs/4074', 'FGS/STUD/2021/10557', 'ABUBAKAR FARIDAT', 'Nursery 1', '0', '0', '0', '2021/2022'),
(107, 'fgs/9406', 'FGS/STUD/2017/10031', 'FRANCIS HEZEKIAH', 'Nursery 1', '0', '0', '0', '2021/2022'),
(108, 'fgs/6724', 'FGS/STUD/2019/10053', 'FRANCIS ESTHER', 'Nursery 1', '0', '0', '0', '2021/2022'),
(109, 'fgs/6095', 'FGS/STUD/2021/10503', 'IYAYI GREATER', 'Nursery 1', '0', '0', '0', '2021/2022');

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
  `type` text NOT NULL,
  `qty` text NOT NULL,
  `total` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tracker`
--

INSERT INTO `tracker` (`id`, `trackid`, `name`, `date`, `session`, `term`, `descrip`, `amount`, `mode`, `type`, `qty`, `total`) VALUES
(5, 'fgsexp/3738', 'SALARY', '2021-10-08 10:06:41', '2021/2022', '1st Term', 'IDOWU AND OJETOLA', '35000', 'Bank', 'Full Payment', '', ''),
(6, 'fgsexp/8088', 'LIGHT ', '2021-10-08 10:07:25', '2021/2022', '1st Term', 'NEPA', '5000', 'Bank', 'Full Payment', '', ''),
(7, 'fgsexp/9690', 'BMF BOARD ', '2021-10-08 10:14:05', '2021/2022', '1st Term', 'BOARD', '46000', 'Bank', 'Full Payment', '', ''),
(8, 'fgsexp/277', '3 HDF ', '2021-10-08 10:15:28', '2021/2022', '1st Term', 'HDF', '52500', 'Bank', 'Full Payment', '', ''),
(9, 'fgsexp/7102', '2 HANDLE', '2021-10-08 10:16:56', '2021/2022', '1st Term', 'WARDROPE HANDLE', '1600', 'Bank', 'Full Payment', '', ''),
(10, 'fgsexp/9350', '4 BOARD CUTTING', '2021-10-08 10:30:12', '2021/2022', '1st Term', 'CUTTING', '2800', 'Bank', 'Full Payment', '', ''),
(11, 'fgsexp/1640', '3 HINGIES', '2021-10-08 10:46:47', '2021/2022', '1st Term', 'HINGIES', '1800', 'Bank', 'Full Payment', '', ''),
(12, 'fgsexp/8722', '2 SMALL HANDLE', '2021-10-08 10:49:22', '2021/2022', '1st Term', 'HANDLE', '600', 'Bank', 'Full Payment', '', ''),
(13, 'fgsexp/9354', 'TRANSPORTATION ', '2021-10-08 10:50:08', '2021/2022', '1st Term', 'T FARE', '5000', 'Bank', 'Full Payment', '', ''),
(14, 'fgsexp/9005', 'LOAN REPAYMENT LAPO', '2021-10-08 10:55:07', '2021/2022', '1st Term', 'LAPO', '157000', 'Bank', 'Full Payment', '', ''),
(15, 'fgsexp/6086', 'CONTRIBUTION', '2021-10-08 10:55:56', '2021/2022', '1st Term', 'ESUSU', '40000', 'Bank', 'Full Payment', '', ''),
(16, 'fgsexp/8838', 'carpenter labour', '2021-10-12 07:13:49', '2021/2022', '1st Term', 'workmanship', '12000', 'Bank', 'Full Payment', '', ''),
(17, 'fgsexp/9038', '3 MONITOR', '2021-10-12 07:23:59', '2021/2022', '1st Term', 'MONITORS', '21000', 'Bank', 'Full Payment', '', ''),
(18, 'fgsexp/3672', 'FLASH DRIVE 3', '2021-10-12 07:26:21', '2021/2022', '1st Term', 'FLASH', '9000', 'Bank', 'Full Payment', '', ''),
(19, 'fgsexp/8224', 'SOFTWARE ', '2021-10-12 07:27:51', '2021/2022', '1st Term', 'OFFICE', '1500', 'Bank', 'Full Payment', '', ''),
(20, 'fgsexp/2382', 'USB SPEAKERS', '2021-10-12 07:28:52', '2021/2022', '1st Term', 'SPEAKERS', '9500', 'Bank', 'Full Payment', '', ''),
(21, 'fgsexp/5879', 'TAPE', '2021-10-21 02:26:02', '2021/2022', '1st Term', 'EDGE TAPE', '3500', 'Bank', 'Full Payment', '1', '3500');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `spillover`
--
ALTER TABLE `spillover`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `tracker`
--
ALTER TABLE `tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
