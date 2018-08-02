-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2018 at 06:46 AM
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
  `homeAddress` varchar(45) NOT NULL,
  `barangayAddress` varchar(45) NOT NULL,
  `cityAddress` varchar(45) NOT NULL,
  `postalID` varchar(45) NOT NULL,
  `is_active` varchar(45) NOT NULL,
  `dateAdded` datetime NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` text NOT NULL,
  `profile` text NOT NULL,
  `gender` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admins`
--

INSERT INTO `tbl_admins` (`admin_table_id`, `admin_type`, `admin_id`, `firstname`, `middlename`, `lastname`, `birthdate`, `contact`, `homeAddress`, `barangayAddress`, `cityAddress`, `postalID`, `is_active`, `dateAdded`, `username`, `password`, `profile`, `gender`) VALUES
(1, 'Super Admin', 'A1806231044313', 'Ivan Christian Jay', 'Echanes', 'Funcion', '1995-11-23', '09481212312', '16th ISU Village', 'Barangay 31', 'Makati ', '21', 'Active', '2018-06-23 10:49:02', 'superadmin', 'superadmin', 'Godspeed1.jpg', 'Male'),
(2, 'Admin', 'A1806231052520', 'Lewis Alfred', 'LA', 'Tenorio', '1995-11-23', '09023123222', '16th ISU Village', 'Ginebra', 'San Juan', '333', 'Active', '2018-06-23 10:53:42', '0la5', 'tenorio', 'vet.png', 'Male'),
(3, 'Admin', 'A1807060553307', 'iVAN', 'Echanes', 'Danvers', '2000-02-14', '09481212312', '16th ISU Village', 'Barangay 31', 'National City', '1212', 'Active', '2018-07-06 17:54:24', '0ivan', 'IVANIVAN', '', 'Male'),
(4, 'Admin', 'A1807251248125', 'Jeffrei ', 'Allan', 'Chan', '1984-06-11', '09481212312', '16th ISU Village', 'Barangay 31', 'National City', '1212', 'Active', '2018-07-25 00:49:24', '0jc16', 'jchan', '', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_adult_dogs_programs`
--

CREATE TABLE `tbl_adult_dogs_programs` (
  `adult_dog_prog_id` int(11) NOT NULL,
  `adult_dog_prog_name` varchar(45) NOT NULL,
  `adult_dog_prog_description` text NOT NULL,
  `adult_dog_prog_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_adult_dogs_programs`
--

INSERT INTO `tbl_adult_dogs_programs` (`adult_dog_prog_id`, `adult_dog_prog_name`, `adult_dog_prog_description`, `adult_dog_prog_price`) VALUES
(1, 'Deworming', 'Every 4 Months', '300.00'),
(2, 'Vaccination', 'Combined vaccine every year', '500.00'),
(3, 'Hearthworm Preventive', 'Every months starting at 4 Months', '340.00'),
(4, 'Grooming (Nail Cutting)', 'Nail Cutting', '200.00'),
(5, 'Grooming (Hair Cutting)', 'Hair Cutting for Adult Dogs', '150.00'),
(6, 'Grooming (Complete Package)', 'Full house grooming', '1400.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointments`
--

CREATE TABLE `tbl_appointments` (
  `appointment_table_id` int(11) NOT NULL,
  `appointment_id` text NOT NULL,
  `customer_id` text NOT NULL,
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
  `tapos_na` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_appointments`
--

INSERT INTO `tbl_appointments` (`appointment_table_id`, `appointment_id`, `customer_id`, `customer_name`, `preferredDate`, `preferredtime`, `pet_name`, `pet_id`, `pettype`, `petbreed`, `age`, `is_adult`, `appointment_status`, `date_requested`, `vet_id`, `vet_in_charge`, `complaints`, `cancel_reason`, `cancel_date`, `tapos_na`) VALUES
(39, '#1807261204481', 'C1807251258419', 'Apple Salad David', '2018-07-26', '11:00 am - 12: 00 nn', 'Steel', 'P1807250114188', 'Dog', 'German Shepherd', '6 Months old', 0, 'Done', '2018-07-26 00:04:48', 'V1806231110251', 'Dominic Lanz Uy', 'ivan', '', '0000-00-00 00:00:00', 1),
(40, '#1807260430180', 'C1807251258419', 'Apple Salad David', '2018-07-26', '12:00 nn - 1:00 pm', 'Steel', 'P1807250114188', 'Dog', 'German Shepherd', '6 Months old', 0, 'Done', '2018-07-26 16:30:18', 'V1806231110251', 'Dominic Lanz Uy', 'dasdadadasd', '', '0000-00-00 00:00:00', 1),
(41, '#1807260437012', 'C1807251258419', 'Apple Salad David', '2018-07-26', '4: 00 pm - 5: 00pm', 'Steel', 'P1807250114188', 'Dog', 'German Shepherd', '6 Months old', 0, 'Cancelled', '2018-07-26 16:37:01', 'V1806231110251', 'Dominic Lanz Uy', 'dasdsdadsdsddddsds', 'wala na finish na\r\n                              \r\n                            ', '2018-07-26 16:37:14', 0),
(42, '#1808020112256', 'C1807251258419', 'Apple Salad David', '2018-08-02', '4: 00 pm - 5: 00pm', 'Apple', 'P1807251259295', 'Dog', 'German Shepherd', '1 Years old', 1, 'Approved', '2018-08-02 01:12:25', 'V1806231110251', 'Dominic Lanz Uy', 'Pa groom :D', '', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_checkupdetails`
--

CREATE TABLE `tbl_checkupdetails` (
  `checkup_id` int(11) NOT NULL,
  `assessment_date` datetime NOT NULL,
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
  `prescription` text NOT NULL,
  `all_services` text NOT NULL,
  `service_fee` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_checkupdetails`
--

INSERT INTO `tbl_checkupdetails` (`checkup_id`, `assessment_date`, `appointment_id`, `date`, `time`, `veterinarian`, `vet_id`, `pet_id`, `petname`, `age`, `complaints`, `treatment`, `prescription`, `all_services`, `service_fee`) VALUES
(3, '2018-07-26 11:36:34', '#1807261204481', '2018-07-26', '11:00 am - 12: 00 nn', 'Dominic Lanz Uy', 'V1806231110251', 'P1807250114188', 'Steel', '6 Months old', 'ivan', 'sdasd', ' sdasda                                           \r\n                                        ', 'General Checkup, Vaccination', '650.00'),
(4, '2018-07-26 16:34:30', '#1807260430180', '2018-07-26', '12:00 nn - 1:00 pm', 'Dominic Lanz Uy', 'V1806231110251', 'P1807250114188', 'Steel', '6 Months old', 'dasdadadasd', 'yan', '  yuan                                          \r\n                                        ', 'General Checkup, ', '150.00');

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
  `is_active` varchar(45) NOT NULL,
  `profile` text NOT NULL,
  `contact` text NOT NULL,
  `gender` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_table_id`, `customer_id`, `firstname`, `middlename`, `lastname`, `birthdate`, `homeAddress`, `barangayAddress`, `cityAddress`, `postalID`, `dateAdded`, `username`, `password`, `is_active`, `profile`, `contact`, `gender`) VALUES
(5, 'C1807251258419', 'Apple', 'Salad', 'David', '1993-01-18', '16th ISU Village', 'Barangay 31', 'National City', '232', '2018-07-25 00:59:22', '3apple', 'apple', 'Active', 'user4-128x1281.jpg', '09481212312', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kittens_programs`
--

CREATE TABLE `tbl_kittens_programs` (
  `kittens_prog_id` int(11) NOT NULL,
  `kittens_prog_name` varchar(45) NOT NULL,
  `kittens_prog_description` text NOT NULL,
  `kittens_prog_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kittens_programs`
--

INSERT INTO `tbl_kittens_programs` (`kittens_prog_id`, `kittens_prog_name`, `kittens_prog_description`, `kittens_prog_price`) VALUES
(1, 'Deworming', '1st Deworming at 3 to 4 weeks old. Redeworming after 3 weeks. Regular Deworming after 3 weeks', '350.00'),
(2, 'Vaccination', '1st shot vs FPL (Feline Panleukopenia Virus) at 8 weeks of age. Succeeding boosters every 3 weels of age until 4 months of age. Anti-rabies shot at 3 months of age', '400.00'),
(3, 'Grooming (Nail Cutting)', 'Nail Cutting small Cats', '99.00');

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
(1037, 'Dominic Lanz Uy', 'Veterinarian', 'V1806231110251', 'User Logout', '2018-07-26 17:47:37'),
(1038, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-07-26 17:47:44'),
(1039, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-07-26 17:47:44'),
(1040, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-07-26 17:48:16'),
(1041, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-07-26 17:48:19'),
(1042, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-07-26 17:48:25'),
(1043, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-26 17:49:11'),
(1044, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-26 17:49:21'),
(1045, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-26 17:49:25'),
(1046, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products Detail (Food)', '2018-07-26 17:49:27'),
(1047, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-26 17:53:55'),
(1048, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-26 17:54:14'),
(1049, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products Detail (Food)', '2018-07-26 17:54:18'),
(1050, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products Detail (Food)', '2018-07-26 18:01:41'),
(1051, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products Detail (Food)', '2018-07-26 18:02:58'),
(1052, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products Detail (Food)', '2018-07-26 18:03:28'),
(1053, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-07-26 18:03:52'),
(1054, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-26 18:03:55'),
(1055, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products Detail (Food)', '2018-07-26 18:04:06'),
(1056, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products Detail (Food)', '2018-07-26 18:09:10'),
(1057, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products Detail (Food)', '2018-07-26 18:09:27'),
(1058, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products Detail (Food)', '2018-07-26 18:11:53'),
(1059, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products Detail (Food)', '2018-07-26 18:12:29'),
(1060, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products Detail (Food)', '2018-07-26 18:12:47'),
(1061, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products Detail (Food)', '2018-07-26 18:13:12'),
(1062, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products Detail (Food)', '2018-07-26 18:13:35'),
(1063, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products Detail (Food)', '2018-07-26 18:13:44'),
(1064, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-26 18:13:58'),
(1065, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products Detail (Food)', '2018-07-26 18:14:58'),
(1066, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-26 18:15:04'),
(1067, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-26 18:42:25'),
(1068, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products Detail (Food)', '2018-07-26 18:42:28'),
(1069, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-26 18:42:29'),
(1070, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-26 18:54:31'),
(1071, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-26 18:54:32'),
(1072, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-26 18:56:06'),
(1073, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-26 18:56:17'),
(1074, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-26 19:01:18'),
(1075, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-26 19:04:04'),
(1076, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-26 19:04:05'),
(1077, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-26 19:04:20'),
(1078, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-26 19:06:29'),
(1079, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-26 19:11:30'),
(1080, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-26 19:11:50'),
(1081, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-26 19:12:44'),
(1082, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-26 19:13:04'),
(1083, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-26 19:19:03'),
(1084, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-26 19:19:34'),
(1085, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-26 19:27:06'),
(1086, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-26 19:27:41'),
(1087, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products Detail (Food)', '2018-07-26 19:27:44'),
(1088, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-26 19:27:57'),
(1089, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-26 19:28:12'),
(1090, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products Detail (Food)', '2018-07-26 19:28:21'),
(1091, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-07-26 19:28:48'),
(1092, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-26 19:28:50'),
(1093, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-07-26 19:28:52'),
(1094, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-26 19:29:00'),
(1095, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-07-28 11:18:37'),
(1096, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-07-28 11:18:37'),
(1097, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-07-28 11:18:49'),
(1098, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-07-28 11:18:53'),
(1099, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-28 11:20:58'),
(1100, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-28 11:21:47'),
(1101, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-07-28 11:21:53'),
(1102, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-07-28 11:27:24'),
(1103, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Medicines)', '2018-07-28 11:27:26'),
(1104, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Medicines)', '2018-07-28 11:27:55'),
(1105, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-07-28 13:02:36'),
(1106, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-07-28 13:21:35'),
(1107, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-07-28 13:21:55'),
(1108, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-07-28 13:22:24'),
(1109, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-07-28 13:22:31'),
(1110, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer details', '2018-07-28 13:22:32'),
(1111, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-07-28 13:22:39'),
(1112, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-07-28 13:22:42'),
(1113, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer details', '2018-07-28 13:22:45'),
(1114, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-07-28 13:22:50'),
(1115, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-07-28 13:22:52'),
(1116, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-07-28 13:23:01'),
(1117, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer details', '2018-07-28 13:23:03'),
(1118, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet details', '2018-07-28 13:23:10'),
(1119, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-07-28 13:23:36'),
(1120, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer details', '2018-07-28 13:23:38'),
(1121, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-07-28 13:23:49'),
(1122, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-07-28 13:23:51'),
(1123, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Clinic Services', '2018-07-28 13:29:43'),
(1124, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-07-28 13:36:45'),
(1125, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Clinic Services', '2018-07-28 13:37:22'),
(1126, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-07-28 13:37:24'),
(1127, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-07-28 13:41:14'),
(1128, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-07-28 13:41:18'),
(1129, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-07-28 13:41:19'),
(1130, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-07-28 13:42:52'),
(1131, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-07-28 13:42:54'),
(1132, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-07-28 13:43:26'),
(1133, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View logs', '2018-07-28 13:58:56'),
(1134, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-07-28 13:59:04'),
(1135, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Product Details (Items)', '2018-07-28 13:59:06'),
(1136, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-28 13:59:08'),
(1137, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products Detail (Food)', '2018-07-28 13:59:10'),
(1138, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-07-30 08:17:32'),
(1139, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-07-30 08:17:33'),
(1140, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-07-30 08:17:45'),
(1141, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-07-30 08:17:49'),
(1142, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-07-30 08:17:50'),
(1143, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-07-30 08:20:14'),
(1144, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-07-30 08:20:16'),
(1145, 'Dominic Lanz Uy', 'Veterinarian', 'V1806231110251', 'User Login', '2018-07-30 08:21:23'),
(1146, 'Dominic Lanz Uy', 'Veterinarian', 'V1806231110251', 'View Appointments', '2018-07-30 08:21:23'),
(1147, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-07-30 08:21:26'),
(1148, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff List', '2018-07-30 08:21:41'),
(1149, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff Details', '2018-07-30 08:21:43'),
(1150, 'Dominic Lanz Uy', 'Veterinarian', 'V1806231110251', 'User Logout', '2018-07-30 08:21:51'),
(1151, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'User Login', '2018-07-30 08:21:56'),
(1152, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-30 08:21:56'),
(1153, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff Details', '2018-07-30 08:21:58'),
(1154, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff List', '2018-07-30 08:22:04'),
(1155, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-07-30 08:22:06'),
(1156, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer details', '2018-07-30 08:22:08'),
(1157, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'User Logout', '2018-07-30 08:22:16'),
(1158, 'Apple Salad David', 'Customer', 'C1807251258419', 'User Login', '2018-07-30 08:22:21'),
(1159, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer details', '2018-07-30 08:22:27'),
(1160, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet details', '2018-07-30 08:22:32'),
(1161, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-07-30 08:22:37'),
(1162, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet details', '2018-07-30 08:22:41'),
(1163, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Clinic Services', '2018-07-30 08:23:54'),
(1164, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-07-30 08:24:12'),
(1165, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-07-30 08:24:19'),
(1166, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet details', '2018-07-30 08:24:20'),
(1167, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-07-30 08:24:23'),
(1168, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet details', '2018-07-30 08:24:24'),
(1169, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-07-30 08:24:27'),
(1170, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Clinic Services', '2018-07-30 08:24:30'),
(1171, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Clinic Services', '2018-07-30 08:25:18'),
(1172, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Clinic Services', '2018-07-30 08:27:03'),
(1173, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-07-30 08:27:12'),
(1174, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Product Details (Items)', '2018-07-30 08:27:17'),
(1175, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-07-30 08:27:25'),
(1176, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-07-30 08:27:36'),
(1177, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Product Details (Items)', '2018-07-30 08:27:37'),
(1178, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-07-30 08:27:41'),
(1179, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-07-30 08:27:47'),
(1180, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-30 08:27:55'),
(1181, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Clinic Services', '2018-07-30 08:29:01'),
(1182, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Clinic Services', '2018-07-30 08:29:50'),
(1183, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Clinic Services', '2018-07-30 08:30:11'),
(1184, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Clinic Services', '2018-07-30 08:32:32'),
(1185, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Medicines)', '2018-07-30 08:35:27'),
(1186, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-07-30 08:35:32'),
(1187, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Clinic Services', '2018-07-30 08:35:35'),
(1188, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-07-30 08:35:38'),
(1189, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Product Details (Items)', '2018-07-30 08:35:41'),
(1190, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-07-30 08:35:48'),
(1191, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-30 08:36:26'),
(1192, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-07-30 08:36:28'),
(1193, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Medicines)', '2018-07-30 08:36:40'),
(1194, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Medicines)', '2018-07-30 08:36:52'),
(1195, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-30 08:36:54'),
(1196, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-07-30 08:36:56'),
(1197, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-07-30 08:36:58'),
(1198, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-07-30 08:37:04'),
(1199, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View logs', '2018-07-30 08:37:10'),
(1200, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin profile', '2018-07-30 08:37:25'),
(1201, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-07-30 08:38:03'),
(1202, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View logs', '2018-07-30 08:39:03'),
(1203, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-07-30 08:42:12'),
(1204, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View logs', '2018-07-30 08:42:40'),
(1205, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-07-30 08:42:42'),
(1206, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-07-30 08:42:45'),
(1207, 'Apple Salad David', 'Customer', 'C1807251258419', 'User Login', '2018-07-30 08:42:49'),
(1208, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Admin profile', '2018-07-30 08:42:52'),
(1209, 'Apple Salad David', 'Customer', 'C1807251258419', 'View My Pets Section', '2018-07-30 08:44:28'),
(1210, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet details', '2018-07-30 08:44:31'),
(1211, 'Apple Salad David', 'Customer', 'C1807251258419', 'View My Pets Section', '2018-07-30 08:44:33'),
(1212, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet details', '2018-07-30 08:44:35'),
(1213, 'Apple Salad David', 'Customer', 'C1807251258419', 'View My Pets Section', '2018-07-30 10:08:17'),
(1214, 'Apple Salad David', 'Customer', 'C1807251258419', 'User Logout', '2018-07-30 10:08:42'),
(1215, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'User Login', '2018-07-30 10:08:49'),
(1216, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-30 10:08:49'),
(1217, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View Customer list', '2018-07-30 10:08:52'),
(1218, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View Customer details', '2018-07-30 10:08:55'),
(1219, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View Customer details', '2018-07-30 10:09:14'),
(1220, 'Apple Salad David', 'Customer', 'C1807251258419', 'User Logout', '2018-07-30 10:09:19'),
(1221, 'Apple Salad David', 'Customer', 'C1807251258419', 'User Login', '2018-07-30 10:09:23'),
(1222, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View Pet List', '2018-07-30 10:09:33'),
(1223, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-30 10:09:34'),
(1224, 'Apple Salad David', 'Customer', 'C1807251258419', 'User Logout', '2018-07-30 10:09:52'),
(1225, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-07-30 10:10:00'),
(1226, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-07-30 10:10:00'),
(1227, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-07-30 10:10:10'),
(1228, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Product Details (Items)', '2018-07-30 10:10:14'),
(1229, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-30 10:30:50'),
(1230, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-07-30 10:33:24'),
(1231, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'User Logout', '2018-07-30 10:55:41'),
(1232, 'Apple Salad David', 'Customer', 'C1807251258419', 'User Login', '2018-07-30 10:55:45'),
(1233, 'Apple Salad David', 'Customer', 'C1807251258419', 'View My Pets Section', '2018-07-30 11:10:17'),
(1234, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-07-30 11:14:25'),
(1235, 'Apple Salad David', 'Customer', 'C1807251258419', 'User Logout', '2018-07-30 11:33:11'),
(1236, 'Apple Salad David', 'Customer', 'C1807251258419', 'User Login', '2018-07-30 11:33:17'),
(1237, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-07-30 12:06:25'),
(1238, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-07-30 12:06:25'),
(1239, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-07-30 12:06:32'),
(1240, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-07-30 12:07:12'),
(1241, 'Apple Salad David', 'Customer', 'C1807251258419', 'User Logout', '2018-07-30 12:07:26'),
(1242, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'User Login', '2018-07-30 12:07:33'),
(1243, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-30 12:07:33'),
(1244, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-30 12:08:23'),
(1245, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-30 12:08:29'),
(1246, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-30 12:08:33'),
(1247, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-30 12:08:51'),
(1248, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-30 12:09:13'),
(1249, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-30 12:09:49'),
(1250, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-30 12:09:52'),
(1251, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Medicines)', '2018-07-30 12:10:31'),
(1252, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Medicines)', '2018-07-30 12:12:14'),
(1253, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Medicines)', '2018-07-30 12:12:18'),
(1254, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-30 12:12:22'),
(1255, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Medicines)', '2018-07-30 12:13:40'),
(1256, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-30 12:13:43'),
(1257, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Medicines)', '2018-07-30 12:14:25'),
(1258, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Medicines)', '2018-07-30 12:15:25'),
(1259, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-30 12:15:28'),
(1260, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Medicines)', '2018-07-30 12:17:39'),
(1261, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products Details (Medicine)', '2018-07-30 12:17:41'),
(1262, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products Details (Medicine)', '2018-07-30 12:18:11'),
(1263, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-30 12:18:14'),
(1264, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-07-30 12:18:43'),
(1265, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-30 13:22:10'),
(1266, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-30 13:22:30'),
(1267, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-30 13:22:32'),
(1268, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-07-30 13:22:42'),
(1269, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-07-30 13:22:46'),
(1270, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'User Login', '2018-07-30 13:23:00'),
(1271, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-30 13:23:00'),
(1272, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-30 13:24:50'),
(1273, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-30 13:25:17'),
(1274, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-30 13:25:25'),
(1275, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-30 13:25:28'),
(1276, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-30 13:25:30'),
(1277, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-30 13:25:38'),
(1278, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-07-30 13:25:55'),
(1279, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-01 12:28:18'),
(1280, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-01 12:28:18'),
(1281, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff List', '2018-08-01 12:28:23'),
(1282, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-08-01 12:28:27'),
(1283, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin list', '2018-08-01 12:28:29'),
(1284, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-08-01 12:28:30'),
(1285, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-08-01 12:28:34'),
(1286, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-01 12:28:40'),
(1287, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-08-01 12:28:42'),
(1288, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-01 12:28:44'),
(1289, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-01 12:28:47'),
(1290, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-01 13:33:48'),
(1291, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-01 13:33:58'),
(1292, 'Apple Salad David', 'Customer', 'C1807251258419', 'User Login', '2018-08-01 13:34:23'),
(1293, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Todays Appointment', '2018-08-01 13:51:29'),
(1294, 'Apple Salad David', 'Customer', 'C1807251258419', 'User Logout', '2018-08-01 13:51:35'),
(1295, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-01 13:52:07'),
(1296, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-01 13:52:07'),
(1297, 'Dominic Lanz Uy', 'Veterinarian', 'V1806231110251', 'User Login', '2018-08-01 13:52:24'),
(1298, 'Dominic Lanz Uy', 'Veterinarian', 'V1806231110251', 'View Appointments', '2018-08-01 13:52:24'),
(1299, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-01 13:56:04'),
(1300, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-01 13:56:04'),
(1301, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-01 13:56:07'),
(1302, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-01 13:59:44'),
(1303, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-01 13:59:57'),
(1304, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-01 14:03:42'),
(1305, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-01 14:09:57'),
(1306, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-01 14:10:39'),
(1307, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-01 14:11:06'),
(1308, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-01 14:15:02'),
(1309, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-08-01 15:22:47'),
(1310, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'User Login', '2018-08-01 15:29:53'),
(1311, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-08-01 15:29:53'),
(1312, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-08-01 15:30:08'),
(1313, 'Apple Salad David', 'Customer', 'C1807251258419', 'User Login', '2018-08-01 21:26:52'),
(1314, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'User Login', '2018-08-01 21:44:15'),
(1315, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-08-01 21:44:15'),
(1316, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-08-01 21:45:53'),
(1317, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'View POS', '2018-08-01 21:46:05'),
(1318, 'Jackies Lee Chan', 'Staff', 'S1806231153417', 'User Logout', '2018-08-01 21:47:55'),
(1319, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-01 21:48:01'),
(1320, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-01 21:48:01'),
(1321, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-01 21:48:28'),
(1322, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-01 21:50:25'),
(1323, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Edit System Information', '2018-08-01 22:21:34'),
(1324, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-01 22:21:34'),
(1325, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-01 22:22:46'),
(1326, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-01 22:41:08'),
(1327, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-01 22:41:09'),
(1328, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-01 22:41:17'),
(1329, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-01 22:47:24'),
(1330, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Edit System Information', '2018-08-01 22:47:36'),
(1331, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-01 22:47:36'),
(1332, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-01 22:47:46'),
(1333, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-01 22:50:39'),
(1334, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-08-01 22:50:41'),
(1335, 'Apple Salad David', 'Customer', 'C1807251258419', 'View My Pets Section', '2018-08-01 22:51:05'),
(1336, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-08-01 23:05:12'),
(1337, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-01 23:07:02'),
(1338, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-08-01 23:15:29'),
(1339, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-01 23:22:58'),
(1340, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-01 23:23:00'),
(1341, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-01 23:23:31'),
(1342, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-01 23:23:35'),
(1343, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-01 23:26:37'),
(1344, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-01 23:27:24'),
(1345, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-01 23:28:24'),
(1346, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-01 23:32:07'),
(1347, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-01 23:32:07'),
(1348, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-01 23:32:20'),
(1349, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-01 23:41:18'),
(1350, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-01 23:41:18'),
(1351, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-01 23:41:28'),
(1352, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-01 23:42:15'),
(1353, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-01 23:42:45'),
(1354, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-01 23:43:38'),
(1355, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-01 23:47:44'),
(1356, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-01 23:48:07'),
(1357, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-01 23:49:26'),
(1358, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-01 23:49:34'),
(1359, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-01 23:53:11'),
(1360, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 00:00:04'),
(1361, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 00:11:03'),
(1362, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 00:11:05'),
(1363, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 00:20:27'),
(1364, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 00:20:31'),
(1365, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 00:20:47'),
(1366, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 00:20:49'),
(1367, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 00:21:01'),
(1368, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 00:25:44'),
(1369, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 00:35:05'),
(1370, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 00:35:18'),
(1371, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 00:35:21'),
(1372, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 00:49:00'),
(1373, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 00:49:48'),
(1374, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 00:50:35'),
(1375, 'Apple Salad David', 'Customer', 'C1807251258419', 'User Login', '2018-08-02 01:12:25'),
(1376, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-08-02 01:12:50'),
(1377, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-08-02 01:12:50'),
(1378, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-02 01:12:51'),
(1379, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-08-02 01:12:55'),
(1380, 'Apple Salad David', 'Customer', 'C1807251258419', 'View My Pets Section', '2018-08-02 01:13:12'),
(1381, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet details', '2018-08-02 01:13:15'),
(1382, 'Apple Salad David', 'Customer', 'C1807251258419', 'View My Pets Section', '2018-08-02 01:14:26'),
(1383, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet details', '2018-08-02 01:14:28'),
(1384, 'Apple Salad David', 'Customer', 'C1807251258419', 'User Login', '2018-08-02 11:10:43'),
(1385, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 11:10:51'),
(1386, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 11:12:48'),
(1387, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 11:13:25'),
(1388, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 11:18:04'),
(1389, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 11:19:10'),
(1390, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 11:19:13'),
(1391, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 11:22:41'),
(1392, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 11:23:06'),
(1393, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 11:24:47'),
(1394, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 11:25:21'),
(1395, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 11:28:30'),
(1396, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 11:29:08'),
(1397, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 11:29:09'),
(1398, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 11:30:15'),
(1399, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 11:30:19'),
(1400, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 11:30:32'),
(1401, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 11:30:34'),
(1402, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 11:30:38'),
(1403, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 11:30:41'),
(1404, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 11:30:45'),
(1405, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 11:30:48'),
(1406, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 11:32:23'),
(1407, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 11:32:26'),
(1408, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 11:34:23'),
(1409, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 11:38:07'),
(1410, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 11:38:30'),
(1411, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 11:46:16'),
(1412, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 12:09:20'),
(1413, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 12:13:41'),
(1414, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 12:20:49'),
(1415, 'Apple Salad David', 'Customer', 'C1807251258419', 'View Pet Health Library', '2018-08-02 12:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_petbreeds`
--

CREATE TABLE `tbl_petbreeds` (
  `breed_id` int(11) NOT NULL,
  `pettype_id` int(11) NOT NULL,
  `pettype_code` varchar(45) NOT NULL,
  `pet_breed` varchar(45) NOT NULL,
  `breed_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_petbreeds`
--

INSERT INTO `tbl_petbreeds` (`breed_id`, `pettype_id`, `pettype_code`, `pet_breed`, `breed_description`) VALUES
(12, 2, 'cat', 'British Shorthair', '<p>\r\n\r\nThe British Shorthair is the pedigreed version of the traditional British domestic cat, with a distinctively chunky body, dense coat and broad face.&nbsp;</p><p>Origin : Great Britain</p><p>Scientific Name: Felis Catus</p><p><small></small><br></p>'),
(13, 2, 'cat', 'Maine Coon', '<p>\r\n\r\nThe Maine Coon is one of the largest domesticated breeds of cat. It has a distinctive physical appearance and valuable hunting skills .</p><p><br></p><p>Scientific Name:&nbsp;\r\n\r\nFelis catus\r\n\r\n</p>'),
(14, 2, 'cat', 'Persian Cat', '<p>\r\n\r\nThe Persian cat is a long-haired breed of cat characterized by its round face and short muzzle. It is also known as the Persian Longhair in the English-speaking countries.<br></p><p><br></p><p>Scientific Name:&nbsp;\r\n\r\nFelis catus\r\n\r\n</p><p><br></p><p><br></p>'),
(15, 2, 'cat', 'Ragdoll', '<p>\r\n\r\nThe Ragdoll is a cat breed with blue eyes and a distinct colourpoint coat. It is a large and muscular semi-longhair cat with a soft and silky coat. Like all long haired cats, Ragdolls need grooming to ensure that their fur does not mat\r\n\r\n<br></p>'),
(16, 2, 'cat', 'Siamese Cat', '<p>\r\n\r\nThe Siamese cat is one of the first distinctly recognized breeds of Asian cat. Derived from the Wichianmat landrace, one of several varieties of cat native to Thailand\r\n\r\n<br></p>'),
(17, 1, 'dog', 'Chihuahua', '<p>\r\n\r\nThe Chihuahua is the smallest breed of dog and is named after the state of Chihuahua in Mexico. Chihuahuas come in a wide variety of colors, and two coat lengths .<br></p><p><br></p><p>Life Span: 12 – 20 years\r\n\r\n<br></p>'),
(18, 1, 'dog', 'German Shepherd', '<p>\r\n\r\nThe German Shepherd is a breed of medium to large-sized working dog that originated in Germany. The breed\'s officially recognized name is German Shepherd Dog in the English language. The breed is known as the Alsatian in Britain and Ireland.\r\n\r\n<br></p><p><br></p><p>Life span:&nbsp;\r\n\r\n9 – 13 years\r\n\r\n</p>'),
(19, 1, 'dog', 'Golden Retriever', '<p>\r\n\r\nThe Golden Retriever is a large-sized breed of dog bred as gun dogs to retrieve shot waterfowl such as ducks and upland game birds during hunting and shooting parties, and were named \'retriever\'\r\n\r\n<br></p><p><br></p><p>Life span: 10 – 12 years&nbsp;</p>'),
(20, 1, 'dog', 'Labrador Retriever', '<p>\r\n\r\nThe Labrador Retriever, or just Labrador, is a type of retriever-gun dog. The Labrador is one of the most popular breeds of dog in Canada, the United Kingdom and the United States\r\n\r\n<br></p><p><br></p><p>Life span :<small>&nbsp;\r\n\r\n10 – 14 years\r\n\r\n</small></p>');

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
(7, 'P1807251259295', 'Apple', 5, 1, 18, '2017-01-09', '2018-07-25 01:00:07', 'Male', 'German_shephard.jpg'),
(8, 'P1807250114188', 'Steel', 5, 1, 18, '2018-01-07', '2018-07-25 01:14:45', 'Male', 'German_shephard1.jpg'),
(9, 'P1807250245452', 'Karla', 5, 1, 17, '2017-11-22', '2018-07-25 14:46:17', 'Female', 'German_shephard2.jpg'),
(10, 'P1807250246175', 'star', 5, 1, 17, '2015-01-14', '2018-07-25 15:00:37', 'Male', 'German_shephard3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pettype`
--

CREATE TABLE `tbl_pettype` (
  `pettype_id` int(11) NOT NULL,
  `pettype_code` varchar(45) NOT NULL,
  `pettype` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pettype`
--

INSERT INTO `tbl_pettype` (`pettype_id`, `pettype_code`, `pettype`) VALUES
(1, 'dog', 'Dog'),
(2, 'cat', 'Cat');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pet_library`
--

CREATE TABLE `tbl_pet_library` (
  `library_id` int(11) NOT NULL,
  `link` text NOT NULL,
  `title` varchar(45) NOT NULL,
  `content` varchar(45) NOT NULL,
  `article_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pet_library`
--

INSERT INTO `tbl_pet_library` (`library_id`, `link`, `title`, `content`, `article_image`) VALUES
(17, '', 'Kennel Cough', 'Kennel cough is an infectious bronchitis of d', 'kennel.gif'),
(18, '', 'Ibuprofen Toxicity in Dogs and Cats', 'Ibuprofen has been available as a human pain ', ''),
(19, '', 'Influenza Strains in Dogs', 'Just like people, dogs can be affected by dif', ''),
(20, '', 'Tremoring or Shivering in Dogs', 'Dogs are often brought in for tremoring or sh', ''),
(21, '', 'Xylitol Toxicosis in Dogs', 'Xylitol is a white, crystalline sugar alcohol', ''),
(22, '', 'Chemical Injuries: First Aid', 'Chemical injuries to tissue are caused by con', ''),
(23, '', 'Alcohol (Ethanol) Poisoning', 'Dogs and cats can get more than just drunk wh', ''),
(24, '', 'Bloody Nose (Epistaxis) in Dogs and Cats', 'Some blood-tinged droplets sneezed on the flo', ''),
(25, '', 'Sulfasalazine (Azulfidine)', 'Colitis is another word for inflammation of t', ''),
(26, '', 'Colitis Causes Gooey Diarrhea in Dogs and Cat', 'In brief, colitis is the term for inflammatio', ''),
(27, '', 'Itraconazole (Sporonox)', 'The development of oral medications to be use', ''),
(28, '', 'Ranitidine (Zantac)', 'Stomach ulceration in humans is a prominent m', ''),
(29, '', 'Cimetidine (Tagamet)', 'Stomach ulceration in humans is a prominent m', ''),
(30, '', 'Blastomycosis is a Systemic Fungal infection ', 'Blastomycosis, caused by Blastomyces dermatit', ''),
(31, '', 'Diarrhea and Vomiting: First Aid', 'Diarrhea is the frequent evacuation of watery', '');

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
  `exp_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_productfoods`
--

INSERT INTO `tbl_productfoods` (`food_table_id`, `food_id`, `foodname`, `forwhatpet`, `fooddescription`, `foodImage`, `price`, `supplier`, `exp_date`) VALUES
(7, '#Food1807301209130', 'Dog Food', 'Dogs', 'Dog Food', 'AdSlots468_MK_Q2_20184.jpg', '111.00', 'Dog Corp', '2018-10-23');

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
(137, 28, '#Med1807301214251', 'Sentinel Spectrum', 'Medicine', 'Purchased Product', 'Customer(Member)', 'Apple Salad David', '2018-07-30 13:25:54', 1, '0000-00-00');

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
  `supplier` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_productitems`
--

INSERT INTO `tbl_productitems` (`item_table_id`, `item_id`, `itemname`, `itemdescription`, `itemImage`, `price`, `supplier`) VALUES
(16, '#Item1807301206321', 'Dog Shampoo', 'Dog Shampoo', 'AdSlots468_PU_Q2_2018.jpg', '68.00', 'Dog Corp');

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
  `exp_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_productmedicines`
--

INSERT INTO `tbl_productmedicines` (`med_table_id`, `med_id`, `medType`, `medname`, `meddescription`, `medImage`, `dateAdded`, `price`, `supplier`, `exp_date`) VALUES
(4, '#Med1807301212149', 'Vitamins', 'Multivitamins', 'Medicine for both cats and Dogs', 'AdSlots468_HI_Q3_20181.jpg', '0000-00-00 00:00:00', '30.00', 'All Corp', '2018-10-18'),
(6, '#Med1807301214251', 'Vitamins', 'Sentinel Spectrum', 'Sentinel Spectrum for puppies', 'AdSlots468_HI_Q3_201811.jpg', '0000-00-00 00:00:00', '55.00', 'Dog Corp', '2018-12-20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_table_id` int(11) NOT NULL,
  `product_relation_id` int(11) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `productType` varchar(45) NOT NULL,
  `product_id` text NOT NULL,
  `productInStore` int(11) NOT NULL,
  `dateAdded` datetime NOT NULL,
  `productImage` text NOT NULL,
  `product_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_table_id`, `product_relation_id`, `product_name`, `productType`, `product_id`, `productInStore`, `dateAdded`, `productImage`, `product_price`) VALUES
(24, 16, 'Dog Shampoo', 'Item', '#Item1807301206321', 111, '2018-07-30 12:07:11', 'AdSlots468_PU_Q2_2018.jpg', '68.00'),
(25, 7, 'Dog Food', 'Food', '#Food1807301209130', 111, '2018-07-30 12:09:49', 'AdSlots468_MK_Q2_20184.jpg', '111.00'),
(26, 4, 'Multivitamins', 'Medicine', '#Med1807301212149', 100, '2018-07-30 12:12:18', 'AdSlots468_HI_Q3_20181.jpg', '30.00'),
(28, 6, 'Sentinel Spectrum', 'Medicine', '#Med1807301214251', 33, '2018-07-30 12:15:25', 'AdSlots468_HI_Q3_201811.jpg', '55.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_programs_for_cats`
--

CREATE TABLE `tbl_programs_for_cats` (
  `cats_prog_id` int(11) NOT NULL,
  `cats_prog_name` varchar(45) NOT NULL,
  `cats_prog_description` text NOT NULL,
  `cats_prog_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_programs_for_cats`
--

INSERT INTO `tbl_programs_for_cats` (`cats_prog_id`, `cats_prog_name`, `cats_prog_description`, `cats_prog_price`) VALUES
(1, 'Deworming', 'Every 5 months', '200.00'),
(2, 'Vaccination', 'Anti-Rabies Booster every year. FPL Bossters every year', '450.00');

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
-- Table structure for table `tbl_puppies_programs`
--

CREATE TABLE `tbl_puppies_programs` (
  `puppies_prog_id` int(11) NOT NULL,
  `puppies_prog_name` varchar(45) NOT NULL,
  `puppies_prog_description` text NOT NULL,
  `puppies_prog_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_puppies_programs`
--

INSERT INTO `tbl_puppies_programs` (`puppies_prog_id`, `puppies_prog_name`, `puppies_prog_description`, `puppies_prog_price`) VALUES
(1, 'Deworming', '2nd Deworming at 3 to 4 weeks old , Redeworming after 2 weeks', '400.00'),
(2, 'Vaccination', '1st Shot of combined vaccination (vs Distemper Leptospirosis, hepatitis, Adenovirus,Parvirus) at 6 weeks of age. Succeding boosters every 3 weeks of age until 4 months of age ', '440.00'),
(3, 'Grooming (Nail Cutting)', 'Nail Cutting for puppies', '78.00');

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
  `total_amount` decimal(10,2) NOT NULL,
  `sales_date` datetime NOT NULL,
  `staff` text NOT NULL,
  `staff_user_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sales`
--

INSERT INTO `tbl_sales` (`sales_id`, `invoice_number`, `customer_type`, `customer_id`, `customer_name`, `total_amount`, `sales_date`, `staff`, `staff_user_id`) VALUES
(12, '#1807081055425', 'Walkin', '0', 'yuan', '1206.00', '2018-07-08 22:55:42', 'Jackies Lee Chan', 'S1806231153417'),
(13, '#1807081105130', 'Member', 'C1806230827129', 'Kara Zor-El Danvers', '1206.00', '2018-07-08 23:05:13', 'Jackies Lee Chan', 'S1806231153417'),
(14, '#1807081124405', 'Walkin', '0', 'ivan', '1602.00', '2018-07-08 23:24:40', 'Jackies Lee Chan', 'S1806231153417'),
(15, '#1807081132246', 'Member', 'C1806230827129', 'Kara Zor-El Danvers', '402.00', '2018-07-08 23:32:24', 'Jackies Lee Chan', 'S1806231153417'),
(16, '#1807081136406', 'Walkin', '0', '', '1005.00', '2018-07-08 23:36:40', 'Jackies Lee Chan', 'S1806231153417'),
(17, '#1807081137581', 'Walkin', '0', 'sds', '201.00', '2018-07-08 23:37:58', 'Jackies Lee Chan', 'S1806231153417'),
(18, '#1807081140247', 'Walkin', '0', 'dsda', '201.00', '2018-07-08 23:40:24', 'Jackies Lee Chan', 'S1806231153417'),
(19, '#1807081141119', 'Walkin', '0', 'sdasda', '804.00', '2018-07-08 23:41:11', 'Jackies Lee Chan', 'S1806231153417'),
(20, '#1807081141265', 'Walkin', '0', '', '201.00', '2018-07-08 23:41:26', 'Jackies Lee Chan', 'S1806231153417'),
(21, '#1807081142185', 'Walkin', '0', 'ivan', '4623.00', '2018-07-08 23:42:18', 'Jackies Lee Chan', 'S1806231153417'),
(22, '#1807081143114', 'Walkin', '0', 'ivan', '804.00', '2018-07-08 23:43:11', 'Jackies Lee Chan', 'S1806231153417'),
(23, '#1807081144001', 'Walkin', '0', '', '603.00', '2018-07-08 23:44:00', 'Jackies Lee Chan', 'S1806231153417'),
(24, '#1807081144224', 'Walkin', '0', '', '1005.00', '2018-07-08 23:44:22', 'Jackies Lee Chan', 'S1806231153417'),
(25, '#1807081145412', 'Walkin', '0', '', '804.00', '2018-07-08 23:45:41', 'Jackies Lee Chan', 'S1806231153417'),
(26, '#1807081146022', 'Walkin', '0', 'dadasd', '1005.00', '2018-07-08 23:46:02', 'Jackies Lee Chan', 'S1806231153417'),
(27, '#1807081146460', 'Walkin', '0', '', '804.00', '2018-07-08 23:46:46', 'Jackies Lee Chan', 'S1806231153417'),
(28, '#1807081146563', 'Walkin', '0', 'dasdadas', '1407.00', '2018-07-08 23:46:56', 'Jackies Lee Chan', 'S1806231153417'),
(29, '#1807081149430', 'Walkin', '0', 'daddasd', '1407.00', '2018-07-08 23:49:43', 'Jackies Lee Chan', 'S1806231153417'),
(30, '#1807091205389', 'Walkin', '0', 'uvaadadadasdsdfdff', '6834.00', '2018-07-09 00:05:38', 'Jackies Lee Chan', 'S1806231153417'),
(31, '#1807091206315', 'Walkin', '0', 'dasdadasdaddas', '1407.00', '2018-07-09 00:06:31', 'Jackies Lee Chan', 'S1806231153417'),
(32, '#1807091214073', 'Member', 'C1806230827129', 'Kara Zor-El Danvers', '804.00', '2018-07-09 00:14:07', 'Jackies Lee Chan', 'S1806231153417'),
(33, '#1807220814421', 'Walkin', '0', 'ivan s', '389.00', '2018-07-22 20:14:42', 'Jackies Lee Chan', 'S1806231153417'),
(34, '#1807220815489', 'Walkin', '0', 'ivan', '201.00', '2018-07-22 20:15:48', 'Jackies Lee Chan', 'S1806231153417'),
(35, '#1807260554149', 'Walkin', '0', 'dadsdas', '1332.00', '2018-07-26 17:54:14', 'Jackies Lee Chan', 'S1806231153417'),
(36, '#1807300124199', 'Member', 'C1807251258419', 'Apple Salad David', '128.00', '2018-07-30 13:24:19', 'Jackies Lee Chan', 'S1806231153417'),
(37, '#1807300125386', 'Walkin', '0', 'ivan', '110.00', '2018-07-30 13:25:38', 'Jackies Lee Chan', 'S1806231153417'),
(38, '#1807300125545', 'Member', 'C1807251258419', 'Apple Salad David', '55.00', '2018-07-30 13:25:54', 'Jackies Lee Chan', 'S1806231153417');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salesdetails`
--

CREATE TABLE `tbl_salesdetails` (
  `salesdetail_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_type` varchar(45) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `price_per_product` decimal(10,2) NOT NULL,
  `sales_quantity` int(11) NOT NULL,
  `total_per_product` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_salesdetails`
--

INSERT INTO `tbl_salesdetails` (`salesdetail_id`, `sales_id`, `product_type`, `product_name`, `price_per_product`, `sales_quantity`, `total_per_product`) VALUES
(7, 12, 'Medicine', 'Dolfinal s', '201.00', 4, '804.00'),
(8, 12, 'Item', 'Godzilla toys', '201.00', 2, '402.00'),
(9, 13, 'Medicine', 'Dolfinal s', '201.00', 4, '804.00'),
(10, 13, 'Item', 'Godzilla toys', '201.00', 2, '402.00'),
(11, 14, 'Medicine', 'Dolfinal s', '201.00', 2, '402.00'),
(12, 14, 'Item', 'Godzilla toys', '201.00', 1, '201.00'),
(13, 14, 'Food', 'Cat Cans', '333.00', 3, '999.00'),
(14, 15, 'Medicine', 'Dolfinal s', '201.00', 2, '402.00'),
(15, 16, 'Medicine', 'Dolfinal s', '201.00', 5, '1.00'),
(16, 17, 'Medicine', 'Dolfinal s', '201.00', 1, '201.00'),
(17, 18, 'Medicine', 'Dolfinal s', '201.00', 1, '201.00'),
(18, 19, 'Medicine', 'Dolfinal s', '201.00', 4, '804.00'),
(19, 20, 'Medicine', 'Dolfinal s', '201.00', 1, '201.00'),
(20, 21, 'Medicine', 'Dolfinal s', '201.00', 23, '4.00'),
(21, 22, 'Medicine', 'Dolfinal s', '201.00', 4, '804.00'),
(22, 23, 'Medicine', 'Dolfinal s', '201.00', 3, '603.00'),
(23, 24, 'Medicine', 'Dolfinal s', '201.00', 5, '1.00'),
(24, 25, 'Medicine', 'Dolfinal s', '201.00', 4, '804.00'),
(25, 26, 'Medicine', 'Dolfinal s', '201.00', 5, '1.00'),
(26, 27, 'Medicine', 'Dolfinal s', '201.00', 4, '804.00'),
(27, 28, 'Medicine', 'Dolfinal s', '201.00', 7, '1.00'),
(28, 29, 'Medicine', 'Dolfinal s', '201.00', 7, '1.00'),
(29, 30, 'Medicine', 'Dolfinal s', '201.00', 16, '3.00'),
(30, 30, 'Item', 'Godzilla toys', '201.00', 18, '3.00'),
(31, 31, 'Medicine', 'Dolfinal s', '201.00', 7, '1407.00'),
(32, 32, 'Medicine', 'Dolfinal s', '201.00', 4, '804.00'),
(33, 33, 'Medicine', 'Dolfinal s', '201.00', 1, '201.00'),
(34, 33, 'Item', 'Dog Shampoo', '94.00', 2, '188.00'),
(35, 34, 'Medicine', 'Dolfinal s', '201.00', 1, '201.00'),
(36, 35, 'Food', 'Cat Cans', '333.00', 4, '1332.00'),
(37, 36, 'Medicine', 'Multivitamins', '30.00', 2, '60.00'),
(38, 36, 'Item', 'Dog Shampoo', '68.00', 1, '68.00'),
(39, 37, 'Medicine', 'Sentinel Spectrum', '55.00', 2, '110.00'),
(40, 38, 'Medicine', 'Sentinel Spectrum', '55.00', 1, '55.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service_details`
--

CREATE TABLE `tbl_service_details` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(45) NOT NULL,
  `service_description` text NOT NULL,
  `service_fee` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `vat` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`settings_id`, `theme_color`, `aboutus_content`, `vet_fee`, `clinic_email_address`, `clinic_home_address`, `clinic_barangay_address`, `clinic_city_address`, `clinic_postal_id`, `vat`) VALUES
(1, 'skin-yellow', 'Wisdom Pet Medicine strives to blend the best in traditional and alternative medicine in the diagnosis and treatment of companion animals including dogs, cats, birds, reptiles, rodents, and fish. We apply the wisdom garnered in the centuries old tradition of veterinary medicine, to find the safest treatments and cures.\r\n\r\nWe strive to be your pet\'s medical experts from youth through the senior years. We build preventative health care plans for each and every one of our patients, based on breed, age, and sex, so that your pet receives the most appropriate care at crucial milestones. We want to give your pet a long and healthy life.s', '150.00', 'vetopia_D@gmail.com', '667#', 'Barangay Isle', 'Makati City', '911', '.12');

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
  `is_active` varchar(45) NOT NULL,
  `profile` text NOT NULL,
  `contact` text NOT NULL,
  `gender` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_staffs`
--

INSERT INTO `tbl_staffs` (`staff_table_id`, `staff_id`, `firstname`, `middlename`, `lastname`, `birthdate`, `homeAddress`, `barangayAddress`, `cityAddress`, `postalID`, `dateAdded`, `username`, `password`, `is_active`, `profile`, `contact`, `gender`) VALUES
(1, 'S1806231153417', 'Jackies', 'Lee', 'Chan', '1980-06-16', '16th ISU Village', 'Barangay 31', 'National City', '1212', '2018-06-23 23:53:50', '2chan', 'chan', 'Active', '2_wolfs.jpg', '09481212312', 'Male'),
(2, 'S1806231155335', 'Boy', 'Lito', 'Dele Cruz', '1975-01-27', '16th ISU Village', 'Barangay 31', 'National City', '1212', '2018-06-23 23:56:15', '2boy', 'boy', 'Active', '', '09481212312', 'Male'),
(3, 'S1806251213319', 'Walter', 'Brian', 'O\'Brien', '1994-06-27', '16th ISU Village', 'Barangay 31', 'National City', '1212', '2018-06-25 00:14:28', '2walter', 'walter', 'Active', '', '09481212312', 'Male'),
(4, 'S1807251253565', 'Gretchon', 'Set', 'Go', '1990-10-01', '16th ISU Village', 'Eagle', 'National City', '666', '2018-07-25 00:56:50', '2gretchen', 'gretchen', 'Active', '', '09481212312', 'Female');

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
  `is_active` varchar(45) NOT NULL,
  `vetbio` text NOT NULL,
  `profile` text NOT NULL,
  `gender` varchar(45) NOT NULL,
  `contact` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_veterinarians`
--

INSERT INTO `tbl_veterinarians` (`veterinarian_table_id`, `veterinarian_id`, `firstname`, `middlename`, `lastname`, `birthdate`, `homeAddress`, `barangayAddress`, `cityAddress`, `postalID`, `dateAdded`, `username`, `password`, `is_active`, `vetbio`, `profile`, `gender`, `contact`) VALUES
(1, 'V1806231110251', 'Dominic', 'Lanz', 'Uy', '1979-01-15', '16th ISU Village', 'Barangay 34', 'National City', '1212', '2018-06-23 23:10:33', '1doms', 'doms', 'Active', 'lorem ipsom delor doms', 'user7-128x128.jpg', 'Male', '09481212312'),
(2, 'V1806251201455', 'Ben Simon', 'Shawn', 'Simmons', '1976-09-27', '16th ISU Village', 'Barangay 31', 'National City', '1212', '2018-06-25 00:03:09', '1bensimmons', 'bensimmons', 'Active', 'hahahhaahhahaha', '', 'Male', '09481212312'),
(3, 'V1807251251271', 'Lebron', 'Airball', 'James', '1984-11-28', '16th ISU Village', 'Cleveland', 'National City', '232', '2018-07-25 00:52:38', '1lebron23', 'lebronjames23', 'Active', 'Bago lang sya dito', '', 'Male', '09481212312');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admins`
--
ALTER TABLE `tbl_admins`
  ADD PRIMARY KEY (`admin_table_id`);

--
-- Indexes for table `tbl_adult_dogs_programs`
--
ALTER TABLE `tbl_adult_dogs_programs`
  ADD PRIMARY KEY (`adult_dog_prog_id`);

--
-- Indexes for table `tbl_appointments`
--
ALTER TABLE `tbl_appointments`
  ADD PRIMARY KEY (`appointment_table_id`);

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
-- Indexes for table `tbl_kittens_programs`
--
ALTER TABLE `tbl_kittens_programs`
  ADD PRIMARY KEY (`kittens_prog_id`);

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
-- Indexes for table `tbl_programs_for_cats`
--
ALTER TABLE `tbl_programs_for_cats`
  ADD PRIMARY KEY (`cats_prog_id`);

--
-- Indexes for table `tbl_pullouts`
--
ALTER TABLE `tbl_pullouts`
  ADD PRIMARY KEY (`pullout_id`);

--
-- Indexes for table `tbl_puppies_programs`
--
ALTER TABLE `tbl_puppies_programs`
  ADD PRIMARY KEY (`puppies_prog_id`);

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
-- Indexes for table `tbl_service_details`
--
ALTER TABLE `tbl_service_details`
  ADD PRIMARY KEY (`service_id`);

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
  MODIFY `admin_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_adult_dogs_programs`
--
ALTER TABLE `tbl_adult_dogs_programs`
  MODIFY `adult_dog_prog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_appointments`
--
ALTER TABLE `tbl_appointments`
  MODIFY `appointment_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `tbl_checkupdetails`
--
ALTER TABLE `tbl_checkupdetails`
  MODIFY `checkup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_kittens_programs`
--
ALTER TABLE `tbl_kittens_programs`
  MODIFY `kittens_prog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1416;
--
-- AUTO_INCREMENT for table `tbl_petbreeds`
--
ALTER TABLE `tbl_petbreeds`
  MODIFY `breed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tbl_pets`
--
ALTER TABLE `tbl_pets`
  MODIFY `pet_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_pettype`
--
ALTER TABLE `tbl_pettype`
  MODIFY `pettype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_pet_library`
--
ALTER TABLE `tbl_pet_library`
  MODIFY `library_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `tbl_productfoods`
--
ALTER TABLE `tbl_productfoods`
  MODIFY `food_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_productinventories`
--
ALTER TABLE `tbl_productinventories`
  MODIFY `inv_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT for table `tbl_productitems`
--
ALTER TABLE `tbl_productitems`
  MODIFY `item_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_productmedicines`
--
ALTER TABLE `tbl_productmedicines`
  MODIFY `med_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `tbl_programs_for_cats`
--
ALTER TABLE `tbl_programs_for_cats`
  MODIFY `cats_prog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_pullouts`
--
ALTER TABLE `tbl_pullouts`
  MODIFY `pullout_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_puppies_programs`
--
ALTER TABLE `tbl_puppies_programs`
  MODIFY `puppies_prog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `tbl_salesdetails`
--
ALTER TABLE `tbl_salesdetails`
  MODIFY `salesdetail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `tbl_service_details`
--
ALTER TABLE `tbl_service_details`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_staffs`
--
ALTER TABLE `tbl_staffs`
  MODIFY `staff_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_timeschedule`
--
ALTER TABLE `tbl_timeschedule`
  MODIFY `timeSchedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_veterinarians`
--
ALTER TABLE `tbl_veterinarians`
  MODIFY `veterinarian_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
