-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2018 at 11:51 AM
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
(81, '#1809040732202', 'C1808211035448', 0, 'Lee Min Horse', '2018-09-12', '2:00 pm - 3:00 pm', 'Aninags', 'P1808221121554', 'Cat', 'British Shorthair', '2 Years old', 1, 'Pending', '2018-09-04 19:32:20', '', '', 'aninags checkup', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0.00', '0.00', '0.00'),
(82, '#1809041152159', 'C1808260134527', 17, 'Carl Vincent Lorenzo Echanez', '2018-09-05', '9:00 am - 10:00 am', 'ivan', 'P1808260139232', 'Dog', 'Chihuahua', '16 Years old', 1, 'Done', '2018-09-04 23:52:15', 'V1808211104490', 'Carlos Almonds Valdez', '<p>hi</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '2.00', '3000.00', '0.00'),
(83, '#1809041157433', 'C1808260210291', 28, 'Sandra Abdul Dela Cruz', '2018-09-05', '1: 00pm - 2:00 pm', 'Brock', 'P1809031155058', 'Cat', 'Ragdoll', '2 Years old', 1, 'Cancelled', '2018-09-04 23:57:43', 'V1808211104221', 'Recardo Lebron  James', '<p>follow up checkup</p>', '<p>icancel ko nalang</p>', '2018-09-04 23:58:00', 0, '0000-00-00 00:00:00', '0.00', '0.00', '0.00'),
(84, '#1809041158396', 'C1808260210291', 28, 'Sandra Abdul Dela Cruz', '2018-09-05', '12:00 nn - 1:00 pm', 'Brock', 'P1809031155058', 'Cat', 'Ragdoll', '2 Years old', 1, 'Done', '2018-09-04 23:58:39', 'V1808211104490', 'Carlos Almonds Valdez', '<p>follow up checkup</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '111.00', '200.00', '89.00'),
(85, '#1809051202118', 'C1808211035448', 20, 'Lee Min Horse', '2018-09-06', '9:00 am - 10:00 am', 'Helen', 'P1809020130356', 'Cat', 'Maine Coon', '-1 Years old', 0, 'Done', '2018-09-05 00:02:11', 'V1808211104490', 'Carlos Almonds Valdez', '<p>hahhaahha</p>', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '268.00', '300.00', '32.00'),
(86, '#1809060211501', 'C1808211035448', 13, 'Lee Min Horse', '2018-09-10', '11:00 am - 12: 00 nn', 'Arnelsz', 'P1808221021292', 'Cat', 'Ragdoll', '3 Years old', 1, 'On-Process', '2018-09-06 14:11:50', 'V1808211104490', 'Carlos Almonds Valdez', '<p>fdfdfxxcvc</p>', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0.00', '0.00', '0.00');

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
(12, 1, 'carousel-lifestyle.jpg', 'Banner 2', 'tHIS IS BANNER 2'),
(13, 1, 'carousel-exoticanimals.jpg', 'Banner 3', 'banner 3 ulit');

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
(63, '2018-08-26 04:47:28', 60, '#1808260444092', '2018-08-26', '9:00 am - 10:00 am', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808221048598', 'cole', '1 Years old', '<p>tahol daw ng tahol</p>', 'Tinanggalan ng Voice box', '<p>wala.. kasi baka tumaholulit</p><p>nag deworming narin para tanggal bituka</p>'),
(64, '2018-08-29 17:39:33', 64, '#1808290532591', '2018-08-29', '4: 00 pm - 5: 00pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808221046418', 'LenTik', '6 Months old', 'hshdsads', 'Input Veterinarian Statement/ Observation / Treatment', 'Prescriptions / Medicines / Doctors Comments and Recomendation'),
(65, '2018-08-30 22:21:31', 65, '#1808301018485', '2018-08-30', '4: 00 pm - 5: 00pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808221046418', 'LenTik', '6 Months old', '<p>dasdsdssssssssss</p>', 'Input Veterinarian Statement/ Observation / Treatment', 'Prescriptions / Medicines / Doctors Comments and Recomendation'),
(66, '2018-08-30 23:20:42', 63, '#1808290151275', '2018-08-30', '9:00 am - 10:00 am', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808221046418', 'LenTik', '6 Months old', 'hahahahahahah', 'Input Veterinarian Statement/ Observation / Treatment', 'Prescriptions / Medicines / Doctors Comments and Recomendation'),
(67, '2018-08-30 23:20:48', 66, '#1808301059464', '2018-08-30', '4: 00 pm - 5: 00pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808221046418', 'LenTik', '6 Months old', '<p>dssdasd ivansdsdassdasdd</p>', 'Input Veterinarian Statement/ Observation / Treatment', 'Prescriptions / Medicines / Doctors Comments and Recomendation'),
(68, '2018-08-31 14:18:30', 71, '#1808311156354', '2018-08-31', '9:00 am - 10:00 am', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808221021292', 'Arnelsz', '3 Years old', 'sadsdsdd', 'Input Veterinarian Statement/ Observation / Treatment<div><br></div><div><br></div>', 'Prescriptions / Medicines / Doctors Comments and Recomendation\r\n                                        <div><br></div><div><br></div><div>sdsasd</div>'),
(69, '2018-09-01 01:09:23', 72, '#1809010108444', '2018-09-01', '9:00 am - 10:00 am', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808221021292', 'Arnelsz', '3 Years old', '<p>ivansdasdsd</p>', 'Input Veterinarian Statement/ Observation / Treatment', 'Prescriptions / Medicines / Doctors Comments and Recomendation'),
(70, '2018-09-03 13:54:28', 75, '#1809031138147', '2018-09-03', '2:00 pm - 3:00 pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808221121554', 'Aninags', '2 Years old', 'focus on work', 'Input Veterinarian Statement/ Observation / Treatment<div><ol><li>injected a serum</li><li>injected a powder&nbsp;</li><li>get blood sugar</li><li>get body weight</li></ol></div><div><br></div><div><br></div>', 'Prescriptions / Medicines / Doctors Comments and Recomendation\r\n                                                  <div><br></div><div>Drink 8 to 10 glasses of water every day</div>'),
(71, '2018-09-04 13:50:54', 77, '#1809040144230', '2018-09-04', '2:00 pm - 3:00 pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808221121554', 'Aninags', '2 Years old', 'ivansdsss', 'Input Veterinarian Statement/ Observation / Treatment', 'Prescriptions / Medicines / Doctors Comments and Recomendation'),
(72, '2018-09-04 14:20:56', 76, '#1809030254545', '2018-09-04', '9:00 am - 10:00 am', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808310205079', 'Ken', '9 Years old', '<p>nag set na ng maaga</p>', '<p>nice one</p>', '<p>ok</p>'),
(73, '2018-09-04 17:28:09', 78, '#1809040211069', '2018-09-04', '4: 00 pm - 5: 00pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1809031155058', 'Brock', '2 Years old', '<p>sdsdassasd</p>', '<p></p><p>Treatment includes:<br></p><p></p><ol><li>Deworming</li><li>aesthetics</li><li>singleton</li><li>abbreviation</li><li>teraforming&nbsp;</li></ol><p></p><p></p>', '<p>bring brock for fallow up check up in <b><u>2 weeks</u></b> time</p><p>buy the following medicine for home medication</p><p></p><ol><li>asperin</li><li>cleve&nbsp;</li><li>byfost</li><li>stormbreaker</li></ol><p></p>'),
(74, '2018-09-04 23:19:19', 80, '#1809040707044', '2018-09-04', '4: 00 pm - 5: 00pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808310205079', 'Ken', '9 Years old', '<p>si ken ken</p>', '<p>ken is physically healthy but i have observe that he is pale</p><p>and weak... must be the side effect of the atibiotics that we use to him</p><p><br></p>', '<p>patient must be lock on his room for several days to avoid infection</p>'),
(75, '2018-09-05 23:53:35', 82, '#1809041152159', '2018-09-05', '9:00 am - 10:00 am', 'Carlos Almonds Valdez', 'V1808211104490', 'P1808260139232', 'ivan', '16 Years old', '<p>hi</p>', '<p>oo na</p>', '<p>edi wow</p>'),
(76, '2018-09-05 23:54:04', 84, '#1809041158396', '2018-09-05', '12:00 nn - 1:00 pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1809031155058', 'Brock', '2 Years old', '<p>follow up checkup</p>', '<p>progressive enchantment</p>', '<p>like we use to do</p>'),
(77, '2018-09-06 14:20:00', 85, '#1809051202118', '2018-09-06', '9:00 am - 10:00 am', 'Carlos Almonds Valdez', 'V1808211104490', 'P1809020130356', 'Helen', '-1 Years old', '<p>hahhaahha</p>', '<p>expensive</p>', '<p>onwsasd</p>');

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
(7, 'C1808211035448', 'Lee', 'Min', 'Horse', '1988-02-09', 'kor', 'korq', 'kors', '144', '2018-08-21 22:35:47', '', '', 'Active', 'team1.png', '09021232212', 'Male', 'icjfuncion@gmail.com'),
(8, 'C1808221128307', 'Renato', 'Magtanggol', 'Dalisay', '1994-05-25', '#3333', 'ivn street', 'makati city', '1111', '2018-08-22 11:29:22', '', '', 'Inactive', 'Aristotle_Color11.jpg', '09021232212', 'Male', 'recardo@gmail.com'),
(9, 'C1808260134527', 'Carl Vincent', 'Lorenzo', 'Echanez', '1993-03-05', 'las pinas ', 'las pinas ', 'las pinas ', '3323', '2018-08-26 13:36:04', '', '', 'Active', '', '09157299313', 'Male', 'sad539281@gmail.com'),
(10, 'C1808260210291', 'Sandra', 'Abdul', 'Dela Cruz', '1996-01-17', 'dsda', 'dsda', 'sdasd', '1111', '2018-08-26 14:11:41', '', '', 'Active', '', '09266019033', 'Female', 'psandradelacruz@gmail.com'),
(11, 'C1808280158054', 'Ely Jireh', 'M', 'Mojares', '1958-05-20', '#3333', 'ivn street', 'makati city', '1111', '2018-08-28 13:59:08', '', '', 'Active', '', '09021232212', 'Male', 'sky.winter30@gmail.com'),
(12, 'C1808280159141', ' Almira', 'Incarnation', 'Layola', '2000-06-20', '#3333', 'ivn street', 'makati city', '1111', '2018-08-28 14:07:23', '', '', 'Active', '', '09021232212', 'Female', 'sky.winter30@gmail.com'),
(13, 'C1808290453032', 'Kim Patrick', 'V', 'Verde', '1990-06-27', 'makati', 'makati', 'makati', '221', '2018-08-29 16:54:41', '', '', 'Active', '', '09021232212', 'Male', 'rayvincentphillip.villaver@gmail.com'),
(14, 'C1808310120124', 'Steve', 'Carlson', 'Nash', '1981-05-20', '#3333', 'ivn street', 'makati city', '1111', '2018-08-31 01:21:01', '', '', 'Active', '', '09021232212', 'Male', 'icjfuncion@gmail.com');

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
(4663, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Pet Health Care Library', '2018-09-06 17:25:52');

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
(24, 3, 'dinosaur', 'Indominous Rex2', '<p>dasdsdadasdsa</p>', 'Active'),
(25, 4, 'horse', 'Ikaw', '<p>dasdsdsdsads</p>', 'Active'),
(26, 2, 'cat', 'dadasd', '<p>ssdsd</p>', 'Active'),
(27, 3, 'dinosaur', 'hahaha', '<p>&nbsp;ivansdsssas</p>', 'Active');

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
(13, 'P1808221021292', 'Arnelsz', 7, 2, 15, '2015-07-23', '2018-08-22 10:22:03', 'Male', 'German_shephard1114.jpg'),
(14, 'P1808221046418', 'LenTik', 7, 2, 12, '2018-02-13', '2018-08-22 10:47:04', 'Male', 'German_shephard31.jpg'),
(15, 'P1808221048598', 'cole', 7, 2, 12, '2017-06-22', '2018-08-22 10:49:34', 'Male', 'German_shephard311.jpg'),
(16, 'P1808221121554', 'Aninags', 7, 2, 12, '2016-05-23', '2018-08-22 11:22:15', 'Male', 'German_shephard312.jpg'),
(17, 'P1808260139232', 'ivan', 9, 1, 17, '2002-06-26', '2018-08-26 13:39:52', 'Male', 'German_shephard11141.jpg'),
(18, 'P1808290457450', 'phelp', 13, 3, 23, '2008-06-24', '2018-08-29 16:59:51', 'Male', 'testimonial-lorraines.jpg'),
(19, 'P1808310205079', 'Ken', 9, 2, 12, '2009-06-24', '2018-08-31 02:05:37', 'Male', 'pusa.jpg'),
(20, 'P1809020130356', 'Helen', 7, 2, 13, '2018-09-18', '2018-09-02 01:30:59', 'Female', 'German_shephard3121.jpg'),
(21, 'P1809020132505', 'LenTiks', 7, 2, 13, '2005-07-27', '2018-09-02 01:33:05', 'Male', 'German_shephard111.jpg'),
(22, 'P1809020133132', 'sdadsdas', 7, 2, 15, '2018-08-31', '2018-09-02 01:33:30', 'Male', 'German_shephard1111.jpg'),
(23, 'P1809020133132', 'sdadsdas', 7, 2, 15, '2018-08-31', '2018-09-02 01:33:32', 'Male', 'German_shephard1112.jpg'),
(24, 'P1809020133132', 'sdadsdas', 7, 2, 15, '2018-08-31', '2018-09-02 01:33:33', 'Male', 'German_shephard1113.jpg'),
(25, 'P1809020134101', 'sdasdsd', 7, 3, 22, '2007-03-21', '2018-09-02 01:34:29', 'Female', 'German_shephard1114.jpg'),
(26, 'P1809020142016', 'ikaws', 7, 3, 24, '2012-07-26', '2018-09-02 01:42:19', 'Female', 'German_shephard112.jpg'),
(27, 'P1809020142219', 'Charlie', 7, 3, 23, '2007-11-23', '2018-09-02 01:42:47', 'Male', 'German_shephard113.jpg'),
(28, 'P1809031155058', 'Brock', 10, 2, 15, '2016-06-29', '2018-09-03 11:55:24', 'Male', 'German_shephard11142.jpg'),
(29, 'P1809040802237', 'Ignacio', 7, 2, 13, '2009-06-24', '2018-09-04 20:02:42', 'Male', 'German_shephard11143.jpg');

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
(3, 'dinosaur', 'Dinosaur', 'Active'),
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
(60, 'Ehrlichia ', 'Ehrlichia, named for the Dr. Ehrlich who firs', 'German_shephard11141.jpg', 'Active', 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 1, '2018-09-06 15:47:14');

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
(62, 60, 'Ehrlichia, named for the Dr. Ehrlich who first described them, are a type of bacteria that infect and live within the white blood cells of their hosts. Different types of Ehrlichia live in different types of white blood cells. Hosts can be human, pet, or wild animals. Ehrlichia are spread from host to host by tick bites and their intracellular location makes them difficult to remove as most antibiotics do not penetrate to the inside of cells.');

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
(35, 60, 'https://veterinarypartner.vin.com/default.aspx?pid=19239&id=4952341');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_possible_ symptoms`
--

CREATE TABLE `tbl_possible_ symptoms` (
  `possible_symptoms_id` int(11) NOT NULL,
  ` symptoms` varchar(45) NOT NULL,
  `number_of_cases` int(11) NOT NULL,
  `symptoms_status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(323, 24, '#Item1809060450060', 'Bone Toy for Dogs', 'Item', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-09-06 16:55:09', 122, '0000-00-00');

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
(54, 16, 'Dentasticks', '3 (Kg) ', 'Medicine', '#Med1809060430540', 20, '2018-09-06 16:32:56', 'b76ead09f9fa333e22c4c3282a9c6103_jpg_2200x2200q80.jpg', '88.00', '98.56'),
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
(148, '#1809060438244', 'Walkin', '0', 'ss', '2018-09-06 16:38:24', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '5913.60', '6000.00', '86.40');

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
(174, 148, '#Med1809060430540', 'Medicine', 'Dentasticks', '88.00', 60, '5913.60', '0.12', '709.63', '6623.23');

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
(8, 'cat', 'adult (1 year old and above)', 'Deworming', '<p>Deworming for Cat</p>', '300.00', 'Inactive'),
(9, 'cat', 'young adult (11 months old and below)', 'Deworming for Kittens', '', '157.00', 'Inactive'),
(10, 'dinosaur', 'adult (1 year old and above)', 'Deworming for Dino', '<p>dads</p>', '5000.00', 'Inactive'),
(11, 'dog', 'young adult (11 months old and below)', 'Deworming ', '<p>dsdasdas</p>', '400.00', 'Inactive'),
(12, 'horse', 'young adult (11 months old and below)', 'Deworming Horses', '<p>sasdsdsdsdsdsadsdas arfs</p>', '500.00', 'Inactive');

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
(76, 77, 9, 'Deworming for Kittens', '157.00', 85);

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
  `max_product_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`settings_id`, `theme_color`, `aboutus_content`, `vet_fee`, `clinic_email_address`, `clinic_home_address`, `clinic_barangay_address`, `clinic_city_address`, `clinic_postal_id`, `vat`, `store_name`, `service_content`, `telephone`, `max_product_count`) VALUES
(1, 'skin-blue', '<p>\r\n\r\nWe apply the wisdom garnered in the centuries old tradition of veterinary medicine, to find the safest treatments and <i>cures. </i>We strive to be your pet\'s medical experts from youth through the senior years. We build preventative health care plans for each and every one of our patients, based on breed, age, and sex, so that your pet receives the most appropriate care at crucial milestones. We want to give your pet a long and healthy life\r\n\r\n<br></p>', '111.00', 'vetopiaC@gmail.com', '#1433', 'Barangay bas', 'Makati City', '121', '.12', 'Animal Center', '<p>\r\n\r\nWe apply the wisdom garnered in the centuries old tradition of veterinary medicine, to find the safest treatments and <i>cures. </i>We strive to be your pet\'s medical experts from youth through the senior years. We build preventative health care plans for each and every one of our patients, based on breed, age, and sex, so that your pet receives the most appropriate care at crucial milestones. We want to give your pet a long and healthy life\r\n\r\n</p>', '555-555-557', 300);

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
(3, 'Customer', 'C1808211035448', 'LHorses', 'horse', '$2y$10$pspPQtGGRT51QQlT4gOoX.Udhe6WysqscGitiB', '2018-09-03 10:59:34'),
(4, 'Veterinarian', 'V1808211104221', 'RJames', 'V1808211104221', '$2y$10$d0d7vZCjhBciruPKZBNjbOq5iopLUC8fStdt8Z', '2018-08-21 23:04:49'),
(5, 'Veterinarian', 'V1808211104490', 'CValdez', 'carlos', '$2y$10$CwfI5AyF11KE9dHJC./JQej8wwMefFjOZTr6Y.', '2018-08-21 23:21:15'),
(6, 'Veterinarian', 'V1808211106539', 'RAnto', 'V1808211106539', '$2y$10$PW08MahKU.n53bXq9xtX4O5K3NNNhLjSdoTDQ.', '2018-08-21 23:07:31'),
(7, 'Veterinarian', 'S1808211134504', 'TRomeo', 'S1808211134504', '$2y$10$VBaEO5gSYJ5/GXBfQS9Wmu2zMYxhe450lBpFkg', '2018-08-21 23:34:57'),
(8, 'Veterinarian', 'S1808211134571', 'Vdasdw', 'S1808211134571', '$2y$10$bfhOWM4AbEQFCioHM5TD.OriDTMMFgfARx1DZN', '2018-08-21 23:35:30'),
(10, 'Staff', 'S1808221221365', 'kBallesteros', 'kirra', '$2y$10$OrvJ7bSHpLCrkwdQMVoi5uAsRRv.49.r7PIAGe', '2018-09-03 12:07:26'),
(11, 'Customer', 'C1808221128307', 'RDalisay', 'cardo', '$2y$10$uYwEdmPJ7wR4IKyuLeR33uEJyW41a1wG.fc/3R', '2018-08-22 11:29:36'),
(12, 'Customer', 'C1808260134527', 'CEchanez', 'C1808260134527', '$2y$10$BgI3rSI9BxwkSM5IdHf84uLVqT.qR8Y0p.EJrL', '2018-08-26 13:36:04'),
(13, 'Customer', 'C1808260210291', 'SDela Cruz', 'C1808260210291', '$2y$10$o28edQ/VGnnVtEWOr/lEF.fYVLovQ7Lr907dmM', '2018-08-26 14:11:41'),
(14, 'Customer', 'C1808280158054', 'EMojares', 'C1808280158054', '$2y$10$TYjx/CXmyhAKAViHzfTZXOkLBGdEFuRqbMBzTS', '2018-08-28 13:59:08'),
(15, 'Customer', 'C1808280159141', ' Layola', 'C1808280159141', '$2y$10$ssNRTHiPP.roAeyeHpAkrO2ibuoxnK5McVyQzy', '2018-08-28 14:07:23'),
(16, 'Customer', 'C1808290453032', 'KVerde', 'C1808290453032', '$2y$10$inhowWSiWxsVfg5RP/WQs.njqHbJDZgmFPKjWO', '2018-08-29 16:54:41'),
(17, 'Customer', 'C1808310120124', 'SNash', 'C1808310120124', '$2y$10$zBaJjr7Vl5/T2ntS46chOO48CrBoaLuQkbxSd6', '2018-08-31 01:21:01'),
(18, 'Veterinarian', 'V1809011155197', 'dsdasdsadsa', 'V1809011155197', '$2y$10$COcJTJC5z57LFq5MxhSBGeuECLUioq1oEvrWs/', '2018-09-01 23:56:32');

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
(1, 'V1808211104221', 'Recardo', 'Lebron ', 'James', '1976-05-12', '#3333', 'sdsd', 'asdsd', 'sdadsa', '2018-08-21 23:04:49', '', '', 'Active', '<p>wala ako dito</p>', 'team12.png', 'Male', '09021232212', 'rj@gmail.com'),
(8, 'V1808211104490', 'Carlos', 'Almonds', 'Valdez', '1985-02-12', '#3333', 'dsassd', 'sdasd', '1111', '2018-08-21 23:06:10', 'CValdez', 'carlos', 'Active', '<p>vibe 20</p>', 'doctor-winthrop1.jpg', 'Male', '09021232212', 'carlosvaldex10@gmail.com'),
(9, 'V1808211106539', 'Renato', 'Ren', 'Anto', '1984-05-21', 'sdsd', 'sads', 'sdsd', 'asdsd', '2018-08-21 23:07:31', '', '', 'Active', '<p>sssasdsad</p>', 'doctor-winthrop.jpg', 'Male', '09021232212', 'rj@gmail.com'),
(10, 'V1809011155197', 'dsdass', 'sdasdsa', 'sdasdsadsa', '2018-09-01', 'sdsd', '234', '4343', '33', '2018-09-01 23:56:21', 'dsdasdsadsa', 'V1809011155197', 'Active', '<p>ivnasdsdasd</p>', '', 'Male', '3424243', 'icjfuncion@gmail.com');

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
-- Indexes for table `tbl_possible_ symptoms`
--
ALTER TABLE `tbl_possible_ symptoms`
  ADD PRIMARY KEY (`possible_symptoms_id`);

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
  MODIFY `appointment_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `tbl_bannerimages`
--
ALTER TABLE `tbl_bannerimages`
  MODIFY `bannerimage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbl_checkupdetails`
--
ALTER TABLE `tbl_checkupdetails`
  MODIFY `checkup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4664;
--
-- AUTO_INCREMENT for table `tbl_petbreeds`
--
ALTER TABLE `tbl_petbreeds`
  MODIFY `breed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tbl_pets`
--
ALTER TABLE `tbl_pets`
  MODIFY `pet_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `tbl_pettype`
--
ALTER TABLE `tbl_pettype`
  MODIFY `pettype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_pet_library`
--
ALTER TABLE `tbl_pet_library`
  MODIFY `library_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `tbl_pet_library_content`
--
ALTER TABLE `tbl_pet_library_content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `tbl_pet_library_links`
--
ALTER TABLE `tbl_pet_library_links`
  MODIFY `links_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `tbl_possible_ symptoms`
--
ALTER TABLE `tbl_possible_ symptoms`
  MODIFY `possible_symptoms_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_productfoods`
--
ALTER TABLE `tbl_productfoods`
  MODIFY `food_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tbl_productinventories`
--
ALTER TABLE `tbl_productinventories`
  MODIFY `inv_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;
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
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT for table `tbl_salesdetails`
--
ALTER TABLE `tbl_salesdetails`
  MODIFY `salesdetail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;
--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_service_rendered`
--
ALTER TABLE `tbl_service_rendered`
  MODIFY `service_rendered_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
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
  MODIFY `tbluser_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbl_veterinarians`
--
ALTER TABLE `tbl_veterinarians`
  MODIFY `veterinarian_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
