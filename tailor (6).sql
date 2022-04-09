-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2022 at 11:41 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tailor`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`) VALUES
(1, 'Billy', 'Revellame', 'revellame28@gmail.com', 'bluedcoffee', 'a1Bz20ydqelm8m1wql9e1e06ec8e02f0a0074f2fcc6b26303b'),
(2, 'Clark', 'Banaag', 'banaaghub.com', 'clarkpogi', 'a1Bz20ydqelm8m1wql7c6f5bdc16b3748b481fb5ea98bd4ace');

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `id` int(11) NOT NULL,
  `order` int(8) NOT NULL,
  `title` varchar(160) NOT NULL,
  `description` text NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `allDay` varchar(5) NOT NULL,
  `color` varchar(7) NOT NULL,
  `url` varchar(255) NOT NULL,
  `category` varchar(200) NOT NULL,
  `repeat_type` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `repeat_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`id`, `order`, `title`, `description`, `start`, `end`, `allDay`, `color`, `url`, `category`, `repeat_type`, `user_id`, `repeat_id`) VALUES
(1, 0, 'mutangana christian: ', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'true', '#a00000', '../orderedit.php?id=1', 'Orders', '', 1, 0),
(2, 0, ': ', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'true', '#a00000', '../orderedit.php?id=2', 'Orders', '', 1, 0),
(3, 0, ': ', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'true', '#a00000', '../orderedit.php?id=3', 'Orders', '', 1, 0),
(4, 0, 'mutangana christian: oo8989', 'oo8989', '2022-02-19 00:00:00', '2022-02-25 00:00:00', 'true', '#00a014', '../orderedit.php?id=4', 'Orders', '', 1, 0),
(5, 0, ': ', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'true', '#a00000', '../orderedit.php?id=5', 'Orders', '', 0, 0),
(6, 0, ': ', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'true', '#a00000', '../orderedit.php?id=6', 'Orders', '', 0, 0),
(7, 0, ': ', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'true', '#a00000', '../orderedit.php?id=7', 'Orders', '', 0, 0),
(8, 0, 'mutangana christian: ', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'true', '#a00000', '../orderedit.php?id=8', 'Orders', '', 0, 0),
(9, 0, 'mutangana christian: uryuwyruieyruiip', 'uryuwyruieyruiip', '2022-02-10 00:00:00', '2022-03-03 00:00:00', 'true', '#a00000', '../orderedit.php?id=9', 'Orders', '', 0, 0),
(10, 0, 'mutangana christian: ', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'true', '#a00000', '../orderedit.php?id=10', 'Orders', '', 0, 0),
(11, 0, 'mutangana christian: uryuwyruieyruiip', 'uryuwyruieyruiip', '2022-02-12 00:00:00', '2022-02-28 00:00:00', 'true', '#a00000', '../orderedit.php?id=11', 'Orders', '', 1, 0),
(12, 0, 'mutangana christian: ', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'true', '#a00000', '../orderedit.php?id=12', 'Orders', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'Raspberry Pi'),
(2, 'Arduino'),
(3, 'Gizduino'),
(4, 'Sensor'),
(5, 'Module'),
(6, 'Capacitor'),
(7, 'Resistor'),
(8, 'Transistor'),
(9, 'Others'),
(10, 'Banana Pi');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `user_id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sex` tinyint(2) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`user_id`, `fullname`, `address`, `email`, `sex`, `contact`, `username`, `password`) VALUES
(52, 'mutangana christian', 'kicukiro', 'mutangana99@gmail.com', 1, '0788499211', 'nana', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055'),
(53, 'mutangana christian', 'kicukiro', 'mutangana99@gmail.com', 0, '0788499211', 'Clarisse', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(8) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `customer`, `message`, `date`) VALUES
(1, 'mutangana christian', 'Dear mutangana christian,\r\nYour Clothes are ready for collection. Thanks for your patronage', '2022-02-26');

-- --------------------------------------------------------

--
-- Table structure for table `expcat`
--

CREATE TABLE `expcat` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expcat`
--

INSERT INTO `expcat` (`id`, `title`) VALUES
(1, 'Material Purchase'),
(2, 'Staff Salary'),
(3, 'Rent'),
(4, 'Staff Incentive'),
(5, 'Machine Purchase'),
(6, 'Machine Maintenance and Repair'),
(7, 'Electricity'),
(8, 'Generator Fuel'),
(9, 'Generator Maintenance'),
(10, 'Tax, Dues, Security, Waste'),
(11, 'Needle, Tread, Accessory Purchase');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `expcat` int(8) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `amount` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `general_setting`
--

