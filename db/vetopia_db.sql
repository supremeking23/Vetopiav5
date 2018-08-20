-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2018 at 09:13 AM
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

INSERT INTO `tbl_admins` (`admin_table_id`, `admin_type`, `admin_id`, `firstname`, `middlename`, `lastname`, `birthdate`, `contact`, `homeAddress`, `barangayAddress`, `cityAddress`, `postalID`, `admin_status`, `dateAdded`, `username`, `password`, `profile`, `gender`) VALUES
(1, 'Super Admin', 'A1806231044313', 'Ivan Christian Jay', 'Echanes', 'Funcion', '1995-11-23', '09481212312', '16th ISU Village', 'Barangay 31', 'Makati ', '21', 'Active', '2018-06-23 10:49:02', 'superadmin', 'superadmin', 'Godspeed1.jpg', 'Male'),
(2, 'Admin', 'A1806231052520', 'Lewis Alfred', 'LA', 'Tenorio', '1995-11-23', '09023123222', '16th ISU Village', 'Ginebra', 'San Juan', '333', 'Active', '2018-06-23 10:53:42', '0la5', 'tenorio', 'vet.png', 'Male'),
(3, 'Admin', 'A1807060553307', 'iVAN', 'Echanes', 'Danvers', '2000-02-14', '09481212312', '16th ISU Village', 'Barangay 31', 'National City', '1212', 'Inactive', '2018-07-06 17:54:24', '0ivan', 'IVANIVAN', '', 'Male'),
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
  `is_finished` int(11) NOT NULL,
  `date_confirmed` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_appointments`
--

INSERT INTO `tbl_appointments` (`appointment_table_id`, `appointment_id`, `customer_id`, `customer_name`, `preferredDate`, `preferredtime`, `pet_name`, `pet_id`, `pettype`, `petbreed`, `age`, `is_adult`, `appointment_status`, `date_requested`, `vet_id`, `vet_in_charge`, `complaints`, `cancel_reason`, `cancel_date`, `is_finished`, `date_confirmed`) VALUES
(39, '#1807261204481', 'C1807251258419', 'Apple Salad David', '2018-07-26', '11:00 am - 12: 00 nn', 'Steel', 'P1807250114188', 'Dog', 'German Shepherd', '6 Months old', 0, 'Done', '2018-07-26 00:04:48', 'V1806231110251', 'Dominic Lanz Uy', 'ivan', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(40, '#1807260430180', 'C1807251258419', 'Apple Salad David', '2018-07-26', '12:00 nn - 1:00 pm', 'Steel', 'P1807250114188', 'Dog', 'German Shepherd', '6 Months old', 0, 'Done', '2018-07-26 16:30:18', 'V1806231110251', 'Dominic Lanz Uy', 'dasdadadasd', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(41, '#1807260437012', 'C1807251258419', 'Apple Salad David', '2018-07-26', '4: 00 pm - 5: 00pm', 'Steel', 'P1807250114188', 'Dog', 'German Shepherd', '6 Months old', 0, 'Cancelled', '2018-07-26 16:37:01', 'V1806231110251', 'Dominic Lanz Uy', 'dasdsdadsdsddddsds', 'wala na finish na\r\n                              \r\n                            ', '2018-07-26 16:37:14', 0, '0000-00-00 00:00:00'),
(42, '#1808020112256', 'C1807251258419', 'Apple Salad David', '2018-08-02', '4: 00 pm - 5: 00pm', 'Apple', 'P1807251259295', 'Dog', 'German Shepherd', '1 Years old', 1, 'Approved', '2018-08-02 01:12:25', 'V1806231110251', 'Dominic Lanz Uy', 'Pa groom :D', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(43, '#1808150214051', 'C1807251258419', 'Apple Salad David', '2018-08-16', '9:00 am - 10:00 am', 'Apple', 'P1807251259295', 'Dog', 'German Shepherd', '1 Years old', 1, 'Approved', '2018-08-15 02:14:05', 'V1806251201455', 'Ben Simon Shawn Simmons', 'hahahaha', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

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
(1, 1, 'kennel.gif', 'dasdasd', 'sdsd'),
(2, 1, 'kennel.gif', 'dasd', 'sdsdad'),
(3, 1, 'ram_pic.PNG', 'Windows 10', '1212121asdad'),
(4, 1, 'ram_pic1.PNG', 'sdadas', 'sdsdsd'),
(5, 1, 'ram_pic2.PNG', 'sadsd', 'sdadsad'),
(6, 1, 'ram_pic3.PNG', 'ivansdsda', 'yausdsd'),
(7, 1, 'ram_pic4.PNG', 'ivansdasdsd', '4545453454ffsf'),
(8, 1, 'ram_pic5.PNG', 'dsdas', 'sadsdsd'),
(9, 1, 'carousel-stateoftheart.jpg', 'Doctor Strange', 'Deads na');

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
  `customer_status` varchar(45) NOT NULL,
  `profile` text NOT NULL,
  `contact` text NOT NULL,
  `gender` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_table_id`, `customer_id`, `firstname`, `middlename`, `lastname`, `birthdate`, `homeAddress`, `barangayAddress`, `cityAddress`, `postalID`, `dateAdded`, `username`, `password`, `customer_status`, `profile`, `contact`, `gender`) VALUES
