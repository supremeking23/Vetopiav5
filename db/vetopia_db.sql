-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2018 at 09:21 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vetopia_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admins`
--

CREATE TABLE `tbl_admins` (
  `admin_table_id` int(11) NOT NULL,
  `admin_type` varchar(45) NOT NULL,
  `admin_id` text NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `middlename` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `birthdate` date NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `homeAddress` varchar(45) NOT NULL,
  `barangayAddress` varchar(45) NOT NULL,
  `cityAddress` varchar(45) NOT NULL,
  `postalID` varchar(45) NOT NULL,
  `admin_status` varchar(45) NOT NULL,
  `dateAdded` datetime NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` text NOT NULL,
  `profile` text NOT NULL,
  `gender` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admins`
--

INSERT INTO `tbl_admins` (`admin_table_id`, `admin_type`, `admin_id`, `firstname`, `middlename`, `lastname`, `birthdate`, `contact`, `email`, `homeAddress`, `barangayAddress`, `cityAddress`, `postalID`, `admin_status`, `dateAdded`, `username`, `password`, `profile`, `gender`) VALUES
(1, 'Super Admin', 'A1806231044313', 'Ivan Christian Jay', 'Echanes', 'Funcion', '1995-11-23', '09481212312', 'icjfuncion@gmail.com', '16th ISU Village', 'Barangay 31', 'Makati ', '21', 'Active', '2018-06-23 10:49:02', 'superadmin', 'superadmin', 'Godspeed1.jpg', 'Male'),
(5, 'Admin', 'A1808210927293', 'Shannel Almira', 'Incarnation', 'Layola', '1987-01-06', '09021232212', 'shannelalmira@gmail.com', '#3333', 'ivn street', 'makati city', '1111', 'Active', '2018-08-21 21:28:09', '', '', '', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointments`
--

