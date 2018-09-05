-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2018 at 09:31 PM
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
(85, '#1809051202118', 'C1808211035448', 20, 'Lee Min Horse', '2018-09-06', '9:00 am - 10:00 am', 'Helen', 'P1809020130356', 'Cat', 'Maine Coon', '-1 Years old', 0, 'On-Process', '2018-09-05 00:02:11', 'V1808211104490', 'Carlos Almonds Valdez', '<p>hahhaahha</p>', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0.00', '0.00', '0.00');

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
(76, '2018-09-05 23:54:04', 84, '#1809041158396', '2018-09-05', '12:00 nn - 1:00 pm', 'Carlos Almonds Valdez', 'V1808211104490', 'P1809031155058', 'Brock', '2 Years old', '<p>follow up checkup</p>', '<p>progressive enchantment</p>', '<p>like we use to do</p>');

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
(4423, 'Ivan Christian Jay Echanes Funcion', 'Super Admin', 'A1806231044313', 'View Sales Report', '2018-09-06 03:28:23');

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
(4, 'horse', 'Horse', 'Active'),
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
  `user_table_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pet_library`
--

INSERT INTO `tbl_pet_library` (`library_id`, `title`, `content`, `article_image`, `article_status`, `created_by`, `user_type`, `user_id`, `user_table_id`) VALUES
(48, 'Colitis', 'In brief, colitis is the term for inflammatio', 'German_shephard1111.jpg', 'Active', 'Ivan Christian Jay Echanes Funcion', '', '', 0),
(49, 'uBO', 'DASDSADS ', 'blog1.jpg', 'Active', 'Ivan Christian Jay Echanes Funcion', '', '', 0),
(50, 'Allergies: Atopic Dermatitis (Airborne)', 'very one knows someone with hay fever. Airbor', 'carousel-lifestyle.jpg', 'Active', 'Ivan Christian Jay Echanes Funcion', '', '', 0),
(51, 'Abscesses from Bite Wounds', 'An abscess forms when an infected bite wound ', 'carousel-fish.jpg', 'Active', 'Carlos Almonds Valdez', '', '', 0),
(52, 'ivan', 'dsdaddsadsad sdsdsds ', 'carousel-fish1.jpg', 'Active', 'Ivan Christian Jay Echanes Funcion', '', '', 0),
(53, 'Groot', 'Grootomg ', 'AdSlots468_HI_Q3_201811.jpg', 'Active', 'Carlos Almonds Valdez', '', '', 0),
(54, 'Goodspeed', 'Goodspeed ', 'Godspeed13.jpg', 'Active', 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 0),
(55, 'dasdasd', 'dsdasdsdsdasdsa ', 'Godspeed14.jpg', 'Active', 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 0),
(56, 'sdasd', 'ssdsdsa ', 'Godspeed15.jpg', 'Active', 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 8),
(57, 'trial 1', '    The colon is another term for the large o', 'AdSlots468_HI_Q3_2018111.jpg', 'Active', 'Carlos Almonds Valdez', 'Veterinarian', 'V1808211104490', 8);

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
(33, 48, '&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; In brief, colitis is the term for inflammation of the colon. The chief feature of colitis is a gooey, frequently splattery diarrhea featuring mucus, fresh blood, or both. The stool may start normal then finish soft or may seem gooey throughout. There is often accompanying cramping, gas, and a sense of immediate urgency (the sudden need to run for a bathroom). Vomiting can be a feature of this condition though the characteristic diarrhea is the hallmark. Colitis may be acute (lasting only a few days) or chronic (lasting weeks or months on end). Even in chronic cases, weight loss is usually not a feature of this condition.'),
(34, 48, '&nbsp; &nbsp; &nbsp; &nbsp;The colon is another term for the large or lower intestine. For those who do not know the lower intestine from the upper intestine, the colon/lower intestine is basically the last segment of the digestive tract. Before reaching the colon, food has been extensively processed. First, food is chewed up in the mouth, moved to the stomach via the esophagus where it undergoes acid treatment and extensive digestion with enzymes breaking down nutrients in to smaller molecular structures. Digestion continues early in the small intestine, but most of the small intestine (the segment immediately after the stomach) is about absorbing&nbsp; nutrients. By the time the food has passed through the small intestine, all the digestible nutrients have been broken down and absorbed, leaving only water and undigestible nutrients to enter the colon.'),
(35, 48, '&nbsp; &nbsp; &nbsp;But the digestive tract is not through with the food remnants quite yet and this is the where the business of the colon comes in. The colon has three functions: absorbing water, storing stool, and further digesting unabsorbed nutrients. The bacterial population in the colon is about 10 times more dense than that of the small intestine. These bacteria, often referred to as&nbsp; good or helpful bacteria, take fibers that were undigestible to the host and actually process them into biochemicals that provide nourishment to the colon cells. The bacteria that live in the colon not only feed the cells of the colon, but they also control the pH of the colon environment so that excreted toxins are trapped in the stool and will be pooped away rather than be reabsorbed back into the body. They also produce flatulent gases and the pigments that lead to the ultimate color of stool. The relationship we have with our colon bacteria is mutually beneficial and is an excellent example of symbiosis'),
(36, 49, 'DASDSADS'),
(37, 50, 'very one knows someone with hay fever. Airborne pollens, molds, dust particles, etc. are inhaled and soon the sneezing and sniffling begins. A simple way to think of atopy for pets would be simply saying that the airborne allergen is inhaled but instead of sneezing and sniffling, the pet gets itchy skin. In fact, this was what we thought was happening for many years but the situation turns out to be more complicated. Airborne pollens, molds, dust particles etc. gain entry to the skin through a defective skin barrier, and from there their proteins are presented to the immune system. Cells of inflammation migrate back to the skin and soon the itching and scratching begins. The allergens come from the air but the itch is manifested in the skin.'),
(38, 50, '<p>\r\n\r\n</p><p><strong>Features of Atopy</strong></p><p>There are many reasons for pets to itch: parasites, allergy to flea bites, food allergy, secondary infection and the list goes on.</p><p>The following are findings in the history and examination of the patient that might lead to a diagnosis of atopy. In fact, meeting five criteria from this list yields an 85 percent accuracy for the diagnosis of atopic dermatitis, at least for dogs:</p><ul><li><em>Young age of onset</em><br>Seasonal itchiness due to atopy tends to begin early in a pet\'s life (between ages 1 and 3 years in 70 percent of dogs diagnosed with atopy). <a target=\"_blank\" rel=\"nofollow\" href=\"http://www.veterinarypartner.com/Content.plx?P=A&amp;S=0&amp;C=0&amp;A=652\">Food allerg</a>y tends to begin later (more like age 5 or 6 years in dogs) or earlier (less than 6 months of age). Age at which itching first manifests is not as reliable a sign in cats as in dogs.</li><li><em>Mostly indoor lifestyle</em><br>It is indoors where many airborne allergens concentrated; however, it is important to note that allergens in the air are in the air for miles so it is not easy to escape allergens by simply going outdoors nor by simply going indoors.</li><li><em>Good response to steroids</em><br>Whether the patient is a dog or cat, itchiness due to atopy responds rapidly to cortisone-type medications (prednisone, depomedrol, dexamethasone, etc.) as does itching due to insect bite allergy. Food allergy is more variable in its response; it may or may not respond well.</li><li><em>Chronic or recurring yeast infections in the skin</em><br>Yeast (<em>Malassezia pachydermatis</em>) live on the surface of the skin normally but with all the changes allergy causes to the skin\'s microenvironment, yeast will proliferate and create a stinky, thickened, pigmented skin that resembles elephant skin or even tree bark. Environmental allergy is a strong predisposing factor in developing yeast dermatitis.</li><li><em>Front feet involved</em></li><li><em>Ear flaps involved</em><br>There is a lesion distribution that is common in inhalant allergy. It is, unfortunately, very similar to that of <a target=\"_blank\" rel=\"nofollow\" href=\"http://www.veterinarypartner.com/Content.plx?P=A&amp;S=0&amp;C=0&amp;A=616\">sarcoptic mange</a>&nbsp;and overlaps greatly with the lesion distribution of flea bite allergy.</li><li><em>Ear margins not involved</em><br>Ear margin involvement is suggestive of sarcoptic mange and would lead one away from airborne allergies.</li><li><em>Lower back area not involved</em><br>The lower back is the flea bite zone. There are few conditions other than flea bite allergy that cause itching in this area, so if this area is involved, make sure <a target=\"_blank\" rel=\"nofollow\" href=\"http://www.veterinarypartner.com/Content.plx?P=A&amp;A=2858&amp;S=4&amp;SourceID=61\">flea control</a>&nbsp;is achieved before further evaluating the skin.</li></ul>\r\n\r\n<br><p></p>'),
(39, 51, 'An abscess forms when an infected bite wound heals over on the surface, sealing the infection inside. Fever is generated as the infection incubates. Diseased tissue and the inflammatory cells liquefy into pus. The pus breaks through the overlying surface skin and drains, leading to foul odor, pain, and discharge. The area may or may not heal on its own.'),
(40, 52, 'dsdaddsadsad'),
(41, 52, '<div>This article is about the type of website. For other uses, see <a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Wiki_(disambiguation)\">Wiki (disambiguation)</a>.</div><div>\"WikiNode\" redirects here. For WikiNode of Wikipedia, see <a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Wikipedia:WikiNode\">Wikipedia:WikiNode</a>. For the app for the Apple iPad, see <a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/WikiNodes\">WikiNodes</a>.</div><div><div><div><img alt=\"FileWard Cunningham Inventor of the Wikiwebm\" src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Ward_Cunningham%2C_Inventor_of_the_Wiki.webm/220px--Ward_Cunningham%2C_Inventor_of_the_Wiki.webm.jpg\"><a target=\"_blank\" rel=\"nofollow\" href=\"https://upload.wikimedia.org/wikipedia/commons/3/31/Ward_Cunningham%2C_Inventor_of_the_Wiki.webm\"></a></div><div><div><a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/File:Ward_Cunningham,_Inventor_of_the_Wiki.webm\"></a></div>Interview with <a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Ward_Cunningham\">Ward Cunningham</a>, inventor of the wiki</div></div></div><p>A <b>wiki</b>&nbsp;(<a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Help:IPA/English\">/?w?ki/</a><small>&nbsp;(<a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/File:En-us-wiki.ogg\"><img width=\"11\" alt=\"About this sound\" src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Loudspeaker.svg/11px-Loudspeaker.svg.png\" height=\"11\"></a>&nbsp;<a target=\"_blank\" rel=\"nofollow\" href=\"https://upload.wikimedia.org/wikipedia/commons/4/46/En-us-wiki.ogg\">listen</a>)</small>&nbsp;<a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Help:Pronunciation_respelling_key\"><i>WIK-ee</i></a>) is a <a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Website\">website</a>&nbsp;on which users <a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Collaborative_software\">collaboratively</a>&nbsp;modify content and structure directly from the <a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Web_browser\">web browser</a>. In a typical wiki, text is written using a simplified <a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Markup_language\">markup language</a>&nbsp;and often edited with the help of a <a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Online_rich-text_editor\">rich-text editor</a>.<a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Wiki#cite_note-Britannica-1\">[1]</a></p><p>A wiki is run using <a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Wiki_software\">wiki software</a>, otherwise known as a wiki engine. A wiki engine is a type of <a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Content_management_system\">content management system</a>, but it differs from most other such systems, including <a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Blog_software\">blog software</a>, in that the content is created without any defined owner or leader, and wikis have little inherent structure, allowing structure to emerge according to the needs of the users.<a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Wiki#cite_note-Easy_Wiki_Hosting-2\">[2]</a>&nbsp;There are dozens of different wiki engines in use, both standalone and part of other software, such as <a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Bug_tracking_system\">bug tracking systems</a>. Some wiki engines are <a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Open_source\">open source</a>, whereas others are <a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Proprietary_software\">proprietary</a>. Some permit control over different functions (levels of access); for example, editing rights may permit changing, adding, or removing material. Others may permit access without enforcing access control. Other rules may be imposed to organize content.</p><p>The online encyclopedia project <a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Wikipedia\">Wikipedia</a>&nbsp;is by far the most popular wiki-based website, and is one of the most widely viewed sites of any kind in the world, having been ranked in the top ten since 2007.<a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Wiki#cite_note-Alexa_Top_Sites-3\">[3]</a>&nbsp;Wikipedia is not a single wiki but rather a collection of hundreds of wikis, one for each language. There are tens of thousands of other wikis in use, both public and private, including wikis functioning as <a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Knowledge_management\">knowledge management</a>&nbsp;resources, <a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Notetaking_software\">notetaking</a>&nbsp;tools, <a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Web_community\">community websites</a>, and <a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Intranet\">intranets</a>. The English-language Wikipedia has the largest collection of articles; as of September 2016, it had over five million articles. <a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Ward_Cunningham\">Ward Cunningham</a>, the developer of the first wiki software, <a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/WikiWikiWeb\">WikiWikiWeb</a>, originally described it as \"the simplest online database that could possibly work\".<a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Wiki#cite_note-4\">[4]</a>&nbsp;\"<a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wiktionary.org/wiki/wiki#Hawaiian\">Wiki</a>\" (pronounced <small></small><a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Help:IPA/Hawaiian\">[?wiki]</a><a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Wiki#cite_note-5\">[note 1]</a>) is a <a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Hawaiian_language\">Hawaiian</a>&nbsp;word meaning \"quick\".<a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Wiki#cite_note-6\">[5]</a><a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Wiki#cite_note-7\">[6]</a><a target=\"_blank\" rel=\"nofollow\" href=\"https://en.wikipedia.org/wiki/Wiki#cite_note-8\">[7]</a></p>'),
(42, 53, 'Grootomg'),
(43, 54, 'Goodspeed'),
(44, 55, 'dsdasdsdsdasdsa'),
(45, 56, '&nbsp; &nbsp; &nbsp; &nbsp; The colon is another term for the large or lower intestine. For those who do not know the lower intestine from the upper intestine, the colon/lower intestine is basically the last segment of the digestive tract. Before reaching the colon, food has been extensively processed. First, food is chewed up in the mouth, moved to the stomach via the esophagus where it undergoes acid treatment and extensive digestion with enzymes breaking down nutrients in to smaller molecular structures. Digestion continues early in the small intestine, but most of the small intestine (the segment immediately after the stomach) is about absorbing  nutrients. By the time the food has passed through the small intestine, all the digestible nutrients have been broken down and absorbed, leaving only water and undigestible nutrients to enter the colon.'),
(46, 56, '<p>ivan the greats</p>'),
(47, 54, '<p>ivansdssasds</p>'),
(48, 56, '<p>\r\n\r\n&nbsp;  The colon is another term for the large or lower intestine. For those who do not know the lower intestine from the upper intestine, the colon/lower intestine is basically the last segment of the digestive tract. Before reaching the colon, food has been extensively processed. First, food is chewed up in the mouth, moved to the stomach via the esophagus where it undergoes acid treatment and extensive digestion with enzymes breaking down nutrients in to smaller molecular structures. Digestion continues early in the small intestine, but most of the small intestine (the segment immediately after the stomach) is about absorbing nutrients. By the time the food has passed through the small intestine, all the digestible nutrients have been broken down and absorbed, leaving only water and undigestible nutrients to enter the colon.\r\n\r\n<br></p>'),
(49, 55, '<p>ivansds</p>'),
(50, 57, '    The colon is another term for the large or lower intestine. For those who do not know the lower intestine from the upper intestine, the colon/lower intestine is basically the last segment of the digestive tract. Before reaching the colon, food has been extensively processed. First, food is chewed up in the mouth, moved to the stomach via the esophagus where it undergoes acid treatment and extensive digestion with enzymes breaking down nutrients in to smaller molecular structures. Digestion continues early in the small intestine, but most of the small intestine (the segment immediately after the stomach) is about absorbing  nutrients. By the time the food has passed through the small intestine, all the digestible nutrients have been broken down and absorbed, leaving only water and undigestible nutrients to enter the colon.'),
(51, 57, '    The colon is another term for the large or lower intestine. For those who do not know the lower intestine from the upper intestine, the colon/lower intestine is basically the last segment of the digestive tract. Before reaching the colon, food has been extensively processed. First, food is chewed up in the mouth, moved to the stomach via the esophagus where it undergoes acid treatment and extensive digestion with enzymes breaking down nutrients in to smaller molecular structures. Digestion continues early in the small intestine, but most of the small intestine (the segment immediately after the stomach) is about absorbing  nutrients. By the time the food has passed through the small intestine, all the digestible nutrients have been broken down and absorbed, leaving only water and undigestible nutrients to enter the colon.'),
(52, 57, '    The colon is another term for the large or lower intestine. For those who do not know the lower intestine from the upper intestine, the colon/lower intestine is basically the last segment of the digestive tract. Before reaching the colon, food has been extensively processed. First, food is chewed up in the mouth, moved to the stomach via the esophagus where it undergoes acid treatment and extensive digestion with enzymes breaking down nutrients in to smaller molecular structures. Digestion continues early in the small intestine, but most of the small intestine (the segment immediately after the stomach) is about absorbing  nutrients. By the time the food has passed through the small intestine, all the digestible nutrients have been broken down and absorbed, leaving only water and undigestible nutrients to enter the colon.');

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
(18, 49, 'https://google.com'),
(19, 50, 'https://veterinarypartner.vin.com/default.aspx?pid=19239&catId=102899&id=4951475'),
(20, 51, 'https://veterinarypartner.vin.com/default.aspx?pid=19239&catId=102903&id=4951430'),
(21, 52, 'https://google.com'),
(22, 52, 'https://google.com'),
(23, 50, 'https://veterinarypartner.vin.com/default.aspx?pid=19239&catId=102899&id=4951475'),
(24, 53, 'https://google.com'),
(25, 54, 'https://google.com'),
(26, 55, 'https://google.com'),
(27, 56, 'https://google.com'),
(29, 57, 'google.com'),
(30, 57, 'https://google.com'),
(31, 57, 'retrica.com');

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
(11, '#Food1808200141256', 'Dino Flakes', 'dinosaur', 'Dino Flakes Serials', 'AdSlots468_HI_Q3_2018111.jpg', '100.00', 'Dino Corp', '2018-09-21', '112.00', '5 (Kg) ', '5', 'Kg'),
(12, '#Food1808310109572', 'Kingler Flakes', 'cat', 'sdsdsdasd', 'AdSlots468_HI_Q3_2018119.jpg', '88.00', 'Dino Corp', '2018-08-30', '98.56', '4.5 (Kg) ', '4.5', 'Kg'),
(13, '#Food1809021205164', 'Dog Food with extra rice', 'dog', 'ibsnd fdsdfd', 'AdSlots468_HI_Q3_20181110.jpg', '90.00', 'Dino Corp', '2018-09-28', '100.80', '55 (Gallon) ', '55', 'Gallon'),
(14, '#Food1809021216354', 'Andys food', 'all', 'dsdasds', 'AdSlots468_HI_Q3_20181111.jpg', '90.00', '121', '2018-10-11', '100.80', '22 (Gallon) ', '22', 'Gallon'),
(15, '#Food1809021235256', 'Spider food', '', 'food for spider', 'AdSlots468_HI_Q3_20181112.jpg', '90.00', 'Cars', '2018-09-28', '100.80', '3 (Gallon) ', '3', 'Gallon'),
(16, '#Food1809040943116', 'Nido', '', 'Nido for DOgs', 'AdSlots468_HI_Q3_20181113.jpg', '90.00', 'Dino Corp', '2018-10-27', '100.80', '3 (Liters) ', '3', 'Liters'),
(17, '#Food1809051118317', 'ivan', '', '<p>ivan for three... bang</p>', 'nancy.jpg', '88.00', 'Dino Corp', '2018-09-28', '98.56', '3 (Inch) ', '3', 'Inch');

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
(313, 17, '#Food1809051118317', 'ivan', 'Food', 'Add new Product', 'Super Admin', 'Ivan Christian Jay Echanes Funcion', '2018-09-05 23:18:57', 33, '2018-09-28');

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
(18, '#Item1808200149209', 'Cat Shampoo', 'Cat Shampoo', 'German_shephard1114.jpg', '100.00', 'Cat Corp', '112.00'),
(19, '#Item1808270316449', 'Dog mat', 'dog mat dog', '200x400.jpg', '90.00', 'Qualifoam', '100.80'),
(20, '#Item1809011118248', 'Cat Shampoos', 'dasdsdsdd', 'AdSlots468_HI_Q3_201811.jpg', '88.00', 'Cars', '98.56'),
(21, '#Item1809011120158', 'sas', 'sdasds', '350x600.jpg', '88.00', '121', '98.56'),
(22, '#Item1809011120454', 'sass', 'sdasds', 'AdSlots468_HI_Q3_2018115.jpg', '88.00', '121', '98.56'),
(23, '#Item1809011121300', 'sasss', 'sdasds', 'AdSlots468_HI_Q3_2018116.jpg', '88.00', '121', '98.56');

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
(13, '#Med1808200154179', 'Vitamins', 'Dino Capsule Evolution', 'Evolve your Tyranitar to Quek', 'AdSlots468_HI_Q3_2018118.jpg', '0000-00-00 00:00:00', '1111.00', 'Dino Corp', '2018-08-31', '1244.32', '3 (Liters) ', '3', 'Liters');

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
(38, 11, 'Dino Flakes', '5 (Kg) ', 'Food', '#Food1808200141256', 177, '2018-08-20 01:42:34', 'AdSlots468_HI_Q3_2018111.jpg', '100.00', '112.00'),
(39, 18, 'Cat Shampoo', '', 'Item', '#Item1808200149209', 177, '2018-08-20 01:50:18', 'German_shephard1114.jpg', '100.00', '112.00'),
(40, 13, 'Dino Capsule Evolution', '3 (Liters) ', 'Medicine', '#Med1808200154179', 225, '2018-08-20 01:55:20', 'AdSlots468_HI_Q3_2018118.jpg', '1111.00', '1244.32'),
(41, 19, 'Dog mat', '', 'Item', '#Item1808270316449', 150, '2018-08-27 15:17:38', '200x400.jpg', '90.00', '100.80'),
(42, 12, 'Kingler Flakes', '4.5 (Kg) ', 'Food', '#Food1808310109572', 199, '2018-08-31 01:11:06', 'AdSlots468_HI_Q3_2018119.jpg', '88.00', '98.56'),
(43, 20, 'Cat Shampoos', '', 'Item', '#Item1809011118248', 42, '2018-09-01 23:18:29', 'AdSlots468_HI_Q3_201811.jpg', '88.00', '98.56'),
(44, 21, 'sas', '', 'Item', '#Item1809011120158', 144, '2018-09-01 23:20:31', '350x600.jpg', '88.00', '98.56'),
(45, 22, 'sass', '', 'Item', '#Item1809011120454', 42, '2018-09-01 23:20:50', 'AdSlots468_HI_Q3_2018115.jpg', '88.00', '98.56'),
(46, 23, 'sasss', '', 'Item', '#Item1809011121300', 37, '2018-09-01 23:21:33', 'AdSlots468_HI_Q3_2018116.jpg', '88.00', '98.56'),
(47, 13, 'Dog Food with extra rice', '55 (Gallon) ', 'Food', '#Food1809021205164', 123, '2018-09-02 00:06:21', 'AdSlots468_HI_Q3_20181110.jpg', '90.00', '100.80'),
(48, 14, 'Andys food', '22 (Gallon) ', 'Food', '#Food1809021216354', 44, '2018-09-02 00:17:25', 'AdSlots468_HI_Q3_20181111.jpg', '90.00', '100.80'),
(49, 15, 'Spider food', '3 (Gallon) ', 'Food', '#Food1809021235256', 33, '2018-09-02 00:35:53', 'AdSlots468_HI_Q3_20181112.jpg', '90.00', '100.80'),
(50, 16, 'Nido', '3 (Liters) ', 'Food', '#Food1809040943116', 200, '2018-09-04 21:44:35', 'AdSlots468_HI_Q3_20181113.jpg', '90.00', '100.80'),
(51, 17, 'ivan', '3 (Inch) ', 'Food', '#Food1809051118317', 33, '2018-09-05 23:18:57', 'nancy.jpg', '88.00', '98.56');

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
(145, '#1809041107259', 'Walkin', '0', 'rizal', '2018-09-04 23:07:25', 'kirra May Ballesteros', 'S1808221221365', '98.56', '100.00', '1.44');

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
(171, 145, '#Item1809011120454', 'Item', 'sass', '88.00', 1, '98.56', '0.12', '11.83', '110.39');

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
(74, 76, 0, 'General Checkup', '111.00', 84);

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
  MODIFY `appointment_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `tbl_bannerimages`
--
ALTER TABLE `tbl_bannerimages`
  MODIFY `bannerimage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbl_checkupdetails`
--
ALTER TABLE `tbl_checkupdetails`
  MODIFY `checkup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4424;
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
  MODIFY `library_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `tbl_pet_library_content`
--
ALTER TABLE `tbl_pet_library_content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `tbl_pet_library_links`
--
ALTER TABLE `tbl_pet_library_links`
  MODIFY `links_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `tbl_productfoods`
--
ALTER TABLE `tbl_productfoods`
  MODIFY `food_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tbl_productinventories`
--
ALTER TABLE `tbl_productinventories`
  MODIFY `inv_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;
--
-- AUTO_INCREMENT for table `tbl_productitems`
--
ALTER TABLE `tbl_productitems`
  MODIFY `item_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tbl_productmedicines`
--
ALTER TABLE `tbl_productmedicines`
  MODIFY `med_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
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
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT for table `tbl_salesdetails`
--
ALTER TABLE `tbl_salesdetails`
  MODIFY `salesdetail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;
--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_service_rendered`
--
ALTER TABLE `tbl_service_rendered`
  MODIFY `service_rendered_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
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