CREATE TABLE `general_setting` (
  `id` int(11) NOT NULL,
  `sitename` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `currency` varchar(4) CHARACTER SET utf8 NOT NULL,
  `sms` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_setting`
--

INSERT INTO `general_setting` (`id`, `sitename`, `email`, `mobile`, `currency`, `sms`) VALUES
(1, 'SARU TECH', 'agbonayeosaru@gmail.com', '07068242918', '$', ' http://sms.marketnaija.com//API/?action=compose&username=mamama&api_key=aaaaaa999999ddddd&sender=sarutech&to=[TO]&message=[MESSAGE] Just Fill Up the full text from your sms api service with replace message with[MESSAGE] and To-Phonenumber with [TO]');

-- --------------------------------------------------------

--
-- Table structure for table `inccat`
--

CREATE TABLE `inccat` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inccat`
--

INSERT INTO `inccat` (`id`, `title`) VALUES
(1, 'Sew  New Cloth'),
(2, 'Repair Cloth'),
(4, 'Training and Tutor'),
(5, 'Machine Repair'),
(6, 'Mass Production');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `inccat` int(8) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `amount` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `inccat`, `description`, `date`, `amount`) VALUES
(1, 1, 'Payment for Order: 9', '2022-02-24', 989898);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`log_id`, `user_id`, `action`, `date`) VALUES
(1, 1, 'added a new product 12 of flmjkrmklm', '2017-11-04 18:25:35'),
(2, 1, 'added a new product 34 of gdrgneknkl', '2017-11-04 18:26:04'),
(3, 1, 'added a new product 78 of bdkj', '2017-11-04 18:26:48'),
(4, 0, 'added a new product 133 of Arduino Meta', '2017-11-05 13:00:22'),
(5, 1, 'added a new product 477 of Sugo Peanuts', '2017-11-05 18:15:15'),
(6, 0, 'added a new product 123 of kmyygk', '2017-11-06 11:21:42'),
(7, 5, 'has logged in the system at ', '2017-11-06 21:53:21'),
(8, 1, '(Administrator) has logged in the system at ', '2017-11-06 21:56:17'),
(9, 5, 'has logged in the system at ', '2017-11-06 22:25:17'),
(10, 1, '(Administrator) has logged in the system at ', '2017-11-06 22:25:38'),
(11, 2, '(Administrator) has logged in the system at ', '2017-11-06 23:22:24'),
(12, 5, 'has logged in the system at ', '2017-11-07 00:08:10'),
(13, 1, '(Administrator) has logged in the system at ', '2017-11-07 10:14:23'),
(14, 1, '(Administrator) has logged in the system at ', '2017-11-07 10:33:43'),
(15, 1, '(Administrator) has logged in the system at ', '2017-11-07 10:36:37'),
(16, 1, '(Administrator) has logged in the system at ', '2017-11-07 10:39:08'),
(17, 1, '(Administrator) has logged in the system at ', '2017-11-07 10:39:41'),
(18, 4, 'has logged in the system at ', '2017-11-07 11:04:22'),
(19, 1, '(Administrator) has logged in the system at ', '2017-11-07 11:04:30'),
(20, 4, 'has logged in the system at ', '2017-11-07 11:44:36'),
(21, 4, 'has logged in the system at ', '2017-11-07 18:32:28'),
(22, 1, '(Administrator) has logged in the system at ', '2017-11-07 18:32:49'),
(23, 4, 'has logged in the system at ', '2017-11-07 18:34:55'),
(24, 1, '(Administrator) has logged in the system at ', '2017-11-07 18:39:23'),
(25, 1, 'added a new product 33 of San Marino Corned Tuna', '2017-11-07 18:40:25'),
(26, 1, 'added a new product 453 of 4535', '2017-11-07 18:43:34'),
(27, 1, '(Administrator) has logged in the system at ', '2017-11-07 19:16:29'),
(28, 1, '(Administrator) has logged in the system at ', '2017-11-07 19:17:07'),
(29, 4, 'has logged in the system at ', '2017-11-07 19:27:49'),
(30, 1, '(Administrator) has logged in the system at ', '2017-11-07 19:28:00'),
(31, 1, 'added 2 of Arduino Metad', '2017-11-07 19:28:43'),
(32, 1, '(Administrator) has logged in the system at ', '2017-11-07 22:40:11'),
(33, 1, 'added a new product 2 of 540 microfarad capacitor', '2017-11-07 22:42:03'),
(34, 1, '(Administrator) has logged in the system at ', '2017-11-07 23:43:49'),
(35, 4, 'has logged in the system at ', '2017-11-08 12:31:38'),
(36, 1, '(Administrator) has logged in the system at ', '2017-11-08 12:45:41'),
(37, 1, '(Administrator) has logged in the system at ', '2017-11-08 13:46:56'),
(38, 4, 'has logged in the system at ', '2017-11-08 13:56:15'),
(39, 4, 'has logged in the system at ', '2017-11-08 14:39:44'),
(40, 1, '(Administrator) has logged in the system at ', '2017-11-08 14:54:05'),
(41, 1, 'added 5 of 540 microfarad capacitor', '2017-11-08 15:04:55'),
(42, 4, 'has logged in the system at ', '2017-11-08 15:21:00'),
(43, 1, '(Administrator) has logged in the system at ', '2017-11-08 15:29:08'),
(44, 1, '(Administrator) has logged in the system at ', '2017-11-08 15:34:28'),
(45, 1, '(Administrator) has logged in the system at ', '2017-11-08 15:38:21'),
(46, 6, 'has logged in the system at ', '2017-11-08 19:29:55'),
(47, 1, '(Administrator) has logged in the system at ', '2017-11-08 19:32:24'),
(48, 6, 'has logged in the system at ', '2017-11-08 20:13:57'),
(49, 6, 'has logged in the system at ', '2017-11-08 20:20:43'),
(50, 1, '(Administrator) has logged in the system at ', '2017-11-08 20:46:23'),
(51, 6, 'has logged in the system at ', '2017-11-08 20:59:18'),
(52, 1, '(Administrator) has logged in the system at ', '2017-11-08 21:32:10'),
(53, 6, 'has logged in the system at ', '2017-11-08 21:34:41'),
(54, 1, '(Administrator) has logged in the system at ', '2017-11-08 21:39:31'),
(55, 1, 'added a new product 34 of Arduino Uno', '2017-11-08 21:40:51'),
(56, 6, 'has logged in the system at ', '2017-11-08 22:18:15'),
(57, 6, 'has logged in the system at ', '2017-11-08 22:19:58'),
(58, 1, '(Administrator) has logged in the system at ', '2017-11-08 22:56:12'),
(59, 6, 'has logged in the system at ', '2017-11-08 22:59:17'),
(60, 6, 'has logged in the system at ', '2017-11-09 15:21:55'),
(61, 6, 'has logged in the system at ', '2017-11-09 15:45:14'),
(62, 6, 'has logged in the system at ', '2017-11-09 15:46:39'),
(63, 6, 'has logged in the system at ', '2017-11-09 15:57:59'),
(64, 6, 'has logged in the system at ', '2017-11-09 16:34:47'),
(65, 6, 'has logged in the system at ', '2017-11-09 17:02:52'),
(66, 6, 'has logged in the system at ', '2017-11-09 19:54:15'),
(67, 6, 'has logged in the system at ', '2017-11-09 21:21:45'),
(68, 1, '(Administrator) has logged in the system at ', '2017-11-10 00:23:49'),
(69, 6, 'has logged in the system at ', '2017-11-10 00:24:25'),
(70, 1, '(Administrator) has logged in the system at ', '2017-11-10 00:54:01'),
(71, 6, 'has logged in the system at ', '2017-11-10 00:54:22'),
(72, 4, 'has logged in the system at ', '2017-11-10 01:38:17'),
(73, 6, 'has logged in the system at ', '2017-11-10 11:00:43'),
(74, 6, 'has logged in the system at ', '2017-11-10 23:53:20'),
(75, 6, 'has logged in the system at ', '2017-11-11 00:00:46'),
(76, 6, 'has logged in the system at ', '2017-11-11 00:10:29'),
(77, 6, 'has logged in the system at ', '2017-11-11 00:26:10'),
(78, 1, '(Administrator) has logged in the system at ', '2017-11-11 01:38:51'),
(79, 6, 'has logged in the system at ', '2017-11-12 01:36:32'),
(80, 6, 'has logged in the system at ', '2017-11-12 21:22:19'),
(81, 1, '(Administrator) has logged in the system at ', '2017-11-12 21:25:48'),
(82, 1, '(Administrator) has logged in the system at ', '2017-11-12 21:26:22'),
(83, 2, '(Administrator) has logged in the system at ', '2017-11-12 21:29:04'),
(84, 6, 'has logged in the system at ', '2017-11-12 21:45:12'),
(85, 2, '(Administrator) has logged in the system at ', '2017-11-12 21:47:14'),
(86, 6, 'has logged in the system at ', '2017-11-12 23:14:12'),
(87, 1, '(Administrator) has logged in the system at ', '2017-11-12 23:19:55'),
(88, 6, 'has logged in the system at ', '2017-11-12 23:22:32'),
(89, 6, 'has logged in the system at ', '2017-11-13 00:17:25'),
(90, 1, '(Administrator) has logged in the system at ', '2017-11-13 00:28:25'),
(91, 1, 'added a new product 150 of Arduino Uno Rec3-1', '2017-11-13 00:31:30'),
(92, 1, 'added a new product 400 of Aruino Mega', '2017-11-13 00:32:19'),
(93, 1, 'added a new product 344 of Arduino Uno 2', '2017-11-13 00:33:17'),
(94, 1, 'added a new product 234 of Raspberry Pi 3', '2017-11-13 00:34:22'),
(95, 1, 'added a new product 456 of Flame Sensor', '2017-11-13 00:35:28'),
(96, 6, 'has logged in the system at ', '2017-11-13 00:38:32'),
(97, 1, '(Administrator) has logged in the system at ', '2017-11-13 08:45:06'),
(98, 6, 'has logged in the system at ', '2017-11-13 08:47:34'),
(99, 1, '(Administrator) has logged in the system at ', '2017-11-13 08:53:46'),
(100, 7, 'has logged in the system at ', '2017-11-13 08:56:45'),
(101, 1, '(Administrator) has logged in the system at ', '2017-11-13 10:40:50'),
(102, 6, 'has logged in the system at ', '2017-11-13 10:42:37'),
(103, 1, '(Administrator) has logged in the system at ', '2017-11-13 10:55:02'),
(104, 6, 'has logged in the system at ', '2017-11-13 10:55:19'),
(105, 1, '(Administrator) has logged in the system at ', '2017-11-13 11:15:27'),
(106, 6, 'has logged in the system at ', '2017-11-13 11:15:38'),
(107, 1, '(Administrator) has logged in the system at ', '2017-11-13 11:31:48'),
(108, 6, 'has logged in the system at ', '2017-11-13 11:55:12'),
(109, 1, '(Administrator) has logged in the system at ', '2017-11-13 11:57:27'),
(110, 6, 'has logged in the system at ', '2017-11-13 11:59:22'),
(111, 1, '(Administrator) has logged in the system at ', '2017-11-13 12:00:16'),
(112, 6, 'has logged in the system at ', '2017-11-13 12:04:41'),
(113, 8, 'has logged in the system at ', '2017-11-13 13:05:00'),
(114, 2, '(Administrator) has logged in the system at ', '2017-11-13 13:16:17'),
(115, 2, 'added a new product 700 of Sensor', '2017-11-13 13:20:38'),
(116, 2, 'added 900 of Arduino Uno 2', '2017-11-13 13:20:57'),
(117, 6, 'has logged in the system at ', '2017-11-13 19:58:52'),
(118, 8, 'has logged in the system at ', '2017-11-13 20:00:59'),
(119, 1, '(Administrator) has logged in the system at ', '2017-11-13 20:01:58'),
(120, 1, '(Administrator) has logged in the system at ', '2017-11-13 21:47:41'),
(121, 6, 'has logged in the system at ', '2017-11-13 21:49:55'),
(122, 1, '(Administrator) has logged in the system at ', '2017-11-13 21:52:28'),
(123, 1, '(Administrator) has logged in the system at ', '2017-11-14 16:01:08'),
(124, 6, 'has logged in the system at ', '2017-11-17 01:43:42'),
(125, 6, 'has logged in the system at ', '2017-11-17 02:15:46'),
(126, 8, 'has logged in the system at ', '2017-11-21 20:19:39'),
(127, 8, 'has logged in the system at ', '2017-11-25 23:31:53'),
(128, 0, 'has logged in the system at ', '2022-01-30 18:13:16'),
(129, 0, 'has logged in the system at ', '2022-01-30 18:13:16'),
(130, 0, 'has logged in the system at ', '2022-02-05 00:09:39'),
(131, 0, 'has logged in the system at ', '2022-02-05 00:19:39'),
(132, 0, 'has logged in the system at ', '2022-02-08 00:47:35'),
(133, 0, 'has logged in the system at ', '2022-02-08 01:04:54'),
(134, 0, 'has logged in the system at ', '2022-02-09 16:55:08'),
(135, 0, 'has logged in the system at ', '2022-02-13 00:55:29'),
(136, 0, 'has logged in the system at ', '2022-02-13 21:49:33'),
(137, 0, 'has logged in the system at ', '2022-02-14 00:02:56'),
(138, 0, 'has logged in the system at ', '2022-02-14 01:21:02'),
(139, 0, 'has logged in the system at ', '2022-02-16 18:26:01'),
(140, 0, 'has logged in the system at ', '2022-02-16 18:33:37'),
(141, 0, 'has logged in the system at ', '2022-02-24 19:08:05'),
(142, 0, 'has logged in the system at ', '2022-02-24 19:48:38'),
(143, 0, 'has logged in the system at ', '2022-02-24 22:30:28'),
(144, 0, 'has logged in the system at ', '2022-02-24 22:33:48'),
(145, 0, 'has logged in the system at ', '2022-02-24 22:39:51'),
(146, 0, 'has logged in the system at ', '2022-02-26 01:43:50'),
(147, 0, 'has logged in the system at ', '2022-02-26 01:46:46'),
(148, 0, 'has logged in the system at ', '2022-02-26 01:53:52'),
(149, 0, 'has logged in the system at ', '2022-02-26 02:04:48'),
(150, 0, 'has logged in the system at ', '2022-02-27 00:46:55'),
(151, 0, 'has logged in the system at ', '2022-02-27 17:33:09'),
(152, 0, 'has logged in the system at ', '2022-02-27 17:37:55'),
(153, 0, 'has logged in the system at ', '2022-02-27 17:48:46'),
(154, 0, 'has logged in the system at ', '2022-02-27 18:21:40'),
(155, 0, 'has logged in the system at ', '2022-03-01 01:55:01'),
(156, 0, 'has logged in the system at ', '2022-03-05 18:05:09'),
(157, 0, 'has logged in the system at ', '2022-03-05 18:38:22'),
(158, 0, 'has logged in the system at ', '2022-03-05 22:04:16'),
(159, 0, 'has logged in the system at ', '2022-03-06 00:20:38'),
(160, 0, 'has logged in the system at ', '2022-03-06 00:21:04'),
(161, 0, 'has logged in the system at ', '2022-03-06 00:21:52'),
(162, 0, 'has logged in the system at ', '2022-03-07 16:45:57'),
(163, 0, 'has logged in the system at ', '2022-03-12 04:27:10'),
(164, 0, 'has logged in the system at ', '2022-03-21 14:37:02'),
(165, 0, 'has logged in the system at ', '2022-03-21 16:28:22'),
(166, 0, 'has logged in the system at ', '2022-03-21 16:51:06'),
(167, 0, 'has logged in the system at ', '2022-03-22 07:02:13'),
(168, 0, 'has logged in the system at ', '2022-03-22 16:02:07'),
(169, 0, 'has logged in the system at ', '2022-03-23 20:23:35'),
(170, 0, 'has logged in the system at ', '2022-03-24 04:38:01'),
(171, 0, 'has logged in the system at ', '2022-03-24 07:31:30'),
(172, 0, 'has logged in the system at ', '2022-03-29 16:53:36'),
(173, 0, 'has logged in the system at ', '2022-03-29 17:50:16'),
(174, 0, 'has logged in the system at ', '2022-03-30 06:27:14'),
(175, 0, 'has logged in the system at ', '2022-03-30 21:58:32'),
(176, 0, 'has logged in the system at ', '2022-03-30 22:00:21'),
(177, 0, 'has logged in the system at ', '2022-03-30 22:04:22'),
(178, 0, 'has logged in the system at ', '2022-03-30 22:04:33'),
(179, 0, 'has logged in the system at ', '2022-03-30 22:05:07'),
(180, 0, 'has logged in the system at ', '2022-03-30 22:05:54'),
(181, 0, 'has logged in the system at ', '2022-03-30 22:09:33'),
(182, 55, 'has logged in the system at ', '2022-03-30 22:21:00'),
(183, 55, 'has logged in the system at ', '2022-03-31 04:27:28'),
(184, 56, 'has logged in the system at ', '2022-04-04 16:56:39');

