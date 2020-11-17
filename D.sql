-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2019 at 12:21 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fourtex`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `b_id` int(5) NOT NULL,
  `b_name` varchar(50) NOT NULL,
  `b_plant_id` int(5) NOT NULL,
  `b_display` int(1) NOT NULL DEFAULT '1' COMMENT 'Display Branches'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`b_id`, `b_name`, `b_plant_id`, `b_display`) VALUES
(1, 'Sadat Factory', 1, 0),
(2, 'Tanta', 1, 1),
(3, 'Sadat Factory', 1, 1),
(4, 'Tanta', 1, 1),
(5, 'Sadat Factory', 1, 1),
(6, 'Tanta', 1, 1),
(7, 'Sadat Factory', 1, 1),
(8, 'Tanta', 1, 1),
(9, 'Sadat Factory', 1, 0),
(10, 'Tanta', 1, 1),
(11, 'Sadat Factory', 1, 1),
(12, 'Tanta', 1, 1),
(13, 'Sadat Factory', 1, 1),
(14, 'Tanta', 1, 1),
(15, 'Sadat Factory', 1, 1),
(16, 'Tanta', 1, 1),
(17, 'Banha', 1, 1),
(18, 'Sadat', 2, 1),
(19, 'cairo', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `c_id` int(5) NOT NULL,
  `c_d_id` int(5) NOT NULL,
  `c_cmptd` int(5) NOT NULL,
  `c_u_id` int(5) NOT NULL,
  `c_u_name` varchar(30) NOT NULL,
  `c_u_to_id` int(5) NOT NULL,
  `c_u_to_name` varchar(40) NOT NULL,
  `c_message` varchar(300) NOT NULL,
  `c_s_id` int(5) NOT NULL COMMENT 'service id',
  `c_s_name` varchar(50) NOT NULL COMMENT 'service name',
  `c_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`c_id`, `c_d_id`, `c_cmptd`, `c_u_id`, `c_u_name`, `c_u_to_id`, `c_u_to_name`, `c_message`, `c_s_id`, `c_s_name`, `c_date`) VALUES
(21, 1, 0, 1, 'Mark', 2, 'Syam Bek', 'Kindly please check our machines and press done once you finish your This Task .', 1, 'Services 1', '2018-10-02 06:14:43'),
(22, 1, 0, 1, 'Mark', 2, 'Syam Bek', 'dddddrrf', 3, 'Machine line one', '2018-10-02 21:49:39');

-- --------------------------------------------------------

--
-- Table structure for table `computers`
--

