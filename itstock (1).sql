-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2020 at 11:25 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itstock`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `b_id` int(11) NOT NULL,
  `b_name` varchar(50) DEFAULT NULL,
  `b_plant_id` int(11) DEFAULT NULL,
  `b_display` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`b_id`, `b_name`, `b_plant_id`, `b_display`) VALUES
(1, 'test', 1, 0),
(2, 'test2', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `c_id` int(11) NOT NULL,
  `c_d_id` int(11) DEFAULT NULL,
  `c_cmptd` int(11) DEFAULT NULL,
  `c_u_id` int(11) DEFAULT NULL,
  `c_u_name` varchar(30) DEFAULT NULL,
  `c_u_to_id` int(11) DEFAULT NULL,
  `c_u_to_name` varchar(40) DEFAULT NULL,
  `c_message` varchar(300) DEFAULT NULL,
  `c_s_id` int(11) DEFAULT NULL,
  `c_s_name` varchar(50) DEFAULT NULL,
  `c_date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `computers`
--

CREATE TABLE `computers` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(50) DEFAULT NULL,
  `p_ip` varchar(20) DEFAULT NULL,
  `p_owner` varchar(30) DEFAULT NULL,
  `p_department` int(11) DEFAULT NULL,
  `p_teamviewer` varchar(50) DEFAULT NULL,
  `p_owner_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `computers`
--

INSERT INTO `computers` (`p_id`, `p_name`, `p_ip`, `p_owner`, `p_department`, `p_teamviewer`, `p_owner_id`) VALUES
(65, 'sadatit', '192.166.200.100', 'Mohamed Syam', 1, '', 0),
(66, 'sadatsafty01', '192.166.200.68', 'Ahmed Elbana', 5, '1201180627', 17),
(67, 'sadathr03', '192.166.200.66', 'Ibrahim Matter', 2, '1184943612', 18),
(69, 'sadathr02', '192.166.200.58', 'Hassan mostafa', 2, '257636264', 3),
(70, 'sadatfollowup1-', '192.166.200.57', 'Ahmed omar', 4, '1140694531', 14),
(71, 'sadatfollowup3', '192.166.200.62', 'Eman Badawy', 4, '1289018523', 24),
(72, 'sadatacc02', '192.166.200.69', 'Ghada Hamdy', 6, '1436295810', 4),
(73, 'sadatwh01', '192.166.200.60', 'Mohamed hosny', 7, '1207496695', 21),
(74, 'sadatwh02', '192.166.200.67', 'Abdallah Magdy', 7, '1208965480', 23),
(78, 'SadatPlan01', '192.166.200.73', 'Sammar Samir', 11, '1250218822', 9),
(79, 'sadatstudy', '192.166.200.74', 'Ahmed Sobhy', 11, '1503147641', 22),
(80, 'SadatAcc01', '192.166.200.59', 'Gamal Shahat', 6, '1509524843', 10),
(81, 'AZ', '', 'Amr Zakaria', 10, '', 0),
(82, 'SadatProdMgr', '192.166.200.63', 'Mahmoud Abdelhameed', 8, '1188323552', 7),
(83, 'sadatwh06', '192.166.200.77', 'Mohamed Anter', 7, '1312400560', 11),
(84, 'sadatmodelist02', '192.166.200.80', 'AbdEldayem Elsayed', 8, '1339148569', 16),
(85, 'Sadatfcmgr', '192.166.200.76', 'Mohamed Ezzat', 6, '1311931562', 12),
(86, 'SadatQualityMgr', '192.166.200.64', 'Mohamed Hassan', 9, '1409021706', 13),
(87, 'sadatwh07', '192.166.200.79', 'Emad Hamdy', 7, '249585437', 25),
(88, 'SadatPlan02', '192.166.200.81', 'Islam Medhat', 11, '1341359960', 2),
(89, 'factory260', '192.166.200.71', 'Waled Elshazly', 7, '1493422370', 26),
(90, 'sadatwh04', '192.166.200.70', 'Marawan hassan', 7, '1005255809', 28),
(91, 'factory350', '192.166.200.78', 'Wael Elshishtawy', 7, '1021250323', 29),
(92, 'SadatHR-Mgr', '192.166.200.52', 'Adel fahmy', 10, '1250177112', 19),
(93, 'SadatHR04', '192.166.200.82', 'Eman Abdelmaksoud', 2, '1493281001', 20),
(94, 'fs9', '192.166.200.72', 'Mohamed Atef', 7, '1310277330', 0),
(95, 'sadatwh08', '192.166.200.83', NULL, 7, '1492607150', 21);

-- --------------------------------------------------------

--
-- Table structure for table `custody`
--

CREATE TABLE `custody` (
  `c_id` int(11) NOT NULL,
  `c_item_id` int(11) NOT NULL,
  `c_item_name` varchar(40) NOT NULL,
  `c_qty` int(11) NOT NULL,
  `c_e_id` int(11) NOT NULL,
  `c_e_name` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `datecustody`
--

CREATE TABLE `datecustody` (
  `d_id` int(5) NOT NULL,
  `d_c_id` int(5) NOT NULL,
  `d_date` longtext CHARACTER SET utf8 NOT NULL,
  `d_u_id` int(5) NOT NULL,
  `d_u_name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `d_qty` int(5) NOT NULL,
  `d_status` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `d_id` int(11) NOT NULL,
  `d_name` varchar(45) DEFAULT NULL,
  `d_display` int(11) DEFAULT '1',
  `p_dep_branch` int(11) DEFAULT NULL,
  `d_plant_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`d_id`, `d_name`, `d_display`, `p_dep_branch`, `d_plant_id`) VALUES
(1, 'IT', 1, 0, 0),
(2, 'HR', 1, 0, 0),
(3, 'Sadat', 0, 0, 0),
(4, 'followup', 1, 0, 0),
(5, 'Safty', 1, NULL, NULL),
(6, 'FI', 1, NULL, NULL),
(7, 'Warehouse', 1, NULL, NULL),
(8, 'Production', 1, NULL, NULL),
(9, 'Quality', 1, NULL, NULL),
(10, 'Administration', 1, NULL, NULL),
(11, 'Planning', 1, NULL, NULL),
(12, 'Security', 1, NULL, NULL),
(13, 'Purchasing', 1, NULL, NULL),
(14, 'Maintenance', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `e_id` int(11) NOT NULL,
  `e_name` varchar(50) DEFAULT NULL,
  `e_department_id` int(11) DEFAULT NULL,
  `e_code` int(10) NOT NULL DEFAULT '0',
  `e_status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`e_id`, `e_name`, `e_department_id`, `e_code`, `e_status`) VALUES