(5, 'C1807251258419', 'Apple', 'Salad', 'David', '1993-01-18', '16th ISU Village', 'Barangay 31', 'National City', '232', '2018-07-25 00:59:22', '3apple', 'apple', 'Active', 'user4-128x1281.jpg', '09481212312', 'Female'),
(6, 'C1808020433038', 'Hernan', 'Martinez', 'Alar', '1990-06-12', 'Makati', 'Makati', 'Makati', '222', '2018-08-02 16:34:17', '3hernans', 'hernan', 'Active', '', '0912121211', 'Male');

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
(7, 'P1807251259295', 'Apple', 5, 1, 18, '2017-01-09', '2018-07-25 01:00:07', 'Male', 'German_shephard.jpg'),
(8, 'P1807250114188', 'Steel', 5, 1, 18, '2018-01-07', '2018-07-25 01:14:45', 'Male', 'German_shephard1.jpg'),
(9, 'P1807250245452', 'Karla', 5, 1, 17, '2017-11-22', '2018-07-25 14:46:17', 'Female', 'German_shephard2.jpg'),
(10, 'P1807250246175', 'star', 5, 1, 17, '2015-01-14', '2018-07-25 15:00:37', 'Male', 'German_shephard3.jpg'),
(11, 'P1808181258410', 'Arnet', 6, 3, 22, '1987-01-07', '2018-08-18 00:59:13', 'Female', 'team1.png'),
(12, 'P1808190153329', 'Arn', 6, 3, 22, '2015-02-10', '2018-08-19 13:53:52', 'Male', 'kennel.gif');

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
(34, 'DASDASDASD', 'DADSA', 'black-cat5.jpg', 'Active', 'Ivan Christian Jay Echanes Funcion'),
(35, 'dadada', 'daddssasdsdsg ', 'black-cat6.jpg', 'Inactive', 'Ivan Christian Jay Echanes Funcion'),
(36, 'dsds', 'sdasdsds svianvasfsadad ', 'black-cat7.jpg', 'Active', 'Ivan Christian Jay Echanes Funcion'),
(37, 'dasdasd', 'sdadadasd ', 'black-dog2.jpg', 'Active', 'Ivan Christian Jay Echanes Funcion'),
(38, 'dadsad', 'dadasdsa ', 'bootstrap2.png', 'Active', 'Ivan Christian Jay Echanes Funcion'),
(39, 'dasdsds', 'sdaddasdds dasdsdadsds ', 'black-dog3.jpg', 'Active', 'Ivan Christian Jay Echanes Funcion'),
(40, 'dasdsdasdsad', 'sadasdsdasdasd ', 'carousel-stateoftheart.jpg', 'Active', 'Ivan Christian Jay Echanes Funcion'),
(41, 'Kennel Cough', 'Kennel cough is an infectious bronchitis of d', 'carousel-stateoftheart2.jpg', 'Inactive', 'Ivan Christian Jay Echanes Funcion');

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
(1, 35, 'daddssasdsdsg'),
(2, 36, 'sdasdsds'),
(3, 36, 'svianvasfsadad'),
(4, 37, 'sdadadasd'),
(5, 38, 'dadasdsa'),
(6, 39, 'sdaddasdds'),
(7, 39, 'dasdsdadsds'),
(8, 40, 'Dogs can make an assortment of respiratory sounds. Usually a cough is recognizable but it is important to be aware of another sound called a reverse sneeze. The reverse sneeze is often mistaken for a cough, a choking fit, sneezing, retching, or even for some sort of respiratory distress. In fact, the reverse sneeze represents a post-nasal drip or tickle in the throat. It is considered normal especially for small dogs or dogs and only requires attention if it is felt to be excessive. The point here is to know a cough when you see one. A cough can be dry or productive, meaning it is followed by a gag, swallowing motion, production of foamy mucus (not to be confused with vomiting). Here are some videos that might help'),
(9, 41, '<b>Kennel cough</b> is an infectious bronchitis of dogs characterized by a harsh, hacking cough that most people describe as sounding like “something stuck in my dog’s throat.” This bronchitis may be of brief duration and mild enough to warrant no treatment at all or it may progress all the way to a life-threatening pneumonia depending on which infectious agents are involved and the immunological strength of the patient. An uncomplicated kennel cough runs a course of a week or two and entails frequent fits of coughing in a patient who otherwise feels active and normal. Uncomplicated cases do not involve fever or listlessness, just lots of coughing.'),
(10, 41, 'Dogs can make an assortment of respiratory sounds. Usually a cough is recognizable but it is important to be aware of another sound called a reverse sneeze. The reverse sneeze is often mistaken for a cough, a choking fit, sneezing, retching, or even for some sort of respiratory distress. In fact, the reverse sneeze represents a post-nasal drip or tickle in the throat. It is considered normal especially for small dogs or dogs and only requires attention if it is felt to be excessive. The point here is to know a cough when you see one. A cough can be dry or productive, meaning it is followed by a gag, swallowing motion, production of foamy mucus (not to be confused with vomiting). Here are some videos that might help.'),
(11, 41, '<p>isdjakdja ivan dahsdsddsd</p>');

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
(1, 35, 'fgfgfgasds'),
(2, 36, 'https://google.com'),
(3, 37, 'dasdsda'),
(4, 38, 'dsdadas'),
(5, 39, 'asdasdsada'),
(6, 40, 'dasdsdsdasd'),
(7, 41, 'https://google.com'),
(10, 41, 'google.com');

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
(238, 39, '#Item1808200149209', 'Cat Shampoo', 'Item', 'Purchased Product', 'Customer(Walking)', 'qqqq', '2018-08-20 15:05:25', 2, '0000-00-00');

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
(38, 11, 'Dino Flakes', '5 (Kg) ', 'Food', '#Food1808200141256', 43, '2018-08-20 01:42:34', 'AdSlots468_HI_Q3_2018111.jpg', '100.00', '112.00'),
(39, 18, 'Cat Shampoo', '', 'Item', '#Item1808200149209', 97, '2018-08-20 01:50:18', 'AdSlots468_MK_Q2_201822.jpg', '100.00', '112.00'),
(40, 13, 'Dino Capsule Evolution', '3 (Liters) ', 'Medicine', '#Med1808200154179', 68, '2018-08-20 01:55:20', 'AdSlots468_HI_Q3_201821.jpg', '1111.00', '1244.32');

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
(114, '#1808200305250', 'Walking', '0', 'qqqq', '2018-08-20 15:05:25', 'Ivan Christian Jay Echanes Funcion', 'A1806231044313', '224.00', '250.00', '26.00');

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
(122, 114, '#Item1808200149209', 'Item', 'Cat Shampoo', '100.00', 2, '224.00', '0.12', '26.88', '250.88');

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
(4, 'cat', 'adult (1 year old and above)', 'Deworming', '<p>Deworming for adult cats.</p><p></p><p>Medicin3s</p>', '400.00', 'Active'),
(5, 'dog', 'adult (1 year old and above)', 'Deworming ', '<p>\r\n\r\n</p><p>Deworming for adult dogs.</p><p>Medicine includes the ff:</p><p></p><ul><li>dognapper 22ml<br></li><li>dogcatnaper 11ml</li></ul><p></p><p>s</p>\r\n\r\n<p></p>', '222.00', 'Active'),
(6, 'dog', 'adult (1 year old and above)', 'dasdsdasda', '<p>\r\n\r\n</p><p>Deworming for adult dogs.</p><p>Medicine includes the ff:s</p><p></p><ul><li>dognapper 22ml<br></li><li>dogcatnaper 11mls</li></ul>\r\n\r\n<p></p>', '211.00', 'Active'),
(7, 'dog', 'adult (1 year old and above)', 'sdadasda', '<p>sdasdasdsa</p>', '2222.00', 'Active');

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
  `store_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`settings_id`, `theme_color`, `aboutus_content`, `vet_fee`, `clinic_email_address`, `clinic_home_address`, `clinic_barangay_address`, `clinic_city_address`, `clinic_postal_id`, `vat`, `store_name`) VALUES
(1, 'skin-red', '<p>Wisdom Pet Medicine strives to blend the best in traditional and alternative medicine in the diagnosis and treatment of companion animals including dogs, cats, birds, reptiles, rodents, and fish. We apply the wisdom garnered in the centuries old tradition of veterinary medicine, to find the safest treatments and <i>cures. </i>We strive to be your pet\'s medical experts from youth through the senior years. We build preventative health care plans for each and every one of our patients, based on breed, age, and sex, so that your pet receives the most appropriate care at crucial milestones. We want to give your pet a long and healthy life<br></p><p>ivan christian jays</p>\r\n\r\n<p></p>', '111.00', 'vetopias_D@gmail.com', '#1433', 'Barangay bas', 'Makati City', '121', '.12', 'Agapa ng Ina m0 ka');

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
  `gender` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_staffs`
