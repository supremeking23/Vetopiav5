-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2018 at 06:29 PM
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
(1, 'Super Admin', 'A1806231044313', 'Ivan Christian Jay', 'Echanes', 'Funcion', '1995-11-23', '09481212312', 'icjfuncion@gmail.com', '16th ISU Village', 'Barangay 31', 'Makati ', '21', 'Active', '2018-06-23 10:49:02', 'superadmin', 'superadmin', 'Godspeed11.jpg', 'Male'),
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
(60, '#1808260444092', 'C1808211035448', 15, 'Lee Min Horse', '2018-08-26', '9:00 am - 10:00 am', 'cole', 'P1808221048598', 'Cat', 'British Shorthair', '1 Years old', 1, 'Done', '2018-08-26 04:44:09', 'V1808211104490', 'Carlos Almonds Valdez', '<p>tahol daw ng tahol</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '411.00', '500.00', '89.00'),
(61, '#1808271105234', 'C1808260134527', 17, 'Carl Vincent Lorenzo Echanez', '2018-08-27', '12:00 nn - 1:00 pm', 'ivan', 'P1808260139232', 'Dog', 'Chihuahua', '16 Years old', 1, 'Cancelled', '2018-08-27 11:05:23', 'V1808211104490', 'Carlos Almonds Valdez', '<p>ivan is sick</p>', '', '2018-08-31 00:19:19', 0, '0000-00-00 00:00:00', '0.00', '0.00', '0.00'),
(62, '#1808281130004', 'C1808260134527', 17, 'Carl Vincent Lorenzo Echanez', '2018-08-29', '9:00 am - 10:00 am', 'ivan', 'P1808260139232', 'Dog', 'Chihuahua', '16 Years old', 1, 'Cancelled', '2018-08-28 23:30:00', 'V1808211104490', 'Carlos Almonds Valdez', '<p>onsite appointment walk-in</p>', '<p>masakit ulo ng customer</p>', '2018-08-29 09:57:46', 0, '0000-00-00 00:00:00', '0.00', '0.00', '0.00'),
(63, '#1808290151275', 'C1808211035448', 0, 'Lee Min Horse', '2018-08-30', '9:00 am - 10:00 am', 'LenTik', 'P1808221046418', 'Cat', 'British Shorthair', '6 Months old', 0, 'Cancelled', '2018-08-29 13:51:27', 'V1808211104490', 'Carlos Almonds Valdez', 'hahahahahahah', '<p>customer didnt show</p>', '2018-08-31 00:19:19', 1, '0000-00-00 00:00:00', '0.00', '0.00', '0.00'),
(64, '#1808290532591', 'C1808211035448', 0, 'Lee Min Horse', '2018-08-29', '4: 00 pm - 5: 00pm', 'LenTik', 'P1808221046418', 'Cat', 'British Shorthair', '6 Months old', 0, 'Done', '2018-08-29 17:32:59', 'V1808211104490', 'Carlos Almonds Valdez', 'hshdsads', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '668.00', '700.00', '32.00'),
(65, '#1808301018485', 'C1808211035448', 14, 'Lee Min Horse', '2018-08-30', '4: 00 pm - 5: 00pm', 'LenTik', 'P1808221046418', 'Cat', 'British Shorthair', '6 Months old', 0, 'Done', '2018-08-30 22:18:48', 'V1808211104490', 'Carlos Almonds Valdez', '<p>dasdsdssssssssss</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '111.00', '200.00', '89.00'),
(66, '#1808301059464', 'C1808211035448', 14, 'Lee Min Horse', '2018-08-30', '4: 00 pm - 5: 00pm', 'LenTik', 'P1808221046418', 'Cat', 'British Shorthair', '6 Months old', 0, 'Done', '2018-08-30 22:59:46', 'V1808211104490', 'Carlos Almonds Valdez', '<p>dssdasd ivansdsdassdasdd</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '111.00', '200.00', '89.00'),
(68, '#1808310215488', 'C1808260134527', 19, 'Carl Vincent Lorenzo Echanez', '2018-08-31', '9:00 am - 10:00 am', 'Ken', 'P1808310205079', 'Cat', 'British Shorthair', '9 Years old', 1, 'On-Process', '2018-08-31 02:15:48', 'V1808211104490', 'Carlos Almonds Valdez', '<p>may sakit sya</p>', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0.00', '0.00', '0.00'),
(69, '#1808311145438', 'C1808211035448', 0, 'Lee Min Horse', '2018-08-31', '4: 00 pm - 5: 00pm', 'LenTik', 'P1808221046418', 'Cat', 'British Shorthair', '6 Months old', 0, 'Cancelled', '2018-08-31 11:45:43', 'V1808211104490', 'Carlos Almonds Valdez', 'ivansdasdsda', '<p>di pumunta</p>', '2018-09-01 01:03:37', 0, '0000-00-00 00:00:00', '0.00', '0.00', '0.00'),
(70, '#1808311148169', 'C1808211035448', 0, 'Lee Min Horse', '2018-08-31', '1: 00pm - 2:00 pm', 'LenTik', 'P1808221046418', 'Cat', 'British Shorthair', '6 Months old', 0, 'Cancelled', '2018-08-31 11:48:16', 'V1808211104490', 'Carlos Almonds Valdez', 'ivnasdsasdssss', '<p>di pumunta</p>', '2018-09-01 01:03:30', 0, '0000-00-00 00:00:00', '0.00', '0.00', '0.00'),
(71, '#1808311156354', 'C1808211035448', 0, 'Lee Min Horse', '2018-08-31', '9:00 am - 10:00 am', 'Arnelsz', 'P1808221021292', 'Cat', 'Ragdoll', '3 Years old', 1, 'Done', '2018-08-31 11:56:35', 'V1808211104490', 'Carlos Almonds Valdez', 'sadsdsdd', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '411.00', '500.00', '89.00'),
(72, '#1809010108444', 'C1808211035448', 13, 'Lee Min Horse', '2018-09-01', '9:00 am - 10:00 am', 'Arnelsz', 'P1808221021292', 'Cat', 'Ragdoll', '3 Years old', 1, 'Done', '2018-09-01 01:08:44', 'V1808211104490', 'Carlos Almonds Valdez', '<p>ivansdasdsd</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '411.00', '500.00', '89.00'),
(74, '#1809031135029', 'C1808211035448', 0, 'Lee Min Horse', '2018-09-03', '4: 00 pm - 5: 00pm', 'Arnelsz', 'P1808221021292', 'Cat', 'Ragdoll', '3 Years old', 1, 'Cancelled', '2018-09-03 11:35:02', 'V1808211104490', 'Carlos Almonds Valdez', 'sipuning bata', '<p>kinancel ko</p>', '2018-09-03 11:37:47', 0, '0000-00-00 00:00:00', '0.00', '0.00', '0.00'),
(75, '#1809031138147', 'C1808211035448', 0, 'Lee Min Horse', '2018-09-03', '2:00 pm - 3:00 pm', 'Aninags', 'P1808221121554', 'Cat', 'British Shorthair', '2 Years old', 1, 'Done', '2018-09-03 11:38:14', 'V1808211104490', 'Carlos Almonds Valdez', 'focus on work', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '411.00', '500.00', '89.00'),
(76, '#1809030254545', 'C1808260134527', 19, 'Carl Vincent Lorenzo Echanez', '2018-09-04', '9:00 am - 10:00 am', 'Ken', 'P1808310205079', 'Cat', 'British Shorthair', '9 Years old', 1, 'Done', '2018-09-03 14:54:54', 'V1808211104490', 'Carlos Almonds Valdez', '<p>nag set na ng maaga</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '111.00', '200.00', '89.00'),
(77, '#1809040144230', 'C1808211035448', 0, 'Lee Min Horse', '2018-09-04', '2:00 pm - 3:00 pm', 'Aninags', 'P1808221121554', 'Cat', 'British Shorthair', '2 Years old', 1, 'Done', '2018-09-04 13:44:23', 'V1808211104490', 'Carlos Almonds Valdez', 'ivansdsss', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '111.00', '200.00', '89.00'),
(78, '#1809040211069', 'C1808260210291', 28, 'Sandra Abdul Dela Cruz', '2018-09-04', '4: 00 pm - 5: 00pm', 'Brock', 'P1809031155058', 'Cat', 'Ragdoll', '2 Years old', 1, 'Done', '2018-09-04 14:11:06', 'V1808211104490', 'Carlos Almonds Valdez', '<p>sdsdassasd</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '300.00', '500.00', '200.00'),
(79, '#1809040557525', 'C1808260210291', 28, 'Sandra Abdul Dela Cruz', '2018-09-05', '12:00 nn - 1:00 pm', 'Brock', 'P1809031155058', 'Cat', 'Ragdoll', '2 Years old', 1, 'Cancelled', '2018-09-04 17:57:52', 'V1808211106539', 'Renato Ren Anto', '<p>appointment number 1</p>', '<p>cancel by me</p>', '2018-09-05 23:55:55', 0, '0000-00-00 00:00:00', '0.00', '0.00', '0.00'),
(80, '#1809040707044', 'C1808260134527', 19, 'Carl Vincent Lorenzo Echanez', '2018-09-04', '4: 00 pm - 5: 00pm', 'Ken', 'P1808310205079', 'Cat', 'British Shorthair', '9 Years old', 1, 'Done', '2018-09-04 19:07:04', 'V1808211104490', 'Carlos Almonds Valdez', '<p>si ken ken</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '411.00', '500.00', '89.00'),
(82, '#1809041152159', 'C1808260134527', 17, 'Carl Vincent Lorenzo Echanez', '2018-09-05', '9:00 am - 10:00 am', 'ivan', 'P1808260139232', 'Dog', 'Chihuahua', '16 Years old', 1, 'Done', '2018-09-04 23:52:15', 'V1808211104490', 'Carlos Almonds Valdez', '<p>hi</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '2.00', '3000.00', '0.00'),
(83, '#1809041157433', 'C1808260210291', 28, 'Sandra Abdul Dela Cruz', '2018-09-05', '1: 00pm - 2:00 pm', 'Brock', 'P1809031155058', 'Cat', 'Ragdoll', '2 Years old', 1, 'Cancelled', '2018-09-04 23:57:43', 'V1808211104221', 'Recardo Lebron  James', '<p>follow up checkup</p>', '<p>icancel ko nalang</p>', '2018-09-04 23:58:00', 0, '0000-00-00 00:00:00', '0.00', '0.00', '0.00'),
(84, '#1809041158396', 'C1808260210291', 28, 'Sandra Abdul Dela Cruz', '2018-09-05', '12:00 nn - 1:00 pm', 'Brock', 'P1809031155058', 'Cat', 'Ragdoll', '2 Years old', 1, 'Done', '2018-09-04 23:58:39', 'V1808211104490', 'Carlos Almonds Valdez', '<p>follow up checkup</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '111.00', '200.00', '89.00'),
(85, '#1809051202118', 'C1808211035448', 20, 'Lee Min Horse', '2018-09-06', '9:00 am - 10:00 am', 'Helen', 'P1809020130356', 'Cat', 'Maine Coon', '-1 Years old', 0, 'Done', '2018-09-05 00:02:11', 'V1808211104490', 'Carlos Almonds Valdez', '<p>hahhaahha</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '268.00', '300.00', '32.00'),
(88, '#1809070140071', 'C1808260134527', 17, 'Carl Vincent Lorenzo Echanez', '2018-09-07', '9:00 am - 10:00 am', 'ivan', 'P1808260139232', 'Dog', 'Chihuahua', '16 Years old', 1, 'Done', '2018-09-07 01:40:07', 'V1808211104490', 'Carlos Almonds Valdez', '<p>ivan is sick</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '111.00', '200.00', '89.00'),
(89, '#1809070234565', 'C1808260210291', 28, 'Sandra Abdul Dela Cruz', '2018-09-07', '10:00 am - 11:00 am', 'Brock', 'P1809031155058', 'Cat', 'Ragdoll', '2 Years old', 1, 'Done', '2018-09-07 02:34:56', 'V1808211104490', 'Carlos Almonds Valdez', '<p>brocks</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '111.00', '200.00', '89.00'),
(90, '#1809070239442', 'C1808290453032', 18, 'Kim Patrick V Verde', '2018-09-07', '11:00 am - 12: 00 nn', 'phelp', 'P1808290457450', 'Dinosaur', 'Viloso Raptor', '10 Years old', 1, 'Done', '2018-09-07 02:39:44', 'V1808211104490', 'Carlos Almonds Valdez', '<p>ivansds</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '111.00', '120.00', '9.00'),
(91, '#1809070251560', 'C1808260134527', 17, 'Carl Vincent Lorenzo Echanez', '2018-09-07', '2:00 pm - 3:00 pm', 'ivan', 'P1808260139232', 'Dog', 'Chihuahua', '16 Years old', 1, 'Done', '2018-09-07 02:51:56', 'V1808211104490', 'Carlos Almonds Valdez', '<p>ivnasdss</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '2.00', '3000.00', '0.00'),
(92, '#1809070350498', 'C1808260134527', 19, 'Carl Vincent Lorenzo Echanez', '2018-09-07', '2:00 pm - 3:00 pm', 'Ken', 'P1808310205079', 'Cat', 'British Shorthair', '9 Years old', 1, 'Done', '2018-09-07 03:50:49', 'V1808211104490', 'Carlos Almonds Valdez', '<p>grere</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '411.00', '500.00', '89.00'),
(93, '#1809070436559', 'C1808260134527', 19, 'Carl Vincent Lorenzo Echanez', '2018-09-07', '12:00 nn - 1:00 pm', 'Ken', 'P1808310205079', 'Cat', 'British Shorthair', '9 Years old', 1, 'Done', '2018-09-07 04:36:55', 'V1808211104490', 'Carlos Almonds Valdez', '<p>suffer&nbsp;</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '111.00', '222.00', '111.00'),
(94, '#1809070438558', 'C1808260134527', 17, 'Carl Vincent Lorenzo Echanez', '2018-09-07', '2:00 pm - 3:00 pm', 'ivan', 'P1808260139232', 'Dog', 'Chihuahua', '16 Years old', 1, 'Done', '2018-09-07 04:38:55', 'V1809011155197', 'Ivan  Stranger Strange', '<p>dadsdsdsds</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '2.00', '3000.00', '0.00'),
(96, '#1809070502102', 'C1808260134527', 17, 'Carl Vincent Lorenzo Echanez', '2018-09-07', '2:00 pm - 3:00 pm', 'ivan', 'P1808260139232', 'Dog', 'Chihuahua', '16 Years old', 1, 'Done', '2018-09-07 05:02:10', 'V1809011155197', 'Ivan  Stranger Strange', '<p>ddffdfsfdfsdfdfdfs</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '2333.00', '2500.00', '167.00'),
(97, '#1809070706018', 'C1808211035448', 0, 'Lee Min Horse', '2018-09-08', '2:00 pm - 3:00 pm', 'Arnelsz', 'P1808221021292', 'Cat', 'Ragdoll', '3 Years old', 1, 'Cancelled', '2018-09-07 19:06:01', 'V1809011155197', 'Ivan  Stranger Strange', '<p>hhhhhh</p>', '<p>canceled by the customer</p>', '2018-09-07 19:53:44', 0, '0000-00-00 00:00:00', '0.00', '0.00', '0.00'),
(98, '#1809070758550', 'C1808260134527', 17, 'Carl Vincent Lorenzo Echanez', '2018-09-07', '4: 00 pm - 5: 00pm', 'ivan', 'P1808260139232', 'Dog', 'Chihuahua', '16 Years old', 1, 'Done', '2018-09-07 19:58:55', 'V1808211104490', 'Carlos Almonds Valdez', '<p>follow up checkup</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '111.00', '222.00', '111.00'),
(99, '#1809080159074', 'C1808260134527', 17, 'Carl Vincent Lorenzo Echanez', '2018-09-08', '2:00 pm - 3:00 pm', 'ivan', 'P1808260139232', 'Dog', 'Chihuahua', '16 Years old', 1, 'Done', '2018-09-08 13:59:07', 'V1808211104490', 'Carlos Almonds Valdez', '<p>Walk in... went for a checkup</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '200.00', '200.00', '0.00'),
(101, '#1809080451532', 'C1808211035448', 20, 'Lee Min Horse', '2018-09-08', '9:00 am - 10:00 am', 'Helen', 'P1809020130356', 'Cat', 'Maine Coon', '-1 Years old', 0, 'Done', '2018-09-08 16:51:53', 'V1808211104490', 'Carlos Almonds Valdez', '<p>movement</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '1090.00', '1200.00', '110.00'),
(102, '#1809080526125', 'C1808211035448', 13, 'Lee Min Horse', '2018-09-08', '9:00 am - 10:00 am', 'Arnelsz', 'P1808221021292', 'Cat', 'Ragdoll', '3 Years old', 1, 'Done', '2018-09-08 17:26:12', 'V1808211104490', 'Carlos Almonds Valdez', '<p>sdsdadsadsd</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '611.00', '700.00', '89.00'),
(103, '#1809080616349', 'C1808211035448', 13, 'Lee Min Horse', '2018-09-08', '4: 00 pm - 5: 00pm', 'Arnelsz', 'P1808221021292', 'Cat', 'Ragdoll', '3 Years old', 1, 'Done', '2018-09-08 18:16:34', 'V1808211104490', 'Carlos Almonds Valdez', '<p>sdasdsdas</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '611.00', '700.00', '89.00'),
(104, '#1809080624323', 'C1808211035448', 14, 'Lee Min Horse', '2018-09-08', '2:00 pm - 3:00 pm', 'LenTik', 'P1808221046418', 'Cat', 'British Shorthair', '6 Months old', 0, 'Done', '2018-09-08 18:24:32', 'V1808211104490', 'Carlos Almonds Valdez', '<p>sdasdsssda</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '868.00', '1000.00', '132.00'),
(105, '#1809080814045', 'C1808211035448', 31, 'Chester Min King', '2018-09-08', '4: 00 pm - 5: 00pm', 'Helen', 'P1809080643234', 'Dog', 'German Shepherd', '1 Years old', 1, 'Done', '2018-09-08 20:14:04', 'V1808211104490', 'Carlos Almonds Valdez', '<p>sdsdsdad</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '311.00', '400.00', '89.00'),
(106, '#1809080851046', 'C1808211035448', 31, 'Chester Min King', '2018-09-08', '1: 00pm - 2:00 pm', 'Helen', 'P1809080643234', 'Dog', 'German Shepherd', '1 Years old', 1, 'On-Process', '2018-09-08 20:51:04', 'V1808211104490', 'Carlos Almonds Valdez', '<p>ssdasss</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0.00', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bannerimages`
--

CREATE TABLE `tbl_bannerimages` (
  `bannerimage_id` int(11) NOT NULL,
  `settings_id` int(11) NOT NULL,
  `banner_image` text NOT NULL,
  `banner_caption_heading` varchar(45) NOT NULL,
  `banner_caption` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bannerimages`
--

INSERT INTO `tbl_bannerimages` (`bannerimage_id`, `settings_id`, `banner_image`, `banner_caption_heading`, `banner_caption`) VALUES
(20, 1, '13000308_10209238532950293_7250980182978886531_n_copy11.jpg', 'Welcome', '<p>Our clinic is located at&nbsp;\r\n\r\n520-B 16th ISU Village <br>Barangay 31 South Side	Makati City ,1211\r\n\r\n</p><p><br></p>'),
(23, 1, 'lac_lab__pup_1_copy1.jpg', 'We offer quality service', '<p>Service offer include the following</p><p><ul><li>Deworming</li><li>Vaccination</li><li>Grooming</li><li>Many more</li></ul></p>');

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
  `prescription` text NOT NULL,
  `possible_cause` varchar(45) NOT NULL,
  `library_id` int(11) NOT NULL,
  `is_known` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_checkupdetails`
--

INSERT INTO `tbl_checkupdetails` (`checkup_id`, `assessment_date`, `appointment_table_id`, `appointment_id`, `date`, `time`, `veterinarian`, `vet_id`, `pet_id`, `petname`, `age`, `complaints`, `treatment`, `prescription`, `possible_cause`, `library_id`, `is_known`, `color`) VALUES
(61, '2018-08-24 10:14:39', 56, '#1808241011211', '2018-08-24', '11:00 am - 12: 00 nn', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808221046418', 'LenTik', '6 Months old', 'oo ma', 'Input Veterinarian Statement/ Observation / Treatment', '<p>Bilhin mo tong mga to ah.. ahha</p><p></p><ol><li>bili ka nito</li><li>ito</li><li>sama mo na rin to ..</li><li>bilhin mo to lahat ah</li></ol><p></p>', 'cancer', 0, 'Unknown', '#f56954'),
(62, '2018-08-24 11:20:38', 57, '#1808241120106', '2018-08-24', '2:00 pm - 3:00 pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808221021292', 'Arnelsz', '3 Years old', 'ivansdsa', 'Input Veterinarian Statement/ Observation / Treatment', 'Prescriptions / Medicines / Doctors Comments and Recomendation\r\n                                        <div><p></p><ol><li>ivan<br></li><li>christian</li><li>jay</li><li>funcion</li><li>ako</li></ol><p></p></div>', 'cancer', 0, 'Unknown', '#f56954'),
(63, '2018-08-26 04:47:28', 60, '#1808260444092', '2018-08-26', '9:00 am - 10:00 am', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808221048598', 'cole', '1 Years old', '<p>tahol daw ng tahol</p>', 'Tinanggalan ng Voice box', '<p>wala.. kasi baka tumaholulit</p><p>nag deworming narin para tanggal bituka</p>', 'cancer', 0, 'Unknown', '#f56954'),
(64, '2018-08-29 17:39:33', 64, '#1808290532591', '2018-08-29', '4: 00 pm - 5: 00pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808221046418', 'LenTik', '6 Months old', 'hshdsads', 'Input Veterinarian Statement/ Observation / Treatment', 'Prescriptions / Medicines / Doctors Comments and Recomendation', 'cancer', 0, 'Unknown', '#f56954'),
(65, '2018-08-30 22:21:31', 65, '#1808301018485', '2018-08-30', '4: 00 pm - 5: 00pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808221046418', 'LenTik', '6 Months old', '<p>dasdsdssssssssss</p>', 'Input Veterinarian Statement/ Observation / Treatment', 'Prescriptions / Medicines / Doctors Comments and Recomendation', 'cancer', 0, 'Unknown', '#f56954'),
(66, '2018-08-30 23:20:42', 63, '#1808290151275', '2018-08-30', '9:00 am - 10:00 am', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808221046418', 'LenTik', '6 Months old', 'hahahahahahah', 'Input Veterinarian Statement/ Observation / Treatment', 'Prescriptions / Medicines / Doctors Comments and Recomendation', 'syndrome', 0, 'Unknown', '#f56954'),
(67, '2018-08-30 23:20:48', 66, '#1808301059464', '2018-08-30', '4: 00 pm - 5: 00pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808221046418', 'LenTik', '6 Months old', '<p>dssdasd ivansdsdassdasdd</p>', 'Input Veterinarian Statement/ Observation / Treatment', 'Prescriptions / Medicines / Doctors Comments and Recomendation', 'syndrome', 0, 'Unknown', '#f56954'),
(68, '2018-08-31 14:18:30', 71, '#1808311156354', '2018-08-31', '9:00 am - 10:00 am', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808221021292', 'Arnelsz', '3 Years old', 'sadsdsdd', 'Input Veterinarian Statement/ Observation / Treatment<div><br></div><div><br></div>', 'Prescriptions / Medicines / Doctors Comments and Recomendation\r\n                                        <div><br></div><div><br></div><div>sdsasd</div>', 'cancer', 0, 'Unknown', '#f56954'),
(69, '2018-09-01 01:09:23', 72, '#1809010108444', '2018-09-01', '9:00 am - 10:00 am', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808221021292', 'Arnelsz', '3 Years old', '<p>ivansdasdsd</p>', 'Input Veterinarian Statement/ Observation / Treatment', 'Prescriptions / Medicines / Doctors Comments and Recomendation', 'syndrome', 0, 'Unknown', '#f56954'),
(70, '2018-09-03 13:54:28', 75, '#1809031138147', '2018-09-03', '2:00 pm - 3:00 pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808221121554', 'Aninags', '2 Years old', 'focus on work', 'Input Veterinarian Statement/ Observation / Treatment<div><ol><li>injected a serum</li><li>injected a powder&nbsp;</li><li>get blood sugar</li><li>get body weight</li></ol></div><div><br></div><div><br></div>', 'Prescriptions / Medicines / Doctors Comments and Recomendation\r\n                                                  <div><br></div><div>Drink 8 to 10 glasses of water every day</div>', 'cancer', 0, 'Unknown', '#f56954'),
(71, '2018-09-04 13:50:54', 77, '#1809040144230', '2018-09-04', '2:00 pm - 3:00 pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808221121554', 'Aninags', '2 Years old', 'ivansdsss', 'Input Veterinarian Statement/ Observation / Treatment', 'Prescriptions / Medicines / Doctors Comments and Recomendation', 'syndrome', 0, 'Unknown', '#f56954'),
(72, '2018-09-04 14:20:56', 76, '#1809030254545', '2018-09-04', '9:00 am - 10:00 am', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808310205079', 'Ken', '9 Years old', '<p>nag set na ng maaga</p>', '<p>nice one</p>', '<p>ok</p>', 'cancer', 0, 'Unknown', '#f56954'),
(73, '2018-09-04 17:28:09', 78, '#1809040211069', '2018-09-04', '4: 00 pm - 5: 00pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1809031155058', 'Brock', '2 Years old', '<p>sdsdassasd</p>', '<p></p><p>Treatment includes:<br></p><p></p><ol><li>Deworming</li><li>aesthetics</li><li>singleton</li><li>abbreviation</li><li>teraforming&nbsp;</li></ol><p></p><p></p>', '<p>bring brock for fallow up check up in <b><u>2 weeks</u></b> time</p><p>buy the following medicine for home medication</p><p></p><ol><li>asperin</li><li>cleve&nbsp;</li><li>byfost</li><li>stormbreaker</li></ol><p></p>', 'syndrome', 0, 'Unknown', '#f56954'),
(74, '2018-09-04 23:19:19', 80, '#1809040707044', '2018-09-04', '4: 00 pm - 5: 00pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808310205079', 'Ken', '9 Years old', '<p>si ken ken</p>', '<p>ken is physically healthy but i have observe that he is pale</p><p>and weak... must be the side effect of the atibiotics that we use to him</p><p><br></p>', '<p>patient must be lock on his room for several days to avoid infection</p>', 'tumor', 0, 'Unknown', '#00a65a'),
(75, '2018-09-05 23:53:35', 82, '#1809041152159', '2018-09-05', '9:00 am - 10:00 am', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808260139232', 'ivan', '16 Years old', '<p>hi</p>', '<p>oo na</p>', '<p>edi wow</p>', 'tumor', 0, 'Unknown', '#00a65a'),
(76, '2018-09-05 23:54:04', 84, '#1809041158396', '2018-09-05', '12:00 nn - 1:00 pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1809031155058', 'Brock', '2 Years old', '<p>follow up checkup</p>', '<p>progressive enchantment</p>', '<p>like we use to do</p>', 'tumor', 0, 'Unknown', '#00a65a'),
(77, '2018-09-06 14:20:00', 85, '#1809051202118', '2018-09-06', '9:00 am - 10:00 am', 'Carlos Almonds Valdez', 'V1808211104490', 'P1809020130356', 'Helen', '-1 Years old', '<p>hahhaahha</p>', '<p>expensive</p>', '<p>onwsasd</p>', 'tumor', 0, 'Unknown', '#00a65a'),
(78, '2018-09-07 02:29:15', 88, '#1809070140071', '2018-09-07', '9:00 am - 10:00 am', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808260139232', 'ivan', '16 Years old', '<p>ivan is sick</p>', '<p>paient is suffering from an unknown illness</p>', '<p>need to do this procedure</p>', 'gingivitis', 0, 'Unknown', '#00a65a'),
(79, '2018-09-07 02:35:19', 89, '#1809070234565', '2018-09-07', '10:00 am - 11:00 am', 'Carlos Almonds Valdez', 'V1808211104490', 'P1809031155058', 'Brock', '2 Years old', '<p>brocks</p>', '<p>scissor&nbsp;</p>', '<p>plan</p>', 'gingivitis', 0, 'Unknown', '#00a65a'),
(80, '2018-09-07 02:40:30', 90, '#1809070239442', '2018-09-07', '11:00 am - 12: 00 nn', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808290457450', 'phelp', '10 Years old', '<p>ivansds</p>', '<p>sam</p>', '<p>ple</p>', 'Anaplasmosis', 59, 'Known', '#00a65a'),
(81, '2018-09-07 02:52:31', 91, '#1809070251560', '2018-09-07', '2:00 pm - 3:00 pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808260139232', 'ivan', '16 Years old', '<p>ivnasdss</p>', '<p>ss</p>', '<p>ivans</p>', 'Colitis', 61, 'Known', '#00a65a'),
(82, '2018-09-07 03:51:11', 92, '#1809070350498', '2018-09-07', '2:00 pm - 3:00 pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808310205079', 'Ken', '9 Years old', '<p>grere</p>', '<p>sasds</p>', '<p>dasdad</p>', 'green lantern', 0, 'Unknown', ''),
(83, '2018-09-07 04:39:56', 94, '#1809070438558', '2018-09-07', '2:00 pm - 3:00 pm', 'Ivan  Stranger Strange', 'V1809011155197', 'P1808260139232', 'ivan', '16 Years old', '<p>suffer sereyna</p>', '<p>sasds</p>', '<p>sdsd</p>', 'Anaplasmosis', 59, 'Known', ''),
(84, '2018-09-07 05:02:27', 96, '#1809070502102', '2018-09-07', '2:00 pm - 3:00 pm', 'Ivan  Stranger Strange', 'V1809011155197', 'P1808260139232', 'ivan', '16 Years old', '<p>ddffdfsfdfsdfdfdfs</p>', '<p>sss</p>', '<p>dsasd</p>', 'Colitis', 61, 'Known', ''),
(85, '2018-09-07 20:21:47', 93, '#1809070436559', '2018-09-07', '12:00 nn - 1:00 pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808310205079', 'Ken', '9 Years old', '<p>suffer&nbsp;</p>', '<p>ssss</p>', '<p>dsds</p>', 'Anaplasmosis', 59, 'Known', ''),
(86, '2018-09-07 20:37:25', 98, '#1809070758550', '2018-09-07', '4: 00 pm - 5: 00pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808260139232', 'ivan', '16 Years old', '<p>follow up checkup</p>', '<p>ssdsd</p>', '<p>second checkup</p>', 'none', 0, 'Unknown', ''),
(87, '2018-09-08 16:41:58', 99, '#1809080159074', '2018-09-08', '2:00 pm - 3:00 pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808260139232', 'ivan', '16 Years old', '<p>Walk in... went for a checkup</p>', '<p>sds</p>', '<p>ssdasd</p>', 'None', 0, 'Unknown', ''),
(88, '2018-09-08 16:53:10', 101, '#1809080451532', '2018-09-08', '9:00 am - 10:00 am', 'Carlos Almonds Valdez', 'V1808211104490', 'P1809020130356', 'Helen', '-1 Years old', '<p>movement</p>', '<p>sasd</p>', '<p>sds</p>', 'Ehrlichia ', 60, 'Known', ''),
(89, '2018-09-08 17:26:33', 102, '#1809080526125', '2018-09-08', '9:00 am - 10:00 am', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808221021292', 'Arnelsz', '3 Years old', '<p>sdsdadsadsd</p>', '<p>ss</p>', '<p>dsd</p>', 'Ehrlichia ', 60, 'Known', ''),
(90, '2018-09-08 18:21:38', 103, '#1809080616349', '2018-09-08', '4: 00 pm - 5: 00pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808221021292', 'Arnelsz', '3 Years old', '<p>sdasdsdas</p>', '<p>sdsd</p>', '<p>asssdsd</p>', 'Colitis', 61, 'Known', ''),
(91, '2018-09-08 18:24:54', 104, '#1809080624323', '2018-09-08', '2:00 pm - 3:00 pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808221046418', 'LenTik', '6 Months old', '<p>sdasdsssda</p>', '<p>sdsd</p>', '<p>asdsdas</p>', 'Colitis', 61, 'Known', ''),
(92, '2018-09-08 20:28:15', 105, '#1809080814045', '2018-09-08', '4: 00 pm - 5: 00pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1809080643234', 'Helen', '1 Years old', '<p>sdsdsdad</p>', '<p>Patient shows dulling</p><p>right eye is infected</p><p>left eye is fine</p>', '<p>bring your dog after 3weeks for final evaluation</p>', 'Kennel Cough', 58, 'Known', ''),
(93, '2018-09-08 20:51:31', 106, '#1809080851046', '2018-09-08', '1: 00pm - 2:00 pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1809080643234', 'Helen', '1 Years old', '<p>ssdasss</p>', '<p>sdsdasds</p>', '<p>sdssasds</p>', 'none', 0, 'Unknown', '');

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
(7, 'C1808211035448', 'Chester', 'Min', 'King', '1988-02-09', '520 16th', 'South Side', 'Makati City', '144', '2018-08-21 22:35:47', '', '', 'Active', 'team1.png', '09021232212', 'Male', 'icjfuncion@gmail.com'),
(9, 'C1808260134527', 'Carl Vincent', 'Lorenzo', 'Echanez', '1993-03-05', 'las pinas ', 'las pinas ', 'las pinas ', '3323', '2018-08-26 13:36:04', '', '', 'Inactive', '', '09157299313', 'Male', 'sad539281@gmail.com'),
(10, 'C1808260210291', 'Sandra', 'Abdul', 'Dela Cruz', '1996-01-17', 'dsda', 'dsda', 'sdasd', '1111', '2018-08-26 14:11:41', '', '', 'Active', '', '09266019033', 'Female', 'psandradelacruz@gmail.com'),
(11, 'C1808280158054', 'Ely Jireh', 'M', 'Mojares', '1958-05-20', '#3333', 'ivn street', 'makati city', '1111', '2018-08-28 13:59:08', '', '', 'Active', '', '09021232212', 'Male', 'sky.winter30@gmail.com'),
(12, 'C1808280159141', ' Almira', 'Incarnation', 'Layola', '2000-06-20', '#3333', 'ivn street', 'makati city', '1111', '2018-08-28 14:07:23', '', '', 'Active', '', '09021232212', 'Female', 'sky.winter30@gmail.com'),
(15, 'C1809060648155', 'Bessy Bes', 'Bess ', 'Bestes', '1991-06-11', '#3333', 'ivn street', 'makati city', '1111', '2018-09-06 18:50:29', '', '', 'Active', '', '09021232212', 'Male', 'dominic.nanz0526@gmail.com');

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
(4311, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products Detail (Food)', '2018-09-05 23:27:18'),
(4312, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-09-05 23:27:19'),
(4313, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet details', '2018-09-05 23:27:21'),
(4314, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet details', '2018-09-05 23:27:22'),
(4315, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-09-05 23:27:25'),
(4316, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet details', '2018-09-05 23:27:26'),
(4317, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet details', '2018-09-05 23:27:41'),
(4318, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-09-05 23:27:59'),
(4319, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Product Details (Items)', '2018-09-05 23:28:00'),
(4320, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Product Details (Items)', '2018-09-05 23:28:05'),
(4321, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-09-05 23:28:08'),
(4322, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-05 23:29:06'),
(4323, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-05 23:30:15'),
(4324, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-05 23:32:29'),
(4325, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-05 23:33:43'),
(4326, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-05 23:34:59'),
(4327, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-05 23:36:57'),
(4328, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-05 23:37:11'),
(4329, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-05 23:37:25'),
(4330, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-05 23:37:47'),
(4331, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-05 23:38:06'),
(4332, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-05 23:38:25'),
(4333, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-05 23:38:32'),
(4334, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-05 23:38:41'),
(4335, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-05 23:39:06'),
(4336, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-05 23:39:33'),
(4337, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-05 23:40:57'),
(4338, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-05 23:41:15'),
(4339, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-05 23:41:41'),
(4340, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-05 23:41:59'),
(4341, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-05 23:50:53'),
(4342, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-05 23:51:47'),
(4343, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-05 23:52:24'),
(4344, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-05 23:52:32'),
(4345, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-05 23:52:47'),
(4346, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-05 23:53:01'),
(4347, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-05 23:53:06'),
(4348, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Login', '2018-09-05 23:53:22'),
(4349, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-05 23:53:22'),
(4350, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-05 23:53:35'),
(4351, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-05 23:54:04'),
(4352, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-05 23:54:09'),
(4353, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-05 23:54:26'),
(4354, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-05 23:54:26'),
(4355, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-05 23:54:30'),
(4356, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-05 23:54:40'),
(4357, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-05 23:55:06'),
(4358, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-05 23:55:11'),
(4359, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-05 23:55:36'),
(4360, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-05 23:55:36'),
(4361, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-05 23:55:41'),
(4362, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-05 23:55:41'),
(4363, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-05 23:55:43'),
(4364, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-05 23:55:56'),
(4365, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 00:50:30'),
(4366, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 00:57:01'),
(4367, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 00:57:18'),
(4368, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:00:53'),
(4369, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:01:10'),
(4370, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:04:18'),
(4371, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:06:28'),
(4372, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:07:09'),
(4373, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:07:32'),
(4374, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:08:07'),
(4375, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:13:06'),
(4376, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:13:54'),
(4377, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:13:56'),
(4378, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 01:14:03'),
(4379, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 01:14:08'),
(4380, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:15:00'),
(4381, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:16:17'),
(4382, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:16:48'),
(4383, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:17:15'),
(4384, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:17:31'),
(4385, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:18:05'),
(4386, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:18:23'),
(4387, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:18:35'),
(4388, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:19:02'),
(4389, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:19:45'),
(4390, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:22:18'),
(4391, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:23:56'),
(4392, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:26:04'),
(4393, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:26:26'),
(4394, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:26:40'),
(4395, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:39:22'),
(4396, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:40:59'),
(4397, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 01:51:56'),
(4398, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 01:53:34'),
(4399, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-06 01:54:12'),
(4400, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-06 01:57:47'),
(4401, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 01:57:51'),
(4402, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 01:58:02'),
(4403, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 02:01:34'),
(4404, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 02:09:26'),
(4405, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 02:15:43'),
(4406, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 02:15:55'),
(4407, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 02:18:18'),
(4408, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 02:22:51'),
(4409, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 02:22:56'),
(4410, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 02:23:56'),
(4411, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 02:24:04'),
(4412, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 02:24:51'),
(4413, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 02:46:33'),
(4414, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 02:47:56'),
(4415, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 02:48:46'),
(4416, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 02:51:10'),
(4417, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 02:54:17'),
(4418, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 02:54:28'),
(4419, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 02:54:48'),
(4420, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 03:22:19'),
(4421, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 03:22:41'),
(4422, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 03:27:11'),
(4423, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 03:28:23'),
(4424, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-09-06 14:07:10'),
(4425, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 14:07:10'),
(4426, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 14:07:37'),
(4427, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 14:09:30'),
(4428, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-06 14:10:02'),
(4429, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Login', '2018-09-06 14:11:19'),
(4430, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-06 14:11:19'),
(4431, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-06 14:11:50'),
(4432, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-06 14:11:59'),
(4433, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet Health Care Library', '2018-09-06 14:16:30'),
(4434, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Products List (Medicines)', '2018-09-06 14:16:58'),
(4435, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 14:18:39'),
(4436, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-06 14:19:31'),
(4437, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-06 14:20:00'),
(4438, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-09-06 14:20:14'),
(4439, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Login', '2018-09-06 14:20:41'),
(4440, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View My Pets Section', '2018-09-06 14:20:44'),
(4441, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View Pet details', '2018-09-06 14:21:09'),
(4442, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-09-06 14:21:43'),
(4443, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 14:21:43'),
(4444, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-06 14:21:47'),
(4445, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-06 14:21:51'),
(4446, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-06 14:22:39'),
(4447, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-06 14:22:39'),
(4448, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-06 14:22:41'),
(4449, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-06 14:22:43'),
(4450, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Logout', '2018-09-06 14:23:33'),
(4451, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-09-06 14:23:38'),
(4452, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 14:23:38'),
(4453, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-09-06 14:54:46'),
(4454, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-09-06 14:54:48'),
(4455, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-09-06 14:55:34'),
(4456, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-09-06 14:55:42'),
(4457, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-09-06 14:55:58'),
(4458, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-09-06 14:56:06'),
(4459, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-09-06 14:56:07'),
(4460, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-09-06 14:56:24'),
(4461, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-09-06 14:56:55'),
(4462, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-09-06 14:56:57'),
(4463, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-09-06 14:57:14'),
(4464, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-09-06 14:57:34'),
(4465, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet Health Care Library', '2018-09-06 14:57:49'),
(4466, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Inventory', '2018-09-06 14:57:51'),
(4467, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-09-06 14:59:01'),
(4468, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-09-06 15:09:36'),
(4469, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer details', '2018-09-06 15:09:38'),
(4470, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet Health Care Library', '2018-09-06 15:12:01'),
(4471, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'Add article in Pet Health Care Library', '2018-09-06 15:13:58'),
(4472, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet Health Care Library', '2018-09-06 15:14:00'),
(4473, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Inventory', '2018-09-06 15:14:03'),
(4474, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'Add Content of  article Kennel Cough', '2018-09-06 15:14:19'),
(4475, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Inventory', '2018-09-06 15:14:21'),
(4476, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Logout', '2018-09-06 15:14:32'),
(4477, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Login', '2018-09-06 15:14:38'),
(4478, 'Lee Min Horse', 'Customer', 'C1808211035448', 'Read Article', '2018-09-06 15:14:46'),
(4479, 'Lee Min Horse', 'Customer', 'C1808211035448', 'Read Article', '2018-09-06 15:15:07'),
(4480, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-09-06 15:15:59'),
(4481, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-09-06 15:16:01'),
(4482, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-09-06 15:17:14'),
(4483, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-06 15:18:22'),
(4484, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-09-06 15:18:26'),
(4485, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 15:19:30'),
(4486, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View logs', '2018-09-06 15:20:32'),
(4487, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 15:20:40'),
(4488, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-09-06 15:21:28'),
(4489, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 15:21:31'),
(4490, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-09-06 15:21:35'),
(4491, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 15:22:06'),
(4492, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-09-06 15:24:35'),
(4493, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-09-06 15:24:41'),
(4494, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-09-06 15:24:43'),
(4495, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-09-06 15:24:46'),
(4496, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-09-06 15:24:48'),
(4497, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-09-06 15:25:48'),
(4498, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-09-06 15:25:51'),
(4499, 'Lee Min Horse', 'Customer', 'C1808211035448', 'Read Article', '2018-09-06 15:26:08'),
(4500, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-09-06 15:26:17'),
(4501, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Login', '2018-09-06 15:26:34'),
(4502, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-06 15:26:35'),
(4503, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet Health Care Library', '2018-09-06 15:26:38'),
(4504, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Inventory', '2018-09-06 15:26:39'),
(4505, 'Lee Min Horse', 'Customer', 'C1808211035448', 'Read Article', '2018-09-06 15:27:00'),
(4506, 'Lee Min Horse', 'Customer', 'C1808211035448', 'Read Article', '2018-09-06 15:27:48'),
(4507, 'Lee Min Horse', 'Customer', 'C1808211035448', 'Read Article', '2018-09-06 15:28:17'),
(4508, 'Lee Min Horse', 'Customer', 'C1808211035448', 'Read Article', '2018-09-06 15:29:18'),
(4509, 'Lee Min Horse', 'Customer', 'C1808211035448', 'Read Article', '2018-09-06 15:29:31'),
(4510, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Inventory', '2018-09-06 15:29:50'),
(4511, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'Add Content of  article Kennel Cough', '2018-09-06 15:30:16'),
(4512, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Inventory', '2018-09-06 15:30:18'),
(4513, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Login', '2018-09-06 15:31:31'),
(4514, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-06 15:31:31'),
(4515, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet Health Care Library', '2018-09-06 15:31:37'),
(4516, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Inventory', '2018-09-06 15:31:47'),
(4517, 'Lee Min Horse', 'Customer', 'C1808211035448', 'Read Article', '2018-09-06 15:32:37'),
(4518, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'Update Image of  article Kennel Cough', '2018-09-06 15:35:09'),
(4519, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Inventory', '2018-09-06 15:35:11'),
(4520, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Products List (Medicines)', '2018-09-06 15:35:28'),
(4521, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'Add Content of  article Kennel Cough', '2018-09-06 15:37:01'),
(4522, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Inventory', '2018-09-06 15:37:03'),
(4523, 'Lee Min Horse', 'Customer', 'C1808211035448', 'Read Article', '2018-09-06 15:37:09'),
(4524, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'Add Content of  article Kennel Cough', '2018-09-06 15:38:07'),
(4525, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Inventory', '2018-09-06 15:38:09'),
(4526, 'Lee Min Horse', 'Customer', 'C1808211035448', 'Read Article', '2018-09-06 15:38:14'),
(4527, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-09-06 15:38:37'),
(4528, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Inventory', '2018-09-06 15:38:51'),
(4529, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Inventory', '2018-09-06 15:40:01'),
(4530, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'Add Website Link of  article Kennel Cough', '2018-09-06 15:40:31'),
(4531, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Inventory', '2018-09-06 15:40:33'),
(4532, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet Health Care Library', '2018-09-06 15:41:12'),
(4533, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'Add article in Pet Health Care Library', '2018-09-06 15:43:21'),
(4534, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet Health Care Library', '2018-09-06 15:43:24'),
(4535, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Inventory', '2018-09-06 15:43:27'),
(4536, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'Add Content of  article Anaplasmosis', '2018-09-06 15:43:44'),
(4537, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Inventory', '2018-09-06 15:43:46'),
(4538, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'Add Content of  article Anaplasmosis', '2018-09-06 15:43:56'),
(4539, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Inventory', '2018-09-06 15:43:59'),
(4540, 'Lee Min Horse', 'Customer', 'C1808211035448', 'Read Article', '2018-09-06 15:44:12'),
(4541, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-09-06 15:46:29'),
(4542, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add article in Pet Health Care Library', '2018-09-06 15:47:14'),
(4543, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-09-06 15:47:17'),
(4544, 'Lee Min Horse', 'Customer', 'C1808211035448', 'Read Article', '2018-09-06 15:47:20'),
(4545, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Change Status of  article Ehrlichia  to Inactive', '2018-09-06 15:50:16'),
(4546, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-09-06 15:50:18'),
(4547, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Change Status of  article Ehrlichia  to Active', '2018-09-06 15:50:24'),
(4548, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-09-06 15:50:26'),
(4549, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Logout', '2018-09-06 15:51:37'),
(4550, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Login', '2018-09-06 15:51:42'),
(4551, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-06 15:51:42'),
(4552, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-09-06 15:54:36'),
(4553, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Breed List', '2018-09-06 15:54:38'),
(4554, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Type List', '2018-09-06 15:54:42'),
(4555, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-09-06 15:54:45'),
(4556, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Type List', '2018-09-06 15:54:50'),
(4557, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-09-06 15:54:51'),
(4558, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Breed List', '2018-09-06 15:54:52'),
(4559, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Type List', '2018-09-06 15:54:54'),
(4560, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-09-06 15:54:55'),
(4561, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Breed List', '2018-09-06 15:55:19'),
(4562, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Type List', '2018-09-06 15:55:24'),
(4563, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Breed List', '2018-09-06 15:55:38'),
(4564, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Type List', '2018-09-06 15:56:10'),
(4565, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-09-06 15:56:59'),
(4566, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-09-06 15:58:00'),
(4567, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Medicines)', '2018-09-06 15:59:41'),
(4568, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products Details (Medicine)', '2018-09-06 15:59:43'),
(4569, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products Details (Medicine)', '2018-09-06 15:59:53'),
(4570, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-09-06 15:59:58'),
(4571, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-09-06 16:07:08'),
(4572, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-09-06 16:09:25'),
(4573, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Medicines)', '2018-09-06 16:18:23'),
(4574, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Medicines)', '2018-09-06 16:18:40'),
(4575, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products Details (Medicine)', '2018-09-06 16:18:49'),
(4576, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products Details (Medicine)', '2018-09-06 16:18:54'),
(4577, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products Details (Medicine)', '2018-09-06 16:18:55'),
(4578, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Medicines)', '2018-09-06 16:18:58'),
(4579, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Medicines)', '2018-09-06 16:19:00'),
(4580, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Medicines)', '2018-09-06 16:20:25'),
(4581, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-09-06 16:22:05'),
(4582, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-09-06 16:22:07'),
(4583, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Medicines)', '2018-09-06 16:22:08'),
(4584, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-09-06 16:27:38'),
(4585, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-09-06 16:27:42'),
(4586, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Medicines)', '2018-09-06 16:27:47'),
(4587, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Medicines)', '2018-09-06 16:30:54'),
(4588, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-09-06 16:31:02'),
(4589, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Medicines)', '2018-09-06 16:32:57'),
(4590, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-09-06 16:32:59'),
(4591, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 16:33:20'),
(4592, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-09-06 16:33:48'),
(4593, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Handle POS', '2018-09-06 16:34:05'),
(4594, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-09-06 16:34:06'),
(4595, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 16:34:09'),
(4596, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 16:34:47'),
(4597, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 16:35:05'),
(4598, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 16:35:25'),
(4599, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 16:35:54'),
(4600, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 16:36:28'),
(4601, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Medicines)', '2018-09-06 16:36:54'),
(4602, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 16:36:56'),
(4603, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 16:37:45'),
(4604, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-09-06 16:37:55'),
(4605, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Handle POS', '2018-09-06 16:38:02'),
(4606, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-09-06 16:38:03'),
(4607, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 16:38:07'),
(4608, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-09-06 16:38:16'),
(4609, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Handle POS', '2018-09-06 16:38:24'),
(4610, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-09-06 16:38:24'),
(4611, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 16:38:26'),
(4612, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 16:38:59'),
(4613, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 16:39:30'),
(4614, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 16:39:31'),
(4615, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 16:40:08'),
(4616, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 16:40:14'),
(4617, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-09-06 16:41:45'),
(4618, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-09-06 16:45:02'),
(4619, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-09-06 16:45:07'),
(4620, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-09-06 16:45:08'),
(4621, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-09-06 16:45:10'),
(4622, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-09-06 16:45:13'),
(4623, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-09-06 16:45:16'),
(4624, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Foods)', '2018-09-06 16:47:49'),
(4625, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-09-06 16:47:57'),
(4626, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Logout', '2018-09-06 16:48:39'),
(4627, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Login', '2018-09-06 16:48:45'),
(4628, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-06 16:48:45'),
(4629, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-06 16:48:49'),
(4630, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-06 16:48:50'),
(4631, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-06 16:49:53'),
(4632, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-09-06 16:50:06'),
(4633, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-09-06 16:55:10'),
(4634, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-06 16:55:15'),
(4635, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-09-06 16:56:35'),
(4636, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Type List', '2018-09-06 16:56:45'),
(4637, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-09-06 17:02:24'),
(4638, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Type List', '2018-09-06 17:03:02'),
(4639, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-09-06 17:08:53'),
(4640, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Type List', '2018-09-06 17:08:55'),
(4641, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Type List', '2018-09-06 17:09:16'),
(4642, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Type List', '2018-09-06 17:16:39'),
(4643, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Type List', '2018-09-06 17:17:35'),
(4644, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Change Status of  Pet type  Dinosaur to Inactive', '2018-09-06 17:17:38'),
(4645, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Type List', '2018-09-06 17:17:40'),
(4646, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Change Status of  Pet type  Dinosaur to Inactive', '2018-09-06 17:17:45'),
(4647, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Type List', '2018-09-06 17:17:47'),
(4648, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Type List', '2018-09-06 17:17:52'),
(4649, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Change Status of  Pet type  Dinosaur to Inactive', '2018-09-06 17:17:53'),
(4650, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Type List', '2018-09-06 17:17:55'),
(4651, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Type List', '2018-09-06 17:18:15'),
(4652, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Change Status of  Pet type  Birds to Inactive', '2018-09-06 17:18:17'),
(4653, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Type List', '2018-09-06 17:19:05'),
(4654, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Change Status of  Pet type  Horse to Inactive', '2018-09-06 17:19:07'),
(4655, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Type List', '2018-09-06 17:19:58'),
(4656, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Change Status of  Pet type  Horse to Inactive', '2018-09-06 17:20:00'),
(4657, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Type List', '2018-09-06 17:20:04'),
(4658, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-09-06 17:20:20'),
(4659, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-09-06 17:21:13'),
(4660, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-06 17:21:15'),
(4661, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-09-06 17:21:19'),
(4662, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer details', '2018-09-06 17:21:21'),
(4663, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-09-06 17:25:52'),
(4664, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-09-06 18:08:11'),
(4665, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add article in Pet Health Care Library', '2018-09-06 18:08:35'),
(4666, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add article in Pet Health Care Library', '2018-09-06 18:08:43'),
(4667, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-09-06 18:09:19'),
(4668, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-09-06 18:09:31'),
(4669, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-09-06 18:09:39'),
(4670, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-09-06 18:09:41'),
(4671, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-09-06 18:09:47'),
(4672, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-09-06 18:10:36'),
(4673, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add article in Pet Health Care Library', '2018-09-06 18:10:49'),
(4674, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-09-06 18:12:59'),
(4675, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add article in Pet Health Care Library', '2018-09-06 18:13:08'),
(4676, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-09-06 18:13:25'),
(4677, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add article in Pet Health Care Library', '2018-09-06 18:13:36'),
(4678, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-09-06 18:14:08'),
(4679, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add article in Pet Health Care Library', '2018-09-06 18:14:19'),
(4680, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-09-06 18:15:20'),
(4681, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add article in Pet Health Care Library', '2018-09-06 18:15:30'),
(4682, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-09-06 18:15:33'),
(4683, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Logout', '2018-09-06 18:42:41'),
(4684, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-06 18:48:10'),
(4685, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-09-06 18:48:15'),
(4686, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add new Customer', '2018-09-06 18:50:29'),
(4687, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-09-06 18:50:35'),
(4688, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer details', '2018-09-06 18:53:21'),
(4689, 'Bessy Bes Bess  Bestes', 'Customer', 'C1809060648155', 'User Login', '2018-09-06 18:54:03'),
(4690, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-09-06 18:54:10'),
(4691, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer details', '2018-09-06 18:54:12'),
(4692, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add New Pet', '2018-09-06 18:55:31'),
(4693, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer details', '2018-09-06 18:55:33'),
(4694, 'Bessy Bes Bess  Bestes', 'Customer', 'C1809060648155', 'Send Appointment Request', '2018-09-06 18:55:41'),
(4695, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-06 18:55:44'),
(4696, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-06 18:55:59'),
(4697, 'Bessy Bes Bess  Bestes', 'Customer', 'C1809060648155', 'User Logout', '2018-09-06 19:01:07'),
(4698, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-09-06 19:01:20'),
(4699, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-06 19:01:20'),
(4700, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-09-06 19:01:28'),
(4701, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-09-06 19:01:33'),
(4702, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-09-06 19:01:46'),
(4703, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-09-06 19:01:48'),
(4704, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-09-06 19:02:15'),
(4705, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-09-06 19:02:33'),
(4706, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-09-06 19:03:03'),
(4707, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet details', '2018-09-06 19:03:05'),
(4708, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Items/Accessories)', '2018-09-06 19:03:34'),
(4709, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 19:04:00'),
(4710, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-09-06 19:04:05'),
(4711, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-09-06 19:04:16'),
(4712, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-06 19:04:50'),
(4713, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-09-07 01:39:25'),
(4714, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 01:39:25'),
(4715, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 01:39:28'),
(4716, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 01:40:08'),
(4717, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Login', '2018-09-07 01:40:21'),
(4718, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 01:40:21'),
(4719, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 01:41:54'),
(4720, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 01:42:00'),
(4721, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 01:51:59'),
(4722, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 01:53:09'),
(4723, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 01:53:26'),
(4724, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 01:54:30'),
(4725, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 01:56:36'),
(4726, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 01:57:16'),
(4727, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 01:57:29');
INSERT INTO `tbl_logs` (`log_id`, `log_user`, `log_usertype`, `log_userID`, `log_action`, `log_date`) VALUES
(4728, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 01:57:40'),
(4729, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 01:57:54'),
(4730, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 02:01:43'),
(4731, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:01:46'),
(4732, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:04:02'),
(4733, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:04:51'),
(4734, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:05:50'),
(4735, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:06:12'),
(4736, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:11:25'),
(4737, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:12:09'),
(4738, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:12:28'),
(4739, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:17:41'),
(4740, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:18:51'),
(4741, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:19:08'),
(4742, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:19:23'),
(4743, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:19:31'),
(4744, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:19:53'),
(4745, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:20:07'),
(4746, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:20:17'),
(4747, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:20:35'),
(4748, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:20:51'),
(4749, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:20:58'),
(4750, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:23:09'),
(4751, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:23:10'),
(4752, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:23:32'),
(4753, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:23:57'),
(4754, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:25:19'),
(4755, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:25:55'),
(4756, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:28:10'),
(4757, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:28:13'),
(4758, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:29:04'),
(4759, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:29:16'),
(4760, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 02:33:58'),
(4761, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 02:34:11'),
(4762, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-07 02:34:19'),
(4763, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-07 02:34:19'),
(4764, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 02:34:22'),
(4765, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 02:34:56'),
(4766, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:35:02'),
(4767, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:35:19'),
(4768, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 02:39:05'),
(4769, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 02:39:08'),
(4770, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-07 02:39:15'),
(4771, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-07 02:39:15'),
(4772, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 02:39:22'),
(4773, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 02:39:44'),
(4774, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:39:48'),
(4775, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:40:23'),
(4776, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:40:30'),
(4777, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 02:49:51'),
(4778, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-07 02:50:01'),
(4779, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-07 02:50:01'),
(4780, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 02:50:07'),
(4781, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 02:50:25'),
(4782, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 02:50:45'),
(4783, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 02:51:40'),
(4784, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 02:51:56'),
(4785, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 02:52:01'),
(4786, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:52:06'),
(4787, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 02:52:32'),
(4788, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 02:57:07'),
(4789, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 02:57:45'),
(4790, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 02:58:27'),
(4791, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 02:59:06'),
(4792, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 02:59:33'),
(4793, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:00:25'),
(4794, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:00:43'),
(4795, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:02:10'),
(4796, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:04:38'),
(4797, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:05:33'),
(4798, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:06:02'),
(4799, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:06:14'),
(4800, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:06:57'),
(4801, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:07:18'),
(4802, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:10:11'),
(4803, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:10:28'),
(4804, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:10:47'),
(4805, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:12:51'),
(4806, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:12:59'),
(4807, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:14:53'),
(4808, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:33:00'),
(4809, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:33:32'),
(4810, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:33:54'),
(4811, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:34:17'),
(4812, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:34:21'),
(4813, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:34:41'),
(4814, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:35:32'),
(4815, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:36:06'),
(4816, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:36:28'),
(4817, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:36:36'),
(4818, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:46:46'),
(4819, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:47:29'),
(4820, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:49:03'),
(4821, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 03:50:33'),
(4822, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 03:50:49'),
(4823, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 03:50:51'),
(4824, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 03:50:53'),
(4825, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 03:51:11'),
(4826, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 03:51:19'),
(4827, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-07 03:51:35'),
(4828, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-07 03:51:35'),
(4829, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 03:51:38'),
(4830, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-07 03:51:48'),
(4831, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-07 03:51:48'),
(4832, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 03:51:51'),
(4833, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 03:52:14'),
(4834, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 04:05:42'),
(4835, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 04:06:14'),
(4836, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 04:06:17'),
(4837, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 04:06:18'),
(4838, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 04:08:29'),
(4839, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 04:08:43'),
(4840, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 04:15:35'),
(4841, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 04:15:40'),
(4842, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 04:18:12'),
(4843, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 04:18:15'),
(4844, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 04:18:49'),
(4845, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 04:23:32'),
(4846, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 04:27:41'),
(4847, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 04:29:11'),
(4848, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 04:32:44'),
(4849, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 04:36:25'),
(4850, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 04:36:35'),
(4851, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 04:36:55'),
(4852, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 04:36:57'),
(4853, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 04:37:02'),
(4854, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 04:37:34'),
(4855, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-09-07 04:37:46'),
(4856, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-09-07 04:37:51'),
(4857, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-09-07 04:38:13'),
(4858, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Logout', '2018-09-07 04:38:19'),
(4859, 'Ivan  Stranger Strange', 'Veterinarian', 'V1809011155197', 'User Login', '2018-09-07 04:38:24'),
(4860, 'Ivan  Stranger Strange', 'Veterinarian', 'V1809011155197', 'View Appointments', '2018-09-07 04:38:24'),
(4861, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 04:38:36'),
(4862, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 04:38:56'),
(4863, 'Ivan  Stranger Strange', 'Veterinarian', 'V1809011155197', 'View Appointments', '2018-09-07 04:38:58'),
(4864, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 04:39:00'),
(4865, 'Ivan  Stranger Strange', 'Veterinarian', 'V1809011155197', 'View Appointments', '2018-09-07 04:39:02'),
(4866, 'Ivan  Stranger Strange', 'Veterinarian', 'V1809011155197', 'View Appointments', '2018-09-07 04:39:51'),
(4867, 'Ivan  Stranger Strange', 'Veterinarian', 'V1809011155197', 'View Appointments', '2018-09-07 04:39:56'),
(4868, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 04:47:18'),
(4869, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 04:48:26'),
(4870, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 04:49:51'),
(4871, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 04:52:39'),
(4872, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-09-07 04:55:41'),
(4873, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-09-07 04:56:00'),
(4874, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 04:56:00'),
(4875, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 04:59:18'),
(4876, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 04:59:31'),
(4877, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-07 05:00:05'),
(4878, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-07 05:00:05'),
(4879, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 05:00:07'),
(4880, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 05:00:52'),
(4881, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 05:01:08'),
(4882, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 05:01:10'),
(4883, 'Ivan  Stranger Strange', 'Veterinarian', 'V1809011155197', 'View Appointments', '2018-09-07 05:01:14'),
(4884, 'Ivan  Stranger Strange', 'Veterinarian', 'V1809011155197', 'View Appointments', '2018-09-07 05:01:18'),
(4885, 'Ivan  Stranger Strange', 'Veterinarian', 'V1809011155197', 'View Appointments', '2018-09-07 05:01:20'),
(4886, 'Ivan  Stranger Strange', 'Veterinarian', 'V1809011155197', 'View Appointments', '2018-09-07 05:01:52'),
(4887, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 05:02:10'),
(4888, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 05:02:12'),
(4889, 'Ivan  Stranger Strange', 'Veterinarian', 'V1809011155197', 'View Appointments', '2018-09-07 05:02:15'),
(4890, 'Ivan  Stranger Strange', 'Veterinarian', 'V1809011155197', 'View Appointments', '2018-09-07 05:02:28'),
(4891, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 05:02:32'),
(4892, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 05:04:32'),
(4893, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 05:04:54'),
(4894, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-09-07 05:05:23'),
(4895, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-09-07 05:05:26'),
(4896, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-09-07 05:05:30'),
(4897, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-09-07 05:05:32'),
(4898, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-09-07 05:05:37'),
(4899, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-09-07 05:05:54'),
(4900, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 05:05:57'),
(4901, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-07 05:06:07'),
(4902, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-07 05:06:07'),
(4903, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 05:06:15'),
(4904, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 05:06:30'),
(4905, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 05:06:32'),
(4906, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-07 05:06:45'),
(4907, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Login', '2018-09-07 19:05:15'),
(4908, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-07 19:05:15'),
(4909, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-07 19:05:17'),
(4910, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Login', '2018-09-07 19:05:46'),
(4911, 'Lee Min Horse', 'Customer', 'C1808211035448', 'Send Appointment Request', '2018-09-07 19:06:01'),
(4912, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-07 19:06:05'),
(4913, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Logout', '2018-09-07 19:09:17'),
(4914, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-09-07 19:09:26'),
(4915, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 19:09:26'),
(4916, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 19:09:28'),
(4917, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Logout', '2018-09-07 19:14:57'),
(4918, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Login', '2018-09-07 19:16:50'),
(4919, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 19:16:51'),
(4920, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 19:17:16'),
(4921, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 19:21:58'),
(4922, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Login', '2018-09-07 19:22:20'),
(4923, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 19:22:20'),
(4924, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Products List (Medicines)', '2018-09-07 19:24:08'),
(4925, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-09-07 19:48:32'),
(4926, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Login', '2018-09-07 19:48:38'),
(4927, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-07 19:48:38'),
(4928, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-07 19:48:42'),
(4929, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-07 19:53:19'),
(4930, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-07 19:53:31'),
(4931, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-07 19:53:44'),
(4932, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-07 19:55:53'),
(4933, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-07 19:56:05'),
(4934, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Logout', '2018-09-07 19:56:09'),
(4935, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Login', '2018-09-07 19:56:22'),
(4936, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-07 19:56:22'),
(4937, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-07 19:56:24'),
(4938, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-09-07 19:57:01'),
(4939, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 19:57:01'),
(4940, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-07 19:58:28'),
(4941, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-07 19:58:55'),
(4942, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-07 19:59:05'),
(4943, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-09-07 19:59:11'),
(4944, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Login', '2018-09-07 19:59:14'),
(4945, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 19:59:15'),
(4946, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Logout', '2018-09-07 20:11:50'),
(4947, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-09-07 20:11:55'),
(4948, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 20:11:55'),
(4949, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 20:21:28'),
(4950, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 20:21:48'),
(4951, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 20:36:45'),
(4952, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-07 20:37:25'),
(4953, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 20:37:30'),
(4954, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 20:42:57'),
(4955, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 20:43:13'),
(4956, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-07 20:43:49'),
(4957, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-07 21:08:30'),
(4958, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Products List (Medicines)', '2018-09-07 21:45:19'),
(4959, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-07 21:55:40'),
(4960, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-07 21:56:11'),
(4961, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-09-07 21:56:35'),
(4962, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Logout', '2018-09-07 21:58:31'),
(4963, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-09-07 22:03:59'),
(4964, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-07 22:04:00'),
(4965, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-09-07 22:04:02'),
(4966, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-09-07 22:04:07'),
(4967, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-09-07 22:04:23'),
(4968, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-09-07 22:05:18'),
(4969, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-09-07 22:07:42'),
(4970, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-09-07 22:07:47'),
(4971, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-09-07 22:08:12'),
(4972, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-09-07 22:08:58'),
(4973, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-09-07 22:09:01'),
(4974, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-09-07 22:09:47'),
(4975, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-09-07 22:10:00'),
(4976, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-09-07 22:10:35'),
(4977, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-09-07 22:10:37'),
(4978, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-09-07 22:10:42'),
(4979, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-09-07 22:10:51'),
(4980, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update status of Veterinarian V1808211104221 to Inactive', '2018-09-07 22:10:54'),
(4981, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-09-07 22:10:57'),
(4982, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-09-07 22:11:09'),
(4983, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-09-07 22:11:18'),
(4984, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff List', '2018-09-07 22:18:10'),
(4985, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add new Staff', '2018-09-07 22:19:26'),
(4986, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff List', '2018-09-07 22:19:26'),
(4987, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update status of Staff S1808221221365 to Inactive', '2018-09-07 22:19:59'),
(4988, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff List', '2018-09-07 22:20:01'),
(4989, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update status of Staff S1808221221365 to Active', '2018-09-07 22:20:13'),
(4990, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff List', '2018-09-07 22:20:15'),
(4991, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff Details', '2018-09-07 22:20:17'),
(4992, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-07 22:28:11'),
(4993, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Edit Store Information', '2018-09-07 22:28:43'),
(4994, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-07 22:28:45'),
(4995, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-07 23:38:30'),
(4996, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-07 23:38:42'),
(4997, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-07 23:38:47'),
(4998, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-07 23:40:37'),
(4999, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-07 23:41:18'),
(5000, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-07 23:41:42'),
(5001, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-07 23:42:09'),
(5002, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-07 23:42:25'),
(5003, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-07 23:43:57'),
(5004, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-07 23:45:11'),
(5005, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-07 23:45:19'),
(5006, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-07 23:53:20'),
(5007, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-07 23:53:26'),
(5008, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-07 23:56:30'),
(5009, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-07 23:56:36'),
(5010, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-07 23:57:40'),
(5011, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-07 23:57:55'),
(5012, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-07 23:58:44'),
(5013, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-07 23:59:02'),
(5014, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-07 23:59:54'),
(5015, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:01:32'),
(5016, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:01:49'),
(5017, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:02:01'),
(5018, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:02:38'),
(5019, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:02:51'),
(5020, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:04:35'),
(5021, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:04:59'),
(5022, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:06:23'),
(5023, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:06:45'),
(5024, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:07:16'),
(5025, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:07:21'),
(5026, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:07:27'),
(5027, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:07:31'),
(5028, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:08:21'),
(5029, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:08:41'),
(5030, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:08:51'),
(5031, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:10:11'),
(5032, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:11:17'),
(5033, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:11:20'),
(5034, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:18:55'),
(5035, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:24:31'),
(5036, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:24:46'),
(5037, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:25:33'),
(5038, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:26:04'),
(5039, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:26:08'),
(5040, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:26:19'),
(5041, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:26:22'),
(5042, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:26:26'),
(5043, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:26:31'),
(5044, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:27:48'),
(5045, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:28:03'),
(5046, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:29:27'),
(5047, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:29:40'),
(5048, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:30:22'),
(5049, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:31:04'),
(5050, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:40:48'),
(5051, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:41:47'),
(5052, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 00:43:13'),
(5053, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-09-08 00:44:09'),
(5054, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update  Pet Service Details', '2018-09-08 00:45:59'),
(5055, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-09-08 00:46:01'),
(5056, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update  Pet Service Details', '2018-09-08 00:54:11'),
(5057, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-09-08 00:54:13'),
(5058, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-09-08 00:54:20'),
(5059, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-09-08 00:54:29'),
(5060, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Login', '2018-09-08 00:58:06'),
(5061, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 00:58:06'),
(5062, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add new Pet Service', '2018-09-08 00:58:35'),
(5063, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-09-08 00:58:37'),
(5064, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update  Pet Service Details', '2018-09-08 00:59:48'),
(5065, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-09-08 00:59:50'),
(5066, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 01:00:03'),
(5067, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-09-08 01:00:04'),
(5068, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View POS', '2018-09-08 01:00:16'),
(5069, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 01:00:18'),
(5070, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 01:00:30'),
(5071, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-08 01:00:48'),
(5072, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-08 01:00:48'),
(5073, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 01:00:51'),
(5074, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-08 01:00:58'),
(5075, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-08 01:00:59'),
(5076, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 01:01:04'),
(5077, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-09-08 01:02:13'),
(5078, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-09-08 01:02:16'),
(5079, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-09-08 01:02:21'),
(5080, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-09-08 01:02:23'),
(5081, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-09-08 01:02:31'),
(5082, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update  Pet Service Details', '2018-09-08 01:03:21'),
(5083, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-09-08 01:03:23'),
(5084, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-09-08 01:04:03'),
(5085, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Type List', '2018-09-08 01:04:12'),
(5086, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Change Status of  Pet type  Dinosaur to Inactive', '2018-09-08 01:04:15'),
(5087, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Type List', '2018-09-08 01:04:18'),
(5088, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-09-08 01:04:19'),
(5089, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update  Pet Service Details', '2018-09-08 01:07:37'),
(5090, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-09-08 01:07:40'),
(5091, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update  Pet Service Details', '2018-09-08 01:16:49'),
(5092, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-09-08 01:16:52'),
(5093, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-09-08 01:29:27'),
(5094, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-08 01:29:31'),
(5095, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-08 01:30:06'),
(5096, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-08 01:30:36'),
(5097, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-08 01:31:48'),
(5098, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-09-08 01:36:10'),
(5099, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Inventory', '2018-09-08 01:36:14'),
(5100, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 01:36:29'),
(5101, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-09-08 01:53:52'),
(5102, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-09-08 01:53:53'),
(5103, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Logout', '2018-09-08 01:53:59'),
(5104, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Login', '2018-09-08 01:54:20'),
(5105, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View My Pets Section', '2018-09-08 01:54:22'),
(5106, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View Pet details', '2018-09-08 01:54:31'),
(5107, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Login', '2018-09-08 13:58:27'),
(5108, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 13:58:27'),
(5109, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 13:58:32'),
(5110, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 13:59:07'),
(5111, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 13:59:10'),
(5112, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Login', '2018-09-08 13:59:18'),
(5113, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 13:59:18'),
(5114, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-09-08 14:06:06'),
(5115, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-09-08 14:06:08'),
(5116, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet details', '2018-09-08 14:06:17'),
(5117, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 14:06:21'),
(5118, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 14:06:41'),
(5119, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-09-08 14:06:56'),
(5120, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Products List (Medicines)', '2018-09-08 14:18:57'),
(5121, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-09-08 15:24:41'),
(5122, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-09-08 15:24:43'),
(5123, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-09-08 15:25:04'),
(5124, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Update status of Customer C1809080325043 to Inactive', '2018-09-08 15:36:16'),
(5125, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-09-08 15:36:18'),
(5126, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-09-08 15:36:32'),
(5127, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-09-08 15:36:51'),
(5128, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Update status of Customer C1809080336511 to Active', '2018-09-08 15:36:54'),
(5129, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-09-08 15:36:56'),
(5130, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-09-08 15:37:00'),
(5131, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-09-08 15:37:08'),
(5132, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-09-08 15:38:13'),
(5133, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Update status of Customer C1809080338138 to Inactive', '2018-09-08 15:38:15'),
(5134, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-09-08 15:38:17'),
(5135, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-09-08 15:38:18'),
(5136, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Update status of Customer C1809080338186 to Active', '2018-09-08 15:38:19'),
(5137, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-09-08 15:38:21'),
(5138, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-09-08 15:38:44'),
(5139, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-09-08 15:39:18'),
(5140, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-09-08 15:39:39'),
(5141, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-08 15:39:39'),
(5142, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-09-08 15:39:43'),
(5143, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update status of Veterinarian V1809011155197 to Inactive', '2018-09-08 15:39:46'),
(5144, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-09-08 15:39:48'),
(5145, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update status of Veterinarian V1809011155197 to Active', '2018-09-08 15:39:49'),
(5146, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-09-08 15:39:50'),
(5147, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update status of Customer C1809080339504 to Inactive', '2018-09-08 15:39:53'),
(5148, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-09-08 15:39:55'),
(5149, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-09-08 15:41:35'),
(5150, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update status of Customer C1809080341366 to Active', '2018-09-08 15:41:54'),
(5151, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-09-08 15:41:56'),
(5152, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update status of Customer C1809080341561 to Inactive', '2018-09-08 15:41:58'),
(5153, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-09-08 15:42:00');
INSERT INTO `tbl_logs` (`log_id`, `log_user`, `log_usertype`, `log_userID`, `log_action`, `log_date`) VALUES
(5154, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-09-08 15:45:26'),
(5155, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-08 15:45:26'),
(5156, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Admin list', '2018-09-08 15:45:30'),
(5157, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-09-08 15:45:33'),
(5158, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff List', '2018-09-08 15:45:40'),
(5159, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-09-08 15:45:41'),
(5160, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update status of Customer C1809080345421 to Active', '2018-09-08 15:45:47'),
(5161, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-09-08 15:45:49'),
(5162, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update status of Customer C1809080345491 to Inactive', '2018-09-08 15:45:51'),
(5163, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-09-08 15:45:53'),
(5164, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-09-08 15:46:00'),
(5165, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update  Pet Service Details', '2018-09-08 15:46:27'),
(5166, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-09-08 15:46:29'),
(5167, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update  Pet Service Details', '2018-09-08 15:46:41'),
(5168, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-09-08 15:46:43'),
(5169, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update  Pet Service Details', '2018-09-08 15:46:50'),
(5170, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-09-08 15:46:52'),
(5171, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update  Pet Service Details', '2018-09-08 16:01:47'),
(5172, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-09-08 16:01:49'),
(5173, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Update  Pet Service Details', '2018-09-08 16:02:02'),
(5174, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-09-08 16:02:05'),
(5175, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-09-08 16:02:54'),
(5176, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 16:03:00'),
(5177, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 16:04:46'),
(5178, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-09-08 16:04:48'),
(5179, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 16:05:18'),
(5180, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Logout', '2018-09-08 16:05:24'),
(5181, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Login', '2018-09-08 16:06:48'),
(5182, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View My Pets Section', '2018-09-08 16:06:51'),
(5183, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View My Pets Section', '2018-09-08 16:07:52'),
(5184, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View Pet details', '2018-09-08 16:07:54'),
(5185, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Logout', '2018-09-08 16:08:55'),
(5186, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Login', '2018-09-08 16:09:02'),
(5187, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 16:09:02'),
(5188, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet List', '2018-09-08 16:09:04'),
(5189, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-09-08 16:09:07'),
(5190, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Update status of Customer C1809080409077 to Inactive', '2018-09-08 16:09:10'),
(5191, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-09-08 16:09:12'),
(5192, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Update status of Customer C1809080409122 to Active', '2018-09-08 16:09:14'),
(5193, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Update status of Customer C1809080409122 to Active', '2018-09-08 16:09:15'),
(5194, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-09-08 16:09:16'),
(5195, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-09-08 16:09:17'),
(5196, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet details', '2018-09-08 16:09:20'),
(5197, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-09-08 16:09:24'),
(5198, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 16:09:47'),
(5199, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 16:10:48'),
(5200, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Handle POS', '2018-09-08 16:11:01'),
(5201, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 16:11:01'),
(5202, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 16:12:03'),
(5203, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 16:12:05'),
(5204, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Medicines)', '2018-09-08 16:12:15'),
(5205, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Products List (Medicines)', '2018-09-08 16:12:24'),
(5206, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 16:12:28'),
(5207, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 16:12:33'),
(5208, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Handle POS', '2018-09-08 16:12:44'),
(5209, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 16:12:44'),
(5210, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 16:13:18'),
(5211, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Handle POS', '2018-09-08 16:13:36'),
(5212, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 16:13:36'),
(5213, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-09-08 16:13:45'),
(5214, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Login', '2018-09-08 16:14:00'),
(5215, 'Lee Min Horse', 'Customer', 'C1808211035448', 'View My Pets Section', '2018-09-08 16:14:18'),
(5216, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 16:15:24'),
(5217, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Logout', '2018-09-08 16:21:49'),
(5218, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-09-08 16:21:53'),
(5219, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-08 16:21:53'),
(5220, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 16:21:56'),
(5221, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 16:23:55'),
(5222, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 16:24:50'),
(5223, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 16:28:34'),
(5224, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Edit Store Information', '2018-09-08 16:28:39'),
(5225, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Settings', '2018-09-08 16:28:41'),
(5226, 'Lee Min Horse', 'Customer', 'C1808211035448', 'User Logout', '2018-09-08 16:33:30'),
(5227, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Login', '2018-09-08 16:33:49'),
(5228, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 16:33:49'),
(5229, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 16:41:58'),
(5230, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 16:42:08'),
(5231, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 16:47:56'),
(5232, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-08 16:48:09'),
(5233, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-08 16:48:09'),
(5234, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 16:48:18'),
(5235, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 16:49:17'),
(5236, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 16:49:21'),
(5237, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 16:49:48'),
(5238, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Login', '2018-09-08 16:50:03'),
(5239, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 16:50:03'),
(5240, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-09-08 16:50:15'),
(5241, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-09-08 16:50:17'),
(5242, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Logout', '2018-09-08 16:50:25'),
(5243, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-09-08 16:50:44'),
(5244, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-08 16:50:44'),
(5245, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-09-08 16:50:48'),
(5246, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-09-08 16:50:51'),
(5247, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-09-08 16:50:58'),
(5248, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 16:51:28'),
(5249, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 16:51:53'),
(5250, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-09-08 16:52:01'),
(5251, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Login', '2018-09-08 16:52:06'),
(5252, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 16:52:06'),
(5253, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 16:53:11'),
(5254, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 16:53:14'),
(5255, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 17:15:26'),
(5256, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 17:16:31'),
(5257, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 17:17:34'),
(5258, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 17:18:01'),
(5259, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 17:19:29'),
(5260, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 17:19:53'),
(5261, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-08 17:20:04'),
(5262, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-08 17:20:05'),
(5263, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 17:22:09'),
(5264, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 17:23:06'),
(5265, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 17:26:12'),
(5266, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 17:26:18'),
(5267, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 17:26:20'),
(5268, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 17:26:34'),
(5269, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 17:26:36'),
(5270, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 17:38:13'),
(5271, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 17:38:39'),
(5272, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 17:39:27'),
(5273, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 17:40:28'),
(5274, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 17:46:14'),
(5275, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-08 17:46:21'),
(5276, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Print Appointment Detail', '2018-09-08 17:46:21'),
(5277, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 17:47:17'),
(5278, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 17:52:59'),
(5279, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-09-08 17:53:12'),
(5280, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-08 17:53:13'),
(5281, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 17:53:15'),
(5282, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Products List (Medicines)', '2018-09-08 17:57:43'),
(5283, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Products List (Medicines)', '2018-09-08 18:00:14'),
(5284, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-09-08 18:04:48'),
(5285, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Login', '2018-09-08 18:04:53'),
(5286, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 18:04:53'),
(5287, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 18:04:55'),
(5288, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 18:15:20'),
(5289, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 18:16:22'),
(5290, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 18:16:34'),
(5291, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 18:16:37'),
(5292, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 18:21:21'),
(5293, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 18:21:38'),
(5294, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 18:21:46'),
(5295, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 18:22:14'),
(5296, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Print Appointment Detail', '2018-09-08 18:23:14'),
(5297, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Print Appointment Detail', '2018-09-08 18:23:14'),
(5298, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 18:23:30'),
(5299, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 18:24:11'),
(5300, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 18:24:32'),
(5301, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 18:24:34'),
(5302, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 18:24:38'),
(5303, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 18:24:54'),
(5304, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 18:25:07'),
(5305, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Print Appointment Detail', '2018-09-08 18:27:04'),
(5306, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Print Appointment Detail', '2018-09-08 18:27:04'),
(5307, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 18:27:06'),
(5308, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Print Appointment Detail', '2018-09-08 18:29:27'),
(5309, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Print Appointment Detail', '2018-09-08 18:29:27'),
(5310, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-09-08 18:38:55'),
(5311, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet List', '2018-09-08 18:38:57'),
(5312, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer list', '2018-09-08 18:39:06'),
(5313, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-09-08 18:39:09'),
(5314, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Customer details', '2018-09-08 18:40:16'),
(5315, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Logout', '2018-09-08 18:40:22'),
(5316, 'Chester Min King', 'Customer', 'C1808211035448', 'User Login', '2018-09-08 18:40:28'),
(5317, 'Chester Min King', 'Customer', 'C1808211035448', 'View My Pets Section', '2018-09-08 18:40:33'),
(5318, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Logout', '2018-09-08 18:40:59'),
(5319, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-09-08 18:41:04'),
(5320, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-08 18:41:04'),
(5321, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-09-08 18:41:08'),
(5322, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer details', '2018-09-08 18:41:12'),
(5323, 'Chester Min King', 'Customer', 'C1808211035448', 'View My Pets Section', '2018-09-08 18:43:13'),
(5324, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer details', '2018-09-08 18:43:15'),
(5325, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-09-08 18:43:20'),
(5326, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer details', '2018-09-08 18:43:23'),
(5327, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Add New Pet', '2018-09-08 18:44:09'),
(5328, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer details', '2018-09-08 18:44:11'),
(5329, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Staff List', '2018-09-08 18:44:16'),
(5330, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-09-08 18:44:20'),
(5331, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-09-08 18:44:22'),
(5332, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian list', '2018-09-08 18:44:26'),
(5333, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-09-08 18:44:28'),
(5334, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Veterinarian details', '2018-09-08 18:45:07'),
(5335, 'Chester Min King', 'Customer', 'C1808211035448', 'View My Pets Section', '2018-09-08 18:46:25'),
(5336, 'Chester Min King', 'Customer', 'C1808211035448', 'View Pet details', '2018-09-08 18:46:27'),
(5337, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-09-08 18:47:56'),
(5338, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Breed List', '2018-09-08 18:47:58'),
(5339, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Type List', '2018-09-08 18:48:10'),
(5340, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Breed List', '2018-09-08 18:48:25'),
(5341, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-09-08 18:48:30'),
(5342, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Type List', '2018-09-08 18:48:37'),
(5343, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Breed List', '2018-09-08 18:48:43'),
(5344, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-09-08 18:50:13'),
(5345, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet details', '2018-09-08 18:50:16'),
(5346, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-08 18:50:18'),
(5347, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Customer list', '2018-09-08 18:50:26'),
(5348, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-09-08 18:50:52'),
(5349, 'Chester Min King', 'Customer', 'C1808211035448', 'User Logout', '2018-09-08 19:24:11'),
(5350, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'User Login', '2018-09-08 19:24:15'),
(5351, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 19:24:15'),
(5352, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Products List (Medicines)', '2018-09-08 19:24:18'),
(5353, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 19:24:19'),
(5354, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-09-08 19:24:20'),
(5355, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 19:27:36'),
(5356, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 19:28:31'),
(5357, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-09-08 19:28:33'),
(5358, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-09-08 19:30:38'),
(5359, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-09-08 19:30:45'),
(5360, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 19:33:25'),
(5361, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 20:03:16'),
(5362, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-09-08 20:03:18'),
(5363, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-09-08 20:03:51'),
(5364, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-09-08 20:04:09'),
(5365, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 20:13:52'),
(5366, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 20:14:04'),
(5367, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 20:14:06'),
(5368, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-09-08 20:14:09'),
(5369, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 20:14:10'),
(5370, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-09-08 20:14:42'),
(5371, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'Change Status of  service Vaccination for Adult Dogs to Inactive', '2018-09-08 20:14:46'),
(5372, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Services', '2018-09-08 20:14:48'),
(5373, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 20:14:49'),
(5374, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 20:21:17'),
(5375, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Clinic Services', '2018-09-08 20:21:21'),
(5376, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 20:21:32'),
(5377, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 20:21:49'),
(5378, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Clinic Services', '2018-09-08 20:21:53'),
(5379, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Clinic Services', '2018-09-08 20:22:44'),
(5380, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Clinic Services', '2018-09-08 20:23:37'),
(5381, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Clinic Services', '2018-09-08 20:23:43'),
(5382, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Products List (Medicines)', '2018-09-08 20:23:48'),
(5383, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 20:23:51'),
(5384, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 20:23:54'),
(5385, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 20:23:59'),
(5386, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-09-08 20:24:00'),
(5387, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-09-08 20:25:06'),
(5388, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 20:26:47'),
(5389, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 20:28:15'),
(5390, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Todays Appointment', '2018-09-08 20:28:21'),
(5391, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-09-08 20:28:31'),
(5392, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Login', '2018-09-08 20:28:42'),
(5393, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 20:28:42'),
(5394, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 20:28:46'),
(5395, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Print Appointment Detail', '2018-09-08 20:28:53'),
(5396, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'Print Appointment Detail', '2018-09-08 20:28:53'),
(5397, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 20:36:23'),
(5398, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 20:36:46'),
(5399, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Pet details', '2018-09-08 20:36:48'),
(5400, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Products List (Medicines)', '2018-09-08 20:37:38'),
(5401, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Clinic Services', '2018-09-08 20:37:39'),
(5402, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Products List (Medicines)', '2018-09-08 20:37:42'),
(5403, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'Pull Out 1 Dentasticks', '2018-09-08 20:37:45'),
(5404, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Products List (Medicines)', '2018-09-08 20:37:45'),
(5405, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 20:45:01'),
(5406, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 20:45:05'),
(5407, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 20:45:07'),
(5408, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 20:51:04'),
(5409, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 20:51:07'),
(5410, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 20:51:09'),
(5411, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'Assess Helen', '2018-09-08 20:51:31'),
(5412, 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 'View Appointments', '2018-09-08 20:51:31'),
(5413, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Logout', '2018-09-08 20:51:37'),
(5414, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Login', '2018-09-08 20:51:41'),
(5415, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Dashboard', '2018-09-08 20:51:41'),
(5416, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View logs', '2018-09-08 20:51:43'),
(5417, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet List', '2018-09-08 20:55:08'),
(5418, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet details', '2018-09-08 20:55:10'),
(5419, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'User Logout', '2018-09-08 21:01:12'),
(5420, 'Chester Min King', 'Customer', 'C1808211035448', 'User Login', '2018-09-08 21:01:27'),
(5421, 'Chester Min King', 'Customer', 'C1808211035448', 'View My Pets Section', '2018-09-08 21:01:30'),
(5422, 'Chester Min King', 'Customer', 'C1808211035448', 'View Pet details', '2018-09-08 21:01:32'),
(5423, 'Chester Min King', 'Customer', 'C1808211035448', 'View Pet details', '2018-09-08 21:02:27'),
(5424, 'Chester Min King', 'Customer', 'C1808211035448', 'User Logout', '2018-09-08 21:19:40'),
(5425, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'User Login', '2018-09-08 21:19:47'),
(5426, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View POS', '2018-09-08 21:19:48'),
(5427, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet List', '2018-09-08 21:20:28'),
(5428, 'kirra May Ballesteros', 'Staff', 'S1808221221365', 'View Pet details', '2018-09-08 21:20:29');

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
(20, 1, 'dog', 'Labrador Retriever', '<p>\r\n\r\nThe Labrador Retriever, or just Labrador, is a type of retriever-gun dog. The Labrador is one of the most popular breeds of dog in Canada, the United Kingdom and the United States\r\n\r\n<br></p><p><br></p><p>Life span :<small>&nbsp;\r\n\r\n10 – 14 years\r\n\r\n</small></p>', '');

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
(31, 'P1809080643234', 'Helen', 7, 1, 18, '2017-05-12', '2018-09-08 18:44:09', 'Female', 'German_shephard11142.jpg');

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
(3, 'dinosaur', 'Dinosaur', 'Inactive'),
(4, 'horse', 'Horse', 'Inactive'),
(5, 'birds', 'Birds', 'Active');

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
  `created_by` text NOT NULL,
  `user_type` varchar(45) NOT NULL,
  `user_id` text NOT NULL,
  `user_table_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pet_library`
--

INSERT INTO `tbl_pet_library` (`library_id`, `title`, `content`, `article_image`, `article_status`, `created_by`, `user_type`, `user_id`, `user_table_id`, `date_created`) VALUES
(58, 'Kennel Cough', '      A dog with kennel cough. Graphic by Mar', 'kennel.gif', 'Active', 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 8, '2018-09-06 15:13:58'),
(59, 'Anaplasmosis', 'A dog can have both infections at the same ti', 'anaplasmosis.jpg', 'Active', 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 8, '2018-09-06 15:43:21'),
(60, 'Ehrlichia ', 'Ehrlichia, named for the Dr. Ehrlich who firs', 'German_shephard11141.jpg', 'Active', 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 1, '2018-09-06 15:47:14'),
(61, 'Colitis', '', 'pusa.jpg', 'Active', 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 1, '2018-09-06 18:08:35');

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
(56, 58, '<p>\r\n\r\n<a href=\"https://veterinarypartner.vin.com/vetzinsight/default.aspx?pid=756&amp;catId=5860&amp;Id=8115910\" target=\"_blank\" rel=\"nofollow\">Kennel cough</a>&nbsp;is an infectious bronchitis of dogs characterized by a harsh, hacking cough that most people describe as sounding like “something stuck in my dog’s throat.” This bronchitis may be of brief duration and mild enough to warrant no treatment at all or it may progress all the way to a life-threatening pneumonia depending on which infectious agents are involved and the immunological strength of the patient. An uncomplicated kennel cough runs a course of a week or two and entails frequent fits of coughing in a patient who otherwise feels active and normal. Uncomplicated cases do not involve fever or listlessness, just lots of coughing.\r\n\r\n<br></p>'),
(57, 58, '<p>\r\n\r\nNumerous organisms may be involved in a case of kennel cough; it would be unusual for only one agent to be involved. Infections with the following organisms frequently occur concurrently to create a case of kennel cough:&nbsp;</p><p>\r\n\r\n</p><ul><li><em>Bordetella bronchiseptica</em>&nbsp;(bacteria)<a target=\"_blank\" rel=\"nofollow\" href=\"http://www.veterinarypartner.com/Content.plx?P=A&amp;S=0&amp;C=0&amp;A=1758\"></a></li><li>Parainfluenza virus</li><li>Adenovirus type 2</li><li>Canine distemper virus</li><li>Canine influenza virus</li><li>Canine herpesvirus (very young puppies)</li><li><em>Mycoplasma canis</em>&nbsp;(a single-cell organism that is neither virus nor bacterium)</li><li>Canine reovirus</li><li>Canine respiratory coronavirus.</li></ul>\r\n\r\n<br><p></p>'),
(58, 58, '<p>\r\n\r\n</p><p>How is Diagnosis Made?</p><p>A coughing dog that has a poor appetite, fever, and/or listlessness should be evaluated for pneumonia.</p><p>Usually the history of exposure to a crowd of dogs within the proper time frame, plus typical examination findings (coughing dog that otherwise feels well) is adequate to make the diagnosis. Radiographs show bronchitis and are particularly helpful in determining if there is a complicating pneumonia.</p><p>Recently, PCR (polymerase chain reaction) panels have become available in many reference laboratories. Using technology to amplify the presence of DNA in a swab, the lab is able to test for most of the kennel cough infectious agents listed. This knowledge is helpful in guiding therapy and understanding expectations.</p>\r\n\r\n<br><p></p>'),
(59, 59, 'A dog can have both infections at the same time. Granulocytic anaplasmosis is more common. Anaplasmosis is a tick-borne disease. Two forms of anaplasmosis are known: granulocytic anaplasmosis and infectious cyclic thrombocytopenia.\r\n\r\nTransmission is via a tick vector (a vector is an organism that can passively carry and transmit disease). A tick needs to be attached for a minimum of 24 hours to transmit the organism. Incubation time is about 1 to 2 weeks. Reservoir hosts (a source of infection and possible reinfection that sustains a parasite) are usually small rodents, deer, etc.'),
(60, 59, '<p>\r\n\r\n</p><p><strong>Diagnosis</strong></p><p>Blood tests and a urinalysis are the main diagnostic tools for anaplasmosis. The blood tests usually include a complete blood count, blood smear evaluation, biochemistry panel, serology to look for antibodies, and polymerase chain reaction (PCR) assays. If the dog is lame, radiographs and analysis of joint fluid are usually included.</p>\r\n\r\n<br><p></p>'),
(61, 59, '<p>\r\n\r\n</p><p><strong>Treatment</strong></p><p>Treatment includes antibiotics, pain relievers, and anti-inflammatory drugs.</p><p><a target=\"_blank\" rel=\"nofollow\" href=\"http://www.veterinarypartner.com/Content.plx?P=A&amp;S=0&amp;C=0&amp;A=642\">Doxycycline</a>&nbsp;is the most commonly used antibiotic. Most dogs respond within one to two days after they first take doxycycline. Other antibiotic options are tetracycline or minocycline.</p><p>Analgesia and anti-inflammatory drugs may be needed for joint pain. Let your veterinarian choose the anti-inflammatory, rather than choosing and dosing it yourself, because dogs metabolize these medicines differently than humans do. Your veterinarian will have the most appropriate medication.</p>\r\n\r\n<br><p></p>'),
(62, 60, 'Ehrlichia, named for the Dr. Ehrlich who first described them, are a type of bacteria that infect and live within the white blood cells of their hosts. Different types of Ehrlichia live in different types of white blood cells. Hosts can be human, pet, or wild animals. Ehrlichia are spread from host to host by tick bites and their intracellular location makes them difficult to remove as most antibiotics do not penetrate to the inside of cells.'),
(63, 66, 'dasdasd');

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
(33, 58, 'https://veterinarypartner.vin.com/default.aspx?pid=19239&id=4951478'),
(34, 59, 'https://veterinarypartner.vin.com/default.aspx?pid=19239&catId=102899&id=6191808&ind=11&objTypeID=1007'),
(35, 60, 'https://veterinarypartner.vin.com/default.aspx?pid=19239&id=4952341'),
(36, 66, 'dasd');

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
(18, '#Food1809060441458', 'Whiska ', '', '<p>Whiskas for Cats</p>', 'whiskas_2kg.jpg', '90.00', 'Royal Canin', '2018-09-29', '100.80', '2 (Kg) ', '2', 'Kg'),
(19, '#Food1809060445024', 'Meow Mix', '', '<p>for cats</p>', 'meow_mix.jpg', '122.00', 'Royal Canin', '2018-10-19', '136.64', '5 (Grams) ', '5', 'Grams');

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
(256, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', '', '2018-08-26 14:06:28', 1, '0000-00-00'),
(257, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'mika', '2018-08-27 15:14:11', 2, '0000-00-00'),
(258, 19, '#Item1808270316449', 'Dog mat', 'Item', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-27 15:17:38', 100, '0000-00-00'),
(259, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', 'walk in 1', '2018-08-29 09:47:26', 2, '0000-00-00'),
(260, 41, '#Item1808270316449', 'Dog mat', 'Item', 'Purchased Product', 'Customer(Walking)', 'walk in 1', '2018-08-29 09:47:26', 1, '0000-00-00'),
(261, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'walk in 1', '2018-08-29 09:47:26', 1, '0000-00-00'),
(262, 38, '#Food1808200141256', 'Dino Flakes', 'Food', 'Purchased Product', 'Customer(Walking)', 'walk in 1', '2018-08-29 09:47:26', 2, '0000-00-00'),
(263, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'ivans', '2018-08-29 09:49:03', 3, '0000-00-00'),
(264, 41, '#Item1808270316449', 'Dog mat', 'Item', 'Purchased Product', 'Customer(Walking)', 'ivans', '2018-08-29 09:49:03', 11, '0000-00-00'),
(265, 38, '#Food1808200141256', 'Dino Flakes', 'Food', 'Purchased Product', 'Customer(Walking)', 'ivans', '2018-08-29 09:49:03', 2, '0000-00-00'),
(266, 18, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Add Supply', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-29 10:47:13', 100, '0000-00-00'),
(267, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', '', '2018-08-29 10:47:48', 29, '0000-00-00'),
(268, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', '', '2018-08-29 10:48:10', 10, '0000-00-00'),
(269, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', 'ivans', '2018-08-29 10:48:28', 1, '0000-00-00'),
(270, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', '', '2018-08-29 10:48:48', 1, '0000-00-00'),
(271, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Member)', 'Kim Patrick V Verde', '2018-08-29 17:10:11', 1, '0000-00-00'),
(272, 41, '#Item1808270316449', 'Dog mat', 'Item', 'Purchased Product', 'Customer(Member)', 'Kim Patrick V Verde', '2018-08-29 17:10:11', 1, '0000-00-00'),
(273, 41, '#Item1808270316449', 'Dog mat', 'Item', 'Purchased Product', 'Customer(Walking)', 'asas', '2018-08-30 09:37:21', 1, '0000-00-00'),
(274, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', 'asas', '2018-08-30 09:37:21', 1, '0000-00-00'),
(275, 18, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Add Supply', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-30 09:39:15', 130, '0000-00-00'),
(276, 11, '#Food1808200141256', 'Dino Flakes', 'Food', 'Add Supply', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-31 00:27:16', 150, '2018-09-13'),
(277, 19, '#Item1808270316449', 'Dog mat', 'Item', 'Add Supply', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-31 00:30:31', 50, '0000-00-00'),
(278, 19, '#Item1808270316449', 'Dog mat', 'Item', 'Add Supply', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-31 00:30:38', 13, '0000-00-00'),
(279, 19, '#Item1808270316449', 'Dog mat', 'Item', 'Add Supply', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-31 00:30:41', 1, '0000-00-00'),
(280, 41, '#Item1808270316449', 'Dog mat', 'Item', 'Purchased Product', 'Customer(Walking)', 'sssss', '2018-08-31 00:31:14', 1, '0000-00-00'),
(281, 19, '#Item1808270316449', 'Dog mat', 'Item', 'Add Supply', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-31 00:34:10', 2, '0000-00-00'),
(282, 38, '#Food1808200141256', 'Dino Flakes', 'Food', 'Purchased Product', 'Customer(Walking)', 'ivan sdsd', '2018-08-31 00:38:08', 20, '0000-00-00'),
(283, 38, '#Food1808200141256', 'Dino Flakes', 'Food', 'Purchased Product', 'Customer(Member)', 'Lee Min Horse', '2018-08-31 00:38:39', 40, '0000-00-00'),
(284, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Member)', 'Lee Min Horse', '2018-08-31 00:38:39', 1, '0000-00-00'),
(285, 11, '#Food1808200141256', 'Dino Flakes', 'Food', 'Add Supply', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-31 00:40:02', 50, '2018-09-23'),
(286, 13, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Add Supply', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-31 00:40:31', 150, '2018-09-29'),
(287, 18, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Add Supply', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-31 01:00:31', 300, '0000-00-00'),
(288, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', 'sdsdhahhha', '2018-08-31 01:02:53', 401, '0000-00-00'),
(289, 12, '#Food1808310109572', 'Kingler Flakes', 'Food', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-08-31 01:11:06', 200, '2018-08-30'),
(290, 42, '#Food1808310109572', 'Kingler Flakes', 'Food', 'Purchased Product', 'Customer(Member)', 'Lee Min Horse', '2018-08-31 01:50:27', 1, '0000-00-00'),
(291, 38, '#Food1808200141256', 'Dino Flakes', 'Food', 'Purchased Product', 'Customer(Member)', 'Lee Min Horse', '2018-08-31 01:50:27', 1, '0000-00-00'),
(292, 41, '#Item1808270316449', 'Dog mat', 'Item', 'Purchased Product', 'Customer(Member)', 'Lee Min Horse', '2018-08-31 01:50:27', 1, '0000-00-00'),
(293, 13, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicines', 'Pull out product', 'Veterinarian', 'Carlos Almonds Valdez', '2018-08-31 02:00:37', 1, '0000-00-00'),
(294, 20, '#Item1809011118248', 'Cat Shampoos', 'Item', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-09-01 23:18:29', 42, '0000-00-00'),
(295, 21, '#Item1809011120158', 'sas', 'Item', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-09-01 23:20:31', 44, '0000-00-00'),
(296, 22, '#Item1809011120454', 'sass', 'Item', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-09-01 23:20:50', 44, '0000-00-00'),
(297, 23, '#Item1809011121300', 'sasss', 'Item', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-09-01 23:21:33', 44, '0000-00-00'),
(298, 21, '#Item1809011120158', 'sas', 'Item', 'Add Supply', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-09-01 23:54:54', 100, '0000-00-00'),
(299, 13, '#Food1809021205164', 'Dog Food with extra rice', 'Food', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-09-02 00:06:21', 123, '2018-09-28'),
(300, 14, '#Food1809021216354', 'Andys food', 'Food', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-09-02 00:17:25', 44, '2018-10-11'),
(301, 15, '#Food1809021235256', 'Spider food', 'Food', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-09-02 00:35:53', 33, '2018-09-28'),
(302, 45, '#Item1809011120454', 'sass', 'Item', 'Purchased Product', 'Customer(Walking)', 'wala', '2018-09-03 00:22:32', 1, '0000-00-00'),
(303, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', 'napadaan', '2018-09-03 12:02:38', 1, '0000-00-00'),
(304, 46, '#Item1809011121300', 'sasss', 'Item', 'Purchased Product', 'Customer(Walking)', 'napadaan', '2018-09-03 12:02:38', 1, '0000-00-00'),
(305, 13, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicines', 'Pull out product', 'Veterinarian', 'Carlos Almonds Valdez', '2018-09-03 12:23:05', 1, '0000-00-00'),
(306, 13, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Add Supply', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-09-04 20:05:46', 33, '2018-09-20'),
(307, 16, '#Food1809040943116', 'Nido', 'Food', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-09-04 21:44:35', 200, '2018-10-27'),
(308, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walking)', '', '2018-09-04 22:38:47', 1, '0000-00-00'),
(309, 46, '#Item1809011121300', 'sasss', 'Item', 'Purchased Product', 'Customer(Walking)', '', '2018-09-04 22:38:47', 5, '0000-00-00'),
(310, 46, '#Item1809011121300', 'sasss', 'Item', 'Purchased Product', 'Customer(Walkin)', 'ivan f', '2018-09-04 23:06:15', 1, '0000-00-00'),
(311, 40, '#Med1808200154179', 'Dino Capsule Evolution', 'Medicine', 'Purchased Product', 'Customer(Walkin)', 'ivan f', '2018-09-04 23:06:15', 1, '0000-00-00'),
(312, 45, '#Item1809011120454', 'sass', 'Item', 'Purchased Product', 'Customer(Walkin)', 'rizal', '2018-09-04 23:07:25', 1, '0000-00-00'),
(313, 17, '#Food1809051118317', 'ivan', 'Food', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-09-05 23:18:57', 33, '2018-09-28'),
(314, 14, '#Med1809060418233', 'dasds', 'Medicine', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-09-06 16:18:40', 33, '2018-09-20'),
(315, 15, '#Med1809060427477', 'Filine Edopathic ', 'Medicine', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-09-06 16:30:54', 33, '2018-10-06'),
(316, 16, '#Med1809060430540', 'Dentasticks', 'Medicine', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-09-06 16:32:56', 100, '2018-09-29'),
(317, 53, '#Med1809060427477', 'Filine Edopathic ', 'Medicine', 'Purchased Product', 'Customer(Walkin)', 'ivan', '2018-09-06 16:34:05', 30, '0000-00-00'),
(318, 15, '#Med1809060427477', 'Filine Edopathic ', 'Medicine', 'Add Supply', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-09-06 16:36:54', 200, '2018-09-29'),
(319, 54, '#Med1809060430540', 'Dentasticks', 'Medicine', 'Purchased Product', 'Customer(Walkin)', '', '2018-09-06 16:38:02', 20, '0000-00-00'),
(320, 54, '#Med1809060430540', 'Dentasticks', 'Medicine', 'Purchased Product', 'Customer(Walkin)', 'ss', '2018-09-06 16:38:24', 60, '0000-00-00'),
(321, 18, '#Food1809060441458', 'Whiska ', 'Food', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-09-06 16:45:02', 200, '2018-09-29'),
(322, 19, '#Food1809060445024', 'Meow Mix', 'Food', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-09-06 16:47:49', 120, '2018-10-19'),
(323, 24, '#Item1809060450060', 'Bone Toy for Dogs', 'Item', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-09-06 16:55:09', 122, '0000-00-00'),
(324, 54, '#Med1809060430540', 'Dentasticks', 'Medicine', 'Purchased Product', 'Customer(Walkin)', '', '2018-09-08 16:11:01', 1, '0000-00-00'),
(325, 16, '#Med1809060430540', 'Dentasticks', 'Medicine', 'Add Supply', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-09-08 16:12:24', 30, '2018-09-29'),
(326, 54, '#Med1809060430540', 'Dentasticks', 'Medicine', 'Purchased Product', 'Customer(Walkin)', 'river', '2018-09-08 16:12:44', 5, '0000-00-00'),
(327, 54, '#Med1809060430540', 'Dentasticks', 'Medicine', 'Purchased Product', 'Customer(Member)', 'Lee Min Horse', '2018-09-08 16:13:36', 5, '0000-00-00'),
(328, 16, '#Med1809060430540', 'Dentasticks', 'Medicines', 'Pull out product', 'Veterinarian', 'Carlos Almonds Valdez', '2018-09-08 20:37:45', 1, '0000-00-00');

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
(24, '#Item1809060450060', 'Bone Toy for Dogs', '<p>Bone Toy for Dogs<br></p>', 'bone_2.jpg', '88.00', 'Royal Canin', '98.56');

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
(15, '#Med1809060427477', 'Antibiotics', 'Filine Edopathic ', '<p>\r\n\r\n<b>Feline idiopathic cystitis</b>&nbsp;(FIC) <b>Feline</b>&nbsp;lower urinary tract disease (FLUTD) is a term describing conditions that can affect the urinary bladder and/or urethra (the lower urinary tract) of <b>cats</b>.\r\n\r\n<br></p>', 'AdSlots468_HI_Q3_2018112.jpg', '0000-00-00 00:00:00', '55.00', 'Royal Canin', '2018-10-06', '61.60', '1 (MilliLiters) ', '1', 'MilliLiters'),
(16, '#Med1809060430540', 'Vaccine', 'Dentasticks', '<p>\r\n\r\nLittle guys love the tasty <b>DENTASTIX</b>&nbsp;flavor, and these treats have a softer texture for young mouths to start off your <b>Puppy\'s</b>&nbsp;oral health routine in a delicious way. ...<b>Feed puppy</b>&nbsp;dogs (5 + lbs/2.27 + kg) 1 treat a day. Not suitable for <b>puppies</b>&nbsp;and dogs under 6 months of age and 5 lbs (2.27 kg).\r\n\r\n<br></p>', 'b76ead09f9fa333e22c4c3282a9c6103_jpg_2200x2200q80.jpg', '0000-00-00 00:00:00', '88.00', 'Royal Canin', '2018-09-29', '98.56', '3 (Kg) ', '3', 'Kg');

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
(53, 15, 'Filine Edopathic ', '1 (MilliLiters) ', 'Medicine', '#Med1809060427477', 203, '2018-09-06 16:30:54', 'AdSlots468_HI_Q3_2018112.jpg', '55.00', '61.60'),
(54, 16, 'Dentasticks', '3 (Kg) ', 'Medicine', '#Med1809060430540', 38, '2018-09-06 16:32:56', 'b76ead09f9fa333e22c4c3282a9c6103_jpg_2200x2200q80.jpg', '88.00', '98.56'),
(55, 18, 'Whiska ', '2 (Kg) ', 'Food', '#Food1809060441458', 200, '2018-09-06 16:45:02', 'whiskas_2kg.jpg', '90.00', '100.80'),
(56, 19, 'Meow Mix', '5 (Grams) ', 'Food', '#Food1809060445024', 120, '2018-09-06 16:47:49', 'meow_mix.jpg', '122.00', '136.64'),
(57, 24, 'Bone Toy for Dogs', '', 'Item', '#Item1809060450060', 122, '2018-09-06 16:55:09', 'bone_2.jpg', '88.00', '98.56');

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
-- Table structure for table `tbl_related_article`
--

CREATE TABLE `tbl_related_article` (
  `related_table_id` int(11) NOT NULL,
  `library_id` int(11) NOT NULL,
  `related_library_id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_related_article`
--

INSERT INTO `tbl_related_article` (`related_table_id`, `library_id`, `related_library_id`, `title`) VALUES
(4, 48, 51, 'Abscesses from Bite Wounds'),
(5, 48, 50, 'Allergies: Atopic Dermatitis (Airborne)'),
(6, 50, 51, 'Abscesses from Bite Wounds'),
(7, 56, 54, 'Goodspeed'),
(8, 56, 55, 'dasdasd'),
(9, 56, 57, 'trial 1'),
(10, 57, 56, 'sdasd');

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
(126, '#1808260206287', 'Walking', '0', '', '2018-08-26 14:06:28', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '1356.32', '1500.00', '143.68'),
(127, '#1808270314117', 'Walking', '0', 'mika', '2018-08-27 15:14:11', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '2488.64', '2500.00', '11.36'),
(128, '#1808290947263', 'Walking', '0', 'walk in 1', '2018-08-29 09:47:26', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '1793.12', '2000.00', '206.88'),
(129, '#1808290949038', 'Walking', '0', 'ivans', '2018-08-29 09:49:03', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '5065.76', '6000.00', '934.24'),
(130, '#1808291047485', 'Walking', '0', '', '2018-08-29 10:47:48', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '3248.00', '3300.00', '52.00'),
(131, '#1808291048105', 'Walking', '0', '', '2018-08-29 10:48:10', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '1120.00', '1200.00', '80.00'),
(132, '#1808291048286', 'Walking', '0', 'ivans', '2018-08-29 10:48:28', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '112.00', '200.00', '88.00'),
(133, '#1808291048486', 'Walking', '0', '', '2018-08-29 10:48:48', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '112.00', '200.00', '88.00'),
(134, '#1808290510111', 'Member', 'C1808290453032', 'Kim Patrick V Verde', '2018-08-29 17:10:11', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '1345.12', '1500.00', '154.88'),
(135, '#1808300937216', 'Walking', '0', 'asas', '2018-08-30 09:37:21', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '212.80', '300.00', '87.20'),
(136, '#1808311231147', 'Walking', '0', 'sssss', '2018-08-31 00:31:14', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '100.80', '120.00', '19.20'),
(137, '#1808311238080', 'Walking', '0', 'ivan sdsd', '2018-08-31 00:38:08', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '2240.00', '3000.00', '760.00'),
(138, '#1808311238393', 'Member', 'C1808211035448', 'Lee Min Horse', '2018-08-31 00:38:39', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '5724.32', '6000.00', '275.68'),
(139, '#1808310102535', 'Walking', '0', 'sdsdhahhha', '2018-08-31 01:02:53', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '44912.00', '50000.00', '5088.00'),
(140, '#1808310150279', 'Member', 'C1808211035448', 'Lee Min Horse', '2018-08-31 01:50:27', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '311.36', '400.00', '88.64'),
(141, '#1809031222327', 'Walking', '0', 'wala', '2018-09-03 00:22:32', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '98.56', '100.00', '1.44'),
(142, '#1809031202387', 'Walking', '0', 'napadaan', '2018-09-03 12:02:38', 'kirra May Ballesteros', 'S1808221221365', '1342.88', '2000.00', '657.12'),
(143, '#1809041038477', 'Walking', '0', '', '2018-09-04 22:38:47', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '1737.12', '2000.00', '262.88'),
(144, '#1809041106151', 'Walkin', '0', 'ivan f', '2018-09-04 23:06:15', 'kirra May Ballesteros', 'S1808221221365', '1342.88', '1500.00', '157.12'),
(145, '#1809041107259', 'Walkin', '0', 'rizal', '2018-09-04 23:07:25', 'kirra May Ballesteros', 'S1808221221365', '98.56', '100.00', '1.44'),
(146, '#1809060434057', 'Walkin', '0', 'ivan', '2018-09-06 16:34:05', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '1848.00', '2000.00', '152.00'),
(147, '#1809060438024', 'Walkin', '0', '', '2018-09-06 16:38:02', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '1971.20', '2000.00', '28.80'),
(148, '#1809060438244', 'Walkin', '0', 'ss', '2018-09-06 16:38:24', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '5913.60', '6000.00', '86.40'),
(149, '#1809080411014', 'Walkin', '0', '', '2018-09-08 16:11:01', 'kirra May Ballesteros', 'S1808221221365', '98.56', '100.00', '1.44'),
(150, '#1809080412445', 'Walkin', '0', 'river', '2018-09-08 16:12:44', 'kirra May Ballesteros', 'S1808221221365', '492.80', '500.00', '7.20'),
(151, '#1809080413367', 'Member', 'C1808211035448', 'Lee Min Horse', '2018-09-08 16:13:36', 'kirra May Ballesteros', 'S1808221221365', '492.80', '500.00', '7.20');

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
(139, 126, '#Item1808200149209', 'Item', 'Cat Shampoo', '100.00', 1, '112.00', '0.12', '13.44', '125.44'),
(140, 127, '#Med1808200154179', 'Medicine', 'Dino Capsule Evolution', '1111.00', 2, '2488.64', '0.12', '298.64', '2787.28'),
(141, 128, '#Item1808200149209', 'Item', 'Cat Shampoo', '100.00', 2, '224.00', '0.12', '26.88', '250.88'),
(142, 128, '#Item1808270316449', 'Item', 'Dog mat', '90.00', 1, '100.80', '0.12', '12.10', '112.90'),
(143, 128, '#Med1808200154179', 'Medicine', 'Dino Capsule Evolution', '1111.00', 1, '1244.32', '0.12', '149.32', '1393.64'),
(144, 128, '#Food1808200141256', 'Food', 'Dino Flakes', '100.00', 2, '224.00', '0.12', '26.88', '250.88'),
(145, 129, '#Med1808200154179', 'Medicine', 'Dino Capsule Evolution', '1111.00', 3, '3732.96', '0.12', '447.96', '4180.92'),
(146, 129, '#Item1808270316449', 'Item', 'Dog mat', '90.00', 11, '1108.80', '0.12', '133.06', '1241.86'),
(147, 129, '#Food1808200141256', 'Food', 'Dino Flakes', '100.00', 2, '224.00', '0.12', '26.88', '250.88'),
(148, 130, '#Item1808200149209', 'Item', 'Cat Shampoo', '100.00', 29, '3248.00', '0.12', '389.76', '3637.76'),
(149, 131, '#Item1808200149209', 'Item', 'Cat Shampoo', '100.00', 10, '1120.00', '0.12', '134.40', '1254.40'),
(150, 132, '#Item1808200149209', 'Item', 'Cat Shampoo', '100.00', 1, '112.00', '0.12', '13.44', '125.44'),
(151, 133, '#Item1808200149209', 'Item', 'Cat Shampoo', '100.00', 1, '112.00', '0.12', '13.44', '125.44'),
(152, 134, '#Med1808200154179', 'Medicine', 'Dino Capsule Evolution', '1111.00', 1, '1244.32', '0.12', '149.32', '1393.64'),
(153, 134, '#Item1808270316449', 'Item', 'Dog mat', '90.00', 1, '100.80', '0.12', '12.10', '112.90'),
(154, 135, '#Item1808270316449', 'Item', 'Dog mat', '90.00', 1, '100.80', '0.12', '12.10', '112.90'),
(155, 135, '#Item1808200149209', 'Item', 'Cat Shampoo', '100.00', 1, '112.00', '0.12', '13.44', '125.44'),
(156, 136, '#Item1808270316449', 'Item', 'Dog mat', '90.00', 1, '100.80', '0.12', '12.10', '112.90'),
(157, 137, '#Food1808200141256', 'Food', 'Dino Flakes', '100.00', 20, '2240.00', '0.12', '268.80', '2508.80'),
(158, 138, '#Food1808200141256', 'Food', 'Dino Flakes', '100.00', 40, '4480.00', '0.12', '537.60', '5017.60'),
(159, 138, '#Med1808200154179', 'Medicine', 'Dino Capsule Evolution', '1111.00', 1, '1244.32', '0.12', '149.32', '1393.64'),
(160, 139, '#Item1808200149209', 'Item', 'Cat Shampoo', '100.00', 401, '44912.00', '0.12', '5389.44', '50301.44'),
(161, 140, '#Food1808310109572', 'Food', 'Kingler Flakes', '88.00', 1, '98.56', '0.12', '11.83', '110.39'),
(162, 140, '#Food1808200141256', 'Food', 'Dino Flakes', '100.00', 1, '112.00', '0.12', '13.44', '125.44'),
(163, 140, '#Item1808270316449', 'Item', 'Dog mat', '90.00', 1, '100.80', '0.12', '12.10', '112.90'),
(164, 141, '#Item1809011120454', 'Item', 'sass', '88.00', 1, '98.56', '0.12', '11.83', '110.39'),
(165, 142, '#Med1808200154179', 'Medicine', 'Dino Capsule Evolution', '1111.00', 1, '1244.32', '0.12', '149.32', '1393.64'),
(166, 142, '#Item1809011121300', 'Item', 'sasss', '88.00', 1, '98.56', '0.12', '11.83', '110.39'),
(167, 143, '#Med1808200154179', 'Medicine', 'Dino Capsule Evolution', '1111.00', 1, '1244.32', '0.12', '149.32', '1393.64'),
(168, 143, '#Item1809011121300', 'Item', 'sasss', '88.00', 5, '492.80', '0.12', '59.14', '551.94'),
(169, 144, '#Item1809011121300', 'Item', 'sasss', '88.00', 1, '98.56', '0.12', '11.83', '110.39'),
(170, 144, '#Med1808200154179', 'Medicine', 'Dino Capsule Evolution', '1111.00', 1, '1244.32', '0.12', '149.32', '1393.64'),
(171, 145, '#Item1809011120454', 'Item', 'sass', '88.00', 1, '98.56', '0.12', '11.83', '110.39'),
(172, 146, '#Med1809060427477', 'Medicine', 'Filine Edopathic ', '55.00', 30, '1848.00', '0.12', '221.76', '2069.76'),
(173, 147, '#Med1809060430540', 'Medicine', 'Dentasticks', '88.00', 20, '1971.20', '0.12', '236.54', '2207.74'),
(174, 148, '#Med1809060430540', 'Medicine', 'Dentasticks', '88.00', 60, '5913.60', '0.12', '709.63', '6623.23'),
(175, 149, '#Med1809060430540', 'Medicine', 'Dentasticks', '88.00', 1, '98.56', '0.12', '11.83', '110.39'),
(176, 150, '#Med1809060430540', 'Medicine', 'Dentasticks', '88.00', 5, '492.80', '0.12', '59.14', '551.94'),
(177, 151, '#Med1809060430540', 'Medicine', 'Dentasticks', '88.00', 5, '492.80', '0.12', '59.14', '551.94');

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
(6, 'dog', 'young adult (11 months old and below)', 'Vaccination for Puppies', '<p>\r\n\r\n</p><p>Vaccination for young dogs.</p><p>Medicine includes the ff:s</p><p></p><ul><li>dognapper 22ml<br></li><li>dogcatnaper 11mls</li></ul>\r\n\r\n<p></p>', '211.00', 'Active'),
(7, 'dog', 'adult (1 year old and above)', 'Vaccination for Adult Dogs', '<p>Vaccination for Adult Dogs</p><p>Includes the following Procedure:</p><p></p><ul><li>inject medicine&nbsp;</li><li>inject vaccine</li></ul><p></p><p><br></p>', '2222.00', 'Inactive'),
(8, 'cat', 'adult (1 year old and above)', 'Deworming', '<p>Deworming for Cat</p>', '300.00', 'Inactive'),
(9, 'cat', 'young adult (11 months old and below)', 'Deworming for Kittens', '', '157.00', 'Inactive'),
(10, 'dog', 'adult (1 year old and above)', 'Deworming for Adult Dogs', '<p>Deworming for adult dogs requires the following medicine</p><p></p><ol><li>capsule</li><li>tablet</li></ol><p></p>', '300.00', 'Inactive'),
(11, 'dog', 'young adult (11 months old and below)', 'Deworming for Small Dogs', '<p>Deworming for small dogs</p><p>Need deworming medicine</p>', '400.00', 'Inactive'),
(12, 'dog', 'adult (1 year old and above)', 'Grooming for Dogs (Full Service)', '<p>\r\n\r\nAll Full Service Grooming includes: A bath with choice of Green Dog Wash&nbsp;</p><p>ShamPooch, towel and force-air dryer with no heating element, eye and ear&nbsp;</p><p>cleaning/plucking, brush teeth, nail clipping/grinding, brush out, and&nbsp;</p><p>specific haircut&nbsp;</p><p>based upon your dog’s breed standard and/or your individual style choice.&nbsp;</p><p>Full Service Grooming is ALWAYS completed by a trained, certified,</p><p>4 and experienced Canine Stylist.\r\n\r\n</p>', '500.00', 'Inactive'),
(13, 'dog', 'adult (1 year old and above)', 'Grooming (Nail Cutting)', '<p>Nail Cutting for Adult Dogs</p>', '100.00', 'Active');

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
(55, 63, 8, 'Deworming', '300.00', 60),
(56, 64, 0, 'General Checkup', '111.00', 64),
(57, 64, 9, 'Deworming for Kittens', '157.00', 64),
(58, 64, 4, 'Vaccination for Kittens', '400.00', 64),
(59, 65, 0, 'General Checkup', '111.00', 65),
(60, 66, 9, 'Deworming for Kittens', '157.00', 63),
(61, 67, 0, 'General Checkup', '111.00', 66),
(62, 68, 0, 'General Checkup', '111.00', 71),
(63, 68, 8, 'Deworming', '300.00', 71),
(64, 69, 0, 'General Checkup', '111.00', 72),
(65, 69, 8, 'Deworming', '300.00', 72),
(66, 70, 0, 'General Checkup', '111.00', 75),
(67, 70, 8, 'Deworming', '300.00', 75),
(68, 71, 0, 'General Checkup', '111.00', 77),
(69, 72, 0, 'General Checkup', '111.00', 76),
(70, 73, 8, 'Deworming', '300.00', 78),
(71, 74, 0, 'General Checkup', '111.00', 80),
(72, 74, 8, 'Deworming', '300.00', 80),
(73, 75, 7, 'Vaccination', '2222.00', 82),
(74, 76, 0, 'General Checkup', '111.00', 84),
(75, 77, 0, 'General Checkup', '111.00', 85),
(76, 77, 9, 'Deworming for Kittens', '157.00', 85),
(77, 78, 0, 'General Checkup', '111.00', 88),
(78, 79, 0, 'General Checkup', '111.00', 89),
(79, 80, 0, 'General Checkup', '111.00', 90),
(80, 81, 0, 'General Checkup', '111.00', 91),
(81, 81, 7, 'Vaccination', '2222.00', 91),
(82, 82, 0, 'General Checkup', '111.00', 92),
(83, 82, 8, 'Deworming', '300.00', 92),
(84, 83, 0, 'General Checkup', '111.00', 94),
(85, 83, 7, 'Vaccination', '2222.00', 94),
(86, 84, 0, 'General Checkup', '111.00', 96),
(87, 84, 7, 'Vaccination', '2222.00', 96),
(88, 85, 0, 'General Checkup', '111.00', 93),
(89, 86, 0, 'General Checkup', '111.00', 98),
(90, 87, 0, 'General Checkup', '200.00', 99),
(91, 88, 0, 'General Checkup', '200.00', 101),
(92, 88, 9, 'Deworming for Kittens', '157.00', 101),
(93, 88, 4, 'Vaccination for Kittens', '400.00', 101),
(94, 89, 0, 'General Checkup', '200.00', 102),
(95, 89, 8, 'Deworming', '300.00', 102),
(96, 90, 0, 'General Checkup', '200.00', 103),
(97, 90, 8, 'Deworming', '300.00', 103),
(98, 91, 0, 'General Checkup', '200.00', 104),
(99, 91, 9, 'Deworming for Kittens', '157.00', 104),
(100, 91, 4, 'Vaccination for Kittens', '400.00', 104),
(101, 92, 0, 'General Checkup', '200.00', 105),
(102, 93, 13, 'Grooming (Nail Cutting)', '100.00', 106);

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
  `service_content` text NOT NULL,
  `telephone` text NOT NULL,
  `max_product_count` int(11) NOT NULL,
  `checkup_fee` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`settings_id`, `theme_color`, `aboutus_content`, `vet_fee`, `clinic_email_address`, `clinic_home_address`, `clinic_barangay_address`, `clinic_city_address`, `clinic_postal_id`, `vat`, `store_name`, `service_content`, `telephone`, `max_product_count`, `checkup_fee`) VALUES
(1, 'skin-blue', '<p>\r\n\r\nWe apply the wisdom garnered in the centuries old tradition of veterinary medicine, to find the safest treatments and <i>cures. </i>We strive to be your pet\'s medical experts from youth through the senior years. We build preventative health care plans for each and every one of our patients, based on breed, age, and sex, so that your pet receives the most appropriate care at crucial milestones. We want to give your pet a long and healthy life\r\n\r\n<br></p>', '111.00', 'vetopiaC@gmail.com', '520-B 16th ISU Village ', 'Barangay 31 South Side', 'Makati City', '1211', '.12', 'Animal Center', '<p>\r\n\r\nWe apply the wisdom garnered in the centuries old tradition of veterinary medicine, to find the safest treatments and <i>cures. </i>We strive to be your pet\'s medical experts from youth through the senior years. We build preventative health care plans for each and every one of our patients, based on breed, age, and sex, so that your pet receives the most appropriate care at crucial milestones. We want to give your pet a long and healthy life\r\n\r\n</p>', '555-555-557', 300, '200.00');

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
(9, 'S1808221221365', 'kirra', 'May', 'Ballesteros', '2002-02-19', '#3333', 'ivn street', '1212masdasd', '1111', '2018-08-22 00:22:18', '', '', 'Active', '', '09021232212', 'Female', 'sdasds@gmail.com'),
(10, 'S1809071018102', 'Shaira', 'Lee', 'Eunice', '1996-05-13', '#3333 West Port', 'Norther Air Temple', 'Central City', '4444', '2018-09-07 22:19:26', '', '', 'Active', '', '09021232212', 'Female', 'icjfuncion@gmail.com');

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
(3, 'Customer', 'C1808211035448', 'chesterking', 'chester', '$2y$10$KYopi6HHJV5nXr5rENFRcOHvmgKOgq2aNGaJdF', '2018-09-08 18:40:16'),
(4, 'Veterinarian', 'V1808211104221', 'RJames', 'james', '$2y$10$fcv.I2uZXMLcNRTZCpGCuuoPphpBmlQJi.DzXT', '2018-09-08 16:50:57'),
(5, 'Veterinarian', 'V1808211104490', 'CValdez', 'carlos', '$2y$10$WD7SMJVQMQNyMkbc2cmBLO9bD62VStWTts2.B9', '2018-09-07 22:08:11'),
(6, 'Veterinarian', 'V1808211106539', 'RAnto', 'V1808211106539', '$2y$10$MBlFG0Nm7MBwEJJpBrKL9OHQSxUESH4HceWFer', '2018-09-07 22:09:59'),
(7, 'Veterinarian', 'S1808211134504', 'TRomeo', 'S1808211134504', '$2y$10$VBaEO5gSYJ5/GXBfQS9Wmu2zMYxhe450lBpFkg', '2018-08-21 23:34:57'),
(8, 'Veterinarian', 'S1808211134571', 'Vdasdw', 'S1808211134571', '$2y$10$bfhOWM4AbEQFCioHM5TD.OriDTMMFgfARx1DZN', '2018-08-21 23:35:30'),
(10, 'Staff', 'S1808221221365', 'kBallesteros', 'kirra', '$2y$10$OrvJ7bSHpLCrkwdQMVoi5uAsRRv.49.r7PIAGe', '2018-09-03 12:07:26'),
(12, 'Customer', 'C1808260134527', 'CEchanez', 'C1808260134527', '$2y$10$BgI3rSI9BxwkSM5IdHf84uLVqT.qR8Y0p.EJrL', '2018-08-26 13:36:04'),
(13, 'Customer', 'C1808260210291', 'SDela Cruz', 'C1808260210291', '$2y$10$o28edQ/VGnnVtEWOr/lEF.fYVLovQ7Lr907dmM', '2018-08-26 14:11:41'),
(14, 'Customer', 'C1808280158054', 'EMojares', 'C1808280158054', '$2y$10$TYjx/CXmyhAKAViHzfTZXOkLBGdEFuRqbMBzTS', '2018-08-28 13:59:08'),
(18, 'Veterinarian', 'V1809011155197', 'ivanstrange', 'ivanstrange', '$2y$10$yXdlFAlcXjgRVV7aZXbf3uYgDsJhH3hQ7lC.8p', '2018-09-08 18:45:07'),
(20, 'Staff', 'S1809071018102', 'SEunice', 'S1809071018102', '$2y$10$9BZ4GnCwIPeUSou.ThqOyeaPHDdtbcsfV4rXxR', '2018-09-07 22:19:26');

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
(1, 'V1808211104221', 'Recardo', 'Lebron ', 'James', '1976-05-12', '#3333', 'sdsd', 'asdsd', 'sdadsa', '2018-08-21 23:04:49', 'RJames', 'james', 'Inactive', '<p>\r\n\r\nDr. Recardo James resume includes work onsmall animal surgery, infectious disease diagnostics and treatment, dermatology, radiology, orthopedics and oncology. Her passion for small animal practice, along with the desire to learn more and ultimately share the knowledge, continues to inspire her as she works to make the world a better place for animals and their humans, “one pet at a time”.\r\n\r\n</p>', 'chico.jpg', 'Male', '09021232212', 'rj@gmail.com'),
(8, 'V1808211104490', 'Carlos', 'Almonds', 'Valdez', '1985-02-12', '#3333', 'dsassd', 'sdasd', '1111', '2018-08-21 23:06:10', 'CValdez', 'carlos', 'Active', '<p>\r\n\r\nCarlos Valdez graduated from the University of the Philippines in 1986, and has been a licensed practicing veterinarian since then. He has engaged in numerous pursuits and enterprises, the varying nature of which reflecting his belief that a life in pursuit of knowledge and learning is a life well spent. In addition to animal health and animal welfare, he is concerned with the study of animal behaviour, and the use of intelligent and humane methods to ensure that animals live in harmony with their human companions and vice-versa.\r\n\r\n</p>', 'doctor-winthrop1.jpg', 'Male', '09021232212', 'carlosvaldex10@gmail.com'),
(9, 'V1808211106539', 'Renato', 'Ren', 'Anto', '1984-05-21', 'sdsd', 'sads', 'sdsd', 'asdsd', '2018-08-21 23:07:31', 'RAnto', 'V1808211106539', 'Active', '<p>\r\n\r\nDr. Chico Buenviaje has trained for small animalmedicine at Mount Pleasant Hospital in Singapore. He is also a veterinary consultant at the Olaylee Botanical and Zoological Avian Research Center. Art is one of his passions, so he manages an arts and framing business from home.\r\n\r\n</p>', 'doctor-sanders1.jpg', 'Male', '09021232212', 'rj@gmail.com'),
(10, 'V1809011155197', 'Nancy', 'Stranger', 'Strange', '1995-05-23', '34 Street Kanipan Ave.', 'Guadalupe', 'Makati City', '3311', '2018-09-01 23:56:21', 'ivanstrange', 'ivanstrange', 'Active', '<p>\r\n\r\nDr. Eduardo Torres obtained his PhD in Veterinary Obstetrics and Gynecology in Japan and his Masters in Animal Reproduction in the U.S. A. He is a Charter Fellow and Founding President of the Philippine College of Equine Practitioners and serves as the Chairman of the Advisory Board of the Philippine Veterinary Drug Directory. He is also a Board Director of the Philippine Veterinary Medical Association. He is a professor at the University of the Philippines College of Veterinary Medicine.\r\n\r\n</p>', '40273333_282582862342145_6573329536790822912_n.jpg', 'Female', '09021232212', 'icjfuncion@gmail.com');

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
-- Indexes for table `tbl_related_article`
--
ALTER TABLE `tbl_related_article`
  ADD PRIMARY KEY (`related_table_id`);

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
  MODIFY `appointment_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `tbl_bannerimages`
--
ALTER TABLE `tbl_bannerimages`
  MODIFY `bannerimage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tbl_checkupdetails`
--
ALTER TABLE `tbl_checkupdetails`
  MODIFY `checkup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5429;
--
-- AUTO_INCREMENT for table `tbl_petbreeds`
--
ALTER TABLE `tbl_petbreeds`
  MODIFY `breed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tbl_pets`
--
ALTER TABLE `tbl_pets`
  MODIFY `pet_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `tbl_pettype`
--
ALTER TABLE `tbl_pettype`
  MODIFY `pettype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_pet_library`
--
ALTER TABLE `tbl_pet_library`
  MODIFY `library_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `tbl_pet_library_content`
--
ALTER TABLE `tbl_pet_library_content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `tbl_pet_library_links`
--
ALTER TABLE `tbl_pet_library_links`
  MODIFY `links_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `tbl_productfoods`
--
ALTER TABLE `tbl_productfoods`
  MODIFY `food_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tbl_productinventories`
--
ALTER TABLE `tbl_productinventories`
  MODIFY `inv_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;
--
-- AUTO_INCREMENT for table `tbl_productitems`
--
ALTER TABLE `tbl_productitems`
  MODIFY `item_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tbl_productmedicines`
--
ALTER TABLE `tbl_productmedicines`
  MODIFY `med_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `tbl_pullouts`
--
ALTER TABLE `tbl_pullouts`
  MODIFY `pullout_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_related_article`
--
ALTER TABLE `tbl_related_article`
  MODIFY `related_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
--
-- AUTO_INCREMENT for table `tbl_salesdetails`
--
ALTER TABLE `tbl_salesdetails`
  MODIFY `salesdetail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;
--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbl_service_rendered`
--
ALTER TABLE `tbl_service_rendered`
  MODIFY `service_rendered_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_staffs`
--
ALTER TABLE `tbl_staffs`
  MODIFY `staff_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_timeschedule`
--
ALTER TABLE `tbl_timeschedule`
  MODIFY `timeSchedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `tbluser_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tbl_veterinarians`
--
ALTER TABLE `tbl_veterinarians`
  MODIFY `veterinarian_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