(1, 'Mohamed Syam', 1, 80012, 1),
(2, 'Islam Medhat', 11, 50053, 1),
(3, 'Hassan Mostafa', 2, 80019, 1),
(4, 'Ghada Hamdy', 6, 80039, 1),
(5, 'Abdelrhman Nayel', 13, 1007, 1),
(6, 'Adel Abdelmonem', 14, 80006, 1),
(7, 'Mahmoud Abd Elhameed', 8, 85040, 1),
(8, 'Ahmed Eldemery', 6, 1632, 1),
(9, 'Sammar Samier', 11, 80042, 1),
(10, 'Gamal Shahat', 6, 80036, 1),
(11, 'Mohamed Anter', 7, 42330, 1),
(12, 'Mohamed Ezzat', 6, 30, 1),
(13, 'Mohamed Hassan', 9, 85042, 1),
(14, 'Ahmed Omar', 11, 80018, 1),
(15, 'Ibrahim Mubarak', 7, 42554, 1),
(16, 'Abdeldayem Elsayed', 8, 101233, 1),
(17, 'Ahmed Fathy Elbana', 5, 80066, 1),
(18, 'Ibrahim Matter', 10, 50025, 1),
(19, 'Adel Fahmy', 10, 80068, 1),
(20, 'Eman Abdelmaksoud', 2, 100030, 1),
(21, 'Mohamed Hosny', 7, 80017, 1),
(22, 'Ahmed Sobhy', 11, 80067, 1),
(23, 'Abdallah Magdy Abdellah', 7, 80075, 1),
(24, 'Islam Gamal Elshafee', 11, 80071, 1),
(25, 'Emad Hamdy', 7, 8335, 1),
(26, 'Waleed Elshazly', 7, 42525, 1),
(27, 'Mohamed Atef', 7, 43486, 1),
(28, 'Marawan Hassan', 7, 0, 1),
(29, 'Wael Elshishtawy', 7, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `plants`
--

CREATE TABLE `plants` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(60) DEFAULT NULL,
  `p_display` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plants`
--

INSERT INTO `plants` (`p_id`, `p_name`, `p_display`) VALUES
(1, 'TownTeam', 1),
(2, 'RiverNine', 1);

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE `privileges` (
  `p_id` int(11) NOT NULL,
  `p_u_id` int(11) NOT NULL,
  `p_new_task` int(11) DEFAULT '0',
  `p_new_service` int(11) DEFAULT '0',
  `p_activity_report` int(11) DEFAULT '0',
  `p_cust_activity_report` int(11) DEFAULT '0',
  `p_privilages` int(11) DEFAULT '0',
  `p_edit_user` int(11) DEFAULT '0',
  `p_add_user` int(11) DEFAULT '0',
  `p_easy_share` int(11) DEFAULT '0',
  `p_cust_task` int(11) DEFAULT '0',
  `p_assign_task` int(11) DEFAULT '0',
  `p_view_computers` int(11) DEFAULT '0',
  `p_add_computer` int(11) DEFAULT '0',
  `p_edit_computer` int(11) DEFAULT '0',
  `p_open_ticket` int(11) DEFAULT '0',
  `p_view_tickets` int(11) DEFAULT '0',
  `p_view_cust_tickets` int(11) DEFAULT '0',
  `p_ticket_cases` int(11) DEFAULT '0',
  `p_departments` int(11) DEFAULT '0',
  `p_general` int(11) DEFAULT '0',
  `p_plants` int(11) DEFAULT '0',
  `p_branches` int(11) DEFAULT '0',
  `p_warehouses` int(11) DEFAULT '0',
  `p_manage_items` int(11) DEFAULT '0',
  `p_make_transaction` int(11) DEFAULT '0',
  `p_report` int(11) DEFAULT '0',
  `p_stock_board` int(11) DEFAULT '0',
  `p_vendors` int(11) DEFAULT '0',
  `p_new_emp` int(1) NOT NULL DEFAULT '0',
  `p_edit_emp` int(1) NOT NULL DEFAULT '0',
  `p_custodies` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`p_id`, `p_u_id`, `p_new_task`, `p_new_service`, `p_activity_report`, `p_cust_activity_report`, `p_privilages`, `p_edit_user`, `p_add_user`, `p_easy_share`, `p_cust_task`, `p_assign_task`, `p_view_computers`, `p_add_computer`, `p_edit_computer`, `p_open_ticket`, `p_view_tickets`, `p_view_cust_tickets`, `p_ticket_cases`, `p_departments`, `p_general`, `p_plants`, `p_branches`, `p_warehouses`, `p_manage_items`, `p_make_transaction`, `p_report`, `p_stock_board`, `p_vendors`, `p_new_emp`, `p_edit_emp`, `p_custodies`) VALUES
(1, 1, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, 0, 0, 0),
(3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(60) DEFAULT NULL,
  `s_department` varchar(60) DEFAULT NULL,
  `s_display` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`s_id`, `s_name`, `s_department`, `s_display`) VALUES
(3, 'Machine line one', '1', 1),
(4, 'Machine line two', '1', 1),
(5, 'Machine line three', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(30) DEFAULT NULL,
  `s_logo` varchar(70) DEFAULT NULL,
  `s_timezone` varchar(50) DEFAULT NULL,
  `s_timezone_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`s_id`, `s_name`, `s_logo`, `s_timezone`, `s_timezone_id`) VALUES
(1, 'Town Team', '0127673525ada2fd774df32d1b6db751.jpg', 'Africa/Cairo', 13);

-- --------------------------------------------------------

--
-- Table structure for table `stock_items`
--

CREATE TABLE `stock_items` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(50) DEFAULT NULL,
  `s_qty` float(24,0) DEFAULT '0',
  `s_warehouse_id` int(11) DEFAULT NULL,
  `s_display` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_items`
--

INSERT INTO `stock_items` (`s_id`, `s_name`, `s_qty`, `s_warehouse_id`, `s_display`) VALUES
(23, 'Keyboard-usb', 3, 1, 1),
(24, 'Mouse-usb', 3, 1, 1),
(25, 'Printer Cable', 3, 1, 1),
(26, 'Patch Panel', 2, 1, 1),
(27, 'organizer', 2, 1, 1),
(28, 'Motherboard-battery', 5, 1, 1),
(29, 'Network cable - 3 m', 10, 1, 1),
(30, 'Network cable - 1 m', 3, 1, 1),
(31, 'Mouse Pad', 7, 1, 1),
(32, 'Power Cable', 15, 1, 1),
(33, 'VGA', 15, 1, 1),
(34, 'CD', 6, 1, 1),
(35, 'Power Distrubuter - 4', 3, 1, 1),
(36, 'Power Distrubuter - 6', 0, 1, 1),
(37, 'Arabic keyboard Layout', 7, 1, 1),
(38, 'Network Point', 10, 1, 1),
(39, 'Laptop Power Cable', 1, 1, 1),
(40, 'Display Cable', 7, 1, 1),
(41, 'Display power cable', 5, 1, 1),
(42, 'Network cable - 5 m', 0, 1, 1),
(43, 'Network cable - 30 cm', 0, 1, 1),
(44, 'Network cable - 0.5 cm', 10, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stock_trans`
--