CREATE TABLE `computers` (
  `p_id` int(5) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `p_username` varchar(30) NOT NULL,
  `p_iso` varchar(10) NOT NULL,
  `p_ip` varchar(20) NOT NULL,
  `p_password` varchar(30) NOT NULL,
  `p_owner` varchar(30) NOT NULL,
  `p_department` int(5) NOT NULL,
  `p_monitor` varchar(30) NOT NULL,
  `p_processor` varchar(50) NOT NULL,
  `p_ram` varchar(30) NOT NULL,
  `p_mouse` varchar(30) NOT NULL,
  `p_keyboard` varchar(30) NOT NULL,
  `p_motherboard` varchar(50) NOT NULL,
  `p_hdd` varchar(30) NOT NULL,
  `p_printer` varchar(50) NOT NULL,
  `p_branch` int(5) NOT NULL,
  `p_plant` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `computers`
--

INSERT INTO `computers` (`p_id`, `p_name`, `p_username`, `p_iso`, `p_ip`, `p_password`, `p_owner`, `p_department`, `p_monitor`, `p_processor`, `p_ram`, `p_mouse`, `p_keyboard`, `p_motherboard`, `p_hdd`, `p_printer`, `p_branch`, `p_plant`) VALUES
(9, '4tex_Emp1', '4tex_Emp1', 'F1D004PC', '192.168.100.125', 'Em69E', 'عبدالله البلكيمي', 1, 'Samsung /TC23C350', 'inte Pentium cpu G2020® 2.90GHZ', 'DDR3/4GB', '4Tech', '4Tech', 'H61M-S2P', '500 GB', '', 0, 0),
(10, '4tex_Emp2', '', 'F1D005PC', '192.168.100.126', 'Em11T', 'ياسر شتات', 0, 'SAMSUNG / S22B300', 'intel Pentium 4 cpu 3.00 GHZ', 'DDR3/2GB', '4Tech', '4Tech', 'G41', '500 GB', '', 0, 0),
(11, 'Dyeing_Elect', '', 'F1D008PC', '192.168.100.186', 'Ah55D', 'احمد مسعد', 0, 'SAMSUNG/S19B150', 'intel Pentium G2020', 'DDR3/4GB', '4Tech', '4Tech', 'H61M-S2PT', '500 GB', '', 0, 0),
(12, 'Dyeing_Dept', '', 'F1D010PC', '192.168.100.245', 'Di87T', 'طه فوزي', 0, 'Samsung / S19B300', 'intel Core I3', 'DDR3/4GB', 'Genius', '4Tech', 'h61m-s2p', '320 GB', '', 0, 0),
(13, 'M_Hagag', '', 'F1D006PC', '192.168.100.94', 'Mh99G', 'محمد حجاج', 0, 'Samsung / S23C350', 'Intel Pentium CPU G620 @ 2.60GHz (2600 MHz)', 'DDR3/4GB', '4Tech', '4Tech', 'H61M-S2PT', '500 GB', '', 0, 0),
(14, 'Ftex_RmStore', '', 'F1D014PC', '192.168.100.216', 'Se91R', 'أحمد عمر', 0, 'LG / W1953SE', 'intel core 2 duo', 'DDR2/1GB', '4Tech', '4Tech', 'G41M-E2sl', '160 GB', '', 0, 0),
(15, '4tex_Info1', '', 'F1D015PC', '192.168.100.185', 'Fr2014A', 'نبيل نصر', 0, 'Samsung / S22B300', 'intel Pentium cpu G2020® 2.90GHZ', 'DDR3/2GB', '4Tech', '4Tech', 'H61M-S2P', '500 GB', '', 0, 0),
(16, '4tex_info3', '', 'F1D016PC', '192.168.100.165', 'Fr2014C', 'محمد جمال', 0, 'SAMSUNG/S19B150', 'intel Pentium G2020', 'DDR3/4GB', '4Tech', '4Tech', 'H61M-S2P', '500 GB', '', 0, 0),
(17, '4tex_info2', '', 'F1D050PC', '192.168.100.169', 'Fr2018B', 'محمد طبلية', 0, 'ACER B196L', 'intel Pentium G2020', 'DDR3/2GB', '4Tech', '4Tech', 'H61M-S2P', '500 GB', '', 0, 0),
(18, 'power_Dept', '', 'F1D007PC', '192.168.100.229', 'Ys85M', 'عبد المجيد الشرقاوي', 0, 'Samsung /S19D300', 'Intel Core I3', 'DDR3/4GB', '4Tech', '4Tech', 'H61M-S2P', '500 GB', '', 0, 0),
(19, 'Dyeing_quality', '', 'F1D033PC', '192.168.100.117', 'Ho53M', 'محمود مهدي', 0, 'Samsung /S19C150', 'intel Core I3', 'DDR3/4GB', '4Tech', '4Tech', 'hewlett packart 1495', '500 GB', '', 0, 0),
(20, 'Textile_mgmt', '', 'F1D018PC', '192.168.100.239', 'Sa17D', ' سعيد عدلى', 0, 'Samsung /S19B150', 'Intel Core I3', 'DDR3/4GB', '4Tech', '4Tech', 'H61M-S2P', '500 GB', '', 0, 0),
(21, 'Textile_supv', '', 'F1D013PC', '192.168.100.95', 'St25P', 'مصطفى عبدالعزيز', 0, 'Samsung /S19B150', 'intel Pentium G2030', 'DDR3/2GB', '4Tech', '4Tech', 'H61M-S2P', '500 GB', '', 0, 0),
(22, 'Mechanical_4tex', '', 'F1D020PC', '192.168.100.237', 'Hn19I', 'هاني عرفه', 0, 'Samsung /B1930', 'intel Pentium G2020', 'DDR3/2GB', '4Tech', '4Tech', 'H61M-S2P', '500 GB', '', 0, 0),
(23, 'Mechanical2_4tex', '', 'F1D042PC', '192.168.100.238', 'Zn19H', 'محمد نزيه', 0, 'Samsung /S19B150', 'intel Pentium G2020', 'DDR3/4GB', '4Tech', 'Genius', 'H61M-S2P', '250 GB', '', 0, 0),
(24, 'Fourtex_Eng', '', 'F1D021PC', '192.168.100.162', 'Sa10E', 'صديق بدر', 0, 'Samsung / S22c300', 'Intel Core I3', 'DDR3/8GB', 'Genius', '4Tech', 'H81M-S2PT', '500 GB', 'Printer HP7110', 0, 0),
(25, '4tex_nvr', '', 'F1D051PC', '192.168.100.87', 'Nv12R', 'الامن الادارى', 0, 'Samsung /S19B150', 'Intel Core I3', 'DDR3/4GB', '4Tech', '4Tech', 'H61M-S2P', '500 GB', '', 0, 0),
(26, 'Dyeing_dev', '', 'F1D032PC', '192.168.100.211', 'De09V', 'محفوظ رضوان', 0, 'LG / E1942', 'intel Pentium G2030', 'DDR3/4GB', '4Tech', '4Tech', 'H61M-s2p', '500 GB', '', 0, 0),
(27, '4tex_warping', '', 'F1D011PC', '192.168.100.109', 'Rp14A', 'رمضان جاب الله', 0, 'Samsung /S19B300', 'intel Pentium G2030', 'DDR3/4GB', '4Tech', '4Tech', 'H61M-S2P', '500 GB', '', 0, 0),
(28, 'Quality_Dept', '', 'F1D012PC', '192.168.100.139', 'Mq16T', 'محمد فوزي', 0, 'LG / w1934s', 'intel Core 2due', 'DDR3/4GB', '4Tech', '4Tech', 'G41M-s2pt', '160 GB', '', 0, 0),
(29, 'Dyeing_PC', '', 'F1D024PC', '192.168.100.113', 'Dn77P', 'خط الصباغة', 0, 'Xerox / TCO03', 'intel Pentium 4', 'DDR2/1GB', '4Tech', '4Tech', '945G2M-S2', '80 GB', '', 0, 0),
(30, 'Warp_pc', '', 'F1D025PC', '192.168.100.132', 'Wr15P', 'خط الصباغة', 0, 'Samsung /S19B300', 'intel Pentium 4', 'DDR2/2GB', '4Tech', '4Tech', '945G2M-S2', '160 GB', '', 0, 0),
(31, 'sizing_machine', '', 'F1D034PC', '192.168.100.234', '2015', 'محمد امبابي', 0, 'Samsung / 793 DF', 'intel Pentium 4', 'DDR4/4GB', '4Tech', '4Tech', 'G41M-Es2l', '500 GB', '', 0, 0),
(32, 'sukar_master', '', 'F1D026PC', '192.168.100.235', 'Sr15M', 'بسيوني', 0, 'Samsung / 793 DF', 'intel Pentium 4', 'DDR2/2GB', '4Tech', 'Genius', '81945GZME-RH', '500 GB', '', 0, 0),
(33, 'Sb_warping', '', 'F1D027PC', '192.168.100.93', 'Ts29H', 'طارق شاكر', 0, 'Samsung / SA100', 'intel Pentium 4', 'DDR2/4GB', 'Genius', '4Tech', 'G41M-COMBO', '160 GB', '', 0, 0),
(34, '4tex_luwa', '', 'F1D028PC', '192.168.100.243', 'Lu14V', 'محمد زين', 0, 'Samsung / S1913150', 'Intel Core I3', 'DDR3/4GB', '4Tech', '4Tech', 'B75M-HD3', '500 GB', 'Printer	HP Officejet Pro 62', 0, 0),
(35, 'f_roller2', '', 'F1D030PC', '192.168.50.2', '7895', 'اللفافة 2', 0, 'LG / W1942SE', 'intel pes5200', 'DDR2/1GB', '4Tech', 'Dell', '945G2M-S2', '80 GB', '', 0, 0),
(36, 'f_roller4', '', 'F1D031PC', '192.168.50.4', '7895', 'اللفافة 4', 0, 'Samsung / B1930', 'intel Pentium 4', 'DDR2/1GB', '4Tech', '4Tech', '945G2M-S2', '80 GB', '', 0, 0),
(37, 'f_roller5', '', 'F1D017PC', '192.168.50.5', '7895', 'اللفافة 5', 0, 'HP / L1742S', 'Intel Core I3', 'DDR3/2GB', 'Microsoft', '4Tech', 'lenovo 5032c', '320 GB', '', 0, 0),
(38, 'Elect_eng', '', 'F1D044PC', '192.168.100.160', 'Mw59E', 'محمد حامد', 0, 'Samsung  / 2333', 'intel core 2 duo', 'DDR3/4GB', '4Tech', '4Tech', '3646H', '500 GB', '', 0, 0),
(39, 'Safety', '', 'F1Z019PC', '192.168.100.118', 'Es18F', 'مصطفى', 0, 'Samsung / S23B300', 'Intel Core I3', 'DDR3/4GB', '4Tech', '4Tech', 'H61M-S2P', '80 GB', 'Hp laserjet MB19FMFP', 0, 0),
(40, 'security_nour', '', 'F1D022PC', '192.168.100.158', 'Sa86R', 'عماد الفقى', 0, 'LG/W2234S', 'Intel Core I3', 'DDR3/4GB', '4Tech', '4Tech', 'H61M-S2P', '500 GB', '', 0, 0),
(41, 'Engineers', '', 'F1Z002PC', '192.168.100.107', 'Ng20S', 'مجدي عليمي', 0, 'Samsung / S19B150', 'intel Pentium G2020', 'DDR3/2GB', '4Tech', '4Tech', 'H61M-S2P', '80 GB', '', 0, 0),
(42, 'Maint_Winding', '', 'F1Z003PC', '192.168.100.157', 'Hd17M', 'محمد حمدان', 0, 'Samsung / SA100', 'Intel Core I3', 'DDR3/4GB', '4Tech', 'Genius', 'H61M-S2P', '500 GB', '', 0, 0),
(43, 'Syrian_Prod', '', 'F1Z004PC', '192.168.100.110', 'Ay23M', 'ايمن القماش', 0, 'Samsung / Ex2020', 'Intel Core I3', 'DDR3/4GB', 'Genius', '4Tech', 'Hewlett', '320 GB', '', 0, 0),
(44, 'Syr_Emp1', '', 'F1Z006PC', '192.168.100.227', 'Re99P', 'ياسر الشتات', 0, 'samsung SA300', 'intel core 2 duo', 'DDR3/4GB', '4Tech', '4Tech', 'H61M-S2P', '500 GB', 'Printer HP P1102', 0, 0),
(45, 'Syrian_Quality', '', 'F1Z007PC', '192.168.100.173', 'Sr25E', 'ياسر الجمال', 0, 'Samsung / S19B150', 'intel core 2 duo', 'DDR3/4GB', '4Tech', '4Tech', 'G41MT-S2P', '500 GB', 'Printer hp p1015', 0, 0),
(46, 'roving_dept', '', 'F1Z009PC', '192.168.100.133', 'Ar20K', 'أيمن كمال أبو على', 0, 'LG / W1942SE', 'intel Pentium G2020', 'DDR3/2GB', '4Tech', '4Tech', 'H61M-S2P', '500 GB', '', 0, 0),
(47, 'Syr_electric', '', 'F1Z008PC', '192.168.100.212', 'Zs81L', 'محمد ناصر', 0, 'SAMSUNG/S19C150', 'intel pentium 4', 'DDR2/2GB', '4Tech', '4Tech', '945G2M-S2', '250 GB', '', 0, 0),
(48, 'Syr_station', '', 'F1Z010PC', '192.168.100.193', 'Sn26T', 'ابرهيم فتحي', 0, 'SAMSUNG/S19B150', 'intel pentium 4', 'DDR2/2GB', 'Microsoft', 'Genius', '945G2M-S2', '500 GB', '', 0, 0),
(49, 'costs_acc4', '', 'F1Z011PC', '192.168.100.203', 'Cu19K', ' اسلام خالد', 0, 'LG / W1934S', 'intel core 2 duo', 'DDR3/2GB', '4Tech', '4Tech', 'G41MT-S2P', '250 GB', '', 0, 0),
(50, 'Syr_Mwinding', '', 'F1Z012PC', '192.168.100.213', 'Ec18M', 'محمد فريد', 0, 'LG / W1934S', 'intel core 2 duo', 'DDR2/3GB', '4Tech', '4Tech', 'G41MT-S2P', '500 GB', '', 0, 0),
(51, 'Syr_Tcline', '', 'F1Z013PC', '192.168.100.146', 'Sn16R', 'اسلام نجيب', 0, 'Samsung / B1930', 'intel Pentium 4 cpu 3.00 GHZ', 'DDR3/1GB', '4Tech', '4Tech', 'G31M', '160 GB', '', 0, 0),
(52, 'Rmstore_nour', '', 'F1Z014PC', '192.168.100.119', 'Hs17M', 'شريف ماهر', 0, 'Samsung S23B300', 'intel Pentium G2030', 'DDR3/4GB', 'Genius', '4Tech', 'H61M-S2P', '500 GB', 'Printer HP P1102', 0, 0),
(53, 'STORES', '', 'F1Z015PC', '192.168.100.171', 'Sz30Y', 'علاء مصطفى', 0, 'LG / W19345', 'intel core 2 duo', 'DDR3/4GB', '4Tech', '4Tech', 'G41M-Es2l', '160 GB', 'Zebra gc420t', 0, 0),
(54, 'FINAL_PRODUCTION', '', 'F1Z016PC', '192.168.100.202', 'Mf19R', 'علي وهدان', 0, 'LG/W1934S', 'intel Pentium G2020', 'DDR3/4GB', '4Tech', '4Tech', 'H61M-S2P', '500 GB', '', 0, 0),
(55, 'Syr_Packing', '', 'F1Z018PC', '192.168.100.178', 'Rp82H', 'رباح الطيب', 0, 'Samsung / B1930', 'intel core 2 duo', 'DDR3/4GB', '4Tech', '4Tech', 'G41m-es2l', '250 GB', 'Printer	ZDesigner GC420T (EPL) (USB001)', 0, 0),
(56, 'Master', '', '', '', '', 'خط ماستر', 0, '', 'intel core 2 duo', 'DDR2/2GB', '', '', '', '160 GB', '', 0, 0),
(57, 'Sizing_Mgmt', '', 'F1D009PC', '192.168.100.91', 'Iz62T', 'سيد ابراهيم', 0, '', 'Intel Core I3', 'DDR3/4GB', '4Tech', '4Tech', 'H81M', '320 GB', '', 0, 0),
(58, 'Mohand', '', 'F1D001PC', '192.168.100.11', '', 'مهند متعب', 0, 'Lenovo 13.3', 'Intel Core I5', 'DDR3/4GB', 'Lenovo', 'Lenovo', 'Yoga 2 Pro', '128 GB SSD', '', 0, 0),
(59, 'IT_DEPT', '', 'F1D002PC', '192.168.100.1', '', 'محمد هنداوي', 0, 'Samsung T23C350', 'Intel Core i5', 'DDR3/16GB', 'Dell', 'Dell', 'GA-Z77', '1 TB', 'HP 2035', 0, 0),
(60, 'IT_DEV', '', 'F1D003PC', '192.168.100.2', 'Ahmed1991', 'محمد عبدالحليم', 0, 'Samsung/T23C350', 'Intel Core I3', 'DDR3/8GB', '4Tech', '4Tech', 'H81M-D2', '500 GB', '', 0, 0),
(61, 'Dyeing_elect_laptop', '', '', '192.168.100.53', '514', 'أحمد مسعد', 0, '', '', '', '', '', '', '', '', 0, 0),
(62, 'Nehad', '', 'F1Z001PC', '192.168.100.184', 'Re76L', 'نهاد الحسن', 0, 'Samsung/S22B300', 'Intel Core I3', 'DDR3/4GB', '4Tech', '4Tech', 'H61M-S2PT', '160 GB', '', 0, 0),
(63, 'Syr_maint', '', 'F1Z010PC', '192.168.100.193', 'Hy93S', 'الحسينى الشاعر', 0, 'SAMSUNG/S19B150', 'intel pentium 4', 'DDR2/2GB', 'Microsoft', 'Genius', '945G2M-S2', '500 GB', '', 0, 0),
(64, 'IT_support', '', 'F1D045PC', '192.168.100.115', '', 'محمد صيام', 0, 'Samsung/S22B300', 'Intel Core I3', 'DDR3/6GB', '4Tech', '4Tech', 'H81M-S2P', '500 GB', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `d_id` int(10) UNSIGNED NOT NULL,
  `d_name` varchar(45) NOT NULL,
  `d_display` int(1) NOT NULL DEFAULT '1',
  `p_dep_branch` int(5) NOT NULL,
  `d_plant_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`d_id`, `d_name`, `d_display`, `p_dep_branch`, `d_plant_id`) VALUES
(1, 'IT', 0, 0, 0),
(2, 'HR', 1, 0, 0),
(3, 'Sadat', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `e_id` int(5) NOT NULL,
  `e_name` varchar(50) NOT NULL,
  `e_department_id` int(5) NOT NULL,
  `e_department_name` varchar(30) NOT NULL,
  `e_branch_id` int(5) NOT NULL,
  `e_plant_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `plants`
--

CREATE TABLE `plants` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(60) NOT NULL,
  `p_display` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `p_id` int(10) UNSIGNED NOT NULL,
  `p_u_id` int(10) UNSIGNED NOT NULL,
  `p_new_task` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `p_new_service` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `p_activity_report` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `p_cust_activity_report` int(1) NOT NULL DEFAULT '0',
  `p_privilages` int(10) NOT NULL DEFAULT '0',
  `p_edit_user` int(2) NOT NULL DEFAULT '0',
  `p_add_user` int(1) NOT NULL DEFAULT '0' COMMENT 'Create User',
  `p_easy_share` int(1) NOT NULL DEFAULT '0' COMMENT 'Open assign task windows',
  `p_cust_task` int(1) NOT NULL DEFAULT '0' COMMENT 'see relative tasks only',
  `p_assign_task` int(1) NOT NULL DEFAULT '0' COMMENT 'make user assign task to other user',
  `p_view_computers` int(1) NOT NULL DEFAULT '0',
  `p_add_computer` int(1) NOT NULL DEFAULT '0',
  `p_edit_computer` int(1) NOT NULL DEFAULT '0',
  `p_open_ticket` int(1) NOT NULL DEFAULT '0',
  `p_view_tickets` int(1) NOT NULL DEFAULT '0',
  `p_view_cust_tickets` int(1) NOT NULL DEFAULT '0',
  `p_ticket_cases` int(1) NOT NULL DEFAULT '0',
  `p_departments` int(1) NOT NULL DEFAULT '0',
  `p_general` int(1) NOT NULL DEFAULT '0',
  `p_plants` int(1) NOT NULL DEFAULT '0' COMMENT 'view plants',
  `p_branches` int(1) NOT NULL DEFAULT '0' COMMENT 'Display Branches',
  `p_warehouses` int(1) NOT NULL DEFAULT '0' COMMENT 'Display Warehouses',
  `p_manage_items` int(1) NOT NULL DEFAULT '0' COMMENT 'Add Remove Items To Stock',
  `p_make_transaction` int(1) NOT NULL DEFAULT '0' COMMENT 'Stock Transactions',
  `p_report` int(1) NOT NULL DEFAULT '0' COMMENT 'Report',
  `p_stock_board` int(1) NOT NULL DEFAULT '0' COMMENT 'check stock'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`p_id`, `p_u_id`, `p_new_task`, `p_new_service`, `p_activity_report`, `p_cust_activity_report`, `p_privilages`, `p_edit_user`, `p_add_user`, `p_easy_share`, `p_cust_task`, `p_assign_task`, `p_view_computers`, `p_add_computer`, `p_edit_computer`, `p_open_ticket`, `p_view_tickets`, `p_view_cust_tickets`, `p_ticket_cases`, `p_departments`, `p_general`, `p_plants`, `p_branches`, `p_warehouses`, `p_manage_items`, `p_make_transaction`, `p_report`, `p_stock_board`) VALUES
(1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 2, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `s_id` int(10) UNSIGNED NOT NULL,
  `s_name` varchar(60) CHARACTER SET utf8 NOT NULL,
  `s_department` varchar(60) NOT NULL,
  `s_display` int(1) NOT NULL DEFAULT '1'
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
  `s_id` int(1) NOT NULL,
  `s_name` varchar(30) NOT NULL,
  `s_logo` varchar(70) NOT NULL,
  `s_timezone` varchar(50) NOT NULL,
  `s_timezone_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`s_id`, `s_name`, `s_logo`, `s_timezone`, `s_timezone_id`) VALUES
(1, 'syam.info', '0127673525ada2fd774df32d1b6db751.jpg', 'Africa/Cairo', 13);

-- --------------------------------------------------------

--
-- Table structure for table `stock_items`
--

CREATE TABLE `stock_items` (
  `s_id` int(5) NOT NULL,
  `s_name` varchar(50) NOT NULL,
  `s_qty` float NOT NULL DEFAULT '0',
  `s_warehouse_id` int(5) NOT NULL,
  `s_display` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock_items`
--

INSERT INTO `stock_items` (`s_id`, `s_name`, `s_qty`, `s_warehouse_id`, `s_display`) VALUES
(1, 'Keyboard', 49, 1, 1),
(2, 'Mouse', 30, 1, 1),
(3, 'Keyboard', 49, 1, 1),
(4, 'Mouse', 30, 1, 1),
(5, 'Keyboard', 49, 1, 1),
(6, 'Mouse', 30, 1, 1),
(7, 'Keyboard', 49, 1, 1),
(8, 'Mouse', 30, 1, 1),
(9, 'Keyboard', 49, 1, 1),
(10, 'Mouse', 30, 1, 1),
(11, 'Keyboard', 49, 1, 1),
(12, 'Mouse', 30, 1, 1),
(13, 'Keyboard', 49, 1, 1),
(14, 'Mouse', 30, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stock_trans`
--

CREATE TABLE `stock_trans` (
  `s_id` int(5) NOT NULL,
  `s_item_id` int(5) NOT NULL,
  `s_item_name` varchar(30) NOT NULL,
  `s_computer_id` int(5) NOT NULL,
  `s_owner` varchar(20) NOT NULL,
  `s_wh_id` int(5) NOT NULL,
  `s_date` text NOT NULL,
  `s_u_id` int(5) NOT NULL,
  `s_u_name` varchar(30) NOT NULL,
  `s_status` varchar(5) NOT NULL,
  `s_qty` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock_trans`
--

INSERT INTO `stock_trans` (`s_id`, `s_item_id`, `s_item_name`, `s_computer_id`, `s_owner`, `s_wh_id`, `s_date`, `s_u_id`, `s_u_name`, `s_status`, `s_qty`) VALUES
(1, 2, 'Mouse', 0, '', 1, '2019-03-22 20:07:20', 1, '0', 'in', 12),
(2, 2, 'Mouse', 0, '', 1, '2019-03-22 20:09:34', 1, 'Syam', 'in', 5),
(3, 2, 'Mouse', 64, 'محمد صيام', 1, '2019-03-22 20:27:53', 1, 'Syam', 'out', 0),
(4, 1, 'Keyboard', 64, 'محمد صيام', 2, '2019-03-22 20:29:29', 1, 'Syam', 'out', 1),
(5, 2, 'Mouse', 0, '', 1, '2019-03-22 20:07:20', 1, '0', 'in', 12),
(6, 2, 'Mouse', 0, '', 1, '2019-03-22 20:09:34', 1, 'Syam', 'in', 5),
(7, 2, 'Mouse', 64, 'محمد صيام', 1, '2019-03-22 20:27:53', 1, 'Syam', 'out', 0),
(8, 1, 'Keyboard', 64, 'محمد صيام', 2, '2019-03-22 20:29:29', 1, 'Syam', 'out', 1),
(9, 2, 'Mouse', 0, '', 1, '2019-03-22 20:07:20', 1, '0', 'in', 12),
(10, 2, 'Mouse', 0, '', 1, '2019-03-22 20:09:34', 1, 'Syam', 'in', 5),
(11, 2, 'Mouse', 64, 'محمد صيام', 1, '2019-03-22 20:27:53', 1, 'Syam', 'out', 0),
(12, 1, 'Keyboard', 64, 'محمد صيام', 2, '2019-03-22 20:29:29', 1, 'Syam', 'out', 1),
(13, 2, 'Mouse', 0, '', 1, '2019-03-22 20:07:20', 1, '0', 'in', 12),
(14, 2, 'Mouse', 0, '', 1, '2019-03-22 20:09:34', 1, 'Syam', 'in', 5),
(15, 2, 'Mouse', 64, 'محمد صيام', 1, '2019-03-22 20:27:53', 1, 'Syam', 'out', 0),
(16, 1, 'Keyboard', 64, 'محمد صيام', 2, '2019-03-22 20:29:29', 1, 'Syam', 'out', 1),
(17, 2, 'Mouse', 0, '', 1, '2019-03-22 20:07:20', 1, '0', 'in', 12),
(18, 2, 'Mouse', 0, '', 1, '2019-03-22 20:09:34', 1, 'Syam', 'in', 5),
(19, 2, 'Mouse', 64, 'محمد صيام', 1, '2019-03-22 20:27:53', 1, 'Syam', 'out', 0),
(20, 1, 'Keyboard', 64, 'محمد صيام', 2, '2019-03-22 20:29:29', 1, 'Syam', 'out', 1),
(21, 2, 'Mouse', 0, '', 1, '2019-03-22 20:07:20', 1, '0', 'in', 12),
(22, 2, 'Mouse', 0, '', 1, '2019-03-22 20:09:34', 1, 'Syam', 'in', 5),
(23, 2, 'Mouse', 64, 'محمد صيام', 1, '2019-03-22 20:27:53', 1, 'Syam', 'out', 0),
(24, 1, 'Keyboard', 64, 'محمد صيام', 2, '2019-03-22 20:29:29', 1, 'Syam', 'out', 1),
(25, 2, 'Mouse', 0, '', 1, '2019-03-22 20:07:20', 1, '0', 'in', 12),
(26, 2, 'Mouse', 0, '', 1, '2019-03-22 20:09:34', 1, 'Syam', 'in', 5),
(27, 2, 'Mouse', 64, 'محمد صيام', 1, '2019-03-22 20:27:53', 1, 'Syam', 'out', 0),
(28, 1, 'Keyboard', 64, 'محمد صيام', 2, '2019-03-22 20:29:29', 1, 'Syam', 'out', 1),
(29, 2, 'Mouse', 0, '', 1, '2019-03-22 20:07:20', 1, '0', 'in', 12),
(30, 2, 'Mouse', 0, '', 1, '2019-03-22 20:09:34', 1, 'Syam', 'in', 5),
(31, 2, 'Mouse', 64, 'محمد صيام', 1, '2019-03-22 20:27:53', 1, 'Syam', 'out', 0),
(32, 1, 'Keyboard', 64, 'محمد صيام', 2, '2019-03-22 20:29:29', 1, 'Syam', 'out', 1),
(33, 1, 'Keyboard', 0, 'Sadat', 1, '2019-03-22 23:35:32', 1, 'Syam', 'IN', 20);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `t_id` int(5) NOT NULL,
  `t_message` varchar(300) NOT NULL COMMENT 'ticket_message',
  `t_u_id` int(5) NOT NULL COMMENT 'ticket user id',
  `t_u_name` varchar(30) NOT NULL COMMENT 'ticket user name',
  `t_t_id` int(5) NOT NULL COMMENT 'ticket case id',
  `t_t_name` varchar(50) NOT NULL COMMENT 'ticket case name',
  `t_d_id` int(5) NOT NULL COMMENT 'ticket department id',
  `t_d_name` varchar(30) NOT NULL COMMENT 'ticket department name',
  `t_status` int(5) NOT NULL DEFAULT '0' COMMENT 'ticket status',
  `t_date` varchar(45) NOT NULL COMMENT 'ticket dates'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`t_id`, `t_message`, `t_u_id`, `t_u_name`, `t_t_id`, `t_t_name`, `t_d_id`, `t_d_name`, `t_status`, `t_date`) VALUES
(18, 'I can\'t print , please check my printer ', 1, 'Mark', 10, 'Printer', 1, 'IT', 0, '2018-10-02 06:20:03');

-- --------------------------------------------------------

--
-- Table structure for table `tickets_replies`
--

CREATE TABLE `tickets_replies` (
  `t_id` int(5) NOT NULL,
  `t_t_id` int(5) NOT NULL COMMENT 'ticket id',
  `t_reply` varchar(300) NOT NULL COMMENT 'repley message',
  `t_u_id` int(5) NOT NULL COMMENT 'user id',
  `t_u_name` varchar(30) NOT NULL COMMENT 'user name',
  `t_d_id` int(5) NOT NULL COMMENT 'Department id',
  `t_d_name` varchar(50) NOT NULL COMMENT 'Deparment Name',
  `t_date` varchar(50) NOT NULL COMMENT 'Reply Date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_cases`
--

CREATE TABLE `ticket_cases` (
  `t_id` int(20) NOT NULL COMMENT 'Case_Id',
  `t_name` varchar(60) NOT NULL COMMENT 'Case_Name',
  `t_d_id` int(5) NOT NULL COMMENT 'deparment_id',
  `t_d_name` varchar(30) NOT NULL COMMENT 'deparmnet_name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `t_id` int(4) NOT NULL,
  `t_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `t_id` int(10) UNSIGNED NOT NULL,
  `t_s_id` int(10) UNSIGNED NOT NULL,
  `t_s_name` varchar(45) DEFAULT NULL,
  `t_s_desc` varchar(200) NOT NULL,
  `t_u_id` varchar(45) NOT NULL,
  `t_u_name` varchar(45) NOT NULL,
  `t_d_id` int(10) UNSIGNED NOT NULL,
  `t_d_name` varchar(45) NOT NULL,
  `t_date` varchar(45) CHARACTER SET latin1 NOT NULL,
  `t_tasked_from_u_id` int(5) NOT NULL,
  `t_tasked_from_u_name` varchar(30) NOT NULL,
  `t_tasked` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`t_id`, `t_s_id`, `t_s_name`, `t_s_desc`, `t_u_id`, `t_u_name`, `t_d_id`, `t_d_name`, `t_date`, `t_tasked_from_u_id`, `t_tasked_from_u_name`, `t_tasked`) VALUES
(44, 3, 'Machine line one', 'I found a problem on this line, the error detected and solved ', '1', 'Mark', 1, 'IT', '2018-10-02 06:17:23', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(10) UNSIGNED NOT NULL,
  `u_username` varchar(45) NOT NULL,
  `u_name` varchar(45) NOT NULL,
  `u_phone` varchar(20) NOT NULL,
  `u_email` varchar(50) NOT NULL,
  `u_password` varchar(45) NOT NULL,
  `u_department` int(5) NOT NULL,
  `u_department_name` varchar(40) CHARACTER SET utf8 NOT NULL,
  `u_active` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `u_username`, `u_name`, `u_phone`, `u_email`, `u_password`, `u_department`, `u_department_name`, `u_active`) VALUES
(1, 'mohamedsyam', 'Syam', '01101101277', 'syamgro@gmail.com', '0121441689', 1, 'IT', 1),
(6, 'admin', 'admin', '0121441689', 'admin@syam.info', 'admin', 1, 'IT', 1);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `w_id` int(5) NOT NULL,
  `w_name` varchar(30) NOT NULL,
  `w_display` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`w_id`, `w_name`, `w_display`) VALUES
(1, 'Sadat', 1);

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
  MODIFY `b_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `c_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `computers`
--
ALTER TABLE `computers`
  MODIFY `p_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `d_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `e_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plants`
--
ALTER TABLE `plants`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `p_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `s_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `s_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stock_items`
--
ALTER TABLE `stock_items`
  MODIFY `s_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `stock_trans`
--
ALTER TABLE `stock_trans`
  MODIFY `s_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `t_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tickets_replies`
--
ALTER TABLE `tickets_replies`
  MODIFY `t_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_cases`
--
ALTER TABLE `ticket_cases`
  MODIFY `t_id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'Case_Id', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `timezone`
--
ALTER TABLE `timezone`
  MODIFY `t_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=591;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `t_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `w_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