-- --------------------------------------------------------

--
-- Table structure for table `measurement`
--

CREATE TABLE `measurement` (
  `measurement_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `part_id` int(8) NOT NULL,
  `measurement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `measurement`
--

INSERT INTO `measurement` (`measurement_id`, `customer_id`, `part_id`, `measurement`) VALUES
(1, 3, 14, '78'),
(2, 3, 15, '98'),
(3, 3, 16, '87'),
(4, 3, 17, '98'),
(5, 3, 18, '7'),
(6, 3, 19, '9'),
(7, 3, 20, '877'),
(8, 3, 21, '988'),
(9, 3, 38, '7'),
(10, 3, 39, '8'),
(11, 3, 40, '9'),
(12, 3, 41, '6'),
(13, 3, 42, '4'),
(14, 3, 43, '9'),
(15, 3, 44, '00'),
(16, 3, 45, '76'),
(17, 3, 47, '76'),
(18, 3, 48, '87'),
(19, 3, 49, '87'),
(20, 3, 50, '788'),
(21, 3, 51, '89'),
(22, 3, 52, 'i9i'),
(23, 3, 53, '999'),
(24, 3, 54, '00'),
(25, 4, 14, ''),
(26, 4, 15, ''),
(27, 4, 16, ''),
(28, 4, 17, ''),
(29, 4, 18, ''),
(30, 4, 19, ''),
(31, 4, 20, ''),
(32, 4, 21, ''),
(33, 4, 38, ''),
(34, 4, 39, ''),
(35, 4, 40, ''),
(36, 4, 41, ''),
(37, 4, 42, ''),
(38, 4, 43, ''),
(39, 4, 44, ''),
(40, 4, 45, ''),
(41, 4, 47, ''),
(42, 4, 48, ''),
(43, 4, 49, ''),
(44, 4, 50, ''),
(45, 4, 51, ''),
(46, 4, 52, ''),
(47, 4, 53, ''),
(48, 4, 54, ''),
(49, 6, 14, '78'),
(50, 6, 15, '98'),
(51, 6, 16, '87'),
(52, 6, 17, '98'),
(53, 6, 18, '7'),
(54, 6, 19, '9'),
(55, 6, 20, '877'),
(56, 6, 21, '988'),
(57, 6, 38, '7'),
(58, 6, 39, '8'),
(59, 6, 40, '9'),
(60, 6, 41, '6'),
(61, 6, 42, '4'),
(62, 6, 43, '9'),
(63, 6, 44, '00'),
(64, 6, 45, '76'),
(65, 6, 47, '76'),
(66, 6, 48, '87'),
(67, 6, 49, '87'),
(68, 6, 50, '788'),
(69, 6, 51, '89'),
(70, 6, 52, 'i9i'),
(71, 6, 53, '999'),
(72, 6, 54, '00'),
(73, 12, 14, ''),
(74, 12, 15, ''),
(75, 12, 16, ''),
(76, 12, 17, ''),
(77, 12, 18, ''),
(78, 12, 19, ''),
(79, 12, 20, ''),
(80, 12, 21, ''),
(81, 12, 38, ''),
(82, 12, 39, ''),
(83, 12, 40, ''),
(84, 12, 41, ''),
(85, 12, 42, ''),
(86, 12, 43, ''),
(87, 12, 44, ''),
(88, 12, 45, ''),
(89, 12, 47, ''),
(90, 12, 48, ''),
(91, 12, 49, ''),
(92, 12, 50, ''),
(93, 12, 51, ''),
(94, 12, 52, ''),
(95, 12, 53, ''),
(96, 12, 54, ''),
(97, 12, 14, ''),
(98, 12, 15, ''),
(99, 12, 16, ''),
(100, 12, 17, ''),
(101, 12, 18, ''),
(102, 12, 19, ''),
(103, 12, 20, ''),
(104, 12, 21, ''),
(105, 12, 38, ''),
(106, 12, 39, ''),
(107, 12, 40, ''),
(108, 12, 41, ''),
(109, 12, 42, ''),
(110, 12, 43, ''),
(111, 12, 44, ''),
(112, 12, 45, ''),
(113, 12, 47, ''),
(114, 12, 48, ''),
(115, 12, 49, ''),
(116, 12, 50, ''),
(117, 12, 51, ''),
(118, 12, 52, ''),
(119, 12, 53, ''),
(120, 12, 54, ''),
(121, 12, 14, ''),
(122, 12, 15, ''),
(123, 12, 16, ''),
(124, 12, 17, ''),
(125, 12, 18, ''),
(126, 12, 19, ''),
(127, 12, 20, ''),
(128, 12, 21, ''),
(129, 12, 38, ''),
(130, 12, 39, ''),
(131, 12, 40, ''),
(132, 12, 41, ''),
(133, 12, 42, ''),
(134, 12, 43, ''),
(135, 12, 44, ''),
(136, 12, 45, ''),
(137, 12, 47, ''),
(138, 12, 48, ''),
(139, 12, 49, ''),
(140, 12, 50, ''),
(141, 12, 51, ''),
(142, 12, 52, ''),
(143, 12, 53, ''),
(144, 12, 54, ''),
(145, 14, 14, ''),
(146, 14, 15, ''),
(147, 14, 16, ''),
(148, 14, 17, ''),
(149, 14, 18, ''),
(150, 14, 19, ''),
(151, 14, 20, ''),
(152, 14, 21, ''),
(153, 14, 38, ''),
(154, 14, 39, ''),
(155, 14, 40, ''),
(156, 14, 41, ''),
(157, 14, 42, ''),
(158, 14, 43, ''),
(159, 14, 44, ''),
(160, 14, 45, ''),
(161, 14, 47, ''),
(162, 14, 48, ''),
(163, 14, 49, ''),
(164, 14, 50, ''),
(165, 14, 51, ''),
(166, 14, 52, ''),
(167, 14, 53, ''),
(168, 14, 54, ''),
(169, 14, 14, ''),
(170, 14, 15, ''),
(171, 14, 16, ''),
(172, 14, 17, ''),
(173, 14, 18, ''),
(174, 14, 19, ''),
(175, 14, 20, ''),
(176, 14, 21, ''),
(177, 14, 38, ''),
(178, 14, 39, ''),
(179, 14, 40, ''),
(180, 14, 41, ''),
(181, 14, 42, ''),
(182, 14, 43, ''),
(183, 14, 44, ''),
(184, 14, 45, ''),
(185, 14, 47, ''),
(186, 14, 48, ''),
(187, 14, 49, ''),
(188, 14, 50, ''),
(189, 14, 51, ''),
(190, 14, 52, ''),
(191, 14, 53, ''),
(192, 14, 54, ''),
(193, 14, 14, ''),
(194, 14, 15, ''),
(195, 14, 16, ''),
(196, 14, 17, ''),
(197, 14, 18, ''),
(198, 14, 19, ''),
(199, 14, 20, ''),
(200, 14, 21, ''),
(201, 14, 38, ''),
(202, 14, 39, ''),
(203, 14, 40, ''),
(204, 14, 41, ''),
(205, 14, 42, ''),
(206, 14, 43, ''),
(207, 14, 44, ''),
(208, 14, 45, ''),
(209, 14, 47, ''),
(210, 14, 48, ''),
(211, 14, 49, ''),
(212, 14, 50, ''),
(213, 14, 51, ''),
(214, 14, 52, ''),
(215, 14, 53, ''),
(216, 14, 54, ''),
(217, 0, 0, '155.00'),
(218, 0, 0, 'kiali'),
(219, 0, 0, 'Manila City'),
(220, 0, 0, ''),
(221, 20, 14, ''),
(222, 20, 15, ''),
(223, 20, 16, ''),
(224, 20, 17, ''),
(225, 20, 18, ''),
(226, 20, 19, ''),
(227, 20, 20, ''),
(228, 20, 21, ''),
(229, 20, 38, ''),
(230, 20, 39, ''),
(231, 20, 40, ''),
(232, 20, 41, ''),
(233, 20, 42, ''),
(234, 20, 43, ''),
(235, 20, 44, ''),
(236, 20, 45, ''),
(237, 20, 47, ''),
(238, 20, 48, ''),
(239, 20, 49, ''),
(240, 20, 50, ''),
(241, 20, 51, ''),
(242, 20, 52, ''),
(243, 20, 53, ''),
(244, 20, 54, ''),
(245, 22, 14, ''),
(246, 22, 15, ''),
(247, 22, 16, ''),
(248, 22, 17, ''),
(249, 22, 18, ''),
(250, 22, 19, ''),
(251, 22, 20, ''),
(252, 22, 21, ''),
(253, 22, 38, ''),
(254, 22, 39, ''),
(255, 22, 40, ''),
(256, 22, 41, ''),
(257, 22, 42, ''),
(258, 22, 43, ''),
(259, 22, 44, ''),
(260, 22, 45, ''),
(261, 22, 47, ''),
(262, 22, 48, ''),
(263, 22, 49, ''),
(264, 22, 50, ''),
(265, 22, 51, ''),
(266, 22, 52, ''),
(267, 22, 53, ''),
(268, 22, 54, ''),
(269, 23, 14, ''),
(270, 23, 15, ''),
(271, 23, 16, ''),
(272, 23, 17, ''),
(273, 23, 18, ''),
(274, 23, 19, ''),
(275, 23, 20, ''),
(276, 23, 21, ''),
(277, 23, 38, ''),
(278, 23, 39, ''),
(279, 23, 40, ''),
(280, 23, 41, ''),
(281, 23, 42, ''),
(282, 23, 43, ''),
(283, 23, 44, ''),
(284, 23, 45, ''),
(285, 23, 47, ''),
(286, 23, 48, ''),
(287, 23, 49, ''),
(288, 23, 50, ''),
(289, 23, 51, ''),
(290, 23, 52, ''),
(291, 23, 53, ''),
(292, 23, 54, ''),
(293, 24, 14, ''),
(294, 24, 15, ''),
(295, 24, 16, ''),
(296, 24, 17, ''),
(297, 24, 18, ''),
(298, 24, 19, ''),
(299, 24, 20, ''),
(300, 24, 21, ''),
(301, 24, 38, ''),
(302, 24, 39, ''),
(303, 24, 40, ''),
(304, 24, 41, ''),
(305, 24, 42, ''),
(306, 24, 43, ''),
(307, 24, 44, ''),
(308, 24, 45, ''),
(309, 24, 47, ''),
(310, 24, 48, ''),
(311, 24, 49, ''),
(312, 24, 50, ''),
(313, 24, 51, ''),
(314, 24, 52, ''),
(315, 24, 53, ''),
(316, 24, 54, ''),
(317, 30, 14, ''),
(318, 30, 15, ''),
(319, 30, 16, ''),
(320, 30, 17, ''),
(321, 30, 18, ''),
(322, 30, 19, ''),
(323, 30, 20, ''),
(324, 30, 21, ''),
(325, 30, 38, ''),
(326, 30, 39, ''),
(327, 30, 40, ''),
(328, 30, 41, ''),
(329, 30, 42, ''),
(330, 30, 43, ''),
(331, 30, 44, ''),
(332, 30, 45, ''),
(333, 30, 47, ''),
(334, 30, 48, ''),
(335, 30, 49, ''),
(336, 30, 50, ''),
(337, 30, 51, ''),
(338, 30, 52, ''),
(339, 30, 53, ''),
(340, 30, 54, ''),
(341, 30, 14, ''),
(342, 30, 15, ''),
(343, 30, 16, ''),
(344, 30, 17, ''),
(345, 30, 18, ''),
(346, 30, 19, ''),
(347, 30, 20, ''),
(348, 30, 21, ''),
(349, 30, 38, ''),
(350, 30, 39, ''),
(351, 30, 40, ''),
(352, 30, 41, ''),
(353, 30, 42, ''),
(354, 30, 43, ''),
(355, 30, 44, ''),
(356, 30, 45, ''),
(357, 30, 47, ''),
(358, 30, 48, ''),
(359, 30, 49, ''),
(360, 30, 50, ''),
(361, 30, 51, ''),
(362, 30, 52, ''),
(363, 30, 53, ''),
(364, 30, 54, ''),
(365, 32, 4, ''),
(366, 32, 5, ''),
(367, 32, 6, ''),
(368, 32, 7, ''),
(369, 32, 8, ''),
(370, 32, 9, ''),
(371, 32, 10, ''),
(372, 32, 11, ''),
(373, 32, 12, ''),
(374, 32, 13, ''),
(375, 32, 64, ''),
(376, 32, 65, ''),
(377, 32, 22, ''),
(378, 32, 23, ''),
(379, 32, 24, ''),
(380, 32, 25, ''),
(381, 32, 26, ''),
(382, 32, 27, ''),
(383, 32, 28, ''),
(384, 32, 29, ''),
(385, 32, 30, ''),
(386, 32, 31, ''),
(387, 32, 32, ''),
(388, 32, 33, ''),
(389, 32, 34, ''),
(390, 32, 35, ''),
(391, 32, 36, ''),
(392, 32, 37, ''),
(393, 32, 46, ''),
(394, 32, 55, ''),
(395, 32, 56, ''),
(396, 32, 57, ''),
(397, 32, 59, ''),
(398, 32, 58, '44'),
(399, 32, 60, '436'),
(400, 32, 61, '466'),
(401, 32, 62, '466'),
(402, 33, 14, '78'),
(403, 33, 15, '8'),
(404, 33, 16, ''),
(405, 33, 17, ''),
(406, 33, 18, ''),
(407, 33, 19, ''),
(408, 33, 20, ''),
(409, 33, 21, ''),
(410, 33, 38, ''),
(411, 33, 39, ''),
(412, 33, 40, ''),
(413, 33, 41, ''),
(414, 33, 42, ''),
(415, 33, 43, ''),
(416, 33, 44, ''),
(417, 33, 45, ''),
(418, 33, 47, ''),
(419, 33, 48, ''),
(420, 33, 49, ''),
(421, 33, 50, ''),
(422, 33, 51, ''),
(423, 33, 52, ''),
(424, 33, 53, ''),
(425, 33, 54, ''),
(426, 34, 14, '78'),
(427, 34, 15, '98'),
(428, 34, 16, '87'),
(429, 34, 17, '98'),
(430, 34, 18, '7'),
(431, 34, 19, '9'),
(432, 34, 20, '877'),
(433, 34, 21, '988'),
(434, 34, 38, '7'),
(435, 34, 39, '8'),
(436, 34, 40, '9'),
(437, 34, 41, '6'),
(438, 34, 42, '4'),
(439, 34, 43, '9'),
(440, 34, 44, '00'),
(441, 34, 45, '76'),
(442, 34, 47, '76'),
(443, 34, 48, '87'),
(444, 34, 49, '87'),
(445, 34, 50, '788'),
(446, 34, 51, '89'),
(447, 34, 52, '9'),
(448, 34, 53, '999'),
(449, 34, 54, '00'),
(450, 35, 14, ''),
(451, 35, 15, ''),
(452, 35, 16, ''),
(453, 35, 17, ''),
(454, 35, 18, ''),
(455, 35, 19, ''),
(456, 35, 20, ''),
(457, 35, 21, ''),
(458, 35, 38, ''),
(459, 35, 39, ''),
(460, 35, 40, ''),
(461, 35, 41, ''),
(462, 35, 42, ''),
(463, 35, 43, ''),
(464, 35, 44, ''),
(465, 35, 45, ''),
(466, 35, 47, ''),
(467, 35, 48, ''),
(468, 35, 49, ''),
(469, 35, 50, ''),
(470, 35, 51, ''),
(471, 35, 52, ''),
(472, 35, 53, ''),
(473, 35, 54, ''),
(474, 36, 4, '121'),
(475, 36, 5, '22'),
(476, 36, 6, '4'),
(477, 36, 7, '8'),
(478, 36, 8, '9'),
(479, 36, 9, '9'),
(480, 36, 10, '9'),
(481, 36, 11, '0'),
(482, 36, 12, '9'),
(483, 36, 13, '0'),
(484, 36, 64, '9'),
(485, 36, 65, '8'),
(486, 36, 22, '9'),
(487, 36, 23, '9'),
(488, 36, 24, '0'),
(489, 36, 25, '0'),
(490, 36, 26, '0'),
(491, 36, 27, '0'),
(492, 36, 28, '7'),
(493, 36, 29, '7'),
(494, 36, 30, '77'),
(495, 36, 31, '7'),
(496, 36, 32, '8'),
(497, 36, 33, '8'),
(498, 36, 34, '8'),
(499, 36, 35, '8'),
(500, 36, 36, '7'),
(501, 36, 37, '7'),
(502, 36, 46, '7'),
(503, 36, 55, '7'),
(504, 36, 56, '7'),
(505, 36, 57, '7'),
(506, 36, 59, '7'),
(507, 36, 58, ''),
(508, 36, 60, ''),
(509, 36, 61, ''),
(510, 36, 62, ''),
(511, 37, 14, '78'),
(512, 37, 15, 'o'),
(513, 37, 16, ''),
(514, 37, 17, ''),
(515, 37, 18, ''),
(516, 37, 19, ''),
(517, 37, 20, ''),
(518, 37, 21, ''),
(519, 37, 38, ''),
(520, 37, 39, ''),
(521, 37, 40, ''),
(522, 37, 41, ''),
(523, 37, 42, ''),
(524, 37, 43, ''),
(525, 37, 44, ''),
(526, 37, 45, ''),
(527, 37, 47, ''),
(528, 37, 48, ''),
(529, 37, 49, ''),
(530, 37, 50, ''),
(531, 37, 51, ''),
(532, 37, 52, ''),
(533, 37, 53, ''),
(534, 37, 54, ''),
(535, 14, 14, ''),
(536, 14, 15, ''),
(537, 14, 16, ''),
(538, 14, 17, ''),
(539, 14, 18, ''),
(540, 14, 19, ''),
(541, 14, 20, ''),
(542, 14, 21, ''),
(543, 14, 38, ''),
(544, 14, 39, ''),
(545, 14, 40, ''),
(546, 14, 41, ''),
(547, 14, 42, ''),
(548, 14, 43, ''),
(549, 14, 44, ''),
(550, 14, 45, ''),
(551, 14, 47, ''),
(552, 14, 48, ''),
(553, 14, 49, ''),
(554, 14, 50, ''),
(555, 14, 51, ''),
(556, 14, 52, ''),
(557, 14, 53, ''),
(558, 14, 54, ''),
(559, 14, 14, ''),
(560, 14, 15, ''),
(561, 14, 16, ''),
(562, 14, 17, ''),
(563, 14, 18, ''),
(564, 14, 19, ''),
(565, 14, 20, ''),
(566, 14, 21, ''),
(567, 14, 38, ''),
(568, 14, 39, ''),
(569, 14, 40, ''),
(570, 14, 41, ''),
(571, 14, 42, ''),
(572, 14, 43, ''),
(573, 14, 44, ''),
(574, 14, 45, ''),
(575, 14, 47, ''),
(576, 14, 48, ''),
(577, 14, 49, ''),
(578, 14, 50, ''),
(579, 14, 51, ''),
(580, 14, 52, ''),
(581, 14, 53, ''),
(582, 14, 54, ''),
(583, 41, 14, ''),
(584, 41, 15, ''),
(585, 41, 16, ''),
(586, 41, 17, ''),
(587, 41, 18, ''),
(588, 41, 19, ''),
(589, 41, 20, ''),
(590, 41, 21, ''),
(591, 41, 38, ''),
(592, 41, 39, ''),
(593, 41, 40, ''),
(594, 41, 41, ''),
(595, 41, 42, ''),
(596, 41, 43, ''),
(597, 41, 44, ''),
(598, 41, 45, ''),
(599, 41, 47, ''),
(600, 41, 48, ''),
(601, 41, 49, ''),
(602, 41, 50, ''),
(603, 41, 51, ''),
(604, 41, 52, ''),
(605, 41, 53, ''),
(606, 41, 54, ''),
(607, 42, 14, ''),
(608, 42, 15, ''),
(609, 42, 16, ''),
(610, 42, 17, ''),
(611, 42, 18, ''),
(612, 42, 19, ''),
(613, 42, 20, ''),
(614, 42, 21, ''),
(615, 42, 38, ''),
(616, 42, 39, ''),
(617, 42, 40, ''),
(618, 42, 41, ''),
(619, 42, 42, ''),
(620, 42, 43, ''),
(621, 42, 44, ''),
(622, 42, 45, ''),
(623, 42, 47, ''),
(624, 42, 48, ''),
(625, 42, 49, ''),
(626, 42, 50, ''),
(627, 42, 51, ''),
(628, 42, 52, ''),
(629, 42, 53, ''),
(630, 42, 54, ''),
(631, 43, 14, ''),
(632, 43, 15, ''),
(633, 43, 16, ''),
(634, 43, 17, ''),
(635, 43, 18, ''),
(636, 43, 19, ''),
(637, 43, 20, ''),
(638, 43, 21, ''),
(639, 43, 38, ''),
(640, 43, 39, ''),
(641, 43, 40, ''),
(642, 43, 41, ''),
(643, 43, 42, ''),
(644, 43, 43, ''),
(645, 43, 44, ''),
(646, 43, 45, ''),
(647, 43, 47, ''),
(648, 43, 48, ''),
(649, 43, 49, ''),
(650, 43, 50, ''),
(651, 43, 51, ''),
(652, 43, 52, ''),
(653, 43, 53, ''),
(654, 43, 54, ''),
(655, 44, 14, ''),
(656, 44, 15, ''),
(657, 44, 16, ''),
(658, 44, 17, ''),
(659, 44, 18, ''),
(660, 44, 19, ''),
(661, 44, 20, ''),
(662, 44, 21, ''),
(663, 44, 38, ''),
(664, 44, 39, ''),
(665, 44, 40, ''),
(666, 44, 41, ''),
(667, 44, 42, ''),
(668, 44, 43, ''),
(669, 44, 44, ''),
(670, 44, 45, ''),
(671, 44, 47, ''),
(672, 44, 48, ''),
(673, 44, 49, ''),
(674, 44, 50, ''),
(675, 44, 51, ''),
(676, 44, 52, ''),
(677, 44, 53, ''),
(678, 44, 54, ''),
(679, 45, 14, ''),
(680, 45, 15, ''),
(681, 45, 16, ''),
(682, 45, 17, ''),
(683, 45, 18, ''),
(684, 45, 19, ''),
(685, 45, 20, ''),
(686, 45, 21, ''),
(687, 45, 38, ''),
(688, 45, 39, ''),
(689, 45, 40, ''),
(690, 45, 41, ''),
(691, 45, 42, ''),
(692, 45, 43, ''),
(693, 45, 44, ''),
(694, 45, 45, ''),
(695, 45, 47, ''),
(696, 45, 48, ''),
(697, 45, 49, ''),
(698, 45, 50, ''),
(699, 45, 51, ''),
(700, 45, 52, ''),
(701, 45, 53, ''),
(702, 45, 54, ''),
(703, 45, 14, ''),
(704, 45, 15, ''),
(705, 45, 16, ''),
(706, 45, 17, ''),
(707, 45, 18, ''),
(708, 45, 19, ''),
(709, 45, 20, ''),
(710, 45, 21, ''),
(711, 45, 38, ''),
(712, 45, 39, ''),
(713, 45, 40, ''),
(714, 45, 41, ''),
(715, 45, 42, ''),
(716, 45, 43, ''),
(717, 45, 44, ''),
(718, 45, 45, ''),
(719, 45, 47, ''),
(720, 45, 48, ''),
(721, 45, 49, ''),
(722, 45, 50, ''),
(723, 45, 51, ''),
(724, 45, 52, ''),
(725, 45, 53, ''),
(726, 45, 54, ''),
(727, 45, 14, ''),
(728, 45, 15, ''),
(729, 45, 16, ''),
(730, 45, 17, ''),
(731, 45, 18, ''),
(732, 45, 19, ''),
(733, 45, 20, ''),
(734, 45, 21, ''),
(735, 45, 38, ''),
(736, 45, 39, ''),
(737, 45, 40, ''),
(738, 45, 41, ''),
(739, 45, 42, ''),
(740, 45, 43, ''),
(741, 45, 44, ''),
(742, 45, 45, ''),
(743, 45, 47, ''),
(744, 45, 48, ''),
(745, 45, 49, ''),
(746, 45, 50, ''),
(747, 45, 51, ''),
(748, 45, 52, ''),
(749, 45, 53, ''),
(750, 45, 54, ''),
(751, 0, 14, ''),
(752, 0, 15, ''),
(753, 0, 16, ''),
(754, 0, 17, ''),
(755, 0, 18, ''),
(756, 0, 19, ''),
(757, 0, 20, ''),
(758, 0, 21, ''),
(759, 0, 38, ''),
(760, 0, 39, ''),
(761, 0, 40, ''),
(762, 0, 41, ''),
(763, 0, 42, ''),
(764, 0, 43, ''),
(765, 0, 44, ''),
(766, 0, 45, ''),
(767, 0, 47, ''),
(768, 0, 48, ''),
(769, 0, 49, ''),
(770, 0, 50, ''),
(771, 0, 51, ''),
(772, 0, 52, ''),
(773, 0, 53, ''),
(774, 0, 54, ''),
(775, 0, 14, ''),
(776, 0, 15, ''),
(777, 0, 16, ''),
(778, 0, 17, ''),
(779, 0, 18, ''),
(780, 0, 19, ''),
(781, 0, 20, ''),
(782, 0, 21, ''),
(783, 0, 38, ''),
(784, 0, 39, ''),
(785, 0, 40, ''),
(786, 0, 41, ''),
(787, 0, 42, ''),
(788, 0, 43, ''),
(789, 0, 44, ''),
(790, 0, 45, ''),
(791, 0, 47, ''),
(792, 0, 48, ''),
(793, 0, 49, ''),
(794, 0, 50, ''),
(795, 0, 51, ''),
(796, 0, 52, ''),
(797, 0, 53, ''),
(798, 0, 54, ''),
(799, 0, 14, ''),
(800, 0, 15, ''),
(801, 0, 16, ''),
(802, 0, 17, ''),
(803, 0, 18, ''),
(804, 0, 19, ''),
(805, 0, 20, ''),
(806, 0, 21, ''),
(807, 0, 38, ''),
(808, 0, 39, ''),
(809, 0, 40, ''),
(810, 0, 41, ''),
(811, 0, 42, ''),
(812, 0, 43, ''),
(813, 0, 44, ''),
(814, 0, 45, ''),
(815, 0, 47, ''),
(816, 0, 48, ''),
(817, 0, 49, ''),
(818, 0, 50, ''),
(819, 0, 51, ''),
(820, 0, 52, ''),
(821, 0, 53, ''),
(822, 0, 54, '');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(8) NOT NULL,
  `customer` int(8) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `paid` decimal(11,2) NOT NULL,
  `balance` decimal(11,2) NOT NULL,
  `received_by` int(11) NOT NULL,
  `date_received` date DEFAULT NULL,
  `completed` varchar(10) DEFAULT 'No',
  `date_collected` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `total_qty` varchar(30) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `prod_id`, `prod_qty`, `total_qty`, `total`, `user_id`, `order_id`) VALUES