--

INSERT INTO `tbl_staffs` (`staff_table_id`, `staff_id`, `firstname`, `middlename`, `lastname`, `birthdate`, `homeAddress`, `barangayAddress`, `cityAddress`, `postalID`, `dateAdded`, `username`, `password`, `staff_status`, `profile`, `contact`, `gender`) VALUES
(1, 'S1806231153417', 'Jackies', 'Lee', 'Chan', '1980-06-16', '16th ISU Village', 'Barangay 31', 'National City', '1212', '2018-06-23 23:53:50', '2chan', 'chan', 'Active', '2_wolfs.jpg', '09481212312', 'Male'),
(2, 'S1806231155335', 'Boy', 'Lito', 'Dele Cruz', '1975-01-27', '16th ISU Village', 'Barangay 31', 'National City', '1212', '2018-06-23 23:56:15', '2boy', 'boy', 'Active', '', '09481212312', 'Male'),
(3, 'S1806251213319', 'Walter', 'Brian', 'O\'Brien', '1994-06-27', '16th ISU Village', 'Barangay 31', 'National City', '1212', '2018-06-25 00:14:28', '2walter', 'walter', 'Active', '', '09481212312', 'Male'),
(4, 'S1807251253565', 'Gretchon', 'Set', 'Go', '1990-10-01', '16th ISU Village', 'Eagle', 'National City', '666', '2018-07-25 00:56:50', '2gretchen', 'gretchen', 'Inactive', '', '09481212312', 'Female');

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
  `hash_password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `contact` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_veterinarians`