CREATE TABLE `stock_trans` (
  `s_id` int(11) NOT NULL,
  `s_item_id` int(11) DEFAULT NULL,
  `s_item_name` varchar(30) DEFAULT NULL,
  `s_computer_id` int(11) DEFAULT '0',
  `s_owner` varchar(20) DEFAULT NULL,
  `s_wh_id` int(11) DEFAULT NULL,
  `s_date` longtext,
  `s_u_id` int(11) DEFAULT NULL,
  `s_u_name` varchar(30) DEFAULT NULL,
  `s_status` varchar(5) DEFAULT NULL,
  `s_qty` float(24,0) DEFAULT NULL,
  `s_vendor` int(11) DEFAULT NULL,
  `s_vendor_name` varchar(30) DEFAULT NULL,
  `s_details` varchar(500) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_trans`
--

INSERT INTO `stock_trans` (`s_id`, `s_item_id`, `s_item_name`, `s_computer_id`, `s_owner`, `s_wh_id`, `s_date`, `s_u_id`, `s_u_name`, `s_status`, `s_qty`, `s_vendor`, `s_vendor_name`, `s_details`) VALUES
(38, 35, 'Power Distrubuter - 4', 0, 'SADAT IT', 1, '', 1, 'Syam', 'IN', 6, NULL, NULL, ''),
(39, 34, 'CD', 0, 'SADAT IT', 1, '', 1, 'Syam', 'IN', 9, NULL, NULL, ''),
(40, 33, 'VGA', 0, 'SADAT IT', 1, '', 1, 'Syam', 'IN', 11, NULL, NULL, ''),
(41, 32, 'Power Cable', 0, 'SADAT IT', 1, '', 1, 'Syam', 'IN', 13, NULL, NULL, ''),
(42, 25, 'Printer Cable', 0, 'SADAT IT', 1, '', 1, 'Syam', 'IN', 4, NULL, NULL, ''),
(43, 31, 'Mouse Pad', 0, 'SADAT IT', 1, '', 1, 'Syam', 'IN', 6, NULL, NULL, ''),
(44, 24, 'Mouse-usb', 0, 'SADAT IT', 1, '', 1, 'Syam', 'IN', 5, NULL, NULL, ''),
(45, 23, 'Keyboard-usb', 0, 'SADAT IT', 1, '', 1, 'Syam', 'IN', 12, NULL, NULL, ''),
(46, 29, 'Network cable - 3 m', 0, 'SADAT IT', 1, '', 1, 'Syam', 'IN', 2, NULL, NULL, ''),
(47, 30, 'Network cable - 1 m', 0, 'SADAT IT', 1, '', 1, 'Syam', 'IN', 1, NULL, NULL, ''),
(48, 28, 'Motherboard-battery', 0, 'SADAT IT', 1, '', 1, 'Syam', 'IN', 6, NULL, NULL, ''),
(49, 27, 'organizer', 0, 'SADAT IT', 1, '', 1, 'Syam', 'IN', 1, NULL, NULL, ''),
(50, 26, 'Patch Panel', 0, 'SADAT IT', 1, '', 1, 'Syam', 'IN', 1, NULL, NULL, ''),
(54, 23, 'Keyboard-usb', 65, 'Mohamed Syam', 1, '2019-04-01 08:37:37', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(55, 32, 'Power Cable', 75, 'wh03', 1, '2019-04-06 17:09:53', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(56, 32, 'Power Cable', 76, 'wh04', 1, '2019-04-06 17:11:08', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(57, 32, 'Power Cable', 75, 'wh03', 1, '2019-04-09 13:10:46', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(58, 29, 'Network cable - 3 m', 65, 'Mohamed Syam', 1, '2019-04-22 09:29:20', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(59, 23, 'Keyboard-usb', 76, 'wh04', 1, '2019-04-22 09:31:54', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(60, 23, 'Keyboard-usb', 75, 'wh03', 1, '2019-04-22 09:32:19', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(61, 27, 'organizer', 65, 'Mohamed Syam', 1, '2019-04-22 09:55:16', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(62, 26, 'Patch Panel', 65, 'Mohamed Syam', 1, '2019-04-22 09:55:31', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(63, 32, 'Power Cable', 77, 'wh05', 1, '2019-04-23 16:55:40', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(64, 32, 'Power Cable', 78, 'Sammar Samir', 1, '2019-04-24 09:55:05', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(65, 31, 'Mouse Pad', 78, 'Sammar Samir', 1, '2019-04-27 10:15:34', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(66, 29, 'Network cable - 3 m', 65, 'Mohamed Syam', 1, '2019-04-30 09:00:40', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(67, 35, 'Power Distrubuter - 4', 0, 'SADAT IT', 1, '2019-04-30 09:02:29', 1, 'Syam', 'IN', 2, 3, 'HQ - Tanta', ''),
(68, 32, 'Power Cable', 65, 'Mohamed Syam', 1, '2019-04-30 09:03:24', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(69, 32, 'Power Cable', 79, 'Basma Mosaad', 1, '2019-06-01 11:27:51', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(70, 23, 'Keyboard-usb', 79, 'Basma Mosaad', 1, '2019-06-01 11:28:10', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(71, 31, 'Mouse Pad', 79, 'Basma Mosaad', 1, '2019-06-02 10:06:42', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(72, 23, 'Keyboard-usb', 80, 'Rana Ibrahim', 1, '2019-06-02 11:06:08', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(73, 32, 'Power Cable', 80, 'Rana Ibrahim', 1, '2019-06-02 11:06:22', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(74, 24, 'Mouse-usb', 80, 'Rana Ibrahim', 1, '2019-06-02 11:06:40', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(75, 35, 'Power Distrubuter - 4', 80, 'Rana Ibrahim', 1, '2019-06-02 11:07:06', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(76, 24, 'Mouse-usb', 0, 'SADAT IT', 1, '2019-06-03 07:59:40', 1, 'Syam', 'IN', 1, 3, 'HQ - Tanta', ''),
(77, 35, 'Power Distrubuter - 4', 0, 'SADAT IT', 1, '2019-06-03 09:07:38', 1, 'Syam', 'IN', 2, 3, 'HQ - Tanta', ''),
(78, 24, 'Mouse-usb', 81, 'Amr Zakaria', 1, '2019-06-08 12:24:34', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(79, 24, 'Mouse-usb', 0, 'SADAT IT', 1, '2019-06-08 14:12:06', 1, 'Syam', 'IN', 1, 5, 'Sadat', ''),
(80, 31, 'Mouse Pad', 80, 'Rana Ibrahim', 1, '2019-06-10 08:05:02', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(81, 37, 'Arabic keyboard Layout', 0, 'SADAT IT', 1, '2019-06-26 15:24:18', 1, 'Syam', 'IN', 10, 4, 'Sadat-Purchase', ''),
(82, 37, 'Arabic keyboard Layout', 82, 'Mahmoud Abdelhameed', 1, '2019-06-26 15:26:47', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(83, 32, 'Power Cable', 83, 'wh06', 1, '2019-06-26 17:20:44', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(84, 32, 'Power Cable', 84, 'sadatmodelist', 1, '2019-06-29 13:57:10', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(85, 31, 'Mouse Pad', 84, 'sadatmodelist', 1, '2019-06-29 15:23:46', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(86, 35, 'Power Distrubuter - 4', 84, 'sadatmodelist', 1, '2019-07-01 09:24:34', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(87, 35, 'Power Distrubuter - 4', 74, 'Gamal Shahat', 1, '2019-07-01 14:48:31', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(88, 31, 'Mouse Pad', 85, 'susantha cooray', 1, '2019-07-06 12:04:11', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(89, 37, 'Arabic keyboard Layout', 86, 'Mohamed Hassan', 1, '2019-07-06 15:19:04', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(90, 24, 'Mouse-usb', 87, 'wh07', 1, '2019-07-17 15:45:20', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(91, 35, 'Power Distrubuter - 4', 0, 'SADAT IT', 1, '2019-07-29 08:49:01', 1, 'Syam', 'IN', 1, 3, 'HQ - Tanta', ''),
(92, 24, 'Mouse-usb', 74, 'Gamal Shahat', 1, '2019-07-29 13:36:06', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(93, 32, 'Power Cable', 88, 'Islam Medhat', 1, '2019-07-30 14:58:22', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(94, 31, 'Mouse Pad', 88, 'Islam Medhat', 1, '2019-07-30 15:59:10', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(95, 31, 'Mouse Pad', 0, 'SADAT IT', 1, '2019-07-31 09:54:20', 1, 'Syam', 'IN', 10, 4, 'Sadat-Purchase', ''),
(96, 32, 'Power Cable', 0, 'SADAT IT', 1, '2019-07-31 09:56:57', 1, 'Syam', 'IN', 15, 4, 'Sadat-Purchase', ''),
(97, 35, 'Power Distrubuter - 4', 88, 'Islam Medhat', 1, '2019-08-05 08:33:38', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(98, 35, 'Power Distrubuter - 4', 68, 'hareth ellaban', 1, '2019-08-20 12:33:26', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(99, 35, 'Power Distrubuter - 4', 69, 'Hassan mostafa', 1, '2019-08-20 12:34:10', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(100, 24, 'Mouse-usb', 86, 'Mohamed Hassan', 1, '2019-08-21 11:54:01', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(101, 31, 'Mouse Pad', 86, 'Mohamed Hassan', 1, '2019-08-21 11:56:42', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(102, 25, 'Printer Cable', 0, 'SADAT IT', 1, '2019-08-24 13:41:27', 1, 'Syam', 'IN', 1, 4, 'Sadat-Purchase', ''),
(103, 24, 'Mouse-usb', 85, 'susantha cooray', 1, '2019-08-27 10:31:15', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(104, 24, 'Mouse-usb', 0, 'SADAT IT', 1, '2019-09-08 09:48:44', 1, 'Syam', 'IN', 1, 4, 'Sadat-Purchase', ''),
(105, 23, 'Keyboard-usb', 82, 'Mahmoud Abdelhameed', 1, '2019-09-08 12:31:29', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(106, 37, 'Arabic keyboard Layout', 78, 'Sammar Samir', 1, '2019-09-11 16:15:16', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(107, 24, 'Mouse-usb', 0, 'SADAT IT', 1, '2019-09-15 16:10:24', 1, 'Syam', 'IN', 2, 4, 'Sadat-Purchase', ''),
(108, 27, 'organizer', 0, 'SADAT IT', 1, '2019-09-21 12:16:23', 1, 'Syam', 'IN', 3, 4, 'Sadat-Purchase', ''),
(109, 26, 'Patch Panel', 0, 'SADAT IT', 1, '2019-09-21 12:16:39', 1, 'Syam', 'IN', 3, 4, 'Sadat-Purchase', ''),
(110, 30, 'Network cable - 1 m', 65, 'Mohamed Syam', 1, '2019-09-23 09:00:12', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(111, 30, 'Network cable - 1 m', 0, 'SADAT IT', 1, '2019-09-26 10:13:28', 1, 'Syam', 'IN', 10, 4, 'Sadat-Purchase', ''),
(112, 24, 'Mouse-usb', 0, 'SADAT IT', 1, '2019-09-26 10:13:46', 1, 'Syam', 'IN', 2, 4, 'Sadat-Purchase', ''),
(113, 30, 'Network cable - 1 m', 72, 'Ghada Hamdy', 1, '2019-09-26 10:14:07', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(114, 30, 'Network cable - 1 m', 65, 'Mohamed Syam', 1, '2019-09-30 15:38:44', 1, 'Syam', 'OUT', 2, NULL, NULL, ''),
(115, 30, 'Network cable - 1 m', 65, 'Mohamed Syam', 1, '2019-10-02 08:33:08', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(116, 32, 'Power Cable', 0, 'SADAT IT', 1, '2019-10-08 08:21:17', 1, 'Syam', 'IN', 1, 4, 'Sadat-Purchase', ''),
(117, 32, 'Power Cable', 82, 'Mahmoud Abdelhameed', 1, '2019-10-08 08:21:32', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(118, 32, 'Power Cable', 82, 'Mahmoud Abdelhameed', 1, '2019-11-10 13:00:51', 1, 'Syam', 'OUT', 1, NULL, NULL, 'Change laptop power cable the original cable damaged '),
(119, 30, 'Network cable - 1 m', 65, 'Mohamed Syam', 1, '2019-11-23 15:53:28', 1, 'Syam', 'OUT', 1, NULL, NULL, 'Router to Sophos'),
(120, 38, 'Network Point', 0, 'SADAT IT', 1, '2019-11-25 09:47:00', 1, 'Syam', 'IN', 10, 4, 'Sadat-Purchase', ''),
(121, 28, 'Motherboard-battery', 83, 'Mohamed Anter', 1, '2019-11-26 08:57:05', 1, 'Syam', 'OUT', 1, NULL, NULL, 'change motherboard battery to Mohamed Anter. the old one dosn\'t work and the time wasnt updates'),
(122, 24, 'Mouse-usb', 89, 'Waled Elshazly', 1, '2019-11-26 15:59:01', 1, 'Syam', 'OUT', 1, NULL, NULL, '2B - the old mouse not clicking - emailed[sadatfinance mentioned ]'),
(123, 25, 'Printer Cable', 90, 'Marawan hassan', 1, '2019-12-07 14:26:07', 1, 'Syam', 'OUT', 1, NULL, NULL, 'BarCode printer'),
(124, 25, 'Printer Cable', 91, 'Wael Elshishtawy', 1, '2019-12-07 14:26:31', 1, 'Syam', 'OUT', 1, NULL, NULL, 'BarCode Printer'),
(125, 23, 'Keyboard-usb', 92, 'Adel fahmy', 1, '2019-12-08 15:01:58', 1, 'Syam', 'OUT', 1, NULL, NULL, 'New Employee request a mouse for  his laptop'),
(126, 24, 'Mouse-usb', 92, 'Adel fahmy', 1, '2019-12-09 11:19:02', 1, 'Syam', 'OUT', 1, NULL, NULL, 'Mouse to new employee'),
(127, 23, 'Keyboard-usb', 0, 'SADAT IT', 1, '2019-12-09 11:19:33', 1, 'Syam', 'IN', 1, 5, 'Sadat - Office', ''),
(128, 23, 'Keyboard-usb', 90, 'Marawan hassan', 1, '2019-12-18 16:44:06', 1, 'Syam', 'OUT', 1, NULL, NULL, 'replace , old one not working'),
(129, 23, 'Keyboard-usb', 93, 'Eman Abdelmaksoud', 1, '2019-12-19 11:02:16', 1, 'Syam', 'OUT', 1, NULL, NULL, 'New User'),
(130, 24, 'Mouse-usb', 93, 'Eman Abdelmaksoud', 1, '2019-12-19 11:02:43', 1, 'Syam', 'OUT', 1, NULL, NULL, 'New User'),
(131, 32, 'Power Cable', 93, 'Eman Abdelmaksoud', 1, '2019-12-19 11:03:11', 1, 'Syam', 'OUT', 1, NULL, NULL, 'New User'),
(132, 31, 'Mouse Pad', 93, 'Eman Abdelmaksoud', 1, '2019-12-19 11:03:39', 1, 'Syam', 'OUT', 1, NULL, NULL, 'New User'),
(133, 39, 'Laptop Power Cable', 0, 'SADAT IT', 1, '2019-12-19 12:48:41', 1, 'Syam', 'IN', 3, 4, 'Sadat-Purchase', ''),
(134, 39, 'Laptop Power Cable', 82, 'Mahmoud Abdelhameed', 1, '2019-12-19 12:49:19', 1, 'Syam', 'OUT', 1, NULL, NULL, 'Replace laptop cable'),
(135, 38, 'Network Point', 90, 'Marawan hassan', 1, '2019-12-22 12:39:13', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(136, 38, 'Network Point', 91, 'Wael Elshishtawy', 1, '2019-12-22 12:39:39', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(137, 38, 'Network Point', 83, 'Mohamed Anter', 1, '2019-12-22 12:40:28', 1, 'Syam', 'OUT', 1, NULL, NULL, 'PC'),
(138, 38, 'Network Point', 89, 'Waled Elshazly', 1, '2019-12-22 12:40:53', 1, 'Syam', 'OUT', 2, NULL, NULL, 'PC+Cisco'),
(139, 38, 'Network Point', 94, 'Mohamed Atef', 1, '2019-12-22 12:43:08', 1, 'Syam', 'OUT', 1, NULL, NULL, 'PC'),
(140, 38, 'Network Point', 87, 'Emad Hamdy', 1, '2019-12-22 12:45:23', 1, 'Syam', 'OUT', 3, NULL, NULL, 'PC Cisco Printer'),
(141, 35, 'Power Distrubuter - 4', 93, 'Eman Abdelmaksoud', 1, '2019-12-23 08:06:21', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(142, 40, 'Display Cable', 0, 'SADAT IT', 1, '2019-12-23 11:55:48', 1, 'Syam', 'IN', 6, 5, 'Sadat - Office', 'extra on the package'),
(143, 41, 'Display power cable', 0, 'SADAT IT', 1, '2019-12-23 11:57:12', 1, 'Syam', 'IN', 6, 5, 'Sadat - Office', 'extra on the package'),
(144, 33, 'VGA', 0, 'SADAT IT', 1, '2019-12-23 11:57:58', 1, 'Syam', 'IN', 5, 5, 'Sadat - Office', 'extra on the package'),
(145, 35, 'Power Distrubuter - 4', 80, 'Mohamed Magdy', 1, '2019-12-28 11:08:53', 1, 'Syam', 'OUT', 1, NULL, NULL, 'Mohamed Magdy requested to change his computer place and no power in his station'),
(146, 38, 'Network Point', 0, 'SADAT IT', 1, '2019-12-28 13:08:55', 1, 'Syam', 'IN', 10, 4, 'Sadat-Purchase', ''),
(147, 40, 'Display Cable', 0, 'SADAT IT', 1, '2020-01-04 09:59:06', 1, 'Syam', 'IN', 1, 5, 'Sadat - Office', 'exchange with VGA cable Mohamed Hosny Pc'),
(148, 38, 'Network Point', 65, 'Mohamed Syam', 1, '2020-01-04 15:12:05', 1, 'Syam', 'OUT', 3, NULL, NULL, 'cutter station in the rack room'),
(149, 30, 'Network cable - 1 m', 65, 'Mohamed Syam', 1, '2020-01-05 10:11:52', 1, 'Syam', 'OUT', 1, NULL, NULL, 'connect rac prodution 2 '),
(150, 30, 'Network cable - 1 m', 65, 'Mohamed Syam', 1, '2020-01-05 12:41:43', 1, 'Syam', 'OUT', 1, NULL, NULL, 'connect the cutter rack in the IT Room'),
(151, 26, 'Patch Panel', 65, 'Mohamed Syam', 1, '2020-01-05 13:55:19', 1, 'Syam', 'OUT', 1, NULL, NULL, 'Cutting'),
(152, 27, 'organizer', 65, 'Mohamed Syam', 1, '2020-01-05 13:55:35', 1, 'Syam', 'OUT', 1, NULL, NULL, 'cutting'),
(153, 38, 'Network Point', 65, 'Mohamed Syam', 1, '2020-01-06 14:58:22', 1, 'Syam', 'OUT', 7, NULL, NULL, 'for attendance '),
(154, 33, 'VGA', 84, 'sadatmodelist', 1, '2020-01-06 16:53:51', 1, 'Syam', 'OUT', 1, NULL, NULL, ''),
(155, 32, 'Power Cable', 79, 'Ahmed Sobhy', 1, '2020-01-11 10:00:56', 1, 'Syam', 'OUT', 1, NULL, NULL, 'New User'),
(156, 31, 'Mouse Pad', 79, 'Ahmed Sobhy', 1, '2020-01-11 10:32:40', 1, 'Syam', 'OUT', 1, NULL, NULL, 'new user'),
(157, 23, 'Keyboard-usb', 65, 'Mohamed Syam', 1, '2020-01-13 09:36:19', 1, 'Syam', 'OUT', 1, NULL, NULL, 'IT Rack'),
(158, 30, 'Network cable - 1 m', 65, 'Mohamed Syam', 1, '2020-01-13 09:39:31', 1, 'Syam', 'OUT', 1, NULL, NULL, 'RACK'),
(159, 33, 'VGA', 65, 'Mohamed Syam', 1, '2020-01-13 09:45:34', 1, 'Syam', 'OUT', 1, NULL, NULL, 'IT Rack'),
(160, 30, 'Network cable - 1 m', 0, 'SADAT IT', 1, '2020-01-14 12:11:20', 1, 'Syam', 'IN', 30, 4, 'Sadat-Purchase', ''),
(161, 29, 'Network cable - 3 m', 0, 'SADAT IT', 1, '2020-01-14 12:13:25', 1, 'Syam', 'IN', 5, 4, 'Sadat-Purchase', ''),
(162, 43, 'Network cable - 30 cm', 0, 'SADAT IT', 1, '2020-01-14 12:14:46', 1, 'Syam', 'IN', 20, 4, 'Sadat-Purchase', ''),
(163, 42, 'Network cable - 5 m', 0, 'SADAT IT', 1, '2020-01-14 12:15:05', 1, 'Syam', 'IN', 5, 4, 'Sadat-Purchase', ''),
(164, 38, 'Network Point', 65, 'Mohamed Syam', 1, '2020-01-14 13:20:13', 1, 'Syam', 'OUT', 1, NULL, NULL, 'For Attendance'),
(165, 38, 'Network Point', 0, 'SADAT IT', 1, '2020-01-14 13:27:12', 1, 'Syam', 'IN', 1, 5, 'Sadat - Office', 'Back from cutter office'),
(166, 43, 'Network cable - 30 cm', 65, 'Mohamed Syam', 1, '2020-01-17 16:49:54', 1, 'Syam', 'OUT', 8, NULL, NULL, 'attendance machines - outside'),
(167, 32, 'Power Cable', 0, 'SADAT IT', 1, '2020-01-18 12:29:43', 1, 'Syam', 'IN', 2, 5, 'Sadat - Office', 'Hareth'),
(168, 33, 'VGA', 0, 'SADAT IT', 1, '2020-01-18 12:29:57', 1, 'Syam', 'IN', 1, 5, 'Sadat - Office', 'Hareth'),
(169, 43, 'Network cable - 30 cm', 65, 'Mohamed Syam', 1, '2020-01-20 08:48:26', 1, 'Syam', 'OUT', 12, NULL, NULL, 'IT Rack - Change the old cables'),
(170, 42, 'Network cable - 5 m', 65, 'Mohamed Syam', 1, '2020-01-20 08:49:43', 1, 'Syam', 'OUT', 1, NULL, NULL, 'IT Rack'),
(171, 30, 'Network cable - 1 m', 65, 'Mohamed Syam', 1, '2020-01-20 08:50:36', 1, 'Syam', 'OUT', 29, NULL, NULL, 'IT rack - Change the old cables'),
(172, 29, 'Network cable - 3 m', 65, 'Mohamed Syam', 1, '2020-01-20 10:46:52', 1, 'Syam', 'OUT', 5, NULL, NULL, 'from L3 to L2 switches'),
(173, 41, 'Display power cable', 65, 'Mohamed Syam', 1, '2020-01-20 10:47:22', 1, 'Syam', 'OUT', 1, NULL, NULL, 'workstation power'),
(174, 34, 'CD', 65, 'Mohamed Syam', 1, '2020-01-21 14:00:40', 1, 'Syam', 'OUT', 1, NULL, NULL, 'ESXI 6.5'),
(175, 34, 'CD', 65, 'Mohamed Syam', 1, '2020-01-23 18:16:35', 1, 'Syam', 'OUT', 1, NULL, NULL, 'ESCI'),
(176, 39, 'Laptop Power Cable', 86, 'Mohamed Hassan', 1, '2020-01-26 15:55:47', 1, 'Syam', 'OUT', 1, NULL, NULL, 'change'),
(177, 34, 'CD', 65, 'Mohamed Syam', 1, '2020-01-30 16:25:08', 1, 'Syam', 'OUT', 1, NULL, NULL, 'ESXI 6'),
(178, 42, 'Network cable - 5 m', 65, 'Mohamed Syam', 1, '2020-02-03 10:07:03', 1, 'Syam', 'OUT', 4, NULL, NULL, 'Servers to L3'),
(179, 32, 'Power Cable', 65, 'Mohamed Syam', 1, '2020-02-03 12:09:45', 1, 'Syam', 'OUT', 1, NULL, NULL, 'Switch L3'),
(180, 44, 'Network cable - 0.5 cm', 0, 'SADAT IT', 1, '2020-02-11 12:04:14', 1, 'Syam', 'IN', 10, 4, 'Sadat-Purchase', ''),
(181, 29, 'Network cable - 3 m', 0, 'SADAT IT', 1, '2020-02-11 12:06:31', 1, 'Syam', 'IN', 10, 4, 'Sadat-Purchase', ''),
(182, 38, 'Network Point', 0, 'SADAT IT', 1, '2020-02-11 12:06:49', 1, 'Syam', 'IN', 10, 4, 'Sadat-Purchase', ''),
(183, 38, 'Network Point', 87, 'Emad Hamdy', 1, '2020-02-11 12:56:27', 1, 'Syam', 'OUT', 1, NULL, NULL, 'For IP Cisco Phone');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `t_id` int(11) NOT NULL,
  `t_message` varchar(300) DEFAULT NULL,
  `t_u_id` int(11) DEFAULT NULL,
  `t_u_name` varchar(30) DEFAULT NULL,
  `t_t_id` int(11) DEFAULT NULL,
  `t_t_name` varchar(50) DEFAULT NULL,
  `t_d_id` int(11) DEFAULT NULL,
  `t_d_name` varchar(30) DEFAULT NULL,
  `t_status` int(11) DEFAULT '0',
  `t_date` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`t_id`, `t_message`, `t_u_id`, `t_u_name`, `t_t_id`, `t_t_name`, `t_d_id`, `t_d_name`, `t_status`, `t_date`) VALUES
(18, 'I can\'t print , please check my printer ', 1, 'Mark', 10, 'Printer', 1, 'IT', 1, '2018-10-02 06:20:03');

-- --------------------------------------------------------

--
-- Table structure for table `tickets_replies`
--

CREATE TABLE `tickets_replies` (
  `t_id` int(11) NOT NULL,
  `t_t_id` int(11) DEFAULT NULL,
  `t_reply` varchar(300) DEFAULT NULL,
  `t_u_id` int(11) DEFAULT NULL,
  `t_u_name` varchar(30) DEFAULT NULL,
  `t_d_id` int(11) DEFAULT NULL,
  `t_d_name` varchar(50) DEFAULT NULL,
  `t_date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_cases`
--

CREATE TABLE `ticket_cases` (
  `t_id` int(11) NOT NULL,
  `t_name` varchar(60) DEFAULT NULL,
  `t_d_id` int(11) DEFAULT NULL,
  `t_d_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_cases`
--

INSERT INTO `ticket_cases` (`t_id`, `t_name`, `t_d_id`, `t_d_name`) VALUES
(7, 'Repair Computer', 1, 'IT'),
(8, 'Internet Connection', 1, 'IT'),
(9, 'Telephone Problem', 1, 'IT'),
(10, 'Printer', 1, 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `timezone`
--

CREATE TABLE `timezone` (
  `t_id` int(11) NOT NULL,
  `t_name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timezone`
--

INSERT INTO `timezone` (`t_id`, `t_name`) VALUES
(1, 'Africa/Abidjan'),
(2, 'Africa/Accra'),
(3, 'Africa/Addis_Ababa'),
(4, 'Africa/Algiers'),
(5, 'Africa/Asmara'),
(6, 'Africa/Bamako'),
(7, 'Africa/Bangui'),
(8, 'Africa/Banjul'),
(9, 'Africa/Bissau'),
(10, 'Africa/Blantyre'),
(11, 'Africa/Brazzaville'),
(12, 'Africa/Bujumbura'),
(13, 'Africa/Cairo'),
(14, 'Africa/Casablanca'),
(15, 'Africa/Ceuta'),
(16, 'Africa/Conakry'),
(17, 'Africa/Dakar'),
(18, 'Africa/Dar_es_Salaam'),
(19, 'Africa/Djibouti'),
(20, 'Africa/Douala'),
(21, 'Africa/El_Aaiun'),
(22, 'Africa/Freetown'),
(23, 'Africa/Gaborone'),
(24, 'Africa/Harare'),
(25, 'Africa/Johannesburg'),
(26, 'Africa/Juba'),
(27, 'Africa/Kampala'),
(28, 'Africa/Khartoum'),
(29, 'Africa/Kigali'),
(30, 'Africa/Kinshasa'),
(31, 'Africa/Lagos'),
(32, 'Africa/Libreville'),
(33, 'Africa/Lome'),
(34, 'Africa/Luanda'),
(35, 'Africa/Lubumbashi'),
(36, 'Africa/Lusaka'),
(37, 'Africa/Malabo'),
(38, 'Africa/Maputo'),
(39, 'Africa/Maseru'),
(40, 'Africa/Mbabane'),
(41, 'Africa/Mogadishu'),
(42, 'Africa/Monrovia'),
(43, 'Africa/Nairobi'),
(44, 'Africa/Ndjamena'),
(45, 'Africa/Niamey'),
(46, 'Africa/Nouakchott'),
(47, 'Africa/Ouagadougou'),
(48, 'Africa/Porto-Novo'),
(49, 'Africa/Sao_Tome'),
(50, 'Africa/Timbuktu'),
(51, 'Africa/Tripoli'),
(52, 'Africa/Tunis'),
(53, 'Africa/Windhoek'),
(54, 'America/Adak'),
(55, 'America/Anchorage'),
(56, 'America/Anguilla'),
(57, 'America/Antigua'),
(58, 'America/Araguaina'),
(59, 'America/Argentina/Buenos_Aires'),
(60, 'America/Argentina/Catamarca'),
(61, 'America/Argentina/ComodRivadavia'),
(62, 'America/Argentina/Cordoba'),
(63, 'America/Argentina/Jujuy'),
(64, 'America/Argentina/La_Rioja'),
(65, 'America/Argentina/Mendoza'),
(66, 'America/Argentina/Rio_Gallegos'),
(67, 'America/Argentina/Salta'),
(68, 'America/Argentina/San_Juan'),
(69, 'America/Argentina/San_Luis'),
(70, 'America/Argentina/Tucuman'),
(71, 'America/Argentina/Ushuaia'),
(72, 'America/Aruba'),
(73, 'America/Asuncion'),
(74, 'America/Atikokan'),
(75, 'America/Atka'),
(76, 'America/Bahia'),
(77, 'America/Bahia_Banderas'),
(78, 'America/Barbados'),
(79, 'America/Belem'),
(80, 'America/Belize'),
(81, 'America/Blanc-Sablon'),
(82, 'America/Boa_Vista'),
(83, 'America/Bogota'),
(84, 'America/Boise'),
(85, 'America/Buenos_Aires'),
(86, 'America/Cambridge_Bay'),
(87, 'America/Campo_Grande'),
(88, 'America/Cancun'),
(89, 'America/Caracas'),
(90, 'America/Catamarca'),
(91, 'America/Cayenne'),
(92, 'America/Cayman'),
(93, 'America/Chicago'),
(94, 'America/Chihuahua'),
(95, 'America/Coral_Harbour'),
(96, 'America/Cordoba'),
(97, 'America/Costa_Rica'),
(98, 'America/Creston'),
(99, 'America/Cuiaba'),
(100, 'America/Curacao'),
(101, 'America/Danmarkshavn'),
(102, 'America/Dawson'),
(103, 'America/Dawson_Creek'),
(104, 'America/Denver'),
(105, 'America/Detroit'),
(106, 'America/Dominica'),
(107, 'America/Edmonton'),
(108, 'America/Eirunepe'),
(109, 'America/El_Salvador'),
(110, 'America/Ensenada'),
(111, 'America/Fort_Nelson'),
(112, 'America/Fort_Wayne'),
(113, 'America/Fortaleza'),
(114, 'America/Glace_Bay'),
(115, 'America/Godthab'),
(116, 'America/Goose_Bay'),
(117, 'America/Grand_Turk'),
(118, 'America/Grenada'),
(119, 'America/Guadeloupe'),
(120, 'America/Guatemala'),
(121, 'America/Guayaquil'),
(122, 'America/Guyana'),
(123, 'America/Halifax'),
(124, 'America/Havana'),
(125, 'America/Hermosillo'),
(126, 'America/Indiana/Indianapolis'),
(127, 'America/Indiana/Knox'),
(128, 'America/Indiana/Marengo'),
(129, 'America/Indiana/Petersburg'),
(130, 'America/Indiana/Tell_City'),
(131, 'America/Indiana/Vevay'),
(132, 'America/Indiana/Vincennes'),
(133, 'America/Indiana/Winamac'),
(134, 'America/Indianapolis'),
(135, 'America/Inuvik'),
(136, 'America/Iqaluit'),
(137, 'America/Jamaica'),
(138, 'America/Jujuy'),
(139, 'America/Juneau'),
(140, 'America/Kentucky/Louisville'),
(141, 'America/Kentucky/Monticello'),
(142, 'America/Knox_IN'),
(143, 'America/Kralendijk'),
(144, 'America/La_Paz'),
(145, 'America/Lima'),
(146, 'America/Los_Angeles'),
(147, 'America/Louisville'),
(148, 'America/Lower_Princes'),
(149, 'America/Maceio'),
(150, 'America/Managua'),
(151, 'America/Manaus'),
(152, 'America/Marigot'),
(153, 'America/Martinique'),
(154, 'America/Matamoros'),
(155, 'America/Mazatlan'),
(156, 'America/Mendoza'),
(157, 'America/Menominee'),
(158, 'America/Merida'),
(159, 'America/Metlakatla'),
(160, 'America/Mexico_City'),
(161, 'America/Miquelon'),
(162, 'America/Moncton'),
(163, 'America/Monterrey'),
(164, 'America/Montevideo'),
(165, 'America/Montreal'),
(166, 'America/Montserrat'),
(167, 'America/Nassau'),
(168, 'America/New_York'),
(169, 'America/Nipigon'),
(170, 'America/Nome'),
(171, 'America/Noronha'),
(172, 'America/North_Dakota/Beulah'),
(173, 'America/North_Dakota/Center'),
(174, 'America/North_Dakota/New_Salem'),
(175, 'America/Ojinaga'),
(176, 'America/Panama'),
(177, 'America/Pangnirtung'),
(178, 'America/Paramaribo'),
(179, 'America/Phoenix'),
(180, 'America/Port_of_Spain'),
(181, 'America/Port-au-Prince'),
(182, 'America/Porto_Acre'),
(183, 'America/Porto_Velho'),
(184, 'America/Puerto_Rico'),
(185, 'America/Punta_Arenas'),
(186, 'America/Rainy_River'),
(187, 'America/Rankin_Inlet'),
(188, 'America/Recife'),
(189, 'America/Regina'),
(190, 'America/Resolute'),
(191, 'America/Rio_Branco'),
(192, 'America/Rosario'),
(193, 'America/Santa_Isabel'),
(194, 'America/Santarem'),
(195, 'America/Santiago'),
(196, 'America/Santo_Domingo'),
(197, 'America/Sao_Paulo'),
(198, 'America/Scoresbysund'),
(199, 'America/Shiprock'),
(200, 'America/Sitka'),
(201, 'America/St_Barthelemy'),
(202, 'America/St_Johns'),
(203, 'America/St_Kitts'),
(204, 'America/St_Lucia'),
(205, 'America/St_Thomas'),
(206, 'America/St_Vincent'),
(207, 'America/Swift_Current'),
(208, 'America/Tegucigalpa'),
(209, 'America/Thule'),
(210, 'America/Thunder_Bay'),
(211, 'America/Tijuana'),
(212, 'America/Toronto'),
(213, 'America/Tortola'),
(214, 'America/Vancouver'),
(215, 'America/Virgin'),
(216, 'America/Whitehorse'),
(217, 'America/Winnipeg'),
(218, 'America/Yakutat'),
(219, 'America/Yellowknife'),
(220, 'Antarctica/Casey'),
(221, 'Antarctica/Davis'),
(222, 'Antarctica/DumontDUrville'),
(223, 'Antarctica/Macquarie'),
(224, 'Antarctica/Mawson'),
(225, 'Antarctica/McMurdo'),
(226, 'Antarctica/Palmer'),
(227, 'Antarctica/Rothera'),
(228, 'Antarctica/South_Pole'),
(229, 'Antarctica/Syowa'),
(230, 'Antarctica/Troll'),
(231, 'Antarctica/Vostok'),
(232, 'Arctic/Longyearbyen'),
(233, 'Asia/Aden'),
(234, 'Asia/Almaty'),
(235, 'Asia/Amman'),
(236, 'Asia/Anadyr'),
(237, 'Asia/Aqtau'),
(238, 'Asia/Aqtobe'),
(239, 'Asia/Ashgabat'),
(240, 'Asia/Ashkhabad'),
(241, 'Asia/Atyrau'),
(242, 'Asia/Baghdad'),
(243, 'Asia/Bahrain'),
(244, 'Asia/Baku'),
(245, 'Asia/Bangkok'),
(246, 'Asia/Barnaul'),
(247, 'Asia/Beirut'),
(248, 'Asia/Bishkek'),
(249, 'Asia/Brunei'),
(250, 'Asia/Calcutta'),
(251, 'Asia/Chita'),
(252, 'Asia/Choibalsan'),
(253, 'Asia/Chongqing'),
(254, 'Asia/Chungking'),
(255, 'Asia/Colombo'),
(256, 'Asia/Dacca'),
(257, 'Asia/Damascus'),
(258, 'Asia/Dhaka'),
(259, 'Asia/Dili'),
(260, 'Asia/Dubai'),
(261, 'Asia/Dushanbe'),
(262, 'Asia/Famagusta'),
(263, 'Asia/Gaza'),
(264, 'Asia/Harbin'),
(265, 'Asia/Hebron'),
(266, 'Asia/Ho_Chi_Minh'),
(267, 'Asia/Hong_Kong'),
(268, 'Asia/Hovd'),
(269, 'Asia/Irkutsk'),
(270, 'Asia/Istanbul'),
(271, 'Asia/Jakarta'),
(272, 'Asia/Jayapura'),
(273, 'Asia/Jerusalem'),
(274, 'Asia/Kabul'),
(275, 'Asia/Kamchatka'),
(276, 'Asia/Karachi'),
(277, 'Asia/Kashgar'),
(278, 'Asia/Kathmandu'),
(279, 'Asia/Katmandu'),
(280, 'Asia/Khandyga'),
(281, 'Asia/Kolkata'),
(282, 'Asia/Krasnoyarsk'),
(283, 'Asia/Kuala_Lumpur'),
(284, 'Asia/Kuching'),
(285, 'Asia/Kuwait'),
(286, 'Asia/Macao'),
(287, 'Asia/Macau'),
(288, 'Asia/Magadan'),
(289, 'Asia/Makassar'),
(290, 'Asia/Manila'),
(291, 'Asia/Muscat'),
(292, 'Asia/Novokuznetsk'),
(293, 'Asia/Novosibirsk'),
(294, 'Asia/Omsk'),
(295, 'Asia/Oral'),
(296, 'Asia/Phnom_Penh'),
(297, 'Asia/Pontianak'),
(298, 'Asia/Pyongyang'),
(299, 'Asia/Qatar'),
(300, 'Asia/Qyzylorda'),
(301, 'Asia/Rangoon'),
(302, 'Asia/Riyadh'),
(303, 'Asia/Saigon'),
(304, 'Asia/Sakhalin'),
(305, 'Asia/Samarkand'),
(306, 'Asia/Seoul'),
(307, 'Asia/Shanghai'),
(308, 'Asia/Singapore'),
(309, 'Asia/Srednekolymsk'),
(310, 'Asia/Taipei'),
(311, 'Asia/Tashkent'),
(312, 'Asia/Tbilisi'),
(313, 'Asia/Tehran'),
(314, 'Asia/Tel_Aviv'),
(315, 'Asia/Thimbu'),
(316, 'Asia/Thimphu'),
(317, 'Asia/Tokyo'),
(318, 'Asia/Tomsk'),
(319, 'Asia/Ujung_Pandang'),
(320, 'Asia/Ulaanbaatar'),
(321, 'Asia/Ulan_Bator'),
(322, 'Asia/Urumqi'),
(323, 'Asia/Ust-Nera'),
(324, 'Asia/Vientiane'),
(325, 'Asia/Vladivostok'),
(326, 'Asia/Yakutsk'),
(327, 'Asia/Yangon'),
(328, 'Asia/Yekaterinburg'),
(329, 'Asia/Yerevan'),
(330, 'Atlantic/Azores'),
(331, 'Atlantic/Bermuda'),
(332, 'Atlantic/Canary'),
(333, 'Atlantic/Cape_Verde'),
(334, 'Atlantic/Faeroe'),
(335, 'Atlantic/Faroe'),
(336, 'Atlantic/Jan_Mayen'),
(337, 'Atlantic/Madeira'),
(338, 'Atlantic/Reykjavik'),
(339, 'Atlantic/South_Georgia'),
(340, 'Atlantic/St_Helena'),
(341, 'Atlantic/Stanley'),
(342, 'Australia/ACT'),
(343, 'Australia/Adelaide'),
(344, 'Australia/Brisbane'),
(345, 'Australia/Broken_Hill'),
(346, 'Australia/Canberra'),
(347, 'Australia/Currie'),
(348, 'Australia/Darwin'),
(349, 'Australia/Eucla'),
(350, 'Australia/Hobart'),
(351, 'Australia/LHI'),
(352, 'Australia/Lindeman'),
(353, 'Australia/Lord_Howe'),
(354, 'Australia/Melbourne'),
(355, 'Australia/North'),
(356, 'Australia/NSW'),
(357, 'Australia/Perth'),
(358, 'Australia/Queensland'),
(359, 'Australia/South'),
(360, 'Australia/Sydney'),
(361, 'Australia/Tasmania'),
(362, 'Australia/Victoria'),
(363, 'Australia/West'),
(364, 'Australia/Yancowinna'),
(365, 'Brazil/Acre'),
(366, 'Brazil/DeNoronha'),
(367, 'Brazil/East'),
(368, 'Brazil/West'),
(369, 'Canada/Atlantic'),
(370, 'Canada/Central'),
(371, 'Canada/Eastern'),
(372, 'Canada/Mountain'),
(373, 'Canada/Newfoundland'),
(374, 'Canada/Pacific'),
(375, 'Canada/Saskatchewan'),
(376, 'Canada/Yukon'),
(377, 'CET'),
(378, 'Chile/Continental'),
(379, 'Chile/EasterIsland'),
(380, 'CST6CDT'),
(381, 'Cuba'),
(382, 'EET'),
(383, 'Egypt'),
(384, 'Eire'),
(385, 'EST'),
(386, 'EST5EDT'),
(387, 'Etc/GMT'),
(388, 'Etc/GMT+0'),
(389, 'Etc/GMT+1'),
(390, 'Etc/GMT+10'),
(391, 'Etc/GMT+11'),
(392, 'Etc/GMT+12'),
(393, 'Etc/GMT+2'),
(394, 'Etc/GMT+3'),
(395, 'Etc/GMT+4'),
(396, 'Etc/GMT+5'),
(397, 'Etc/GMT+6'),
(398, 'Etc/GMT+7'),
(399, 'Etc/GMT+8'),
(400, 'Etc/GMT+9'),
(401, 'Etc/GMT0'),
(402, 'Etc/GMT-0'),
(403, 'Etc/GMT-1'),
(404, 'Etc/GMT-10'),
(405, 'Etc/GMT-11'),
(406, 'Etc/GMT-12'),
(407, 'Etc/GMT-13'),
(408, 'Etc/GMT-14'),
(409, 'Etc/GMT-2'),
(410, 'Etc/GMT-3'),
(411, 'Etc/GMT-4'),
(412, 'Etc/GMT-5'),
(413, 'Etc/GMT-6'),
(414, 'Etc/GMT-7'),
(415, 'Etc/GMT-8'),
(416, 'Etc/GMT-9'),
(417, 'Etc/Greenwich'),
(418, 'Etc/UCT'),
(419, 'Etc/Universal'),
(420, 'Etc/UTC'),
(421, 'Etc/Zulu'),
(422, 'Europe/Amsterdam'),
(423, 'Europe/Andorra'),
(424, 'Europe/Astrakhan'),
(425, 'Europe/Athens'),
(426, 'Europe/Belfast'),
(427, 'Europe/Belgrade'),
(428, 'Europe/Berlin'),
(429, 'Europe/Bratislava'),
(430, 'Europe/Brussels'),
(431, 'Europe/Bucharest'),
(432, 'Europe/Budapest'),
(433, 'Europe/Busingen'),
(434, 'Europe/Chisinau'),
(435, 'Europe/Copenhagen'),
(436, 'Europe/Dublin'),
(437, 'Europe/Gibraltar'),
(438, 'Europe/Guernsey'),
(439, 'Europe/Helsinki'),
(440, 'Europe/Isle_of_Man'),
(441, 'Europe/Istanbul'),
(442, 'Europe/Jersey'),
(443, 'Europe/Kaliningrad'),
(444, 'Europe/Kiev'),
(445, 'Europe/Kirov'),
(446, 'Europe/Lisbon'),
(447, 'Europe/Ljubljana'),
(448, 'Europe/London'),
(449, 'Europe/Luxembourg'),
(450, 'Europe/Madrid'),
(451, 'Europe/Malta'),
(452, 'Europe/Mariehamn'),
(453, 'Europe/Minsk'),
(454, 'Europe/Monaco'),
(455, 'Europe/Moscow'),
(456, 'Europe/Nicosia'),
(457, 'Europe/Oslo'),
(458, 'Europe/Paris'),
(459, 'Europe/Podgorica'),
(460, 'Europe/Prague'),
(461, 'Europe/Riga'),
(462, 'Europe/Rome'),
(463, 'Europe/Samara'),
(464, 'Europe/San_Marino'),
(465, 'Europe/Sarajevo'),
(466, 'Europe/Saratov'),
(467, 'Europe/Simferopol'),
(468, 'Europe/Skopje'),
(469, 'Europe/Sofia'),
(470, 'Europe/Stockholm'),
(471, 'Europe/Tallinn'),
(472, 'Europe/Tirane'),
(473, 'Europe/Tiraspol'),
(474, 'Europe/Ulyanovsk'),
(475, 'Europe/Uzhgorod'),
(476, 'Europe/Vaduz'),
(477, 'Europe/Vatican'),
(478, 'Europe/Vienna'),
(479, 'Europe/Vilnius'),
(480, 'Europe/Volgograd'),
(481, 'Europe/Warsaw'),
(482, 'Europe/Zagreb'),
(483, 'Europe/Zaporozhye'),
(484, 'Europe/Zurich'),
(485, 'GB'),
(486, 'GB-Eire'),
(487, 'GMT'),
(488, 'GMT+0'),
(489, 'GMT0'),
(490, 'GMT?0'),
(491, 'Greenwich'),
(492, 'Hongkong'),
(493, 'HST'),
(494, 'Iceland'),
(495, 'Indian/Antananarivo'),
(496, 'Indian/Chagos'),
(497, 'Indian/Christmas'),
(498, 'Indian/Cocos'),
(499, 'Indian/Comoro'),
(500, 'Indian/Kerguelen'),
(501, 'Indian/Mahe'),
(502, 'Indian/Maldives'),
(503, 'Indian/Mauritius'),
(504, 'Indian/Mayotte'),
(505, 'Indian/Reunion'),
(506, 'Iran'),
(507, 'Israel'),
(508, 'Jamaica'),
(509, 'Japan'),
(510, 'Kwajalein'),
(511, 'Libya'),
(512, 'MET'),
(513, 'Mexico/BajaNorte'),
(514, 'Mexico/BajaSur'),
(515, 'Mexico/General'),
(516, 'MST'),
(517, 'MST7MDT'),
(518, 'Navajo'),
(519, 'NZ'),
(520, 'NZ-CHAT'),
(521, 'Pacific/Apia'),
(522, 'Pacific/Auckland'),
(523, 'Pacific/Bougainville'),
(524, 'Pacific/Chatham'),
(525, 'Pacific/Chuuk'),
(526, 'Pacific/Easter'),
(527, 'Pacific/Efate'),
(528, 'Pacific/Enderbury'),
(529, 'Pacific/Fakaofo'),
(530, 'Pacific/Fiji'),
(531, 'Pacific/Funafuti'),
(532, 'Pacific/Galapagos'),
(533, 'Pacific/Gambier'),
(534, 'Pacific/Guadalcanal'),
(535, 'Pacific/Guam'),
(536, 'Pacific/Honolulu'),
(537, 'Pacific/Johnston'),
(538, 'Pacific/Kiritimati'),
(539, 'Pacific/Kosrae'),
(540, 'Pacific/Kwajalein'),
(541, 'Pacific/Majuro'),
(542, 'Pacific/Marquesas'),
(543, 'Pacific/Midway'),
(544, 'Pacific/Nauru'),
(545, 'Pacific/Niue'),
(546, 'Pacific/Norfolk'),
(547, 'Pacific/Noumea'),
(548, 'Pacific/Pago_Pago'),
(549, 'Pacific/Palau'),
(550, 'Pacific/Pitcairn'),
(551, 'Pacific/Pohnpei'),
(552, 'Pacific/Ponape'),
(553, 'Pacific/Port_Moresby'),
(554, 'Pacific/Rarotonga'),
(555, 'Pacific/Saipan'),
(556, 'Pacific/Samoa'),
(557, 'Pacific/Tahiti'),
(558, 'Pacific/Tarawa'),
(559, 'Pacific/Tongatapu'),
(560, 'Pacific/Truk'),
(561, 'Pacific/Wake'),
(562, 'Pacific/Wallis'),
(563, 'Pacific/Yap'),
(564, 'Poland'),
(565, 'Portugal'),
(566, 'PRC'),
(567, 'PST8PDT'),
(568, 'ROC'),
(569, 'ROK'),
(570, 'Singapore'),
(571, 'Turkey'),
(572, 'UCT'),
(573, 'Universal'),
(574, 'US/Alaska'),
(575, 'US/Aleutian'),
(576, 'US/Arizona'),
(577, 'US/Central'),
(578, 'US/Eastern'),
(579, 'US/East-Indiana'),
(580, 'US/Hawaii'),
(581, 'US/Indiana-Starke'),
(582, 'US/Michigan'),
(583, 'US/Mountain'),
(584, 'US/Pacific'),
(585, 'US/Pacific-New'),
(586, 'US/Samoa'),
(587, 'UTC'),
(588, 'WET'),
(589, 'W-SU'),
(590, 'Zulu');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `t_id` int(11) NOT NULL,
  `t_s_id` int(11) DEFAULT NULL,
  `t_s_name` varchar(45) DEFAULT NULL,
  `t_s_desc` varchar(200) DEFAULT NULL,
  `t_u_id` varchar(45) DEFAULT NULL,
  `t_u_name` varchar(45) DEFAULT NULL,
  `t_d_id` int(11) DEFAULT NULL,
  `t_d_name` varchar(45) DEFAULT NULL,
  `t_date` varchar(45) DEFAULT NULL,
  `t_tasked_from_u_id` int(11) DEFAULT NULL,
  `t_tasked_from_u_name` varchar(30) DEFAULT NULL,
  `t_tasked` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `u_username` varchar(45) DEFAULT NULL,
  `u_name` varchar(45) DEFAULT NULL,
  `u_phone` varchar(20) DEFAULT NULL,
  `u_email` varchar(50) DEFAULT NULL,
  `u_password` varchar(45) DEFAULT NULL,
  `u_department` int(11) DEFAULT NULL,
  `u_department_name` varchar(40) DEFAULT NULL,
  `u_active` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `u_username`, `u_name`, `u_phone`, `u_email`, `u_password`, `u_department`, `u_department_name`, `u_active`) VALUES
(1, 'mohamedsyam', 'Syam', '01101101277', 'syamgro@gmail.com', '0121441689', 1, 'IT', 1),
(2, 'amr.salem', 'Amr Salem', '01000286606', 'amr.salem@townteam.com', '103', 1, 'IT', 1),
(3, 'khaled.tark', 'Khaled Tarek', '01101101277', 'khaled.tark@townteam.com', '102', 1, 'IT', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `v_id` int(11) NOT NULL,
  `v_name` varchar(30) DEFAULT NULL,
  `v_display` int(11) DEFAULT '1',
  `v_phone` varchar(50) DEFAULT NULL,
  `v_address` varchar(50) DEFAULT NULL,
  `v_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`v_id`, `v_name`, `v_display`, `v_phone`, `v_address`, `v_email`) VALUES
(3, 'HQ - Tanta', 1, '777', 'Tanta', 'it@townteam.com'),
(4, 'Sadat-Purchase', 1, '', 'Sadat City', ''),
(5, 'Sadat - Office', 1, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `w_id` int(11) NOT NULL,
  `w_name` varchar(30) DEFAULT NULL,
  `w_display` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`w_id`, `w_name`, `w_display`) VALUES
(1, 'SADAT IT', 1),
(2, 'Tanta', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `computers`
--
ALTER TABLE `computers`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `stock_items`
--
ALTER TABLE `stock_items`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `stock_trans`
--
ALTER TABLE `stock_trans`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `tickets_replies`
--
ALTER TABLE `tickets_replies`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `ticket_cases`
--
ALTER TABLE `ticket_cases`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `timezone`
--
ALTER TABLE `timezone`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`v_id`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `computers`
--
ALTER TABLE `computers`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `plants`
--
ALTER TABLE `plants`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stock_items`
--
ALTER TABLE `stock_items`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `stock_trans`
--
ALTER TABLE `stock_trans`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tickets_replies`
--
ALTER TABLE `tickets_replies`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_cases`
--
ALTER TABLE `ticket_cases`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `timezone`
--
ALTER TABLE `timezone`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=591;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `w_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