CREATE TABLE `tbl_appointments` (
  `appointment_table_id` int(11) NOT NULL,
  `appointment_id` text NOT NULL,
  `customer_id` text NOT NULL,
  `pet_table_id` int(11) NOT NULL,
  `customer_name` text NOT NULL,
  `preferredDate` date NOT NULL,
  `preferredtime` text NOT NULL,
  `pet_name` varchar(45) NOT NULL,
  `pet_id` text NOT NULL,
  `pettype` varchar(45) NOT NULL,
  `petbreed` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `is_adult` int(11) NOT NULL,
  `appointment_status` varchar(45) NOT NULL,
  `date_requested` datetime NOT NULL,
  `vet_id` text NOT NULL,
  `vet_in_charge` text NOT NULL,
  `complaints` text NOT NULL,
  `cancel_reason` text NOT NULL,
  `cancel_date` datetime NOT NULL,
  `is_finished` int(11) NOT NULL,
  `date_confirmed` datetime NOT NULL,
  `total_payment` decimal(10,2) NOT NULL,
  `cash` decimal(10,2) NOT NULL,
  `change` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_appointments`
--

INSERT INTO `tbl_appointments` (`appointment_table_id`, `appointment_id`, `customer_id`, `pet_table_id`, `customer_name`, `preferredDate`, `preferredtime`, `pet_name`, `pet_id`, `pettype`, `petbreed`, `age`, `is_adult`, `appointment_status`, `date_requested`, `vet_id`, `vet_in_charge`, `complaints`, `cancel_reason`, `cancel_date`, `is_finished`, `date_confirmed`, `total_payment`, `cash`, `change`) VALUES
(56, '#1808241011211', 'C1808211035448', 14, 'Lee Min Horse', '2018-08-24', '11:00 am - 12: 00 nn', 'LenTik', 'P1808221046418', 'Cat', 'British Shorthair', '6 Months old', 0, 'Done', '2018-08-24 10:11:21', 'V1808211104490', 'Carlos Almonds Valdez', 'oo ma', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '111.00', '115.00', '4.00'),
(57, '#1808241120106', 'C1808211035448', 13, 'Lee Min Horse', '2018-08-24', '2:00 pm - 3:00 pm', 'Arnelsz', 'P1808221021292', 'Cat', 'Ragdoll', '3 Years old', 1, 'Done', '2018-08-24 11:20:10', 'V1808211104490', 'Carlos Almonds Valdez', 'ivansdsa', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '411.00', '415.00', '4.00'),
(58, '#1808251235347', 'C1808211035448', 16, 'Lee Min Horse', '2018-08-25', '10:00 am - 11:00 am', 'Aninags', 'P1808221121554', 'Cat', 'British Shorthair', '2 Years old', 1, 'Cancelled', '2018-08-25 00:35:34', 'V1808211104490', 'Carlos Almonds Valdez', 'hahaha ako ulit', '<p>wala sya</p><p><br></p>', '2018-08-26 04:43:43', 0, '0000-00-00 00:00:00', '0.00', '0.00', '0.00'),
(59, '#1808250239451', 'C1808211035448', 15, 'Lee Min Horse', '2018-08-25', '2:00 pm - 3:00 pm', 'cole', 'P1808221048598', 'Cat', 'British Shorthair', '1 Years old', 1, 'Cancelled', '2018-08-25 02:39:45', 'V1808211104490', 'Carlos Almonds Valdez', '<p>Ako at ikaw</p>', '<p>wala sya</p>', '2018-08-26 04:43:37', 0, '0000-00-00 00:00:00', '0.00', '0.00', '0.00'),
(60, '#1808260444092', 'C1808211035448', 15, 'Lee Min Horse', '2018-08-26', '9:00 am - 10:00 am', 'cole', 'P1808221048598', 'Cat', 'British Shorthair', '1 Years old', 1, 'Done', '2018-08-26 04:44:09', 'V1808211104490', 'Carlos Almonds Valdez', '<p>tahol daw ng tahol</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '411.00', '500.00', '89.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bannerimages`
--

CREATE TABLE `tbl_bannerimages` (
  `bannerimage_id` int(11) NOT NULL,
  `settings_id` int(11) NOT NULL,
  `banner_image` text NOT NULL,
  `banner_caption_heading` varchar(45) NOT NULL,
  `banner_caption` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bannerimages`
--

INSERT INTO `tbl_bannerimages` (`bannerimage_id`, `settings_id`, `banner_image`, `banner_caption_heading`, `banner_caption`) VALUES
(11, 1, 'carousel-mission.jpg', 'Vetopia', 'Welcome to Vetopia'),
(12, 1, 'carousel-lifestyle.jpg', 'Banner 2', 'tHIS IS BANNER 2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_checkupdetails`
--

CREATE TABLE `tbl_checkupdetails` (
  `checkup_id` int(11) NOT NULL,
  `assessment_date` datetime NOT NULL,
  `appointment_table_id` int(11) NOT NULL,
  `appointment_id` text NOT NULL,
  `date` date NOT NULL,
  `time` text NOT NULL,
  `veterinarian` text NOT NULL,
  `vet_id` text NOT NULL,
  `pet_id` text NOT NULL,
  `petname` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `complaints` text NOT NULL,
  `treatment` text NOT NULL,
  `prescription` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_checkupdetails`
--

INSERT INTO `tbl_checkupdetails` (`checkup_id`, `assessment_date`, `appointment_table_id`, `appointment_id`, `date`, `time`, `veterinarian`, `vet_id`, `pet_id`, `petname`, `age`, `complaints`, `treatment`, `prescription`) VALUES
(61, '2018-08-24 10:14:39', 56, '#1808241011211', '2018-08-24', '11:00 am - 12: 00 nn', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808221046418', 'LenTik', '6 Months old', 'oo ma', 'Input Veterinarian Statement/ Observation / Treatment', '<p>Bilhin mo tong mga to ah.. ahha</p><p></p><ol><li>bili ka nito</li><li>ito</li><li>sama mo na rin to ..</li><li>bilhin mo to lahat ah</li></ol><p></p>'),
(62, '2018-08-24 11:20:38', 57, '#1808241120106', '2018-08-24', '2:00 pm - 3:00 pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808221021292', 'Arnelsz', '3 Years old', 'ivansdsa', 'Input Veterinarian Statement/ Observation / Treatment', 'Prescriptions / Medicines / Doctors Comments and Recomendation\r\n                                        <div><p></p><ol><li>ivan<br></li><li>christian</li><li>jay</li><li>funcion</li><li>ako</li></ol><p></p></div>'),
(63, '2018-08-26 04:47:28', 60, '#1808260444092', '2018-08-26', '9:00 am - 10:00 am', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808221048598', 'cole', '1 Years old', '<p>tahol daw ng tahol</p>', 'Tinanggalan ng Voice box', '<p>wala.. kasi baka tumaholulit</p><p>nag deworming narin para tanggal bituka</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customer_table_id` int(11) NOT NULL,
  `customer_id` text NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `middlename` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `birthdate` date NOT NULL,
  `homeAddress` varchar(45) NOT NULL,
  `barangayAddress` varchar(45) NOT NULL,
  `cityAddress` varchar(45) NOT NULL,
  `postalID` varchar(45) NOT NULL,
  `dateAdded` datetime NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `customer_status` varchar(45) NOT NULL,
  `profile` text NOT NULL,
  `contact` text NOT NULL,
  `gender` varchar(45) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_table_id`, `customer_id`, `firstname`, `middlename`, `lastname`, `birthdate`, `homeAddress`, `barangayAddress`, `cityAddress`, `postalID`, `dateAdded`, `username`, `password`, `customer_status`, `profile`, `contact`, `gender`, `email`) VALUES
(7, 'C1808211035448', 'Lee', 'Min', 'Horse', '1988-02-09', 'kor', 'korq', 'kors', '144', '2018-08-21 22:35:47', '', '', 'Active', 'team1.png', '09021232212', 'Male', 'leemin@gmail.com'),
(8, 'C1808221128307', 'Renato', 'Magtanggol', 'Dalisay', '1994-05-25', '#3333', 'ivn street', 'makati city', '1111', '2018-08-22 11:29:22', '', '', 'Active', 'Aristotle_Color11.jpg', '09021232212', 'Male', 'recardo@gmail.com'),
(9, 'C1808260134527', 'Carl Vincent', 'Lorenzo', 'Echanez', '1993-03-05', 'las pinas ', 'las pinas ', 'las pinas ', '3323', '2018-08-26 13:36:04', '', '', 'Active', '', '09157299313', 'Male', 'sad539281@gmail.com'),
(10, 'C1808260210291', 'Sandra', 'Abdul', 'Dela Cruz', '1996-01-17', 'dsda', 'dsda', 'sdasd', '1111', '2018-08-26 14:11:41', '', '', 'Active', '', '09266019033', 'Female', 'psandradelacruz@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `log_id` int(11) NOT NULL,
  `log_user` text NOT NULL,
  `log_usertype` varchar(45) NOT NULL,
  `log_userID` text NOT NULL,
  `log_action` text NOT NULL,
  `log_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_logs`
--

INSERT INTO `tbl_logs` (`log_id`, `log_user`, `log_usertype`, `log_userID`, `log_action`, `log_date`) VALUES
(1, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-21 12:13:02'),
(2, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-21 12:13:03'),
(3, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-21 12:13:07'),
(4, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-21 12:15:40'),
(5, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-21 12:18:49'),
(6, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-21 12:22:07'),
(7, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Edit About us content', '2018-08-21 12:22:12'),
(8, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-21 12:22:26'),
(9, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Edit About us content', '2018-08-21 12:22:29'),
(10, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Edit About us content', '2018-08-21 12:22:30'),
(11, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Edit About us content', '2018-08-21 12:22:30'),
(12, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Edit About us content', '2018-08-21 12:22:30'),
(13, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Edit About us content', '2018-08-21 12:22:31'),
(14, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Edit About us content', '2018-08-21 12:22:31'),
(15, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-21 12:24:50'),
(16, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-21 12:24:57'),
(17, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Edit About us content', '2018-08-21 12:25:01'),
(18, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-21 12:25:03'),
(19, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Edit About us content', '2018-08-21 12:25:13'),
(20, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-21 12:25:15'),
(21, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-21 12:37:28'),
(22, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Edit About us content', '2018-08-21 12:37:36'),
(23, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-21 12:37:38'),
(24, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-21 15:08:12'),
(25, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-21 15:08:13'),
(26, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-21 15:08:15'),
(27, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:08:18'),
(28, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:10:19'),
(29, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:11:12'),
(30, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:11:57'),
(31, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Remove Content of  article Kennel Cough', '2018-08-21 15:12:00'),
(32, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:12:02'),
(33, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add Content of  article Kennel Cough', '2018-08-21 15:12:11'),
(34, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:12:13'),
(35, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Remove Content of  article Kennel Cough', '2018-08-21 15:12:15'),
(36, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:12:17'),
(37, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:13:02'),
(38, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:13:03'),
(39, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:13:06'),
(40, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:13:10'),
(41, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:13:23'),
(42, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:13:25'),
(43, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:13:41'),
(44, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add Content of  article Kennel Cough', '2018-08-21 15:13:43'),
(45, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:13:45'),
(46, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add Content of  article Kennel Cough', '2018-08-21 15:13:50'),
(47, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:13:52'),
(48, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add Content of  article Kennel Cough', '2018-08-21 15:13:57'),
(49, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:13:59'),
(50, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:14:45'),
(51, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:17:09'),
(52, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:18:08'),
(53, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:18:19'),
(54, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:27:30'),
(55, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:27:41'),
(56, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:27:54'),
(57, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:29:03'),
(58, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Remove Content of  article Kennel Cough', '2018-08-21 15:29:13'),
(59, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:29:15'),
(60, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:29:37'),
(61, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Remove Content of  article Kennel Cough', '2018-08-21 15:29:40'),
(62, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:29:42'),
(63, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add Content of  article Kennel Cough', '2018-08-21 15:30:00'),
(64, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 15:30:02'),
(65, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-21 19:31:28'),
(66, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-21 19:31:28'),
(67, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-21 19:31:30'),
(68, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:31:32'),
(69, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Remove Content of  article Kennel Cough', '2018-08-21 19:31:34'),
(70, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:31:36'),
(71, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add Content of  article Kennel Cough', '2018-08-21 19:32:12'),
(72, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:32:14'),
(73, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add Content of  article Kennel Cough', '2018-08-21 19:32:20'),
(74, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:32:22'),
(75, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-21 19:33:24'),
(76, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Change Status of  article dasdsdasdsad to Inactive', '2018-08-21 19:33:26'),
(77, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-21 19:33:28'),
(78, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Change Status of  article Kennel Cough to Active', '2018-08-21 19:33:31'),
(79, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-21 19:33:33'),
(80, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-08-21 19:33:35'),
(81, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-21 19:34:55'),
(82, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-21 19:35:04'),
(83, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-21 19:35:06'),
(84, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-21 19:35:08'),
(85, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-21 19:35:14'),
(86, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:35:16'),
(87, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-21 19:35:18'),
(88, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add article in Pet Health Care Library', '2018-08-21 19:35:44'),
(89, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-21 19:35:46'),
(90, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-21 19:37:42'),
(91, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add article in Pet Health Care Library', '2018-08-21 19:37:50'),
(92, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-21 19:37:53'),
(93, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-21 19:38:58'),
(94, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add article in Pet Health Care Library', '2018-08-21 19:39:14'),
(95, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-21 19:39:17'),
(96, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-21 19:40:14'),
(97, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add article in Pet Health Care Library', '2018-08-21 19:40:22'),
(98, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-21 19:40:24'),
(99, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-21 19:41:33'),
(100, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add article in Pet Health Care Library', '2018-08-21 19:41:45'),
(101, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-21 19:41:47'),
(102, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-21 19:42:16'),
(103, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add article in Pet Health Care Library', '2018-08-21 19:42:25'),
(104, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-21 19:42:27'),
(105, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:42:39'),
(106, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-21 19:42:41'),
(107, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:42:43'),
(108, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:43:50'),
(109, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-21 19:43:53'),
(110, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-21 19:44:47'),
(111, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Remove Content of  article Kennel Cough', '2018-08-21 19:46:58'),
(112, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:47:01'),
(113, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 19:47:14'),
(114, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:47:16'),
(115, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:47:19'),
(116, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 19:47:26'),
(117, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:47:28'),
(118, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:48:32'),
(119, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 19:48:36'),
(120, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:48:38'),
(121, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 19:49:00'),
(122, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:49:02'),
(123, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:49:27'),
(124, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add Content of  article Kennel Cough', '2018-08-21 19:49:32'),
(125, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:49:34'),
(126, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 19:49:38'),
(127, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:49:40'),
(128, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:51:02'),
(129, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:51:04'),
(130, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:51:06'),
(131, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add Content of  article Kennel Cough', '2018-08-21 19:51:14'),
(132, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:51:16'),
(133, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 19:51:31'),
(134, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:51:33'),
(135, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:51:41'),
(136, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 19:51:46'),
(137, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:52:49'),
(138, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 19:52:55'),
(139, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 19:54:34'),
(140, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 19:55:49'),
(141, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:55:51'),
(142, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 19:55:54'),
(143, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:55:56'),
(144, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 19:56:12'),
(145, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:56:14'),
(146, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add Content of  article Kennel Cough', '2018-08-21 19:56:36'),
(147, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:56:38'),
(148, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Image of  article Kennel Cough', '2018-08-21 19:57:18'),
(149, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:57:20'),
(150, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:59:20'),
(151, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Image of  article Kennel Cough', '2018-08-21 19:59:26'),
(152, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 19:59:29'),
(153, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Image of  article Kennel Cough', '2018-08-21 20:00:17'),
(154, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:00:19'),
(155, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Image of  article Kennel Cough', '2018-08-21 20:00:26'),
(156, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:00:28'),
(157, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 20:00:33'),
(158, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:00:35'),
(159, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 20:00:48'),
(160, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:00:50'),
(161, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Remove Content of  article Kennel Cough', '2018-08-21 20:01:01'),
(162, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:01:05'),
(163, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:02:25'),
(164, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 20:02:30'),
(165, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:02:32'),
(166, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:03:45'),
(167, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 20:03:49'),
(168, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 20:03:53'),
(169, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 20:03:54'),
(170, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 20:03:55'),
(171, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 20:03:55'),
(172, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 20:03:56'),
(173, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 20:03:59'),
(174, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 20:03:59'),
(175, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 20:04:00'),
(176, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 20:04:00'),
(177, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 20:04:01'),
(178, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 20:04:02'),
(179, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 20:04:02'),
(180, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 20:04:03'),
(181, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 20:04:03'),
(182, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:05:11'),
(183, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 20:05:14'),
(184, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:09:11'),
(185, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 20:09:16'),
(186, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:09:32'),
(187, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article Kennel Cough', '2018-08-21 20:09:42'),
(188, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:09:44'),
(189, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:11:11'),
(190, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:17:06'),
(191, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Remove Content of  article Kennel Cough', '2018-08-21 20:17:11'),
(192, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:17:13'),
(193, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Remove Content of  article Kennel Cough', '2018-08-21 20:17:42'),
(194, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:17:44'),
(195, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:20:25'),
(196, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add Content of  article Kennel Cough', '2018-08-21 20:20:30'),
(197, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:20:32'),
(198, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Remove Content of  article Kennel Cough', '2018-08-21 20:20:36'),
(199, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:20:38'),
(200, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:21:08'),
(201, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add Content of  article Kennel Cough', '2018-08-21 20:21:12'),
(202, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:21:14'),
(203, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Remove Content of  article Kennel Cough', '2018-08-21 20:21:19'),
(204, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:21:21'),
(205, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:25:15'),
(206, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Remove Content of  article Kennel Cough', '2018-08-21 20:25:19'),
(207, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:25:21'),
(208, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add Content of  article Kennel Cough', '2018-08-21 20:25:26'),
(209, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:25:28'),
(210, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Remove Content of  article Kennel Cough', '2018-08-21 20:25:43'),
(211, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:25:45'),
(212, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:25:46'),
(213, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:25:47'),
(214, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:25:47'),
(215, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:25:47'),
(216, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:25:47'),
(217, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:25:47'),
(218, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:25:47'),
(219, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:25:48'),
(220, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:25:48'),
(221, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:25:48'),
(222, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Remove Content of  article Kennel Cough', '2018-08-21 20:25:52'),
(223, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:25:54'),
(224, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add Content of  article Kennel Cough', '2018-08-21 20:26:02'),
(225, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:26:04'),
(226, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add Content of  article Kennel Cough', '2018-08-21 20:26:08'),
(227, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:26:10'),
(228, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:27:22'),
(229, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add Content of  article Kennel Cough', '2018-08-21 20:27:26'),
(230, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:27:28'),
(231, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Remove Content of  article Kennel Cough', '2018-08-21 20:27:31'),
(232, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:27:33'),
(233, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:33:36'),
(234, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Remove Link of  article Kennel Cough', '2018-08-21 20:33:39'),
(235, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:33:41'),
(236, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-21 20:33:53'),
(237, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin list', '2018-08-21 20:34:22'),
(238, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin details', '2018-08-21 20:34:27'),
(239, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin details', '2018-08-21 20:36:49'),
(240, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin details', '2018-08-21 20:37:20'),
(241, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin details', '2018-08-21 20:40:29'),
(242, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin details', '2018-08-21 20:40:38'),
(243, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin details', '2018-08-21 20:41:05'),
(244, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin details', '2018-08-21 20:41:10'),
(245, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin details', '2018-08-21 20:41:15'),
(246, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin details', '2018-08-21 20:41:29'),
(247, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin details', '2018-08-21 20:41:32'),
(248, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin list', '2018-08-21 20:41:38'),
(249, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin list', '2018-08-21 20:44:22'),
(250, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin list', '2018-08-21 20:44:48'),
(251, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin list', '2018-08-21 21:07:04'),
(252, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin list', '2018-08-21 21:14:50'),
(253, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin list', '2018-08-21 21:14:51'),
(254, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin list', '2018-08-21 21:24:39'),
(255, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin list', '2018-08-21 21:25:50'),
(256, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin list', '2018-08-21 21:26:41'),
(257, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin list', '2018-08-21 21:27:29'),
(258, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add new Admin', '2018-08-21 21:28:09'),
(259, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin list', '2018-08-21 21:28:09'),
(260, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin details', '2018-08-21 22:02:13'),
(261, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin details', '2018-08-21 22:08:18'),
(262, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin details', '2018-08-21 22:08:20'),
(263, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin list', '2018-08-21 22:08:25'),
(264, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin details', '2018-08-21 22:08:27'),
(265, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin list', '2018-08-21 22:08:39'),
(266, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin details', '2018-08-21 22:08:41'),
(267, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin details', '2018-08-21 22:09:09'),
(268, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin list', '2018-08-21 22:09:11'),
(269, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin details', '2018-08-21 22:09:12'),
(270, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin profile', '2018-08-21 22:09:40'),
(271, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin list', '2018-08-21 22:11:14'),
(272, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin details', '2018-08-21 22:11:15'),
(273, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin list', '2018-08-21 22:11:18'),
(274, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin details', '2018-08-21 22:11:39'),
(275, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin list', '2018-08-21 22:11:41'),
(276, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin details', '2018-08-21 22:11:42'),
(277, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin details', '2018-08-21 22:19:39'),
(278, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin details', '2018-08-21 22:20:00'),
(279, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin details', '2018-08-21 22:20:34'),
(280, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin details', '2018-08-21 22:23:02'),
(281, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin details', '2018-08-21 22:23:08'),
(282, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin details', '2018-08-21 22:23:39'),
(283, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-08-21 22:27:11'),
(284, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin list', '2018-08-21 22:27:21'),
(285, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-08-21 22:31:49'),
(286, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-08-21 22:32:59'),
(287, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-08-21 22:35:17'),
(288, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-08-21 22:35:43'),
(289, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add new Admin', '2018-08-21 22:35:47'),
(290, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-08-21 22:35:48'),
(291, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer details', '2018-08-21 22:47:42'),
(292, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer details', '2018-08-21 22:48:43'),
(293, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer details', '2018-08-21 22:49:06'),
(294, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer details', '2018-08-21 22:49:14'),
(295, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer details', '2018-08-21 22:50:15'),
(296, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer details', '2018-08-21 22:50:18'),
(297, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer details', '2018-08-21 22:50:39'),
(298, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-08-21 22:54:30'),
(299, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-08-21 22:54:57'),
(300, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-08-21 23:00:54'),
(301, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-08-21 23:02:33'),
(302, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-08-21 23:03:36'),
(303, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-08-21 23:04:22'),
(304, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add new Veterinarian', '2018-08-21 23:04:49'),
(305, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-08-21 23:04:49'),
(306, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add new Veterinarian', '2018-08-21 23:06:11'),
(307, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-08-21 23:06:11'),
(308, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-08-21 23:06:53'),
(309, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add new Veterinarian', '2018-08-21 23:07:32'),
(310, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-08-21 23:07:32'),
(311, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-08-21 23:07:36'),
(312, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-08-21 23:07:58'),
(313, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-08-21 23:08:08'),
(314, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-08-21 23:08:12'),
(315, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-08-21 23:08:19'),
(316, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-08-21 23:08:29'),
(317, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-08-21 23:19:25'),
(318, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-08-21 23:19:34'),
(319, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-08-21 23:20:49'),
(320, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-08-21 23:21:15'),
(321, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-08-21 23:22:32'),
(322, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-08-21 23:22:36'),
(323, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-08-21 23:22:39'),
(324, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-08-21 23:22:41'),
(325, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff List', '2018-08-21 23:22:53'),
(326, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-08-21 23:22:54'),
(327, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer details', '2018-08-21 23:23:00'),
(328, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer details', '2018-08-21 23:23:09'),
(329, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff List', '2018-08-21 23:23:16'),
(330, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff List', '2018-08-21 23:27:01'),
(331, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff List', '2018-08-21 23:27:27'),
(332, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff List', '2018-08-21 23:28:02'),
(333, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff List', '2018-08-21 23:33:26'),
(334, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff List', '2018-08-21 23:34:50'),
(335, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add new Staff', '2018-08-21 23:34:57'),
(336, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff List', '2018-08-21 23:34:57'),
(337, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add new Staff', '2018-08-21 23:35:30'),
(338, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff List', '2018-08-21 23:35:30'),
(339, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff Details', '2018-08-21 23:35:33'),
(340, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin list', '2018-08-21 23:36:05'),
(341, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-08-21 23:36:05'),
(342, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-08-21 23:36:07'),
(343, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin details', '2018-08-21 23:36:10'),
(344, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-08-21 23:36:13'),
(345, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer details', '2018-08-21 23:36:18'),
(346, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff List', '2018-08-21 23:47:20'),
(347, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff Details', '2018-08-21 23:47:22'),
(348, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff Details', '2018-08-21 23:49:41'),
(349, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff Details', '2018-08-21 23:50:11'),
(350, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff List', '2018-08-21 23:51:36'),
(351, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add new Staff', '2018-08-21 23:52:10'),
(352, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff List', '2018-08-21 23:52:10'),
(353, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff Details', '2018-08-21 23:52:13'),
(354, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff Details', '2018-08-21 23:54:04'),
(355, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff Details', '2018-08-21 23:54:12'),
(356, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin profile', '2018-08-21 23:54:24'),
(357, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-22 00:10:36'),
(358, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-22 00:10:36'),
(359, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-08-22 00:10:40'),
(360, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Login', '2018-08-22 00:10:56'),
(361, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-22 00:10:56'),
(362, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-22 00:14:18'),
(363, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-22 00:14:18'),
(364, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-08-22 00:14:22'),
(365, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Login', '2018-08-22 00:16:47'),
(366, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View My Pets Section', '2018-08-22 00:16:55'),
(367, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View Pet Health Library', '2018-08-22 00:17:08'),
(368, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View My Pets Section', '2018-08-22 00:17:16'),
(369, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View My Pets Section', '2018-08-22 00:17:29'),
(370, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Logout', '2018-08-22 00:17:35'),
(371, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View logs', '2018-08-22 00:17:43'),
(372, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Login', '2018-08-22 00:20:25'),
(373, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-22 00:20:26'),
(374, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-22 00:20:32'),
(375, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-22 00:20:34'),
(376, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff List', '2018-08-22 00:21:36'),
(377, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add new Staff', '2018-08-22 00:22:18'),
(378, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff List', '2018-08-22 00:22:18'),
(379, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Login', '2018-08-22 00:23:26'),
(380, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 00:23:26'),
(381, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Logout', '2018-08-22 00:23:38'),
(382, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-22 00:23:44'),
(383, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Login', '2018-08-22 00:54:52'),
(384, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 00:54:52'),
(385, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 00:54:56'),
(386, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 00:55:53'),
(387, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 00:55:59'),
(388, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 00:56:01'),
(389, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 00:56:41'),
(390, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet List', '2018-08-22 00:56:44'),
(391, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 00:56:47'),
(392, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 00:58:06'),
(393, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 00:58:11'),
(394, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 00:58:13'),
(395, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 00:58:14'),
(396, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Handle POS', '2018-08-22 00:58:31'),
(397, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 00:58:31'),
(398, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 00:59:46'),
(399, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 00:59:48'),
(400, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 00:59:51'),
(401, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 01:03:07'),
(402, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 01:03:09'),
(403, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 01:03:10'),
(404, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Handle POS', '2018-08-22 01:03:19'),
(405, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 01:03:19'),
(406, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 01:03:29'),
(407, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 01:03:52'),
(408, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 01:04:41'),
(409, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 01:04:43'),
(410, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 01:05:15'),
(411, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 01:05:29'),
(412, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 01:05:53');
INSERT INTO `tbl_logs` (`log_id`, `log_user`, `log_usertype`, `log_userID`, `log_action`, `log_date`) VALUES
(413, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 01:06:40'),
(414, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Update status of Customer C1808220106402 to Inactive', '2018-08-22 01:06:44'),
(415, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 01:06:46'),
(416, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Update status of Customer C1808220106463 to Active', '2018-08-22 01:06:48'),
(417, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 01:06:50'),
(418, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 01:06:53'),
(419, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 01:06:57'),
(420, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 01:07:33'),
(421, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 01:08:30'),
(422, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 01:08:31'),
(423, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 01:08:43'),
(424, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 01:08:43'),
(425, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 01:08:46'),
(426, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 01:08:51'),
(427, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 01:08:54'),
(428, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 01:08:56'),
(429, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 01:09:20'),
(430, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 01:09:53'),
(431, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 01:09:56'),
(432, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 01:09:59'),
(433, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 01:10:02'),
(434, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 01:10:29'),
(435, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 01:11:18'),
(436, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 01:11:20'),
(437, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 01:12:48'),
(438, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 01:12:50'),
(439, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Handle POS', '2018-08-22 01:13:03'),
(440, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 01:13:03'),
(441, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 01:13:23'),
(442, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 01:13:26'),
(443, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet List', '2018-08-22 01:13:27'),
(444, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 01:13:29'),
(445, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-08-22 01:13:40'),
(446, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Login', '2018-08-22 10:16:57'),
(447, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Logout', '2018-08-22 10:17:05'),
(448, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Login', '2018-08-22 10:17:34'),
(449, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 10:17:35'),
(450, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 10:17:37'),
(451, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 10:20:15'),
(452, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 10:20:16'),
(453, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 10:20:18'),
(454, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 10:20:22'),
(455, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 10:20:30'),
(456, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 10:20:33'),
(457, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 10:21:29'),
(458, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Add New Pet', '2018-08-22 10:22:03'),
(459, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 10:22:05'),
(460, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet details', '2018-08-22 10:22:13'),
(461, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 10:22:17'),
(462, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet details', '2018-08-22 10:23:31'),
(463, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 10:23:34'),
(464, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 10:23:36'),
(465, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 10:24:08'),
(466, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 10:24:10'),
(467, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 10:24:16'),
(468, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 10:24:23'),
(469, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 10:25:35'),
(470, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 10:27:22'),
(471, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 10:27:35'),
(472, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 10:27:46'),
(473, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet details', '2018-08-22 10:27:53'),
(474, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet details', '2018-08-22 10:29:56'),
(475, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 10:30:19'),
(476, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 10:30:30'),
(477, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 10:30:37'),
(478, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 10:30:39'),
(479, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 10:30:44'),
(480, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 10:30:44'),
(481, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet List', '2018-08-22 10:30:50'),
(482, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet details', '2018-08-22 10:30:54'),
(483, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 10:30:56'),
(484, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 10:30:58'),
(485, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 10:31:01'),
(486, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 10:31:02'),
(487, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet List', '2018-08-22 10:31:05'),
(488, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet List', '2018-08-22 10:32:10'),
(489, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 10:32:12'),
(490, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 10:32:13'),
(491, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-22 10:32:49'),
(492, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-22 10:32:49'),
(493, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-08-22 10:32:58'),
(494, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet details', '2018-08-22 10:33:03'),
(495, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet details', '2018-08-22 10:33:11'),
(496, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-08-22 10:33:17'),
(497, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 10:34:17'),
(498, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet details', '2018-08-22 10:34:19'),
(499, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 10:34:22'),
(500, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 10:40:12'),
(501, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet List', '2018-08-22 10:40:17'),
(502, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet List', '2018-08-22 10:45:25'),
(503, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 10:45:29'),
(504, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet List', '2018-08-22 10:45:33'),
(505, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet List', '2018-08-22 10:46:41'),
(506, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet List', '2018-08-22 10:47:04'),
(507, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet List', '2018-08-22 10:48:59'),
(508, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet List', '2018-08-22 10:49:34'),
(509, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet List', '2018-08-22 10:50:01'),
(510, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet List', '2018-08-22 10:50:02'),
(511, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet details', '2018-08-22 10:50:06'),
(512, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet List', '2018-08-22 10:50:13'),
(513, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet details', '2018-08-22 10:50:14'),
(514, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet details', '2018-08-22 11:01:00'),
(515, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet details', '2018-08-22 11:01:13'),
(516, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet details', '2018-08-22 11:02:07'),
(517, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet details', '2018-08-22 11:02:32'),
(518, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet details', '2018-08-22 11:02:35'),
(519, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 11:21:38'),
(520, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 11:21:39'),
(521, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet details', '2018-08-22 11:21:42'),
(522, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 11:21:44'),
(523, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet List', '2018-08-22 11:21:55'),
(524, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet List', '2018-08-22 11:22:16'),
(525, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet details', '2018-08-22 11:22:20'),
(526, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet details', '2018-08-22 11:22:22'),
(527, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 11:22:26'),
(528, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 11:27:09'),
(529, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 11:27:35'),
(530, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 11:28:30'),
(531, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Add new Customer', '2018-08-22 11:29:22'),
(532, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 11:29:22'),
(533, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 11:29:27'),
(534, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 11:29:36'),
(535, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 11:29:52'),
(536, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 11:30:02'),
(537, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 11:30:58'),
(538, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 11:31:05'),
(539, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 11:31:19'),
(540, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-22 11:31:24'),
(541, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 11:31:28'),
(542, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 11:31:30'),
(543, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 11:31:44'),
(544, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 11:31:59'),
(545, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 11:47:50'),
(546, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-22 11:47:51'),
(547, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet List', '2018-08-22 11:47:52'),
(548, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet details', '2018-08-22 11:47:54'),
(549, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet details', '2018-08-22 11:47:59'),
(550, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet details', '2018-08-22 11:48:04'),
(551, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet details', '2018-08-22 11:48:18'),
(552, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet details', '2018-08-22 11:48:26'),
(553, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet details', '2018-08-22 11:51:11'),
(554, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet details', '2018-08-22 11:53:10'),
(555, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-22 22:46:24'),
(556, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-22 22:46:25'),
(557, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-08-22 22:59:02'),
(558, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Login', '2018-08-22 22:59:07'),
(559, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Logout', '2018-08-22 22:59:11'),
(560, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Login', '2018-08-22 22:59:38'),
(561, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-22 22:59:39'),
(562, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-22 23:04:29'),
(563, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-22 23:04:29'),
(564, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-22 23:04:33'),
(565, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-22 23:04:37'),
(566, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article dsdasd', '2018-08-22 23:04:47'),
(567, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-22 23:04:49'),
(568, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-22 23:05:31'),
(569, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article dsdasd', '2018-08-22 23:05:35'),
(570, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-22 23:05:37'),
(571, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-22 23:07:08'),
(572, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update Content of  article dsdasd', '2018-08-22 23:07:10'),
(573, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-22 23:07:12'),
(574, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Logout', '2018-08-22 23:36:04'),
(575, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Login', '2018-08-22 23:43:40'),
(576, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View My Pets Section', '2018-08-22 23:43:44'),
(577, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View My Pets Section', '2018-08-22 23:43:52'),
(578, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Logout', '2018-08-22 23:58:41'),
(579, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Login', '2018-08-22 23:59:06'),
(580, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-22 23:59:07'),
(581, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 00:00:04'),
(582, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-23 00:00:25'),
(583, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-23 00:00:31'),
(584, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-23 00:00:32'),
(585, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-23 00:00:34'),
(586, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-23 00:00:35'),
(587, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-23 00:00:36'),
(588, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-23 00:00:38'),
(589, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-23 00:01:31'),
(590, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-23 00:02:35'),
(591, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-23 00:02:41'),
(592, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-23 00:02:43'),
(593, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-23 00:02:44'),
(594, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Logout', '2018-08-23 00:03:54'),
(595, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Login', '2018-08-23 00:03:59'),
(596, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-23 00:03:59'),
(597, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-23 00:04:00'),
(598, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-23 00:04:53'),
(599, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-23 00:05:22'),
(600, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-08-23 00:05:29'),
(601, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Login', '2018-08-23 00:05:39'),
(602, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 00:05:39'),
(603, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 00:07:10'),
(604, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 00:07:32'),
(605, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Logout', '2018-08-23 00:11:01'),
(606, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 00:16:40'),
(607, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 00:21:01'),
(608, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 00:21:41'),
(609, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 00:22:05'),
(610, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 00:39:17'),
(611, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 00:39:51'),
(612, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 00:40:15'),
(613, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 00:42:15'),
(614, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 00:42:35'),
(615, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 00:43:01'),
(616, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 00:44:43'),
(617, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 00:45:06'),
(618, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-23 00:45:29'),
(619, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-23 00:45:30'),
(620, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-08-23 00:45:31'),
(621, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update  Pet Service Details', '2018-08-23 00:47:23'),
(622, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-08-23 00:47:27'),
(623, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update  Pet Service Details', '2018-08-23 00:47:37'),
(624, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-08-23 00:47:39'),
(625, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 00:48:51'),
(626, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:00:42'),
(627, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add new Pet Service', '2018-08-23 01:01:05'),
(628, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-08-23 01:01:08'),
(629, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:01:18'),
(630, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add new Pet Service', '2018-08-23 01:01:46'),
(631, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-08-23 01:01:48'),
(632, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:01:52'),
(633, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:03:08'),
(634, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:04:00'),
(635, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:05:31'),
(636, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:05:45'),
(637, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:07:46'),
(638, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:08:22'),
(639, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:08:45'),
(640, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:09:37'),
(641, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:10:51'),
(642, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:11:34'),
(643, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:11:59'),
(644, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:12:43'),
(645, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-08-23 01:13:34'),
(646, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:13:36'),
(647, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:14:06'),
(648, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update  Pet Service Details', '2018-08-23 01:14:30'),
(649, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-08-23 01:14:32'),
(650, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:14:39'),
(651, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:16:55'),
(652, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:19:23'),
(653, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update  Pet Service Details', '2018-08-23 01:19:44'),
(654, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-08-23 01:19:46'),
(655, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update  Pet Service Details', '2018-08-23 01:20:02'),
(656, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-08-23 01:20:05'),
(657, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:22:00'),
(658, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:22:27'),
(659, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:23:15'),
(660, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:54:58'),
(661, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:55:08'),
(662, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:55:14'),
(663, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:55:41'),
(664, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:56:13'),
(665, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:56:23'),
(666, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:56:36'),
(667, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:56:52'),
(668, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Login', '2018-08-23 01:57:07'),
(669, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:57:07'),
(670, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:57:25'),
(671, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:57:32'),
(672, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 01:57:39'),
(673, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:04:10'),
(674, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:07:53'),
(675, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:09:57'),
(676, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:11:04'),
(677, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:12:32'),
(678, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:12:41'),
(679, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update  Pet Service Details', '2018-08-23 02:13:09'),
(680, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-08-23 02:13:11'),
(681, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update  Pet Service Details', '2018-08-23 02:13:21'),
(682, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-08-23 02:13:23'),
(683, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-23 02:13:31'),
(684, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:14:30'),
(685, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:14:30'),
(686, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:14:31'),
(687, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:14:31'),
(688, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:14:31'),
(689, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:14:31'),
(690, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:14:32'),
(691, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:15:07'),
(692, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:15:23'),
(693, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:15:38'),
(694, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:16:12'),
(695, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:16:32'),
(696, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:18:26'),
(697, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:18:34'),
(698, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:18:58'),
(699, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:20:05'),
(700, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:20:48'),
(701, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-23 02:21:35'),
(702, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:21:39'),
(703, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:22:34'),
(704, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:23:10'),
(705, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-23 02:25:09'),
(706, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:25:13'),
(707, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-23 02:27:45'),
(708, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:27:46'),
(709, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:28:27'),
(710, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 02:29:43'),
(711, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Login', '2018-08-23 10:41:13'),
(712, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 10:41:14'),
(713, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 10:43:39'),
(714, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 10:45:20'),
(715, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 10:47:00'),
(716, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 10:48:41'),
(717, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 10:49:43'),
(718, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 10:59:41'),
(719, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:00:33'),
(720, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:01:00'),
(721, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:04:28'),
(722, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:04:29'),
(723, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:05:09'),
(724, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:05:40'),
(725, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:06:46'),
(726, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:10:01'),
(727, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:11:20'),
(728, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:11:45'),
(729, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:11:57'),
(730, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:13:40'),
(731, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:17:46'),
(732, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:18:19'),
(733, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:19:36'),
(734, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Login', '2018-08-23 11:24:21'),
(735, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-23 11:24:21'),
(736, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-23 11:24:31'),
(737, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-23 11:24:39'),
(738, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-23 11:24:41'),
(739, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Logout', '2018-08-23 11:24:44'),
(740, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Login', '2018-08-23 11:24:48'),
(741, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-23 11:24:48'),
(742, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-23 11:24:50'),
(743, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-23 11:24:51'),
(744, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Handle POS', '2018-08-23 11:25:05'),
(745, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-23 11:25:06'),
(746, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-23 11:25:18'),
(747, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-23 11:25:20'),
(748, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Handle POS', '2018-08-23 11:25:29'),
(749, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-23 11:25:30'),
(750, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:29:52'),
(751, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:30:29'),
(752, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:30:50'),
(753, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:34:20'),
(754, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:34:49'),
(755, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:35:25'),
(756, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:36:24'),
(757, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:38:06'),
(758, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:40:29'),
(759, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:40:51'),
(760, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:41:24'),
(761, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:41:51'),
(762, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:45:32'),
(763, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:46:33'),
(764, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:46:43'),
(765, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:48:49'),
(766, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:49:24'),
(767, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:49:34'),
(768, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:50:08'),
(769, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:50:25'),
(770, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:51:45'),
(771, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:51:57'),
(772, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:52:08'),
(773, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:52:24'),
(774, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:52:36'),
(775, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:52:55'),
(776, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:54:00'),
(777, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:54:08'),
(778, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:54:41'),
(779, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:54:42'),
(780, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:54:43'),
(781, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:54:44'),
(782, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:55:12'),
(783, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:55:24'),
(784, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:57:07'),
(785, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:57:46'),
(786, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 11:58:04'),
(787, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:02:02'),
(788, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:10:00'),
(789, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:12:51'),
(790, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:14:50'),
(791, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:15:43'),
(792, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:16:58'),
(793, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Logout', '2018-08-23 12:17:48'),
(794, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-23 12:17:53'),
(795, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-23 12:17:53'),
(796, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-23 12:17:55'),
(797, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-23 12:20:45'),
(798, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:20:52'),
(799, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:22:09'),
(800, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:23:21'),
(801, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:27:25'),
(802, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:30:27'),
(803, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:33:31'),
(804, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:36:50'),
(805, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:37:01'),
(806, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:37:13'),
(807, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:37:32'),
(808, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:37:44'),
(809, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:38:50'),
(810, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:39:21'),
(811, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:45:19'),
(812, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:47:50'),
(813, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:48:07'),
(814, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:48:50'),
(815, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:49:21'),
(816, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:50:44'),
(817, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:51:16'),
(818, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:52:13'),
(819, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:54:31'),
(820, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:54:51'),
(821, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 12:56:04'),
(822, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 13:01:33'),
(823, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 13:09:07'),
(824, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 13:09:08'),
(825, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 13:09:24'),
(826, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 13:14:35'),
(827, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 13:38:37'),
(828, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 13:42:11'),
(829, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 13:42:16'),
(830, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 13:42:38'),
(831, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 13:44:23'),
(832, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 13:44:59'),
(833, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 13:45:16'),
(834, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 13:45:43'),
(835, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 13:46:00'),
(836, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 13:46:20'),
(837, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 13:55:31'),
(838, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 13:56:32'),
(839, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 13:57:26'),
(840, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 13:59:02'),
(841, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 13:59:49'),
(842, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 14:03:55'),
(843, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 14:05:04'),
(844, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 14:05:53'),
(845, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 14:06:20'),
(846, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 14:06:52'),
(847, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 14:07:03'),
(848, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 14:07:19'),
(849, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 14:07:46'),
(850, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 14:08:25'),
(851, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 14:09:15'),
(852, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 14:09:23'),
(853, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 14:11:46'),
(854, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 14:12:09'),
(855, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 14:12:33'),
(856, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 14:12:52'),
(857, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 14:13:31'),
(858, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 14:13:55'),
(859, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 14:14:56'),
(860, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 14:18:49'),
(861, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 14:19:32'),
(862, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 14:19:53'),
(863, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 14:20:11'),
(864, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 14:20:34'),
(865, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 14:21:55'),
(866, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Login', '2018-08-23 22:44:45'),
(867, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 22:44:45'),
(868, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 22:45:38'),
(869, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 22:45:54'),
(870, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 22:53:10'),
(871, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 22:55:25'),
(872, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 22:59:17'),
(873, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 22:59:18'),
(874, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 22:59:23'),
(875, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 23:00:37'),
(876, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 23:00:59'),
(877, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 23:01:03'),
(878, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 23:03:33'),
(879, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 23:08:02');
INSERT INTO `tbl_logs` (`log_id`, `log_user`, `log_usertype`, `log_userID`, `log_action`, `log_date`) VALUES
(880, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 23:11:25'),
(881, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 23:11:32'),
(882, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 23:24:13'),
(883, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-08-23 23:24:14'),
(884, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 23:24:25'),
(885, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 23:47:27'),
(886, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 23:48:54'),
(887, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-23 23:54:52'),
(888, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-23 23:54:52'),
(889, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-23 23:54:55'),
(890, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-23 23:56:18'),
(891, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 00:00:21'),
(892, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 00:00:23'),
(893, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 00:00:51'),
(894, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 00:00:54'),
(895, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 00:01:13'),
(896, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 00:04:02'),
(897, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 00:04:03'),
(898, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 00:13:39'),
(899, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 00:13:40'),
(900, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 00:13:49'),
(901, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 00:13:59'),
(902, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 00:17:20'),
(903, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 00:17:21'),
(904, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 00:17:27'),
(905, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 00:18:35'),
(906, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 00:18:57'),
(907, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 00:19:20'),
(908, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 00:49:08'),
(909, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 00:49:10'),
(910, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 00:49:48'),
(911, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 00:53:51'),
(912, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 00:53:52'),
(913, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 00:53:54'),
(914, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 00:53:58'),
(915, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-24 00:54:03'),
(916, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View logs', '2018-08-24 00:54:15'),
(917, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-08-24 00:54:18'),
(918, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-24 00:54:21'),
(919, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 00:54:22'),
(920, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:00:58'),
(921, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:00:59'),
(922, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:01:17'),
(923, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:01:18'),
(924, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:01:22'),
(925, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:01:43'),
(926, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:01:44'),
(927, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:01:52'),
(928, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:01:53'),
(929, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 01:02:13'),
(930, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:02:15'),
(931, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:02:19'),
(932, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 01:02:40'),
(933, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 01:02:57'),
(934, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:03:01'),
(935, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 01:03:17'),
(936, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 01:03:40'),
(937, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:03:46'),
(938, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:04:04'),
(939, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:06:26'),
(940, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:06:27'),
(941, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:06:50'),
(942, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:11:58'),
(943, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 01:12:01'),
(944, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 01:12:12'),
(945, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:12:16'),
(946, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:12:36'),
(947, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:13:21'),
(948, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:13:37'),
(949, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:16:19'),
(950, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:16:26'),
(951, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:18:06'),
(952, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:24:41'),
(953, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 01:24:44'),
(954, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 01:24:55'),
(955, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:25:00'),
(956, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:33:49'),
(957, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:34:11'),
(958, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:34:15'),
(959, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:34:17'),
(960, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-08-24 01:34:18'),
(961, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:34:22'),
(962, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:34:23'),
(963, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:34:31'),
(964, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:34:47'),
(965, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:35:03'),
(966, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-08-24 01:35:05'),
(967, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-08-24 01:37:06'),
(968, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-08-24 01:37:38'),
(969, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-08-24 01:38:43'),
(970, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-08-24 01:39:16'),
(971, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-08-24 01:45:41'),
(972, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-08-24 01:46:20'),
(973, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-08-24 01:47:58'),
(974, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:48:02'),
(975, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:48:25'),
(976, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 01:48:28'),
(977, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 01:48:40'),
(978, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:48:54'),
(979, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 01:49:35'),
(980, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-08-24 01:49:36'),
(981, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 01:53:28'),
(982, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 01:57:00'),
(983, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 01:57:13'),
(984, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 01:59:34'),
(985, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 02:00:02'),
(986, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 02:00:15'),
(987, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 02:02:58'),
(988, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 02:09:12'),
(989, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 02:09:14'),
(990, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 02:13:32'),
(991, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 02:16:30'),
(992, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 02:57:55'),
(993, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 02:58:15'),
(994, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Login', '2018-08-24 08:28:00'),
(995, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 08:28:01'),
(996, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-08-24 08:28:03'),
(997, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-24 08:47:22'),
(998, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-24 08:47:22'),
(999, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 08:47:24'),
(1000, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 08:47:26'),
(1001, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 08:47:45'),
(1002, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 08:47:52'),
(1003, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 08:47:55'),
(1004, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 08:48:09'),
(1005, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 08:48:43'),
(1006, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 08:48:49'),
(1007, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 08:51:57'),
(1008, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 08:51:58'),
(1009, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-08-24 09:02:20'),
(1010, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 09:05:21'),
(1011, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 09:05:22'),
(1012, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-08-24 09:22:55'),
(1013, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Login', '2018-08-24 09:23:00'),
(1014, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-24 09:23:00'),
(1015, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-24 09:23:02'),
(1016, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Update status of Customer C1808240923028 to Inactive', '2018-08-24 09:23:04'),
(1017, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-24 09:23:07'),
(1018, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Update status of Customer C1808240923079 to Active', '2018-08-24 09:23:08'),
(1019, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-24 09:23:10'),
(1020, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 09:23:13'),
(1021, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 09:23:55'),
(1022, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 09:24:27'),
(1023, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 09:25:27'),
(1024, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 09:25:34'),
(1025, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 09:39:03'),
(1026, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 09:39:08'),
(1027, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 09:45:27'),
(1028, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-24 09:45:29'),
(1029, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 09:51:25'),
(1030, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 10:03:36'),
(1031, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 10:04:02'),
(1032, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 10:04:25'),
(1033, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 10:09:56'),
(1034, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-24 10:10:27'),
(1035, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-24 10:10:36'),
(1036, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Logout', '2018-08-24 10:10:40'),
(1037, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-24 10:10:44'),
(1038, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-24 10:10:44'),
(1039, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 10:10:46'),
(1040, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 10:11:21'),
(1041, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 10:11:31'),
(1042, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 10:11:47'),
(1043, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 10:11:49'),
(1044, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 10:12:38'),
(1045, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 10:14:40'),
(1046, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 10:22:32'),
(1047, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 10:22:34'),
(1048, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 10:22:36'),
(1049, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 10:23:30'),
(1050, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 10:23:45'),
(1051, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 10:26:24'),
(1052, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 10:34:17'),
(1053, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 10:34:21'),
(1054, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 10:34:33'),
(1055, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:05:32'),
(1056, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:18:11'),
(1057, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:18:32'),
(1058, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 11:19:55'),
(1059, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 11:19:56'),
(1060, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:20:10'),
(1061, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 11:20:12'),
(1062, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 11:20:38'),
(1063, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:20:53'),
(1064, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:23:57'),
(1065, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:24:12'),
(1066, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:24:28'),
(1067, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-08-24 11:24:53'),
(1068, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 11:25:18'),
(1069, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:25:25'),
(1070, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:29:35'),
(1071, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:29:49'),
(1072, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:30:07'),
(1073, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:31:35'),
(1074, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:32:02'),
(1075, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:32:24'),
(1076, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:33:19'),
(1077, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:35:04'),
(1078, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:36:45'),
(1079, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:37:18'),
(1080, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:37:33'),
(1081, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:38:20'),
(1082, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:38:51'),
(1083, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:39:23'),
(1084, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:40:22'),
(1085, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:41:25'),
(1086, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:43:02'),
(1087, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:43:14'),
(1088, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 11:43:35'),
(1089, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 12:06:54'),
(1090, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 12:08:09'),
(1091, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 12:08:10'),
(1092, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 12:15:19'),
(1093, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 12:15:50'),
(1094, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 12:16:45'),
(1095, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 12:16:52'),
(1096, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-24 12:17:35'),
(1097, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 12:17:38'),
(1098, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 12:18:22'),
(1099, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 12:19:01'),
(1100, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 12:19:19'),
(1101, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 12:19:32'),
(1102, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 12:19:43'),
(1103, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 12:20:39'),
(1104, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-24 23:47:00'),
(1105, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-24 23:47:01'),
(1106, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 23:47:04'),
(1107, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 23:47:37'),
(1108, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 23:47:46'),
(1109, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 23:47:48'),
(1110, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 23:48:00'),
(1111, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-08-24 23:48:05'),
(1112, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-24 23:48:10'),
(1113, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-24 23:48:10'),
(1114, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 23:48:11'),
(1115, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 23:48:12'),
(1116, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 23:48:50'),
(1117, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 23:48:52'),
(1118, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 23:48:54'),
(1119, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 23:48:55'),
(1120, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 23:48:56'),
(1121, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 23:48:58'),
(1122, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 23:49:01'),
(1123, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 23:49:02'),
(1124, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-08-24 23:49:07'),
(1125, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-24 23:49:11'),
(1126, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-24 23:49:12'),
(1127, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 23:49:14'),
(1128, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 23:49:15'),
(1129, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Handle POS', '2018-08-24 23:49:22'),
(1130, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 23:49:22'),
(1131, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 23:49:32'),
(1132, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 23:49:33'),
(1133, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Handle POS', '2018-08-24 23:49:39'),
(1134, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 23:49:39'),
(1135, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 23:49:50'),
(1136, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Handle POS', '2018-08-24 23:49:58'),
(1137, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 23:49:59'),
(1138, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 23:50:23'),
(1139, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Handle POS', '2018-08-24 23:50:28'),
(1140, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-24 23:50:29'),
(1141, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 23:51:11'),
(1142, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-24 23:51:34'),
(1143, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 00:18:40'),
(1144, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 00:18:41'),
(1145, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 00:19:48'),
(1146, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 00:20:22'),
(1147, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 00:20:23'),
(1148, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 00:21:43'),
(1149, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 00:22:12'),
(1150, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 00:22:19'),
(1151, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 00:23:23'),
(1152, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 00:24:32'),
(1153, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 00:25:21'),
(1154, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 00:31:38'),
(1155, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 00:32:04'),
(1156, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 00:32:41'),
(1157, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 00:32:58'),
(1158, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 00:34:18'),
(1159, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 00:35:34'),
(1160, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 00:38:36'),
(1161, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 00:38:37'),
(1162, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 00:47:22'),
(1163, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 00:47:36'),
(1164, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 00:47:52'),
(1165, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 00:47:53'),
(1166, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 00:49:00'),
(1167, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 00:50:59'),
(1168, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 00:51:40'),
(1169, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 01:06:02'),
(1170, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 01:06:24'),
(1171, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 01:07:49'),
(1172, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 01:07:55'),
(1173, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 01:08:11'),
(1174, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 01:09:10'),
(1175, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 01:09:11'),
(1176, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 01:09:14'),
(1177, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:09:25'),
(1178, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:09:25'),
(1179, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 01:09:28'),
(1180, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:11:49'),
(1181, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:12:36'),
(1182, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:12:37'),
(1183, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:20:32'),
(1184, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:20:33'),
(1185, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:22:02'),
(1186, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:22:02'),
(1187, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:22:57'),
(1188, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:22:57'),
(1189, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:22:57'),
(1190, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:22:58'),
(1191, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:22:58'),
(1192, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:22:58'),
(1193, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:22:59'),
(1194, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:22:59'),
(1195, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:23:39'),
(1196, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:23:39'),
(1197, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:28:50'),
(1198, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:28:50'),
(1199, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:29:08'),
(1200, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:29:08'),
(1201, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:31:10'),
(1202, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:31:10'),
(1203, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:31:26'),
(1204, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:31:26'),
(1205, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:35:46'),
(1206, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:36:36'),
(1207, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:36:36'),
(1208, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:36:49'),
(1209, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:36:49'),
(1210, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:37:04'),
(1211, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:37:05'),
(1212, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:37:13'),
(1213, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:37:13'),
(1214, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:38:57'),
(1215, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:38:57'),
(1216, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:39:33'),
(1217, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-25 01:39:33'),
(1218, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 01:40:51'),
(1219, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 01:42:08'),
(1220, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 01:42:51'),
(1221, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 02:05:21'),
(1222, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-25 02:09:43'),
(1223, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 02:14:01'),
(1224, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 02:39:24'),
(1225, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 02:39:45'),
(1226, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-25 02:40:05'),
(1227, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-25 02:40:58'),
(1228, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-25 10:44:19'),
(1229, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-25 10:44:20'),
(1230, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-25 10:44:24'),
(1231, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-25 10:44:27'),
(1232, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-25 10:44:30'),
(1233, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-25 10:44:32'),
(1234, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-08-25 10:44:45'),
(1235, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-25 10:44:53'),
(1236, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Edit About us content', '2018-08-25 10:45:09'),
(1237, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-25 10:45:11'),
(1238, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-25 11:00:09'),
(1239, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-25 11:00:12'),
(1240, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-25 11:00:14'),
(1241, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add Content of  article dsdasd', '2018-08-25 11:00:23'),
(1242, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-25 11:00:25'),
(1243, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Remove Content of  article dsdasd', '2018-08-25 11:00:29'),
(1244, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-25 11:00:31'),
(1245, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-25 11:04:42'),
(1246, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-25 11:04:45'),
(1247, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-25 11:05:09'),
(1248, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-25 11:06:24'),
(1249, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-25 11:06:40'),
(1250, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-25 11:07:30'),
(1251, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-25 11:16:16'),
(1252, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-25 11:17:10'),
(1253, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-25 11:19:38'),
(1254, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-25 11:23:25'),
(1255, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-25 11:23:44'),
(1256, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-25 11:23:53'),
(1257, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-25 11:24:41'),
(1258, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-25 11:24:53'),
(1259, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-25 11:26:33'),
(1260, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-25 11:26:58'),
(1261, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-25 11:27:22'),
(1262, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-25 11:27:59'),
(1263, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-25 11:28:06'),
(1264, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-25 11:28:16'),
(1265, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-08-25 12:26:06'),
(1266, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-08-25 12:27:04'),
(1267, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-08-25 12:27:37'),
(1268, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-08-25 12:27:42'),
(1269, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-08-25 12:27:51'),
(1270, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-08-25 12:27:55'),
(1271, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-08-25 12:27:56'),
(1272, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-08-25 12:28:43'),
(1273, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-08-25 12:28:44'),
(1274, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-08-25 12:28:46'),
(1275, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-08-25 12:29:16'),
(1276, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-25 12:45:58'),
(1277, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-25 13:12:53'),
(1278, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-25 13:22:14'),
(1279, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View logs', '2018-08-25 13:22:17'),
(1280, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-25 14:24:44'),
(1281, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-25 23:40:34'),
(1282, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-25 23:40:35'),
(1283, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-25 23:40:43'),
(1284, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-08-25 23:40:45'),
(1285, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-26 04:25:52'),
(1286, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-26 04:25:52'),
(1287, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-26 04:26:31'),
(1288, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-26 04:26:53'),
(1289, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-26 04:32:12'),
(1290, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-26 04:32:14'),
(1291, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add article in Pet Health Care Library', '2018-08-26 04:35:35'),
(1292, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-26 04:35:37'),
(1293, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-26 04:35:41'),
(1294, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-08-26 04:36:41'),
(1295, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Login', '2018-08-26 04:36:54'),
(1296, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View Pet Health Library', '2018-08-26 04:39:16'),
(1297, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View My Pets Section', '2018-08-26 04:39:19'),
(1298, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View My Pets Section', '2018-08-26 04:40:46'),
(1299, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View Pet details', '2018-08-26 04:40:49'),
(1300, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-26 04:41:18'),
(1301, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-26 04:41:18');
INSERT INTO `tbl_logs` (`log_id`, `log_user`, `log_usertype`, `log_userID`, `log_action`, `log_date`) VALUES
(1302, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-08-26 04:41:36'),
(1303, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet details', '2018-08-26 04:41:38'),
(1304, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-08-26 04:41:55'),
(1305, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Login', '2018-08-26 04:41:59'),
(1306, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-26 04:42:00'),
(1307, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-26 04:42:01'),
(1308, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-08-26 04:42:02'),
(1309, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-26 04:42:25'),
(1310, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-08-26 04:42:26'),
(1311, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-26 04:42:33'),
(1312, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-08-26 04:42:36'),
(1313, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Logout', '2018-08-26 04:43:19'),
(1314, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-26 04:43:24'),
(1315, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-26 04:43:24'),
(1316, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-26 04:43:27'),
(1317, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-26 04:43:37'),
(1318, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-26 04:43:44'),
(1319, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-26 04:44:09'),
(1320, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-26 04:44:32'),
(1321, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-08-26 04:44:44'),
(1322, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Login', '2018-08-26 04:44:56'),
(1323, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Logout', '2018-08-26 04:45:42'),
(1324, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-26 04:45:46'),
(1325, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-26 04:45:46'),
(1326, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-26 04:45:48'),
(1327, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-26 04:46:07'),
(1328, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-26 04:46:12'),
(1329, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-26 04:47:28'),
(1330, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-26 04:47:41'),
(1331, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-26 04:47:42'),
(1332, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-26 04:47:44'),
(1333, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-08-26 04:47:46'),
(1334, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-26 04:49:26'),
(1335, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-08-26 04:51:03'),
(1336, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-08-26 04:51:43'),
(1337, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-08-26 04:52:03'),
(1338, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-08-26 04:53:55'),
(1339, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-08-26 04:55:11'),
(1340, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-08-26 04:57:11'),
(1341, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-08-26 04:57:50'),
(1342, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-08-26 04:58:33'),
(1343, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-08-26 04:59:13'),
(1344, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet details', '2018-08-26 04:59:15'),
(1345, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet details', '2018-08-26 05:00:01'),
(1346, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-08-26 05:00:07'),
(1347, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet details', '2018-08-26 05:00:09'),
(1348, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-08-26 05:01:13'),
(1349, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet details', '2018-08-26 05:01:15'),
(1350, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-08-26 05:01:35'),
(1351, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Login', '2018-08-26 05:01:42'),
(1352, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-26 05:01:43'),
(1353, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet List', '2018-08-26 05:01:44'),
(1354, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet details', '2018-08-26 05:01:47'),
(1355, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-26 05:02:07'),
(1356, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-08-26 05:02:09'),
(1357, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet List', '2018-08-26 05:02:15'),
(1358, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Logout', '2018-08-26 05:03:09'),
(1359, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Login', '2018-08-26 05:03:13'),
(1360, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View My Pets Section', '2018-08-26 05:03:18'),
(1361, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View Pet details', '2018-08-26 05:03:21'),
(1362, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View Pet details', '2018-08-26 05:03:35'),
(1363, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Logout', '2018-08-26 05:11:54'),
(1364, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-26 05:11:58'),
(1365, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-26 05:11:59'),
(1366, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-26 05:12:00'),
(1367, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-26 05:12:02'),
(1368, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View Pet Health Library', '2018-08-26 05:14:30'),
(1369, 'Lee Min Horse', 'Customer', 'C1808211035448', 'Read Article', '2018-08-26 05:15:25'),
(1370, 'Lee Min Horse', 'Customer', 'C1808211035448', 'Read Article', '2018-08-26 05:16:27'),
(1371, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View My Pets Section', '2018-08-26 05:16:41'),
(1372, 'Lee Min Horse', 'Customer', 'C1808211035448', 'Read Article', '2018-08-26 05:17:06'),
(1373, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View My Pets Section', '2018-08-26 05:17:29'),
(1374, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View Pet details', '2018-08-26 05:17:30'),
(1375, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View My Pets Section', '2018-08-26 05:17:36'),
(1376, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View Pet details', '2018-08-26 05:17:37'),
(1377, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-08-26 05:17:52'),
(1378, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet details', '2018-08-26 05:17:53'),
(1379, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-26 05:19:01'),
(1380, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-26 05:19:10'),
(1381, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-26 05:20:02'),
(1382, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-26 05:20:18'),
(1383, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-26 05:20:27'),
(1384, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-26 05:20:31'),
(1385, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-26 05:20:45'),
(1386, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-26 05:20:51'),
(1387, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-26 05:21:30'),
(1388, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Logout', '2018-08-26 05:21:40'),
(1389, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-26 05:22:06'),
(1390, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-26 05:22:25'),
(1391, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-26 09:00:53'),
(1392, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-26 09:00:53'),
(1393, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-26 09:01:31'),
(1394, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-26 09:01:35'),
(1395, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Handle POS', '2018-08-26 09:02:01'),
(1396, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-26 09:02:01'),
(1397, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View logs', '2018-08-26 09:02:14'),
(1398, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Medicines)', '2018-08-26 09:33:13'),
(1399, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-26 09:36:10'),
(1400, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-26 09:36:25'),
(1401, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-08-26 09:37:16'),
(1402, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Change Status of  service Deworming for Kittens to Inactive', '2018-08-26 09:37:34'),
(1403, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-08-26 09:37:36'),
(1404, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add new Pet Service', '2018-08-26 09:38:28'),
(1405, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-08-26 09:38:30'),
(1406, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-26 09:38:40'),
(1407, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Edit System Information', '2018-08-26 09:38:50'),
(1408, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-26 09:38:50'),
(1409, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Edit System Information', '2018-08-26 09:38:55'),
(1410, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-26 09:38:56'),
(1411, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Edit About us content', '2018-08-26 09:39:32'),
(1412, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-26 09:39:34'),
(1413, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-26 09:40:42'),
(1414, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-26 09:40:59'),
(1415, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-26 09:41:04'),
(1416, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Handle POS', '2018-08-26 09:41:41'),
(1417, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-26 09:41:41'),
(1418, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-26 09:42:36'),
(1419, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-26 09:43:13'),
(1420, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-08-26 09:43:14'),
(1421, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-26 09:43:16'),
(1422, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-26 09:43:44'),
(1423, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-08-26 09:43:56'),
(1424, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Login', '2018-08-26 09:44:46'),
(1425, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View My Pets Section', '2018-08-26 09:44:53'),
(1426, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View Pet details', '2018-08-26 09:45:01'),
(1427, 'Lee Min Horse', 'Customer', 'C1808211035448', 'Read Article', '2018-08-26 09:45:46'),
(1428, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Logout', '2018-08-26 09:46:13'),
(1429, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Login', '2018-08-26 09:46:26'),
(1430, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-26 09:46:26'),
(1431, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-08-26 09:46:59'),
(1432, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet List', '2018-08-26 09:47:07'),
(1433, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-08-26 09:47:10'),
(1434, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Logout', '2018-08-26 09:47:35'),
(1435, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Login', '2018-08-26 09:49:14'),
(1436, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-26 09:49:14'),
(1437, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-08-26 09:50:33'),
(1438, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-08-26 09:50:38'),
(1439, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Products List (Medicines)', '2018-08-26 09:50:46'),
(1440, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'Pull Out 1 Dino Capsule Evolution', '2018-08-26 09:50:54'),
(1441, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Products List (Medicines)', '2018-08-26 09:50:55'),
(1442, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-26 09:51:08'),
(1443, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Logout', '2018-08-26 09:56:15'),
(1444, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Login', '2018-08-26 09:56:26'),
(1445, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View My Pets Section', '2018-08-26 09:56:29'),
(1446, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View Pet details', '2018-08-26 09:56:31'),
(1447, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Logout', '2018-08-26 09:56:47'),
(1448, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Login', '2018-08-26 10:49:03'),
(1449, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View My Pets Section', '2018-08-26 10:49:21'),
(1450, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Logout', '2018-08-26 10:49:39'),
(1451, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Login', '2018-08-26 10:49:49'),
(1452, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Logout', '2018-08-26 10:49:57'),
(1453, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-26 11:38:09'),
(1454, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-26 11:38:10'),
(1455, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-08-26 11:39:59'),
(1456, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Login', '2018-08-26 11:40:03'),
(1457, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View My Pets Section', '2018-08-26 11:40:05'),
(1458, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View Pet details', '2018-08-26 11:40:06'),
(1459, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View My Pets Section', '2018-08-26 11:40:12'),
(1460, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View Pet details', '2018-08-26 11:40:14'),
(1461, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-26 13:34:48'),
(1462, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-26 13:34:48'),
(1463, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-08-26 13:34:52'),
(1464, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add new Customer', '2018-08-26 13:36:04'),
(1465, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-08-26 13:36:09'),
(1466, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-26 13:39:15'),
(1467, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-08-26 13:39:23'),
(1468, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-08-26 13:39:52'),
(1469, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-26 13:39:59'),
(1470, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-08-26 13:40:01'),
(1471, 'Carl Vincent Lorenzo Echanez', 'Customer', 'C1808260134527', 'User Login', '2018-08-26 13:51:38'),
(1472, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-08-26 14:03:43'),
(1473, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-08-26 14:03:43'),
(1474, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-08-26 14:03:44'),
(1475, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-08-26 14:03:44'),
(1476, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-08-26 14:03:44'),
(1477, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-08-26 14:03:44'),
(1478, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-08-26 14:04:24'),
(1479, 'Carl Vincent Lorenzo Echanez', 'Customer', 'C1808260134527', 'User Logout', '2018-08-26 14:04:29'),
(1480, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-26 14:05:52'),
(1481, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-26 14:06:06'),
(1482, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-26 14:06:11'),
(1483, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-26 14:06:15'),
(1484, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Handle POS', '2018-08-26 14:06:28'),
(1485, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-26 14:06:29'),
(1486, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-26 14:06:56'),
(1487, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-08-26 14:07:02'),
(1488, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-08-26 14:07:34'),
(1489, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Change Status of  service Deworming for Dino to Inactive', '2018-08-26 14:08:08'),
(1490, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-08-26 14:08:10'),
(1491, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add new Pet Service', '2018-08-26 14:08:41'),
(1492, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-08-26 14:08:44'),
(1493, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-08-26 14:09:00'),
(1494, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-26 14:09:07'),
(1495, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View logs', '2018-08-26 14:10:11'),
(1496, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-08-26 14:10:29'),
(1497, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add new Customer', '2018-08-26 14:11:41'),
(1498, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-08-26 14:11:46'),
(1499, 'Sandra Abdul Dela Cruz', 'Customer', 'C1808260210291', 'User Login', '2018-08-26 14:13:56'),
(1500, 'Sandra Abdul Dela Cruz', 'Customer', 'C1808260210291', 'View My Pets Section', '2018-08-26 14:14:04'),
(1501, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-26 14:14:21'),
(1502, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add article in Pet Health Care Library', '2018-08-26 14:14:53'),
(1503, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-08-26 14:14:55'),
(1504, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-26 14:14:58'),
(1505, 'Sandra Abdul Dela Cruz', 'Customer', 'C1808260210291', 'Read Article', '2018-08-26 14:15:02'),
(1506, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-26 14:15:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_petbreeds`
--

CREATE TABLE `tbl_petbreeds` (
  `breed_id` int(11) NOT NULL,
  `pettype_id` int(11) NOT NULL,
  `pettype_code` varchar(45) NOT NULL,
  `pet_breed` varchar(45) NOT NULL,
  `breed_description` text NOT NULL,
  `breed_status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_petbreeds`
--

INSERT INTO `tbl_petbreeds` (`breed_id`, `pettype_id`, `pettype_code`, `pet_breed`, `breed_description`, `breed_status`) VALUES
(12, 2, 'cat', 'British Shorthair', '<p>\r\n\r\nThe British Shorthair is the pedigreed version of the traditional British domestic cat, with a distinctively chunky body, dense coat and broad face.&nbsp;</p><p>Origin : Great Britain</p><p>Scientific Name: Felis Catus</p><p><small></small><br></p>', ''),
(13, 2, 'cat', 'Maine Coon', '<p>\r\n\r\nThe Maine Coon is one of the largest domesticated breeds of cat. It has a distinctive physical appearance and valuable hunting skills .</p><p><br></p><p>Scientific Name:&nbsp;\r\n\r\nFelis catus\r\n\r\n</p>', ''),
(15, 2, 'cat', 'Ragdoll', '<p>\r\n\r\nThe Ragdoll is a cat breed with blue eyes and a distinct colourpoint coat. It is a large and muscular semi-longhair cat with a soft and silky coat. Like all long haired cats, Ragdolls need grooming to ensure that their fur does not mat\r\n\r\n<br></p>', ''),
(16, 2, 'cat', 'Siamese Cat', '<p>\r\n\r\nThe Siamese cat is one of the first distinctly recognized breeds of Asian cat. Derived from the Wichianmat landrace, one of several varieties of cat native to Thailand\r\n\r\n<br></p>', ''),
(17, 1, 'dog', 'Chihuahua', '<p>\r\n\r\nThe Chihuahua is the smallest breed of dog and is named after the state of Chihuahua in Mexico. Chihuahuas come in a wide variety of colors, and two coat lengths .<br></p><p><br></p><p>Life Span: 12 – 20 years\r\n\r\n<br></p>', ''),
(18, 1, 'dog', 'German Shepherd', '<p>\r\n\r\nThe German Shepherd is a breed of medium to large-sized working dog that originated in Germany. The breed\'s officially recognized name is German Shepherd Dog in the English language. The breed is known as the Alsatian in Britain and Ireland.\r\n\r\n<br></p><p><br></p><p>Life span:&nbsp;\r\n\r\n9 – 13 years\r\n\r\n</p>', ''),
(19, 1, 'dog', 'Golden Retriever', '<p>\r\n\r\nThe Golden Retriever is a large-sized breed of dog bred as gun dogs to retrieve shot waterfowl such as ducks and upland game birds during hunting and shooting parties, and were named \'retriever\'\r\n\r\n<br></p><p><br></p><p>Life span: 10 – 12 years&nbsp;</p>', ''),
(20, 1, 'dog', 'Labrador Retriever', '<p>\r\n\r\nThe Labrador Retriever, or just Labrador, is a type of retriever-gun dog. The Labrador is one of the most popular breeds of dog in Canada, the United Kingdom and the United States\r\n\r\n<br></p><p><br></p><p>Life span :<small>&nbsp;\r\n\r\n10 – 14 years\r\n\r\n</small></p>', ''),
(22, 3, 'dinosaur', 'Indominous Rex', '<p>sdadsadsdas</p>', 'Active'),
(23, 3, 'dinosaur', 'Viloso Raptor', '<p>sdadsdsdasddfdfada</p>', 'Active'),
(24, 3, 'dinosaur', 'Indominous Rex2', '<p>dasdsdadasdsa</p>', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pets`
--

CREATE TABLE `tbl_pets` (
  `pet_table_id` int(11) NOT NULL,
  `pet_id` text NOT NULL,
  `petname` text NOT NULL,
  `customer_table_id` int(11) NOT NULL,
  `pettype` int(11) NOT NULL,
  `breed` int(11) NOT NULL,
  `birthdate` date NOT NULL,
  `dateAdded` datetime NOT NULL,
  `gender` varchar(45) NOT NULL,
  `pet_profile` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pets`
--

INSERT INTO `tbl_pets` (`pet_table_id`, `pet_id`, `petname`, `customer_table_id`, `pettype`, `breed`, `birthdate`, `dateAdded`, `gender`, `pet_profile`) VALUES
(13, 'P1808221021292', 'Arnelsz', 7, 2, 15, '2015-07-23', '2018-08-22 10:22:03', 'Male', 'Aristotle_Color11.jpg'),
(14, 'P1808221046418', 'LenTik', 7, 2, 12, '2018-02-13', '2018-08-22 10:47:04', 'Male', 'German_shephard31.jpg'),
(15, 'P1808221048598', 'cole', 7, 2, 12, '2017-06-22', '2018-08-22 10:49:34', 'Male', 'German_shephard311.jpg'),
(16, 'P1808221121554', 'Aninags', 7, 2, 12, '2016-05-23', '2018-08-22 11:22:15', 'Male', 'German_shephard312.jpg'),
(17, 'P1808260139232', 'ivan', 9, 1, 17, '2002-06-26', '2018-08-26 13:39:52', 'Male', 'ab1433.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pettype`
--

CREATE TABLE `tbl_pettype` (
  `pettype_id` int(11) NOT NULL,
  `pettype_code` varchar(45) NOT NULL,
  `pettype` varchar(45) NOT NULL,
  `pettype_status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pettype`
--

INSERT INTO `tbl_pettype` (`pettype_id`, `pettype_code`, `pettype`, `pettype_status`) VALUES
(1, 'dog', 'Dog', 'Active'),
(2, 'cat', 'Cat', 'Active'),
(3, 'dinosaur', 'Dinosaur', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pet_library`
--

CREATE TABLE `tbl_pet_library` (
  `library_id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `content` varchar(45) NOT NULL,
  `article_image` text NOT NULL,
  `article_status` varchar(45) NOT NULL,
  `created_by` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pet_library`
--

INSERT INTO `tbl_pet_library` (`library_id`, `title`, `content`, `article_image`, `article_status`, `created_by`) VALUES
(48, 'Colitis', 'In brief, colitis is the term for inflammatio', 'carousel-exoticanimals.jpg', 'Active', 'Ivan Christian Jay Echanes Funcion'),
(49, 'uBO', 'DASDSADS ', 'blog1.jpg', 'Active', 'Ivan Christian Jay Echanes Funcion');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pet_library_content`
--

CREATE TABLE `tbl_pet_library_content` (
  `content_id` int(11) NOT NULL,
  `library_id` int(11) NOT NULL,
  `article_contents` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pet_library_content`
--

INSERT INTO `tbl_pet_library_content` (`content_id`, `library_id`, `article_contents`) VALUES
(33, 48, 'In brief, colitis is the term for inflammation of the colon. The chief feature of colitis is a gooey, frequently splattery diarrhea featuring mucus, fresh blood, or both. The stool may start normal then finish soft or may seem gooey throughout. There is often accompanying cramping, gas, and a sense of immediate urgency (the sudden need to run for a bathroom). Vomiting can be a feature of this condition though the characteristic diarrhea is the hallmark. Colitis may be acute (lasting only a few days) or chronic (lasting weeks or months on end). Even in chronic cases, weight loss is usually not a feature of this condition.'),
(34, 48, 'The colon is another term for the large or lower intestine. For those who do not know the lower intestine from the upper intestine, the colon/lower intestine is basically the last segment of the digestive tract. Before reaching the colon, food has been extensively processed. First, food is chewed up in the mouth, moved to the stomach via the esophagus where it undergoes acid treatment and extensive digestion with enzymes breaking down nutrients in to smaller molecular structures. Digestion continues early in the small intestine, but most of the small intestine (the segment immediately after the stomach) is about absorbing&nbsp; nutrients. By the time the food has passed through the small intestine, all the digestible nutrients have been broken down and absorbed, leaving only water and undigestible nutrients to enter the colon.'),
(35, 48, 'But the digestive tract is not through with the food remnants quite yet and this is the where the business of the colon comes in. The colon has three functions: absorbing water, storing stool, and further digesting unabsorbed nutrients. The bacterial population in the colon is about 10 times more dense than that of the small intestine. These bacteria, often referred to as&nbsp; good or helpful bacteria, take fibers that were undigestible to the host and actually process them into biochemicals that provide nourishment to the colon cells. The bacteria that live in the colon not only feed the cells of the colon, but they also control the pH of the colon environment so that excreted toxins are trapped in the stool and will be pooped away rather than be reabsorbed back into the body. They also produce flatulent gases and the pigments that lead to the ultimate color of stool. The relationship we have with our colon bacteria is mutually beneficial and is an excellent example of symbiosis'),
(36, 49, 'DASDSADS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pet_library_links`
--

CREATE TABLE `tbl_pet_library_links` (
  `links_id` int(11) NOT NULL,
  `library_id` int(11) NOT NULL,
  `web_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pet_library_links`
--

INSERT INTO `tbl_pet_library_links` (`links_id`, `library_id`, `web_link`) VALUES
(17, 48, 'https://veterinarypartner.vin.com/doc/?id=4951414&amp;pid=19239'),
(18, 49, 'https://google.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_productfoods`
--

CREATE TABLE `tbl_productfoods` (
  `food_table_id` int(11) NOT NULL,
  `food_id` text NOT NULL,
  `foodname` varchar(45) NOT NULL,
  `forwhatpet` varchar(45) NOT NULL,
  `fooddescription` text NOT NULL,
  `foodImage` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `supplier` varchar(45) NOT NULL,
  `exp_date` date NOT NULL,
  `store_price` decimal(10,2) NOT NULL,
  `product_unit` varchar(45) NOT NULL,
  `product_unit_number` varchar(45) NOT NULL,
  `product_unit_measure` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_productfoods`
--

INSERT INTO `tbl_productfoods` (`food_table_id`, `food_id`, `foodname`, `forwhatpet`, `fooddescription`, `foodImage`, `price`, `supplier`, `exp_date`, `store_price`, `product_unit`, `product_unit_number`, `product_unit_measure`) VALUES
(11, '#Food1808200141256', 'Dino Flakes', 'dinosaur', 'Dino Flakes Serials', 'AdSlots468_HI_Q3_2018111.jpg', '100.00', 'Dino Corp', '2018-09-21', '112.00', '5 (Kg) ', '5', 'Kg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_productinventories`
--

CREATE TABLE `tbl_productinventories` (
  `inv_table_id` int(11) NOT NULL,
  `product_rel_id` int(11) NOT NULL,
  `product_id` text NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `productType` varchar(45) NOT NULL,
  `action` varchar(45) NOT NULL,
  `user_type` varchar(45) NOT NULL,
  `user_name` text NOT NULL,
  `inventory_date` datetime NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_exp_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_productinventories`
--

INSERT INTO `tbl_productinventories` (`inv_table_id`, `product_rel_id`, `product_id`, `product_name`, `productType`, `action`, `user_type`, `user_name`, `inventory_date`, `quantity`, `product_exp_date`) VALUES
(123, 5, '#Food1806290150473', 'Cat Cans', 'Food', 'Add Supply', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-07-26 17:49:20', 33, '2018-08-04'),
(124, 18, '#Food1806290150473', 'Cat Cans', 'Food', 'Purchased Product', 'Customer(Walkin)', 'dadsdas', '2018-07-26 17:54:14', 4, '0000-00-00'),
(125, 6, '#Food1807260727068', 'Dog Can', 'Food', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-07-26 19:27:41', 44, '2018-12-09'),
(126, 6, '#Food1807260727068', 'Dog Can', 'Food', 'Add Supply', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-07-26 19:28:12', 10, '2018-12-22'),
(127, 13, '#Item1806290141016', 'Godzilla toys', 'Item', 'Add Supply', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-07-30 08:27:36', 4, '0000-00-00'),
(128, 14, '#Item1807090121384', 'Rope 1', 'Item', 'Add Supply', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-07-30 08:27:47', 3, '0000-00-00'),
(129, 16, '#Item1807301206321', 'Dog Shampoo', 'Item', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-07-30 12:07:11', 111, '0000-00-00'),
(130, 7, '#Food1807301209130', 'Dog Food', 'Food', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-07-30 12:09:49', 111, '2018-10-23'),
(131, 4, '#Med1807301212149', 'Multivitamins', 'Medicine', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-07-30 12:12:18', 100, '2018-10-18'),
(132, 5, '#Med1807301212180', 'Vitamins (Chewable)', 'Medicine', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-07-30 12:13:40', 111, '2018-10-22'),
(133, 6, '#Med1807301214251', 'Sentinel Spectrum', 'Medicine', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-07-30 12:15:25', 33, '2018-12-20'),
(134, 26, '#Med1807301212149', 'Multivitamins', 'Medicine', 'Purchased Product', 'Customer(Member)', 'Apple Salad David', '2018-07-30 13:24:19', 2, '0000-00-00'),
(135, 24, '#Item1807301206321', 'Dog Shampoo', 'Item', 'Purchased Product', 'Customer(Member)', 'Apple Salad David', '2018-07-30 13:24:19', 1, '0000-00-00'),
(136, 28, '#Med1807301214251', 'Sentinel Spectrum', 'Medicine', 'Purchased Product', 'Customer(Walkin)', 'ivan', '2018-07-30 13:25:38', 2, '0000-00-00'),
(137, 28, '#Med1807301214251', 'Sentinel Spectrum', 'Medicine', 'Purchased Product', 'Customer(Member)', 'Apple Salad David', '2018-07-30 13:25:54', 1, '0000-00-00'),
(138, 6, '#Med1807301214251', 'Sentinel Spectrum', 'Medicines', 'Pull out product', 'Veterinarian', 'Dominic Lanz Uy', '2018-08-02 16:28:16', 1, '0000-00-00'),
(139, 4, '#Med1807301212149', 'Multivitamins', 'Medicines', 'Pull out product', 'Veterinarian', 'Dominic Lanz Uy', '2018-08-02 17:09:54', 1, '0000-00-00'),
(140, 4, '#Med1807301212149', 'Multivitamins', 'Medicine', 'Add Supply', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-02 17:12:43', 11, '2018-08-24'),
(141, 28, '#Med1807301214251', 'Sentinel Spectrum', 'Medicine', 'Purchased Product', 'Customer(Member)', 'Apple Salad David', '2018-08-05 16:36:44', 1, '0000-00-00'),
(142, 26, '#Med1807301212149', 'Multivitamins', 'Medicine', 'Purchased Product', 'Customer(Member)', 'Apple Salad David', '2018-08-05 16:36:44', 1, '0000-00-00'),
(143, 24, '#Item1807301206321', 'Dog Shampoo', 'Item', 'Purchased Product', 'Customer(Walkin)', 'hahahahha', '2018-08-15 00:23:07', 12, '0000-00-00'),
(144, 25, '#Food1807301209130', 'Dog Food', 'Food', 'Purchased Product', 'Customer(Walkin)', 'sdadsd', '2018-08-15 00:35:21', 14, '0000-00-00'),
(145, 17, '#Item1808190604013', 'Cat Shampoo', 'Item', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-19 18:04:57', 111, '0000-00-00'),
(146, 7, '#Med1808201203340', 'Calp', 'Medicine', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-20 00:08:15', 22, '2018-08-31'),
(147, 9, '#Med1808201215049', 'dasdsdadsddss', 'Medicine', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-20 00:15:25', 33, '2018-08-24'),
(148, 10, '#Med1808201219366', 'Calp2', 'Medicine', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-20 00:20:05', 21, '2018-08-30'),
(149, 11, '#Med1808201237100', 'dasdsdadsddssssss', 'Medicine', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-20 00:37:29', 23, '2018-08-29'),
(150, 12, '#Med1808201238498', 'ivan', 'Medicine', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-20 00:39:10', 11, '2018-08-30'),
(151, 8, '#Food1808200102111', 'Cat Food', 'Food', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-20 01:02:40', 22, '2018-08-31'),
(152, 9, '#Food1808200103361', 'Cat Food 2', 'Food', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-20 01:04:00', 11, '2018-08-30'),
(153, 10, '#Food1808200120343', 'Dino Crunch', 'Food', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-20 01:20:59', 22, '2018-08-29'),
(154, 7, '#Food1807301209130', 'Dog Food', 'Food', 'Add Supply', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-20 01:36:59', 3, '2018-08-31'),
(155, 7, '#Food1807301209130', 'Dog Food', 'Food', 'Add Supply', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-20 01:37:08', 1, '2018-08-24'),
(156, 11, '#Food1808200141256', 'Dino Flakes', 'Food', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-20 01:42:34', 44, '2018-09-21'),
(157, 18, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-20 01:50:18', 99, '0000-00-00'),
(158, 18, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Add Supply', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-20 01:50:36', 2, '0000-00-00'),
(159, 13, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-20 01:55:20', 22, '2018-08-31'),
(160, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walkin)', 'ssss', '2018-08-20 01:57:07', 2, '0000-00-00'),
(161, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Member)', 'Apple Salad David', '2018-08-20 04:07:20', 2, '0000-00-00'),
(162, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Member)', 'Apple Salad David', '2018-08-20 04:07:20', 1, '0000-00-00'),
(163, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'ivan', '2018-08-20 04:11:36', 1, '0000-00-00'),
(164, 38, '#Food1808200141256', 'Dino Flakes', 'Food', 'Purchased Product', 'Customer(Walking)', 'ivan', '2018-08-20 04:11:36', 1, '0000-00-00'),
(165, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'sdasdsdas', '2018-08-20 04:12:45', 2, '0000-00-00'),
(166, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'ivans', '2018-08-20 04:20:43', 1, '0000-00-00'),
(167, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Member)', 'Apple Salad David', '2018-08-20 11:56:25', 3, '0000-00-00'),
(168, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Member)', 'Apple Salad David', '2018-08-20 11:59:23', 2, '0000-00-00'),
(169, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', '', '2018-08-20 12:32:04', 1, '0000-00-00'),
(170, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'ivans', '2018-08-20 12:33:51', 1, '0000-00-00'),
(171, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', '', '2018-08-20 12:46:54', 1, '0000-00-00'),
(172, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', '', '2018-08-20 12:46:54', 1, '0000-00-00'),
(173, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', '', '2018-08-20 12:47:21', 1, '0000-00-00'),
(174, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', '', '2018-08-20 12:48:22', 2, '0000-00-00'),
(175, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', '', '2018-08-20 12:49:55', 1, '0000-00-00'),
(176, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', '', '2018-08-20 12:49:55', 1, '0000-00-00'),
(177, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', '', '2018-08-20 12:50:38', 1, '0000-00-00'),
(178, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', '', '2018-08-20 12:52:42', 1, '0000-00-00'),
(179, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', '', '2018-08-20 12:52:42', 1, '0000-00-00'),
(180, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Member)', 'Apple Salad David', '2018-08-20 12:54:13', 2, '0000-00-00'),
(181, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', '', '2018-08-20 12:55:51', 1, '0000-00-00'),
(182, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', '', '2018-08-20 12:55:51', 1, '0000-00-00'),
(183, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'ivans', '2018-08-20 12:57:08', 2, '0000-00-00'),
(184, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', '', '2018-08-20 12:57:31', 1, '0000-00-00'),
(185, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', '', '2018-08-20 12:57:31', 1, '0000-00-00'),
(186, 13, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Add Supply', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-20 12:59:19', 50, '2018-08-31'),
(187, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'ivan', '2018-08-20 13:00:33', 2, '0000-00-00'),
(188, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'ivans', '2018-08-20 13:12:39', 1, '0000-00-00'),
(189, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', 'ivans', '2018-08-20 13:12:39', 1, '0000-00-00'),
(190, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'ivans', '2018-08-20 13:19:00', 1, '0000-00-00'),
(191, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', 'ivans', '2018-08-20 13:19:00', 1, '0000-00-00'),
(192, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'sdasdsad', '2018-08-20 13:20:26', 1, '0000-00-00'),
(193, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', 'sdasdsad', '2018-08-20 13:20:26', 1, '0000-00-00'),
(194, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'ivans', '2018-08-20 13:21:15', 1, '0000-00-00'),
(195, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', 'ivans', '2018-08-20 13:21:15', 1, '0000-00-00'),
(196, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'ivan', '2018-08-20 13:21:41', 1, '0000-00-00'),
(197, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', 'ivan', '2018-08-20 13:21:41', 1, '0000-00-00'),
(198, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'ivans', '2018-08-20 13:22:00', 1, '0000-00-00'),
(199, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', 'ivans', '2018-08-20 13:22:00', 1, '0000-00-00'),
(200, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'ivan', '2018-08-20 13:24:04', 1, '0000-00-00'),
(201, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', 'ivan', '2018-08-20 13:24:04', 1, '0000-00-00'),
(202, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'ivans', '2018-08-20 13:24:28', 1, '0000-00-00'),
(203, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', 'ivans', '2018-08-20 13:24:28', 1, '0000-00-00'),
(204, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'ivan', '2018-08-20 13:26:51', 1, '0000-00-00'),
(205, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', 'ivan', '2018-08-20 13:26:51', 1, '0000-00-00'),
(206, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'ivan', '2018-08-20 13:27:12', 1, '0000-00-00'),
(207, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'ivan', '2018-08-20 13:28:33', 2, '0000-00-00'),
(208, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'ivan', '2018-08-20 13:30:12', 1, '0000-00-00'),
(209, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'ivans', '2018-08-20 13:31:40', 1, '0000-00-00'),
(210, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'ivan', '2018-08-20 13:34:59', 2, '0000-00-00'),
(211, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'ivansdsdsddasdassadds', '2018-08-20 13:36:53', 2, '0000-00-00'),
(212, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'jvassd', '2018-08-20 13:37:14', 2, '0000-00-00'),
(213, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'ssdasd', '2018-08-20 13:39:45', 1, '0000-00-00'),
(214, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'dsadsa', '2018-08-20 13:40:29', 1, '0000-00-00'),
(215, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'ivanssds', '2018-08-20 13:40:50', 1, '0000-00-00'),
(216, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'sss', '2018-08-20 13:44:22', 1, '0000-00-00'),
(217, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'ss', '2018-08-20 13:45:00', 2, '0000-00-00'),
(218, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'ss', '2018-08-20 13:46:24', 1, '0000-00-00'),
(219, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', '2222', '2018-08-20 13:48:27', 1, '0000-00-00'),
(220, 38, '#Food1808200141256', 'Dino Flakes', 'Food', 'Purchased Product', 'Customer(Walking)', '2222', '2018-08-20 13:48:27', 1, '0000-00-00'),
(221, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', '', '2018-08-20 13:56:33', 1, '0000-00-00'),
(222, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', '', '2018-08-20 13:56:33', 1, '0000-00-00'),
(223, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', '', '2018-08-20 14:06:02', 1, '0000-00-00'),
(224, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', '', '2018-08-20 14:06:02', 1, '0000-00-00'),
(225, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', '', '2018-08-20 14:08:17', 1, '0000-00-00'),
(226, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', '', '2018-08-20 14:17:07', 1, '0000-00-00'),
(227, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'ssss', '2018-08-20 14:28:05', 1, '0000-00-00'),
(228, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', 'ssss', '2018-08-20 14:28:05', 1, '0000-00-00'),
(229, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Member)', 'Apple Salad David', '2018-08-20 14:33:06', 1, '0000-00-00'),
(230, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Member)', 'Apple Salad David', '2018-08-20 14:33:06', 1, '0000-00-00'),
(231, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', '', '2018-08-20 14:33:37', 1, '0000-00-00'),
(232, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Member)', 'Hernan Martinez Alar', '2018-08-20 14:34:13', 1, '0000-00-00'),
(233, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', '', '2018-08-20 14:46:31', 1, '0000-00-00'),
(234, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', '', '2018-08-20 14:46:31', 1, '0000-00-00'),
(235, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'jens', '2018-08-20 15:02:30', 1, '0000-00-00'),
(236, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', 'jens', '2018-08-20 15:02:30', 1, '0000-00-00'),
(237, 38, '#Food1808200141256', 'Dino Flakes', 'Food', 'Purchased Product', 'Customer(Walking)', 'jens', '2018-08-20 15:02:30', 1, '0000-00-00'),
(238, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', 'qqqq', '2018-08-20 15:05:25', 2, '0000-00-00'),
(239, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'waksd', '2018-08-22 00:58:31', 2, '0000-00-00'),
(240, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', 'waksd', '2018-08-22 00:58:31', 1, '0000-00-00'),
(241, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', 'ivans', '2018-08-22 01:03:19', 1, '0000-00-00'),
(242, 38, '#Food1808200141256', 'Dino Flakes', 'Food', 'Purchased Product', 'Customer(Walking)', 'ivans', '2018-08-22 01:03:19', 1, '0000-00-00'),
(243, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Member)', 'Lee Min Horse', '2018-08-22 01:13:03', 1, '0000-00-00'),
(244, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'tads', '2018-08-23 11:25:05', 1, '0000-00-00'),
(245, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', 'tads', '2018-08-23 11:25:05', 1, '0000-00-00'),
(246, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Member)', 'Lee Min Horse', '2018-08-23 11:25:29', 1, '0000-00-00'),
(247, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Member)', 'Lee Min Horse', '2018-08-23 11:25:29', 1, '0000-00-00'),
(248, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', '', '2018-08-24 23:49:22', 1, '0000-00-00'),
(249, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', '', '2018-08-24 23:49:39', 1, '0000-00-00'),
(250, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', '', '2018-08-24 23:49:58', 1, '0000-00-00'),
(251, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', '', '2018-08-24 23:50:28', 1, '0000-00-00'),
(252, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', '', '2018-08-26 09:02:01', 1, '0000-00-00'),
(253, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', '', '2018-08-26 09:41:41', 1, '0000-00-00'),
(254, 13, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicines', 'Pull out product', 'Veterinarian', 'Carlos Almonds Valdez', '2018-08-26 09:50:54', 1, '0000-00-00'),
(255, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', '', '2018-08-26 14:06:28', 1, '0000-00-00'),
(256, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', '', '2018-08-26 14:06:28', 1, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_productitems`
--

CREATE TABLE `tbl_productitems` (
  `item_table_id` int(11) NOT NULL,
  `item_id` text NOT NULL,
  `itemname` varchar(45) NOT NULL,
  `itemdescription` text NOT NULL,
  `itemImage` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `supplier` varchar(45) NOT NULL,
  `store_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_productitems`
--

INSERT INTO `tbl_productitems` (`item_table_id`, `item_id`, `itemname`, `itemdescription`, `itemImage`, `price`, `supplier`, `store_price`) VALUES
(18, '#Item1808200149209', 'Cat Shampoo', 'Cat Shampoo', 'AdSlots468_MK_Q2_201822.jpg', '100.00', 'Cat Corp', '112.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_productmedicines`
--

CREATE TABLE `tbl_productmedicines` (
  `med_table_id` int(11) NOT NULL,
  `med_id` text NOT NULL,
  `medType` varchar(45) NOT NULL,
  `medname` varchar(45) NOT NULL,
  `meddescription` text NOT NULL,
  `medImage` text NOT NULL,
  `dateAdded` datetime NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `supplier` varchar(45) NOT NULL,
  `exp_date` date NOT NULL,
  `store_price` decimal(10,2) NOT NULL,
  `product_unit` varchar(45) NOT NULL,
  `product_unit_number` varchar(45) NOT NULL,
  `product_unit_measure` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_productmedicines`
--

INSERT INTO `tbl_productmedicines` (`med_table_id`, `med_id`, `medType`, `medname`, `meddescription`, `medImage`, `dateAdded`, `price`, `supplier`, `exp_date`, `store_price`, `product_unit`, `product_unit_number`, `product_unit_measure`) VALUES
(13, '#Med1808200154179', 'Vitamins', 'Dino Capsule Evolution', 'Evolve your Tyranitar to Quek', 'AdSlots468_HI_Q3_201821.jpg', '0000-00-00 00:00:00', '1111.00', 'Dino Corp', '2018-08-31', '1244.32', '3 (Liters) ', '3', 'Liters');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_table_id` int(11) NOT NULL,
  `product_relation_id` int(11) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `product_unit` varchar(45) NOT NULL,
  `productType` varchar(45) NOT NULL,
  `product_id` text NOT NULL,
  `productInStore` int(11) NOT NULL,
  `dateAdded` datetime NOT NULL,
  `productImage` text NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `store_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_table_id`, `product_relation_id`, `product_name`, `product_unit`, `productType`, `product_id`, `productInStore`, `dateAdded`, `productImage`, `product_price`, `store_price`) VALUES
(38, 11, 'Dino Flakes', '5 (Kg) ', 'Food', '#Food1808200141256', 42, '2018-08-20 01:42:34', 'AdSlots468_HI_Q3_2018111.jpg', '100.00', '112.00'),
(39, 18, 'Cat Shampoo', '', 'Item', '#Item1808200149209', 92, '2018-08-20 01:50:18', 'AdSlots468_MK_Q2_201822.jpg', '100.00', '112.00'),
(40, 13, 'Dino Capsule Evolution', '3 (Liters) ', 'Medicine', '#Med1808200154179', 55, '2018-08-20 01:55:20', 'AdSlots468_HI_Q3_201821.jpg', '1111.00', '1244.32');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pullouts`
--

CREATE TABLE `tbl_pullouts` (
  `pullout_id` int(11) NOT NULL,
  `number_of_pullout` int(11) NOT NULL,
  `who_pull_out` text NOT NULL,
  `who_pullout_id` text NOT NULL,
  `product_type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales`
--

CREATE TABLE `tbl_sales` (
  `sales_id` int(11) NOT NULL,
  `invoice_number` text NOT NULL,
  `customer_type` varchar(45) NOT NULL,
  `customer_id` text NOT NULL,
  `customer_name` text NOT NULL,
  `sales_date` datetime NOT NULL,
  `staff` text NOT NULL,
  `staff_user_id` text NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `cash` decimal(10,2) NOT NULL,
  `change` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sales`
--

INSERT INTO `tbl_sales` (`sales_id`, `invoice_number`, `customer_type`, `customer_id`, `customer_name`, `sales_date`, `staff`, `staff_user_id`, `total_amount`, `cash`, `change`) VALUES
(105, '#1808200228050', 'Walking', '0', 'ssss', '2018-08-20 14:28:05', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '1356.32', '1400.00', '43.68'),
(106, '#1808200228066', 'Walking', '0', 'ssss', '2018-08-20 14:28:06', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '1356.32', '1400.00', '43.68'),
(107, '#1808200233062', 'Member', 'C1807251258419', 'Apple Salad David', '2018-08-20 14:33:06', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '1356.32', '3000.00', '1643.68'),
(108, '#1808200233372', 'Walking', '0', '', '2018-08-20 14:33:37', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '1244.32', '3000.00', '1755.68'),
(109, '#1808200234138', 'Member', 'C1808020433038', 'Hernan Martinez Alar', '2018-08-20 14:34:13', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '1244.32', '2000.00', '755.68'),
(110, '#1808200246310', 'Walking', '0', '', '2018-08-20 14:46:31', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '1356.32', '1500.00', '143.68'),
(111, '#1808200251508', 'Walking', '0', '', '2018-08-20 14:51:50', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '0.00', '0.00', '0.00'),
(112, '#1808200252045', 'Walking', '0', '', '2018-08-20 14:52:04', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '0.00', '0.00', '0.00'),
(113, '#1808200302305', 'Walking', '0', 'jens', '2018-08-20 15:02:30', 'Jackies Lee Chan', 'S1806231153417', '1468.32', '2000.00', '531.68'),
(114, '#1808200305250', 'Walking', '0', 'qqqq', '2018-08-20 15:05:25', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '224.00', '250.00', '26.00'),
(115, '#1808221258318', 'Walking', '0', 'waksd', '2018-08-22 00:58:31', 'kirra May Ballesteros', 'S1808221221365', '2600.64', '3000.00', '399.36'),
(116, '#1808220103192', 'Walking', '0', 'ivans', '2018-08-22 01:03:19', 'kirra May Ballesteros', 'S1808221221365', '224.00', '250.00', '26.00'),
(117, '#1808220113033', 'Member', 'C1808211035448', 'Lee Min Horse', '2018-08-22 01:13:03', 'kirra May Ballesteros', 'S1808221221365', '1244.32', '2000.00', '755.68'),
(118, '#1808231125059', 'Walking', '0', 'tads', '2018-08-23 11:25:05', 'kirra May Ballesteros', 'S1808221221365', '1356.32', '1500.00', '143.68'),
(119, '#1808231125299', 'Member', 'C1808211035448', 'Lee Min Horse', '2018-08-23 11:25:29', 'kirra May Ballesteros', 'S1808221221365', '1356.32', '1500.00', '143.68'),
(120, '#1808241149222', 'Walking', '0', '', '2018-08-24 23:49:22', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '1244.32', '1300.00', '55.68'),
(121, '#1808241149393', 'Walking', '0', '', '2018-08-24 23:49:39', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '1244.32', '1300.00', '55.68'),
(122, '#1808241149585', 'Walking', '0', '', '2018-08-24 23:49:58', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '1244.32', '1300.00', '55.68'),
(123, '#1808241150287', 'Walking', '0', '', '2018-08-24 23:50:28', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '1244.32', '1300.00', '55.68'),
(124, '#1808260902018', 'Walking', '0', '', '2018-08-26 09:02:01', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '1244.32', '1500.00', '255.68'),
(125, '#1808260941411', 'Walking', '0', '', '2018-08-26 09:41:41', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '1244.32', '1300.00', '55.68'),
(126, '#1808260206287', 'Walking', '0', '', '2018-08-26 14:06:28', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '1356.32', '1500.00', '143.68');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salesdetails`
--

CREATE TABLE `tbl_salesdetails` (
  `salesdetail_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` text NOT NULL,
  `product_type` varchar(45) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `price_per_product` decimal(10,2) NOT NULL,
  `sales_quantity` int(11) NOT NULL,
  `total_per_product` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `vat` decimal(10,2) NOT NULL,
  `last_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_salesdetails`
--

INSERT INTO `tbl_salesdetails` (`salesdetail_id`, `sales_id`, `product_id`, `product_type`, `product_name`, `price_per_product`, `sales_quantity`, `total_per_product`, `tax`, `vat`, `last_price`) VALUES
(111, 105, '#Med1808200154179', 'Medicine', 'Dino Capsule Evolution', '1111.00', 1, '1244.32', '0.12', '149.32', '1393.64'),
(112, 105, '#Item1808200149209', 'Item', 'Cat Shampoo', '100.00', 1, '112.00', '0.12', '13.44', '125.44'),
(113, 107, '#Med1808200154179', 'Medicine', 'Dino Capsule Evolution', '1111.00', 1, '1244.32', '0.12', '149.32', '1393.64'),
(114, 107, '#Item1808200149209', 'Item', 'Cat Shampoo', '100.00', 1, '112.00', '0.12', '13.44', '125.44'),
(115, 108, '#Med1808200154179', 'Medicine', 'Dino Capsule Evolution', '1111.00', 1, '1244.32', '0.12', '149.32', '1393.64'),
(116, 109, '#Med1808200154179', 'Medicine', 'Dino Capsule Evolution', '1111.00', 1, '1244.32', '0.12', '149.32', '1393.64'),
(117, 110, '#Med1808200154179', 'Medicine', 'Dino Capsule Evolution', '1111.00', 1, '1244.32', '0.12', '149.32', '1393.64'),
(118, 110, '#Item1808200149209', 'Item', 'Cat Shampoo', '100.00', 1, '112.00', '0.12', '13.44', '125.44'),
(119, 113, '#Med1808200154179', 'Medicine', 'Dino Capsule Evolution', '1111.00', 1, '1244.32', '0.12', '149.32', '1393.64'),
(120, 113, '#Item1808200149209', 'Item', 'Cat Shampoo', '100.00', 1, '112.00', '0.12', '13.44', '125.44'),
(121, 113, '#Food1808200141256', 'Food', 'Dino Flakes', '100.00', 1, '112.00', '0.12', '13.44', '125.44'),
(122, 114, '#Item1808200149209', 'Item', 'Cat Shampoo', '100.00', 2, '224.00', '0.12', '26.88', '250.88'),
(123, 115, '#Med1808200154179', 'Medicine', 'Dino Capsule Evolution', '1111.00', 2, '2488.64', '0.12', '298.64', '2787.28'),
(124, 115, '#Item1808200149209', 'Item', 'Cat Shampoo', '100.00', 1, '112.00', '0.12', '13.44', '125.44'),
(125, 116, '#Item1808200149209', 'Item', 'Cat Shampoo', '100.00', 1, '112.00', '0.12', '13.44', '125.44'),
(126, 116, '#Food1808200141256', 'Food', 'Dino Flakes', '100.00', 1, '112.00', '0.12', '13.44', '125.44'),
(127, 117, '#Med1808200154179', 'Medicine', 'Dino Capsule Evolution', '1111.00', 1, '1244.32', '0.12', '149.32', '1393.64'),
(128, 118, '#Med1808200154179', 'Medicine', 'Dino Capsule Evolution', '1111.00', 1, '1244.32', '0.12', '149.32', '1393.64'),
(129, 118, '#Item1808200149209', 'Item', 'Cat Shampoo', '100.00', 1, '112.00', '0.12', '13.44', '125.44'),
(130, 119, '#Med1808200154179', 'Medicine', 'Dino Capsule Evolution', '1111.00', 1, '1244.32', '0.12', '149.32', '1393.64'),
(131, 119, '#Item1808200149209', 'Item', 'Cat Shampoo', '100.00', 1, '112.00', '0.12', '13.44', '125.44'),
(132, 120, '#Med1808200154179', 'Medicine', 'Dino Capsule Evolution', '1111.00', 1, '1244.32', '0.12', '149.32', '1393.64'),
(133, 121, '#Med1808200154179', 'Medicine', 'Dino Capsule Evolution', '1111.00', 1, '1244.32', '0.12', '149.32', '1393.64'),
(134, 122, '#Med1808200154179', 'Medicine', 'Dino Capsule Evolution', '1111.00', 1, '1244.32', '0.12', '149.32', '1393.64'),
(135, 123, '#Med1808200154179', 'Medicine', 'Dino Capsule Evolution', '1111.00', 1, '1244.32', '0.12', '149.32', '1393.64'),
(136, 124, '#Med1808200154179', 'Medicine', 'Dino Capsule Evolution', '1111.00', 1, '1244.32', '0.12', '149.32', '1393.64'),
(137, 125, '#Med1808200154179', 'Medicine', 'Dino Capsule Evolution', '1111.00', 1, '1244.32', '0.12', '149.32', '1393.64'),
(138, 126, '#Med1808200154179', 'Medicine', 'Dino Capsule Evolution', '1111.00', 1, '1244.32', '0.12', '149.32', '1393.64'),
(139, 126, '#Item1808200149209', 'Item', 'Cat Shampoo', '100.00', 1, '112.00', '0.12', '13.44', '125.44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE `tbl_services` (
  `service_id` int(11) NOT NULL,
  `for_what_pet` varchar(45) NOT NULL,
  `for_pet_ages` varchar(45) NOT NULL,
  `service_name` varchar(45) NOT NULL,
  `service_description` text NOT NULL,
  `service_fee` decimal(10,2) NOT NULL,
  `service_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_services`
--

INSERT INTO `tbl_services` (`service_id`, `for_what_pet`, `for_pet_ages`, `service_name`, `service_description`, `service_fee`, `service_status`) VALUES
(4, 'cat', 'young adult (11 months old and below)', 'Vaccination for Kittens', '', '400.00', 'Active'),
(5, 'dog', 'adult (1 year old and above)', 'Deworming ', '<p>\r\n\r\n</p><p>Deworming for adult dogs.</p><p>Medicine includes the ff:</p><p></p><ul><li>dognapper 22ml<br></li><li>dogcatnaper 11ml</li></ul><p></p><p>s</p>\r\n\r\n<p></p>', '222.00', 'Active'),
(6, 'dog', 'adult (1 year old and above)', 'dasdsdasda', '<p>\r\n\r\n</p><p>Deworming for adult dogs.</p><p>Medicine includes the ff:s</p><p></p><ul><li>dognapper 22ml<br></li><li>dogcatnaper 11mls</li></ul>\r\n\r\n<p></p>', '211.00', 'Active'),
(7, 'dog', 'adult (1 year old and above)', 'Vaccination', '<p>sdasdasdsa</p>', '2222.00', 'Active'),
(8, 'cat', 'adult (1 year old and above)', 'Deworming', '<p>Deworming for Cat</p>', '300.00', 'Active'),
(9, 'cat', 'young adult (11 months old and below)', 'Deworming for Kittens', '', '157.00', 'Inactive'),
(10, 'dinosaur', 'adult (1 year old and above)', 'Deworming for Dino', '<p>dads</p>', '5000.00', 'Inactive'),
(11, 'dog', 'young adult (11 months old and below)', 'Deworming ', '<p>dsdasdas</p>', '400.00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service_rendered`
--

CREATE TABLE `tbl_service_rendered` (
  `service_rendered_id` int(11) NOT NULL,
  `checkup_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_name` varchar(45) NOT NULL,
  `service_fees` decimal(10,2) NOT NULL,
  `appointment_table_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_service_rendered`
--

INSERT INTO `tbl_service_rendered` (`service_rendered_id`, `checkup_id`, `service_id`, `service_name`, `service_fees`, `appointment_table_id`) VALUES
(47, 59, 0, 'General Checkup', '111.00', 0),
(48, 59, 0, 'Deworming for Kittens', '157.00', 0),
(49, 59, 0, 'Vaccination for Kittens', '400.00', 0),
(50, 60, 9, 'Deworming for Kittens', '157.00', 0),
(51, 61, 0, 'General Checkup', '111.00', 56),
(52, 62, 0, 'General Checkup', '111.00', 57),
(53, 62, 8, 'Deworming', '300.00', 57),
(54, 63, 0, 'General Checkup', '111.00', 60),
(55, 63, 8, 'Deworming', '300.00', 60);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `settings_id` int(11) NOT NULL,
  `theme_color` varchar(45) NOT NULL,
  `aboutus_content` text NOT NULL,
  `vet_fee` decimal(10,2) NOT NULL,
  `clinic_email_address` text NOT NULL,
  `clinic_home_address` varchar(45) NOT NULL,
  `clinic_barangay_address` varchar(45) NOT NULL,
  `clinic_city_address` varchar(45) NOT NULL,
  `clinic_postal_id` varchar(45) NOT NULL,
  `vat` varchar(45) NOT NULL,
  `store_name` varchar(45) NOT NULL,
  `service_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`settings_id`, `theme_color`, `aboutus_content`, `vet_fee`, `clinic_email_address`, `clinic_home_address`, `clinic_barangay_address`, `clinic_city_address`, `clinic_postal_id`, `vat`, `store_name`, `service_content`) VALUES
(1, 'skin-blue', '<p><br></p><p>ivan christian jays</p>\r\n\r\n<p></p>', '111.00', 'vetopias_D@gmail.com', '#1433', 'Barangay bas', 'Makati City', '121', '.12', 'Agapa ng Ina m0 ka', '<p>\r\n\r\nWe apply the wisdom garnered in the centuries old tradition of veterinary medicine, to find the safest treatments and <i>cures. </i>We strive to be your pet\'s medical experts from youth through the senior years. We build preventative health care plans for each and every one of our patients, based on breed, age, and sex, so that your pet receives the most appropriate care at crucial milestones. We want to give your pet a long and healthy life\r\n\r\n</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staffs`
--

CREATE TABLE `tbl_staffs` (
  `staff_table_id` int(11) NOT NULL,
  `staff_id` text NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `middlename` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `birthdate` date NOT NULL,
  `homeAddress` varchar(45) NOT NULL,
  `barangayAddress` varchar(45) NOT NULL,
  `cityAddress` varchar(45) NOT NULL,
  `postalID` varchar(45) NOT NULL,
  `dateAdded` datetime NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` text NOT NULL,
  `staff_status` varchar(45) NOT NULL,
  `profile` text NOT NULL,
  `contact` text NOT NULL,
  `gender` varchar(45) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_staffs`
--

INSERT INTO `tbl_staffs` (`staff_table_id`, `staff_id`, `firstname`, `middlename`, `lastname`, `birthdate`, `homeAddress`, `barangayAddress`, `cityAddress`, `postalID`, `dateAdded`, `username`, `password`, `staff_status`, `profile`, `contact`, `gender`, `email`) VALUES
(9, 'S1808221221365', 'kirra', 'May', 'Ballesteros', '2002-02-19', '#3333', 'ivn street', '1212masdasd', '1111', '2018-08-22 00:22:18', '', '', 'Active', '', '09021232212', 'Female', 'sdasds@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_timeschedule`
--

CREATE TABLE `tbl_timeschedule` (
  `timeSchedule_id` int(11) NOT NULL,
  `time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_timeschedule`
--

INSERT INTO `tbl_timeschedule` (`timeSchedule_id`, `time`) VALUES
(1, '9:00 am - 10:00 am'),
(2, '10:00 am - 11:00 am'),
(3, '11:00 am - 12: 00 nn'),
(4, '12:00 nn - 1:00 pm'),
(5, '1: 00pm - 2:00 pm'),
(6, '2:00 pm - 3:00 pm'),
(7, '4: 00 pm - 5: 00pm');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `tbluser_id` int(11) NOT NULL,
  `user_type` varchar(45) NOT NULL,
  `user_id` text NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `hash_password` varchar(45) NOT NULL,
  `last_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`tbluser_id`, `user_type`, `user_id`, `username`, `password`, `hash_password`, `last_modified`) VALUES
(1, 'Admin', 'A1808210927293', 'SLayola', 'shannels', '$2y$10$uMWEOiKf8aiG.3AYODmkReYouoEZgdWZeUVw0W', '2018-08-21 22:23:39'),
(2, 'Admin', 'A1806231044313', 'superadmin', 'superadmin', '$2y$10$98hhrpt8vyNgCum7/JTmMu2B1FI1DGzZso8r7I', '2018-08-21 21:28:09'),
(3, 'Customer', 'C1808211035448', 'LHorses', 'kabayo', '$2y$10$sMLmIqSQ8L9YCboyJxJcsOOxLyOCyo5fSsuoo6', '2018-08-22 23:58:04'),
(4, 'Veterinarian', 'V1808211104221', 'RJames', 'V1808211104221', '$2y$10$d0d7vZCjhBciruPKZBNjbOq5iopLUC8fStdt8Z', '2018-08-21 23:04:49'),
(5, 'Veterinarian', 'V1808211104490', 'CValdez', 'carlos', '$2y$10$CwfI5AyF11KE9dHJC./JQej8wwMefFjOZTr6Y.', '2018-08-21 23:21:15'),
(6, 'Veterinarian', 'V1808211106539', 'RAnto', 'V1808211106539', '$2y$10$PW08MahKU.n53bXq9xtX4O5K3NNNhLjSdoTDQ.', '2018-08-21 23:07:31'),
(7, 'Veterinarian', 'S1808211134504', 'TRomeo', 'S1808211134504', '$2y$10$VBaEO5gSYJ5/GXBfQS9Wmu2zMYxhe450lBpFkg', '2018-08-21 23:34:57'),
(8, 'Veterinarian', 'S1808211134571', 'Vdasdw', 'S1808211134571', '$2y$10$bfhOWM4AbEQFCioHM5TD.OriDTMMFgfARx1DZN', '2018-08-21 23:35:30'),
(10, 'Staff', 'S1808221221365', 'kBallesteros', 'kirra', '$2y$10$4Je5ST8maCyBTiiDHaWdXeK2eHneq1nIqVWM9e', '2018-08-22 23:35:49'),
(11, 'Customer', 'C1808221128307', 'RDalisay', 'cardo', '$2y$10$uYwEdmPJ7wR4IKyuLeR33uEJyW41a1wG.fc/3R', '2018-08-22 11:29:36'),
(12, 'Customer', 'C1808260134527', 'CEchanez', 'C1808260134527', '$2y$10$BgI3rSI9BxwkSM5IdHf84uLVqT.qR8Y0p.EJrL', '2018-08-26 13:36:04'),
(13, 'Customer', 'C1808260210291', 'SDela Cruz', 'C1808260210291', '$2y$10$o28edQ/VGnnVtEWOr/lEF.fYVLovQ7Lr907dmM', '2018-08-26 14:11:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_veterinarians`
--

CREATE TABLE `tbl_veterinarians` (
  `veterinarian_table_id` int(11) NOT NULL,
  `veterinarian_id` text NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `middlename` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `birthdate` date NOT NULL,
  `homeAddress` varchar(45) NOT NULL,
  `barangayAddress` varchar(45) NOT NULL,
  `cityAddress` varchar(45) NOT NULL,
  `postalID` varchar(45) NOT NULL,
  `dateAdded` datetime NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` text NOT NULL,
  `veterinarian_status` varchar(45) NOT NULL,
  `vetbio` text NOT NULL,
  `profile` text NOT NULL,
  `gender` varchar(45) NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_veterinarians`
--

INSERT INTO `tbl_veterinarians` (`veterinarian_table_id`, `veterinarian_id`, `firstname`, `middlename`, `lastname`, `birthdate`, `homeAddress`, `barangayAddress`, `cityAddress`, `postalID`, `dateAdded`, `username`, `password`, `veterinarian_status`, `vetbio`, `profile`, `gender`, `contact`, `email`) VALUES
(0, 'V1808211104221', 'Recardo', 'Lebron ', 'James', '1976-05-12', '#3333', 'sdsd', 'asdsd', 'sdadsa', '2018-08-21 23:04:49', '', '', 'Active', '<p>wala ako dito</p>', 'team12.png', 'Male', '09021232212', 'rj@gmail.com'),
(8, 'V1808211104490', 'Carlos', 'Almonds', 'Valdez', '1985-02-12', '#3333', 'dsassd', 'sdasd', '1111', '2018-08-21 23:06:10', 'CValdez', 'carlos', 'Active', '<p>vibe 20</p>', 'team3.png', 'Male', '09021232212', 'carlosvaldex10@gmail.com'),
(9, 'V1808211106539', 'Renato', 'Ren', 'Anto', '1984-05-21', 'sdsd', 'sads', 'sdsd', 'asdsd', '2018-08-21 23:07:31', '', '', 'Active', '<p>sssasdsad</p>', 'doctor-sanders.jpg', 'Male', '09021232212', 'rj@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admins`
--
ALTER TABLE `tbl_admins`
  ADD PRIMARY KEY (`admin_table_id`);

--
-- Indexes for table `tbl_appointments`
--
ALTER TABLE `tbl_appointments`
  ADD PRIMARY KEY (`appointment_table_id`);

--
-- Indexes for table `tbl_bannerimages`
--
ALTER TABLE `tbl_bannerimages`
  ADD PRIMARY KEY (`bannerimage_id`);

--
-- Indexes for table `tbl_checkupdetails`
--
ALTER TABLE `tbl_checkupdetails`
  ADD PRIMARY KEY (`checkup_id`);

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customer_table_id`);

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `tbl_petbreeds`
--
ALTER TABLE `tbl_petbreeds`
  ADD PRIMARY KEY (`breed_id`);

--
-- Indexes for table `tbl_pets`
--
ALTER TABLE `tbl_pets`
  ADD PRIMARY KEY (`pet_table_id`);

--
-- Indexes for table `tbl_pettype`
--
ALTER TABLE `tbl_pettype`
  ADD PRIMARY KEY (`pettype_id`);

--
-- Indexes for table `tbl_pet_library`
--
ALTER TABLE `tbl_pet_library`
  ADD PRIMARY KEY (`library_id`);

--
-- Indexes for table `tbl_pet_library_content`
--
ALTER TABLE `tbl_pet_library_content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `tbl_pet_library_links`
--
ALTER TABLE `tbl_pet_library_links`
  ADD PRIMARY KEY (`links_id`);

--
-- Indexes for table `tbl_productfoods`
--
ALTER TABLE `tbl_productfoods`
  ADD PRIMARY KEY (`food_table_id`);

--
-- Indexes for table `tbl_productinventories`
--
ALTER TABLE `tbl_productinventories`
  ADD PRIMARY KEY (`inv_table_id`);

--
-- Indexes for table `tbl_productitems`
--
ALTER TABLE `tbl_productitems`
  ADD PRIMARY KEY (`item_table_id`);

--
-- Indexes for table `tbl_productmedicines`
--
ALTER TABLE `tbl_productmedicines`
  ADD PRIMARY KEY (`med_table_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_table_id`);

--
-- Indexes for table `tbl_pullouts`
--
ALTER TABLE `tbl_pullouts`
  ADD PRIMARY KEY (`pullout_id`);

--
-- Indexes for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `tbl_salesdetails`
--
ALTER TABLE `tbl_salesdetails`
  ADD PRIMARY KEY (`salesdetail_id`);

--
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `tbl_service_rendered`
--
ALTER TABLE `tbl_service_rendered`
  ADD PRIMARY KEY (`service_rendered_id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `tbl_staffs`
--
ALTER TABLE `tbl_staffs`
  ADD PRIMARY KEY (`staff_table_id`);

--
-- Indexes for table `tbl_timeschedule`
--
ALTER TABLE `tbl_timeschedule`
  ADD PRIMARY KEY (`timeSchedule_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`tbluser_id`);

--
-- Indexes for table `tbl_veterinarians`
--
ALTER TABLE `tbl_veterinarians`
  ADD PRIMARY KEY (`veterinarian_table_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admins`
--
ALTER TABLE `tbl_admins`
  MODIFY `admin_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_appointments`
--
ALTER TABLE `tbl_appointments`
  MODIFY `appointment_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `tbl_bannerimages`
--
ALTER TABLE `tbl_bannerimages`
  MODIFY `bannerimage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_checkupdetails`
--
ALTER TABLE `tbl_checkupdetails`
  MODIFY `checkup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1507;
--
-- AUTO_INCREMENT for table `tbl_petbreeds`
--
ALTER TABLE `tbl_petbreeds`
  MODIFY `breed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tbl_pets`
--
ALTER TABLE `tbl_pets`
  MODIFY `pet_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tbl_pettype`
--
ALTER TABLE `tbl_pettype`
  MODIFY `pettype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_pet_library`
--
ALTER TABLE `tbl_pet_library`
  MODIFY `library_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `tbl_pet_library_content`
--
ALTER TABLE `tbl_pet_library_content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `tbl_pet_library_links`
--
ALTER TABLE `tbl_pet_library_links`
  MODIFY `links_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbl_productfoods`
--
ALTER TABLE `tbl_productfoods`
  MODIFY `food_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_productinventories`
--
ALTER TABLE `tbl_productinventories`
  MODIFY `inv_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;
--
-- AUTO_INCREMENT for table `tbl_productitems`
--
ALTER TABLE `tbl_productitems`
  MODIFY `item_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbl_productmedicines`
--
ALTER TABLE `tbl_productmedicines`
  MODIFY `med_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `tbl_pullouts`
--
ALTER TABLE `tbl_pullouts`
  MODIFY `pullout_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `tbl_salesdetails`
--
ALTER TABLE `tbl_salesdetails`
  MODIFY `salesdetail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_service_rendered`
--
ALTER TABLE `tbl_service_rendered`
  MODIFY `service_rendered_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_staffs`
--
ALTER TABLE `tbl_staffs`
  MODIFY `staff_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_timeschedule`
--
ALTER TABLE `tbl_timeschedule`
  MODIFY `timeSchedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `tbluser_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbl_veterinarians`
--
ALTER TABLE `tbl_veterinarians`
  MODIFY `veterinarian_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