(55, 13, 1, '334', '434.00', 6, '1'),
(56, 11, 1, '149', '125.00', 6, '1'),
(57, 12, 1, '397', '155.00', 6, '1'),
(58, 11, 1, '149', '125.00', 6, '1'),
(59, 13, 1, '329', '434.00', 6, '1'),
(60, 13, 1, '328', '434.00', 6, '1'),
(61, 13, 1, '327', '434.00', 6, '1'),
(62, 12, 2, '395', '310.00', 6, '1'),
(63, 13, 2, '325', '868.00', 6, '1'),
(64, 13, 1, '324', '434.00', 6, '1'),
(65, 11, 1, '148', '125.00', 6, '1'),
(66, 13, 1, '323', '434.00', 6, '1'),
(67, 11, 1, '147', '125.00', 6, '1'),
(68, 12, 1, '394', '155.00', 6, '1'),
(69, 12, 1, '393', '155.00', 6, '1'),
(70, 13, 1, '322', '434.00', 7, '1'),
(71, 11, 1, '146', '125.00', 7, '1'),
(72, 13, 1, '321', '434.00', 7, '1'),
(73, 13, 1, '320', '434.00', 7, '1'),
(74, 13, 1, '319', '434.00', 7, '1'),
(75, 13, 1, '318', '434.00', 6, '1'),
(76, 13, 3, '315', '1302.00', 6, '1'),
(77, 13, 1, '314', '434.00', 6, '1'),
(78, 13, 1, '313', '434.00', 6, '1'),
(80, 13, 1, '311', '434.00', 6, '1'),
(81, 13, 2, '309', '868.00', 6, '1'),
(83, 14, 1, '233', '760.00', 6, '1'),
(84, 13, 1, '308', '434.00', 6, '1'),
(85, 15, 1, '455', '455.00', 6, '1'),
(86, 11, 1, '145', '125.00', 6, '1'),
(87, 13, 1, '306', '434.00', 6, '1'),
(88, 13, 1, '304', '434.00', 6, '1'),
(89, 13, 1, '303', '434.00', 6, '1'),
(90, 13, 1, '302', '434.00', 6, '1'),
(91, 14, 1, '232', '760.00', 6, '1'),
(92, 13, 1, '300', '434.00', 6, '1'),
(93, 14, 10, '222', '7600.00', 8, '1'),
(94, 13, 200, '0', '86800.00', 8, '1'),
(95, 13, 300, '0', '130200.00', 8, '1'),
(96, 11, 1, '144', '125.00', 6, '1'),
(97, 11, 144, '0', '18000.00', 6, '1'),
(98, 15, 1, '454', '455.00', 5, ''),
(99, 15, 1, '454', '455.00', 6, ''),
(100, 16, 1, '', '1500.00', 6, ''),
(101, 12, 1, '392', '155.00', 8, '1'),
(102, 12, 1, '391', '155.00', 8, '1'),
(103, 15, 1, '454', '455.00', 8, ''),
(104, 12, 1, '390', '155.00', 0, '1'),
(105, 15, 1, '454', '455.00', 0, '1'),
(106, 14, 1, '221', '760.00', 0, '1'),
(126, 15, 1, '453', '455.00', 0, '1'),
(158, 12, 1, '', '155.00', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `part`
--

CREATE TABLE `part` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `part`
--

INSERT INTO `part` (`id`, `title`, `type`, `description`, `image`) VALUES
(3, 'NECK', 7, '  Place two fingers between the tape measure and the neck as the pictures show, and make sure you can move the tape easily. Do not tighten the tape measure. Make sure that the tape is at the base of the neck where the neck and shoulders meet or at the height where the collar would be if you were wearing a shirt.', 'neck.jpg'),
(4, 'CHEST', 1, ' Stand up straight, relax and take deep breath with hands down at your side. The chest measurement should be taken around the chest under the armpits. Make sure the tape is parallel and you can move the tape easily. Do not tighten the tape measure. Avoid having thick clothes on when measuring.', 'chest.jpg'),
(5, 'WAIST', 1, ' Stand up in a relaxed posture, do not hold your breath or hold your stomach in. If you do not have beer belly, the waist measurement should be taken around the waist at the narrowest point. If you have beer belly, you should measure the widest point. Make sure you can move the tape easily. Do not tighten the tape measure.', 'waist.jpg'),
(6, 'HIPS', 1, ' Take out all of the stuff in the front and back pockets your trouser. The hip measurement should be taken around the hips at the widest point. Stand up in a relaxed posture, and keep the tape parallel. Do not tighten the tape measure. Make sure you can move the tape easily. ', 'hips.jpg'),
(7, 'SHOULDER', 1, ' Stand up in a relaxed posture. Measure across the top of the shoulder from one edge to the other. Ensure you take the curved contour over the top of the shoulders as shown. If you are wearing your best fitted shirt measure up to the shoulder seams', 'shoulder.jpg'),
(8, 'SLEEVE LENGTH', 1, ' The sleeve measurement should be taken from exactly the same point you used earlier for the \"Shoulder\" measurement. Measure from tip of shoulder to a point at the wrist where you want the sleeve to end. Do not bend your arms. If you want to match your dress shirt with a suit, you should measure the suit sleeve length you want, and then add one (1) centimeter .That will be the shirt\'s sleeve length.\n', 'sleeve-length.jpg'),
(9, 'SHORT SLEEVE LENGTH ', 1, ' Measure with arm at your side, from the tip of the shoulder to a point on the outside of the arm where you want the sleeve to end. ', 'short-sleeve-length.jpg'),
(10, 'WRIST/CUFF ', 1, ' Measure the actual wrist size around your wrist bone. You may also consider adding Â¼\" to Â½\" to your size if you wear medium to heavier watches. ', 'wrist-cuff.jpg'),
(11, 'BICEP ', 1, ' widest point. This is normally taken about 15cm to 18 cm from the tip of the shoulder seam. This is the sleeve width of the largest part of your arm. **Do not flex your bicep.** ', 'biceps.jpg'),
(12, 'SHIRT LENGTH ', 1, ' Stand up in a relaxed posture. Measure from the topmost point of the shoulder at a point near the nape at the collar seam, along the front of your body, to a point where you want the shirt to end. ', 'shirt-length.jpg'),
(13, ' ARMHOLE ', 1, ' Place the tape measure under your armpit and around the top of your arm. To ensure a comfortable fit, take the armhole measurement with one finger inside the tape measure. ', 'arm-hole.jpg'),
(14, 'WAIST', 3, ' Wearing trousers and a shirt put the measuring tape around your waist at the height were you would wear your pants and adjust to your designed snugness with room for a finger. Make sure the tape is snug and does not ride over the waistband but you should be able to put your index finger inside the tape.  ', 'touser-waist.jpg'),
(15, 'HIPS ', 3, ' Wearing trousers, measure around the fullest part of your hips, placing a finger between your body and the tape. Make sure the tape is straight at all times. Make sure your pockets are empty and the tape is not restrictive. As a guide, you should not make the tape too snug. You only just need to be able to feel the tape when measuring.', 'touser-hip.jpg'),
(16, 'CROTCH', 3, ' Measure from the top middle of the back pants waist (see point A) all along the crotch seam through your legs until the top of front waist (see point B)', 'touser-crotch.jpg'),
(17, 'THIGH WIDTH ', 3, ' Wearing trousers, empty your pockets then, start at the top of your inseam, measure around your thigh with room for a finger.', 'touser-thigh-width..jpg'),
(18, 'TROUSER LENGTH', 3, ' Measure from the top of pants waist all along the side pant seam until the bottom of your pants or roughly 1 inch from the ground', 'touser-length.jpg'),
(19, ' INSEAM ', 3, ' Measure from the lowest part of your crotch area to the floor.  Make sure the tape is tight along the inside of your leg, that you are standing straight, and then measure.  No shoes please! ', 'touser-inseam.jpg'),
(20, ' KNEE ', 3, ' Measure around your knee at its widest point.  You need only measure one knee', 'touser-knee.jpg'),
(21, 'HALF HEM ', 3, ' Measure the width you want for the bottom of your trousers. ', 'touser-crotch-half-hem.jpg'),
(22, 'SHIRT LENGTH ', 2, ' Take the measure from the highest part of your shoulder (next to the collar) to the longest part of the shirt. See image on the left. ', 'shirt-length.jpg'),
(23, 'SHOULDER WIDTH ', 2, ' Measure the distance from one shoulder to the other, the measuring tape has to start and finish one centimeter before the end of your shoulder. See picture on the left. ', 'shoulder-width.jpg'),
(24, 'NECK', 2, ' Measure around your neck. Adjust the measuring tape to your preferred looseness. It is very important to introduce a finger between your body and the tape. ', 'neck.jpg'),
(25, 'CHEST', 2, ' Measure around the widest part of your chest (put the measuring tape on both nipples). Let loose so that you can put a finger between your body and the tape. Make sure that the tape is at an even height all the way around. ', 'chest.jpg'),
(26, ' BICEP ', 2, ' Measure around the widest part of your bicep. Let loose so that you can put a finger between your body and the tape. ', 'bicep.jpg'),
(27, 'WRIST', 2, ' Measure around the wrist leaving one finger of space to take the measurement. ', 'wrist.jpg'),
(28, 'SLEEVE', 2, ' ', 'sleeve.jpg'),
(29, 'SHORT SLEEVE ', 2, ' ', 'short-sleeve.jpg'),
(30, 'Â¾ SLEEVE ', 2, ' ', '3-4-sleeve.jpg'),
(31, 'WAIST', 2, ' ', 'waist.jpg'),
(32, 'STOMACH ', 2, ' ', 'stomach.jpg'),
(33, ' HIPS ', 2, ' ', 'hips.jpg'),
(34, ' BREAST POINT ', 2, ' Measure from the highest point of your shoulder, to the breast point (the most outstanding part of your breast). ', 'breast.jpg'),
(35, 'WAIST POINT ', 2, ' ', 'waist-point.jpg'),
(36, 'SLEEVE HOLE ', 2, ' ', 'sleeve-hole.jpg'),
(37, 'BUST', 2, ' ', 'bust.jpg'),
(38, 'NECK', 6, ' ', 'neck.jpg'),
(39, 'CHEST', 6, ' ', 'chest.jpg'),
(40, 'STOMACH ', 6, ' ', 'stomach.jpg'),
(41, 'WAIST', 6, ' ', 'waist.jpg'),
(42, 'HIPS', 6, ' ', 'hips.jpg'),
(43, 'SHOULDER', 6, ' ', 'shoulder.jpg'),
(44, 'JACKET LENGTH', 6, ' ', 'jacket-lenght.jpg'),
(45, 'SLEEVE LENGTH', 6, ' ', 'sleeve-length.jpg'),
(46, 'BICEP ', 2, ' ', 'biceps.jpg'),
(47, 'WRIST', 6, ' ', 'wrist.jpg'),
(48, ' VEST LENGTH ', 6, ' ', 'vest-lenght.jpg'),
(49, 'CROTCH', 6, ' ', 'crotch.jpg'),
(50, 'THIGH WIDTH ', 6, ' ', 'thigh-width.jpg'),
(51, 'TROUSER LENGTH', 6, ' ', 'pant-length.jpg'),
(52, 'INSEAM', 6, ' ', 'inseam.jpg'),
(53, 'KNEE', 6, ' ', 'knee.jpg'),
(54, 'HALF HEM ', 6, ' ', 'half-hem.jpg'),
(55, 'WAIST', 4, '  ', 'skirtwaist.png'),
(56, 'WAIST TO HIP HEIGHT', 4, '   ', 'skirthip1.png'),
(57, 'LENGHT', 4, 'Women  Skirt Lenght', 'skirtlenght.png'),
(58, 'HALLOW TO HEM', 5, 'HALLOW TO HEM', 'gown.jpg'),
(59, 'HIP WIDTH', 4, '  ', 'skirthip2.png'),
(60, 'BURST', 5, ' ', 'gown.jpg'),
(61, 'WAIST', 5, ' ', 'gown.jpg'),
(62, 'HIP', 5, ' ', 'gown.jpg'),
(63, 'Hcig', 14, ' ', ''),
(64, '', 1, ' ', ''),
(65, 'Water', 1, ' jk.;l', ''),
(66, '', 1, '', 'te11.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(50) NOT NULL,
  `prod_desc` varchar(500) NOT NULL,
  `prod_price` decimal(10,2) NOT NULL,
  `prod_cat` varchar(100) NOT NULL,
  `prod_pic1` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `prod_name`, `prod_desc`, `prod_price`, `prod_cat`, `prod_pic1`) VALUES
(12, 'Ball Gown', 'What bride doesn’t want to feel like a princess on her wedding day? </br> With a full skirt and fitted upper body, it also creates the perfect cinched waistline. </br> You can even layer your ball gown with extra </br>fabric such as tulle or lace for a more dramatic look.', '155.00', 'Womens', 'ele1.jpg'),
(26, 'yal', 'for women doesn’t want to feel like a princess on her wedding day? </br> With a full skirt and fitted upper body, it also creates the perfect cinched waistline. </br> You can even layer your ball gown with extra </br>fabric such as tulle or lace for a more dramatic look.', '5566.00', 'womens', 'tee.jpg'),
(27, 'Woman Clothes', ' for woman feel like a princess on her wedding day? </br> With a full skirt and fitted upper body, it also creates the perfect cinched waistline. </br> You can even layer your ball gown with extra </br>fabric such as tulle or lace for a more dramatic look.', '3000.00', 'womens', 'yeee.jpg'),
(28, 'Suit', ' These types of suits for men hover squarely in the realm between </br>slim fit and a classic fit. It thereby delivers a tight look with</br> breathing room to spare. If you get the material and the accessories </br>right then you can make this work for just about any occasion. </br> Modern suit styles are made to conquer any outing, from casual</br> to dressy.', '2000.00', 'Mens Suits', 'suit.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount_due` decimal(10,2) NOT NULL,
  `date_added` datetime NOT NULL,
  `mode_of_payment` varchar(100) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE `sales_details` (
  `sales_details_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` int(8) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms`
--

INSERT INTO `sms` (`id`, `customer`, `message`, `date`) VALUES
(1, 'mutangana christian', 'Dear,\r\nYour Clothes are ready for collection in 3 Weeks. Thanks for your patronage', '2022-02-26'),
(3, 'mutangana christian', 'Dear mutangana christian,\r\nYour Clothes are ready for collection. Thanks for your patronage', '2022-03-31'),
(4, 'mutangana christian', 'Dear mutangana christian,\r\nYour Clothes are ready for collection. Thanks for your patronage', '2022-03-31');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(8) NOT NULL,
  `stafftype` int(8) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phonenumber` varchar(50) NOT NULL,
  `salary` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `stafftype`, `fullname`, `address`, `phonenumber`, `salary`) VALUES
(1, 1, 'Jan Paul', 'kicukiro', '0788499211', 30000),
(2, 4, 'muhoza', 'kicukiro', '0744499211', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `stafftype`
--

CREATE TABLE `stafftype` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stafftype`
--

INSERT INTO `stafftype` (`id`, `title`) VALUES
(1, 'Tailor'),
(2, 'Counter'),
(3, 'Security'),
(4, 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supp_id` int(11) NOT NULL,
  `supp_name` varchar(100) NOT NULL,
  `supp_address` varchar(200) NOT NULL,
  `supp_contact` varchar(50) NOT NULL,
  `supp_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supp_id`, `supp_name`, `supp_address`, `supp_contact`, `supp_email`) VALUES
(1, 'PICC', 'Manila, Phils.', '(987)-884-12', 'picc@email.moto!'),
(2, 'QUEZELCO', 'Infanta, Quezon', '45643534567879', 'emal'),
(4, 'Alcatroz, Inc.', 'Sta. Mesa Manila', '9435398928', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `tblpay`
--

CREATE TABLE `tblpay` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `useremail` varchar(130) NOT NULL,
  `options` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `amount` int(50) NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpay`
--

INSERT INTO `tblpay` (`id`, `name`, `useremail`, `options`, `ContactNumber`, `amount`, `PostingDate`, `status`) VALUES
(7, 'mutangana christian', 'mutangana99@gmail.com', 'Airtel Money', '0788499211', 7890, '2022-03-18 09:34:22', NULL),
(10, 'mutangana christian', 'mutangana99@gmail.com', 'Bank Of Kigali', '+2507884992', 12334, '2022-03-29 09:41:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE `template` (
  `id` int(8) NOT NULL,
  `title` varchar(255) NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `template`
--

INSERT INTO `template` (`id`, `title`, `msg`) VALUES
(1, 'Collect Your Clothes', 'Your Clothes are ready for collection. Thanks for your patronage');

-- --------------------------------------------------------

--
-- Table structure for table `temp_trans`
--

CREATE TABLE `temp_trans` (
  `temp_trans_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `trans_id` int(11) NOT NULL,
  `or_no` int(11) NOT NULL,
  `prod_serial` varchar(50) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `trans_qty` int(11) NOT NULL,
  `ppi` decimal(10,0) NOT NULL,
  `cust_fullname` varchar(100) NOT NULL,
  `transdate` datetime NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(8) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sex` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `title`, `sex`) VALUES
(1, 'SHIRT', 1),
(2, 'BLOUSE', 1),
(3, 'TROUSER', 0),
(4, 'SKIRT', 1),
(5, 'GOWN', 1),
(6, 'SUIT', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'testuser', '8cb2237d0679ca88db6464eac60da96345513964');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expcat`
--
ALTER TABLE `expcat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_setting`
--
ALTER TABLE `general_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inccat`
--
ALTER TABLE `inccat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `measurement`
--
ALTER TABLE `measurement`
  ADD PRIMARY KEY (`measurement_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `part`
--
ALTER TABLE `part`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`sales_details_id`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stafftype`
--
ALTER TABLE `stafftype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supp_id`);

--
-- Indexes for table `tblpay`
--
ALTER TABLE `tblpay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_trans`
--
ALTER TABLE `temp_trans`
  ADD PRIMARY KEY (`temp_trans_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expcat`
--
ALTER TABLE `expcat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_setting`
--
ALTER TABLE `general_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inccat`
--
ALTER TABLE `inccat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `measurement`
--
ALTER TABLE `measurement`
  MODIFY `measurement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=823;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `part`
--
ALTER TABLE `part`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `sales_details_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stafftype`
--
ALTER TABLE `stafftype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpay`
--
ALTER TABLE `tblpay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