--

INSERT INTO `tbl_veterinarians` (`veterinarian_table_id`, `veterinarian_id`, `firstname`, `middlename`, `lastname`, `birthdate`, `homeAddress`, `barangayAddress`, `cityAddress`, `postalID`, `dateAdded`, `username`, `password`, `veterinarian_status`, `vetbio`, `profile`, `gender`, `contact`) VALUES
(1, 'V1806231110251', 'Dominic', 'Lanz', 'Uy', '1979-01-15', '16th ISU Village', 'Barangay 34', 'National City', '1212', '2018-06-23 23:10:33', '1doms', 'doms', 'Active', 'lorem ipsom delor doms', 'user7-128x128.jpg', 'Male', '09481212312'),
(2, 'V1806251201455', 'Ben Simon', 'Shawn', 'Simmons', '1976-09-27', '16th ISU Village', 'Barangay 31', 'National City', '1212', '2018-06-25 00:03:09', '1bensimmons', 'bensimmons', 'Active', 'hahahhaahhahaha', '', 'Male', '09481212312'),
(3, 'V1807251251271', 'Lebron', 'Airball', 'James', '1984-11-28', '16th ISU Village', 'Cleveland', 'National City', '232', '2018-07-25 00:52:38', '1lebron23', 'lebronjames23', 'Inactive', 'Bago lang sya dito', '', 'Male', '09481212312');

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
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
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
  MODIFY `appointment_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `tbl_bannerimages`
--
ALTER TABLE `tbl_bannerimages`
  MODIFY `bannerimage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_checkupdetails`
--
ALTER TABLE `tbl_checkupdetails`
  MODIFY `checkup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_kittens_programs`
--
ALTER TABLE `tbl_kittens_programs`
  MODIFY `kittens_prog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4249;
--
-- AUTO_INCREMENT for table `tbl_petbreeds`
--
ALTER TABLE `tbl_petbreeds`
  MODIFY `breed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tbl_pets`
--
ALTER TABLE `tbl_pets`
  MODIFY `pet_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_pettype`
--
ALTER TABLE `tbl_pettype`
  MODIFY `pettype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_pet_library`
--
ALTER TABLE `tbl_pet_library`
  MODIFY `library_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `tbl_pet_library_content`
--
ALTER TABLE `tbl_pet_library_content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_pet_library_links`
--
ALTER TABLE `tbl_pet_library_links`
  MODIFY `links_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_productfoods`
--
ALTER TABLE `tbl_productfoods`
  MODIFY `food_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_productinventories`
--
ALTER TABLE `tbl_productinventories`
  MODIFY `inv_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;
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
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT for table `tbl_salesdetails`
--
ALTER TABLE `tbl_salesdetails`
  MODIFY `salesdetail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `tbluser_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_veterinarians`
--
ALTER TABLE `tbl_veterinarians`
  MODIFY `veterinarian_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
