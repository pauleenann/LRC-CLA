-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2025 at 05:07 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lrc-cla`
--

-- --------------------------------------------------------

--
-- Table structure for table `adviser`
--

CREATE TABLE `adviser` (
  `adviser_id` int(11) NOT NULL,
  `adviser_fname` varchar(45) DEFAULT NULL,
  `adviser_lname` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adviser`
--

INSERT INTO `adviser` (`adviser_id`, `adviser_fname`, `adviser_lname`) VALUES
(71, 'Kevien P.', 'Cabarrubias'),
(72, 'Pedrito Real', 'Pereda'),
(73, 'Danilo', 'Gatus'),
(74, 'Dr. Kevein', 'Cabarrubias'),
(75, 'Dr. Corazon C.', 'Obnamia'),
(76, 'Prof. Kevien P.', 'Cabarrubias'),
(77, 'Danilo James', 'Gatus'),
(78, 'Orlando B. Asiddao, Ph.', 'D'),
(79, 'Lourdes G. Valderrama,', 'D.P.A.'),
(80, 'Jeffren R.', 'Dioquino'),
(81, 'Romulita C. Alto,', 'EdD'),
(82, 'Dr. Edgar I.', 'Gay-ya'),
(83, 'Dr. Manuel R.', 'Pangilinan'),
(84, 'Radames M. Doctor,', 'M.N.S.A'),
(85, 'Dr. Romulita C.', 'Alto'),
(86, 'Dr. Nilo S.', 'Salas'),
(87, 'Dr. Jose R.', 'Vergara'),
(88, 'Dr. Ronaldo A.', 'Juanatas'),
(89, 'Martina M. Mendoza Ed.', 'D/'),
(90, 'Genesis S. Austria, RMP,', 'MBA'),
(91, 'Julian O. Marquez,', 'Jr.'),
(92, 'Danilo G.', 'Gatus'),
(93, 'Noel B.', 'Hernandez'),
(94, 'n/a', 'n/a'),
(95, 'Noel Hernandez, Ph.,', 'D'),
(96, 'Noel B. Hernandez, Ph.', 'D.'),
(97, 'Genesis S. Austria, RMP, MBA,', 'LPT'),
(98, 'Anna Brenda B.', 'Romilla');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `att_id` int(11) NOT NULL,
  `att_log_in_time` varchar(20) DEFAULT NULL,
  `att_date` varchar(20) DEFAULT NULL,
  `patron_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_log`
--

CREATE TABLE `audit_log` (
  `audit_id` int(11) NOT NULL,
  `user_id` varchar(11) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `record_id` varchar(11) DEFAULT NULL,
  `old_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `action_timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_log`
--

INSERT INTO `audit_log` (`audit_id`, `user_id`, `action_type`, `table_name`, `record_id`, `old_value`, `new_value`, `action_timestamp`) VALUES
(901, 'admin', 'INSERT', 'resources', '834', NULL, '\"Added a new resource: \'Justice, Morality, and Social Responsibilty\'\"', '2025-04-04 02:54:59'),
(902, 'admin', 'INSERT', 'resources', '835', NULL, '\"Added a new resource: \'Ethics: Basic Concepts and Contemporary Moral Issues\'\"', '2025-04-04 02:54:59'),
(903, 'admin', 'INSERT', 'resources', '836', NULL, '\"Added a new resource: \'Dissidente\'\"', '2025-04-04 02:54:59'),
(904, 'admin', 'INSERT', 'resources', '837', NULL, '\"Added a new resource: \'Knowlege, Nature, and the Good\'\"', '2025-04-04 02:54:59'),
(905, 'admin', 'INSERT', 'resources', '838', NULL, '\"Added a new resource: \'Philippine History and Government\'\"', '2025-04-04 02:54:59'),
(906, 'admin', 'INSERT', 'resources', '839', NULL, '\"Added a new resource: \'Rizal: Buhay at Katha\'\"', '2025-04-04 02:54:59'),
(907, 'admin', 'INSERT', 'resources', '840', NULL, '\"Added a new resource: \'Introduction to Logic\'\"', '2025-04-04 02:54:59'),
(908, 'admin', 'INSERT', 'resources', '841', NULL, '\"Added a new resource: \'Emilio Aguinaldo\'\"', '2025-04-04 02:54:59'),
(909, 'admin', 'INSERT', 'resources', '842', NULL, '\"Added a new resource: \'Readings in Philippine History\'\"', '2025-04-04 02:54:59'),
(910, 'admin', 'INSERT', 'resources', '843', NULL, '\"Added a new resource: \'The Life and Works of Rizal\'\"', '2025-04-04 02:54:59'),
(911, 'admin', 'INSERT', 'resources', '844', NULL, '\"Added a new resource: \'General Psychology\'\"', '2025-04-04 02:54:59'),
(912, 'admin', 'INSERT', 'resources', '845', NULL, '\"Added a new resource: \'The Humanities Revised Edition\'\"', '2025-04-04 02:54:59'),
(913, 'admin', 'INSERT', 'resources', '846', NULL, '\"Added a new resource: \'Ethics\'\"', '2025-04-04 02:54:59'),
(914, 'admin', 'INSERT', 'resources', '847', NULL, '\"Added a new resource: \'Readings in the Introduction to Philosophy\'\"', '2025-04-04 02:54:59'),
(915, 'admin', 'INSERT', 'resources', '848', NULL, '\"Added a new resource: \'Religion, Religious Experiences, and Spirituality\'\"', '2025-04-04 02:54:59'),
(916, 'admin', 'INSERT', 'resources', '849', NULL, '\"Added a new resource: \'PSYCHOLOGY: Knowledge Application And Beyond\'\"', '2025-04-04 02:54:59'),
(917, 'admin', 'INSERT', 'resources', '850', NULL, '\"Added a new resource: \'Exceptional Psychology (with Questions and Answers)\'\"', '2025-04-04 02:54:59'),
(918, 'admin', 'INSERT', 'resources', '851', NULL, '\"Added a new resource: \'Industrial Psychology\'\"', '2025-04-04 02:54:59'),
(919, 'admin', 'INSERT', 'resources', '852', NULL, '\"Added a new resource: \'Motivation and Personality (Third Edition)\'\"', '2025-04-04 02:55:00'),
(920, 'admin', 'INSERT', 'resources', '853', NULL, '\"Added a new resource: \'Educational Psychology\'\"', '2025-04-04 02:55:00'),
(921, 'admin', 'INSERT', 'resources', '854', NULL, '\"Added a new resource: \'Reading in General Psychology\'\"', '2025-04-04 02:55:00'),
(922, 'admin', 'INSERT', 'resources', '855', NULL, '\"Added a new resource: \'General Psychology Second Edition\'\"', '2025-04-04 02:55:00'),
(923, 'admin', 'INSERT', 'resources', '856', NULL, '\"Added a new resource: \'In Conflict And Order: Understanding Society (Fifth Edition)\'\"', '2025-04-04 02:55:00'),
(924, 'admin', 'INSERT', 'resources', '857', NULL, '\"Added a new resource: \'Naning:Mariano Ponce 150th Birth Anniversary Commemorative Lectures and Selected Articles from La Solidaridad\'\"', '2025-04-04 02:55:00'),
(925, 'admin', 'INSERT', 'resources', '858', NULL, '\"Added a new resource: \'Sociology Focus On The Philippines\'\"', '2025-04-04 02:55:00'),
(926, 'admin', 'INSERT', 'resources', '859', NULL, '\"Added a new resource: \'Sociology In The New Philippine Setting\'\"', '2025-04-04 02:55:00'),
(927, 'admin', 'INSERT', 'resources', '860', NULL, '\"Added a new resource: \'General Sociology Focus on the Philippines Second Edition\'\"', '2025-04-04 02:55:00'),
(928, 'admin', 'INSERT', 'resources', '861', NULL, '\"Added a new resource: \'Anthropology: Decisions, Adaptation, and Evolution\'\"', '2025-04-04 02:55:00'),
(929, 'admin', 'INSERT', 'resources', '862', NULL, '\"Added a new resource: \'Population Education Revised Edition\'\"', '2025-04-04 02:55:00'),
(930, 'admin', 'INSERT', 'resources', '863', NULL, '\"Added a new resource: \'Introductory Sociology for Science and Technology (Revised Edition 2009)\'\"', '2025-04-04 02:55:00'),
(931, 'admin', 'INSERT', 'resources', '864', NULL, '\"Added a new resource: \'The Impact of Technology on Human Rights: Global Case-Studies\'\"', '2025-04-04 02:55:00'),
(932, 'admin', 'INSERT', 'resources', '865', NULL, '\"Added a new resource: \'When Parents are Friends\'\"', '2025-04-04 02:55:00'),
(933, 'admin', 'INSERT', 'resources', '866', NULL, '\"Added a new resource: \'An Introduction to the Humanities: The Arts\'\"', '2025-04-04 02:55:00'),
(934, 'admin', 'INSERT', 'resources', '867', NULL, '\"Added a new resource: \'Social Problems in the West Drugs Suicide Divorce\'\"', '2025-04-04 02:55:00'),
(935, 'admin', 'INSERT', 'resources', '868', NULL, '\"Added a new resource: \'Introductory Sociology for Science and Technology (Revised Edition 2010)\'\"', '2025-04-04 02:55:00'),
(936, 'admin', 'INSERT', 'resources', '869', NULL, '\"Added a new resource: \'The Contemporary World\'\"', '2025-04-04 02:55:00'),
(937, 'admin', 'INSERT', 'resources', '870', NULL, '\"Added a new resource: \'Basic Facts about the United Nations\'\"', '2025-04-04 02:55:00'),
(938, 'admin', 'INSERT', 'resources', '871', NULL, '\"Added a new resource: \'The Constitution of the Philippines: Notes and Comments\'\"', '2025-04-04 02:55:00'),
(939, 'admin', 'INSERT', 'resources', '872', NULL, '\"Added a new resource: \'The Family Code of the Philippines Annotated (Fourth and Revised Edition)\'\"', '2025-04-04 02:55:00'),
(940, 'admin', 'INSERT', 'resources', '873', NULL, '\"Added a new resource: \'Business, Government, and Society A managerial Perspective, Text, and Cases\'\"', '2025-04-04 02:55:00'),
(941, 'admin', 'INSERT', 'resources', '874', NULL, '\"Added a new resource: \'Ang 1986 Konstitusyon ng Republika ng Pilipinas\'\"', '2025-04-04 02:55:00'),
(942, 'admin', 'INSERT', 'resources', '875', NULL, '\"Added a new resource: \'How to Establish a Democracy or Improve the One You Now Have: A Practical Guide for Developing Essential Government and Business Structures and Personal Systems of Values\'\"', '2025-04-04 02:55:00'),
(943, 'admin', 'INSERT', 'resources', '876', NULL, '\"Added a new resource: \'Administrative Theories and Politics: An Inquiry Into the Structure and Processes of Modern Government\'\"', '2025-04-04 02:55:01'),
(944, 'admin', 'INSERT', 'resources', '877', NULL, '\"Added a new resource: \'Fundamentals Of Political Science (Second Edition)\'\"', '2025-04-04 02:55:01'),
(945, 'admin', 'INSERT', 'resources', '878', NULL, '\"Added a new resource: \'Resource Book on Environmental Management\'\"', '2025-04-04 02:55:01'),
(946, 'admin', 'INSERT', 'resources', '879', NULL, '\"Added a new resource: \'From Dependence to Autonomy The Development of Asian Universities\'\"', '2025-04-04 02:55:01'),
(947, 'admin', 'INSERT', 'resources', '880', NULL, '\"Added a new resource: \'Why America Doesn\'t Work\'\"', '2025-04-04 02:55:01'),
(948, 'admin', 'INSERT', 'resources', '881', NULL, '\"Added a new resource: \'The Quest for Economic Reform and Structural Transformation in the Arab Region\'\"', '2025-04-04 02:55:01'),
(949, 'admin', 'INSERT', 'resources', '882', NULL, '\"Added a new resource: \'The Constitution of the Republic of the Philippines with Annotations 1987 First Edition\'\"', '2025-04-04 02:55:01'),
(950, 'admin', 'INSERT', 'resources', '883', NULL, '\"Added a new resource: \'European Studies: New Titles and Backlist\'\"', '2025-04-04 02:55:01'),
(951, 'admin', 'INSERT', 'resources', '884', NULL, '\"Added a new resource: \'A Legal Arsenal for the Philippine Environment\'\"', '2025-04-04 02:55:01'),
(952, 'admin', 'INSERT', 'resources', '885', NULL, '\"Added a new resource: \'The Philippine Clean Water Act of 2004 (R.A. 9275): Implications to Local Government Units, Small Business Establishments, and Women\'\"', '2025-04-04 02:55:01'),
(953, 'admin', 'INSERT', 'resources', '886', NULL, '\"Added a new resource: \'Technical Report Writing Revised Edition\'\"', '2025-04-04 02:55:01'),
(954, 'admin', 'INSERT', 'resources', '887', NULL, '\"Added a new resource: \'Technical Writing Revised Edition\'\"', '2025-04-04 02:55:01'),
(955, 'admin', 'INSERT', 'resources', '888', NULL, '\"Added a new resource: \'Technical Writing Organization, Form and Content Revised Edition\'\"', '2025-04-04 02:55:01'),
(956, 'admin', 'INSERT', 'resources', '889', NULL, '\"Added a new resource: \'Form and Style: Theses, Reports, Term Papers Sixth Edition\'\"', '2025-04-04 02:55:01'),
(957, 'admin', 'INSERT', 'resources', '890', NULL, '\"Added a new resource: \'Communication Arts II\'\"', '2025-04-04 02:55:01'),
(958, 'admin', 'INSERT', 'resources', '891', NULL, '\"Added a new resource: \'Technical Writing Organization, Form and Content\'\"', '2025-04-04 02:55:01'),
(959, 'admin', 'INSERT', 'resources', '892', NULL, '\"Added a new resource: \'366 Days with the Lord\'\"', '2025-04-04 02:55:01'),
(960, 'admin', 'INSERT', 'resources', '893', NULL, '\"Added a new resource: \'The Humanities in World Literature\'\"', '2025-04-04 02:55:01'),
(961, 'admin', 'INSERT', 'resources', '894', NULL, '\"Added a new resource: \'Living Literature Beginnings\'\"', '2025-04-04 02:55:01'),
(962, 'admin', 'INSERT', 'resources', '895', NULL, '\"Added a new resource: \'Survival English: International Communication for Professional People\'\"', '2025-04-04 02:55:02'),
(963, 'admin', 'INSERT', 'resources', '896', NULL, '\"Added a new resource: \'Prentice Hall Literature: The American Experience\'\"', '2025-04-04 02:55:02'),
(964, 'admin', 'INSERT', 'resources', '897', NULL, '\"Added a new resource: \'Prentice Hall Literature: Platinum\'\"', '2025-04-04 02:55:02'),
(965, 'admin', 'INSERT', 'resources', '898', NULL, '\"Added a new resource: \'Reader\'s Digest Condensed Books Volume 1\'\"', '2025-04-04 02:55:02'),
(966, 'admin', 'INSERT', 'resources', '899', NULL, '\"Added a new resource: \'Being and Time: A Translation of Sein and Zeit\'\"', '2025-04-04 02:55:02'),
(967, 'admin', 'INSERT', 'resources', '900', NULL, '\"Added a new resource: \'A Research Presented ti the Faculty od the Social Science Department Technological University of the Philippines\'\"', '2025-04-04 02:57:55'),
(968, 'admin', 'INSERT', 'resources', '901', NULL, '\"Added a new resource: \'The Effects of Road Reblocking in the Telecommunication Industry\'\"', '2025-04-04 02:57:55'),
(969, 'admin', 'INSERT', 'resources', '902', NULL, '\"Added a new resource: \'The Implementation of Quezon City Ordinance No. SP 2501, S-2016 (Anti-Catcalling Ordinance): An Assessment\'\"', '2025-04-04 02:57:55'),
(970, 'admin', 'INSERT', 'resources', '903', NULL, '\"Added a new resource: \'Implementation of Martial Law in the Philippines: An Assessment\'\"', '2025-04-04 02:57:56'),
(971, 'admin', 'INSERT', 'resources', '904', NULL, '\"Added a new resource: \'An Assessment on the Implementation of K to 12 Education Program: A Technological University of the Philippines Experience\'\"', '2025-04-04 02:57:56'),
(972, 'admin', 'INSERT', 'resources', '905', NULL, '\"Added a new resource: \'Compilation Of Oral Reports In Production Management\'\"', '2025-04-04 02:57:56'),
(973, 'admin', 'INSERT', 'resources', '906', NULL, '\"Added a new resource: \'The Implementation of Total Productive Maintenance Program: A Semiconductor Company Experience\'\"', '2025-04-04 02:57:56'),
(974, 'admin', 'INSERT', 'resources', '907', NULL, '\"Added a new resource: \'Tattos and Piercing in the Medical Field: An Assessment\'\"', '2025-04-04 02:57:56'),
(975, 'admin', 'INSERT', 'resources', '908', NULL, '\"Added a new resource: \'Home-Based Employment: A National Capitol Region Experience\'\"', '2025-04-04 02:57:56'),
(976, 'admin', 'INSERT', 'resources', '909', NULL, '\"Added a new resource: \'An Assessment Of The Social Science Program Offered At Tup: Basis For Effective Management Of A Curricular Program\'\"', '2025-04-04 02:57:56'),
(977, 'admin', 'INSERT', 'resources', '910', NULL, '\"Added a new resource: \'Level of Implementation of Personal Protective Equipment (PPE) of Holcim Philippines: An Assessment\'\"', '2025-04-04 02:57:56'),
(978, 'admin', 'INSERT', 'resources', '911', NULL, '\"Added a new resource: \'TUP.ACAPEDIA.PH: An e-Learning System\'\"', '2025-04-04 02:57:56'),
(979, 'admin', 'INSERT', 'resources', '912', NULL, '\"Added a new resource: \'The Implementation of Manila Ordinance No. 8336 Truck Ban Ordinance: An Assessment\'\"', '2025-04-04 02:57:56'),
(980, 'admin', 'INSERT', 'resources', '913', NULL, '\"Added a new resource: \'The Effects Of Hypercompetition To Employees\' Morale\'\"', '2025-04-04 02:57:56'),
(981, 'admin', 'INSERT', 'resources', '914', NULL, '\"Added a new resource: \'Management Skills & Management Styles Industrial Organization and Management\'\"', '2025-04-04 02:57:56'),
(982, 'admin', 'INSERT', 'resources', '915', NULL, '\"Added a new resource: \'The Privatization Of The Philippine National Bank\'\"', '2025-04-04 02:57:56'),
(983, 'admin', 'INSERT', 'resources', '916', NULL, '\"Added a new resource: \'Performance Of The Philippine Aviation Industry: Basis For Policy Direction\'\"', '2025-04-04 02:57:56'),
(984, 'admin', 'INSERT', 'resources', '917', NULL, '\"Added a new resource: \'Business Finance Written Report SY 2014-2015\'\"', '2025-04-04 02:57:56'),
(985, 'admin', 'INSERT', 'resources', '918', NULL, '\"Added a new resource: \'Predictors Of Safety Awareness Of Ship Personnel And Passengers In The Philippine Domestic Trade: Directions For Policy Action\'\"', '2025-04-04 02:57:56'),
(986, 'admin', 'INSERT', 'resources', '919', NULL, '\"Added a new resource: \'Social Power And Politics That Influence Organization Development Of Pamantasan Ng Lungsod Ng Muntinlupa: Implications For Policy Direction\'\"', '2025-04-04 02:57:56'),
(987, 'admin', 'INSERT', 'resources', '920', NULL, '\"Added a new resource: \'Performance Of Selected Domestic Shipping Companies, Fiscal Year 2002-2003: An Assessment\'\"', '2025-04-04 02:57:56'),
(988, 'admin', 'INSERT', 'resources', '921', NULL, '\"Added a new resource: \'Servant-Leadership And Work Commitment: Inputs For Building A New Public Service Concept\'\"', '2025-04-04 02:57:56'),
(989, 'admin', 'INSERT', 'resources', '922', NULL, '\"Added a new resource: \'Planning Aspects And Organizational Effectiveness Of Faculties Of Management Science Of Rajabhat Institutes (Universities) In The Central, Eastern, And Northeastern Thailand\'\"', '2025-04-04 02:57:56'),
(990, 'admin', 'INSERT', 'resources', '923', NULL, '\"Added a new resource: \'Management Effectiveness Of Selected Barangays In The First Congressional District Of Rizal\'\"', '2025-04-04 02:57:56'),
(991, 'admin', 'INSERT', 'resources', '924', NULL, '\"Added a new resource: \'Collection and Disposal of Used Lubricants: Model for Environmental Management\'\"', '2025-04-04 02:57:57'),
(992, 'admin', 'INSERT', 'resources', '925', NULL, '\"Added a new resource: \'The Effectiveness of Database Management System in Selected Learning Institutions in Metro Manila\'\"', '2025-04-04 02:57:57'),
(993, 'admin', 'INSERT', 'resources', '926', NULL, '\"Added a new resource: \'Organizational Culture: Its Influence on Level of Job Satisfaction and Effectiveness of Faculty Members in Selected Educational Institutions in Metro Manila\'\"', '2025-04-04 02:57:57'),
(994, 'admin', 'INSERT', 'resources', '927', NULL, '\"Added a new resource: \'SOFT DELIGHT \\\"Have a Soft Delight Experience\\\"\'\"', '2025-04-04 02:57:57'),
(995, 'admin', 'INSERT', 'resources', '928', NULL, '\"Added a new resource: \'Veggies Scream Veggiesk, I Scream!\'\"', '2025-04-04 02:57:57'),
(996, 'admin', 'INSERT', 'resources', '929', NULL, '\"Added a new resource: \'Effectiveness Of Hotel And Restaurant Management Program In Selected Schools In Northern Metro Manila: Inputs To Total Quality Management\'\"', '2025-04-04 02:57:57'),
(997, 'admin', 'INSERT', 'resources', '930', NULL, '\"Added a new resource: \'SEAWHARMA LE DELICE \\\"Experience the Sea in a Wrap\\\"\'\"', '2025-04-04 02:57:57'),
(998, 'admin', 'INSERT', 'resources', '931', NULL, '\"Added a new resource: \'TOT BAG \\\"Tot bag, your thoughts in the bag\\\"\'\"', '2025-04-04 02:57:57'),
(999, 'admin', 'INSERT', 'resources', '932', NULL, '\"Added a new resource: \'KKK MOCHI: Sweet and Healthy Rice Cake\'\"', '2025-04-04 02:57:57'),
(1000, 'admin', 'INSERT', 'resources', '933', NULL, '\"Added a new resource: \'BLUEMACK BURGER \'Every Bite, You Feel Delight\'\'\"', '2025-04-04 02:57:57'),
(1001, 'admin', 'INSERT', 'resources', '934', NULL, '\"Added a new resource: \'HUNGER BUSTER: TRADITIONAL FILIPINO INSTANT FOOD \\\"MURDERING YOUR HUNGER\\\"\'\"', '2025-04-04 02:57:57'),
(1002, 'admin', 'INSERT', 'resources', '935', NULL, '\"Added a new resource: \'SPLATTY BURGER \\\"Meaty goodness from the tree of life\\\"\'\"', '2025-04-04 02:57:57'),
(1003, 'admin', 'INSERT', 'resources', '936', NULL, '\"Added a new resource: \'AFTER MEAL ICE CREAM \\\"We\'ll complete your meal today\\\"\'\"', '2025-04-04 02:57:57'),
(1004, 'admin', 'INSERT', 'resources', '937', NULL, '\"Added a new resource: \'NYMPHAEA \\\"Tote Full of Pockets\\\"\'\"', '2025-04-04 02:57:58'),
(1005, 'admin', 'INSERT', 'resources', '938', NULL, '\"Added a new resource: \'QUENCHED \\\"Have it all without alcohol\\\"\'\"', '2025-04-04 02:57:58'),
(1006, 'admin', 'INSERT', 'resources', '939', NULL, '\"Added a new resource: \'HIMAGAS BITES Taste the Filipino Delicacy with just one BITE!\'\"', '2025-04-04 02:57:58'),
(1007, 'admin', 'INSERT', 'resources', '940', NULL, '\"Added a new resource: \'A COMPILATION REPORT\'\"', '2025-04-04 02:57:58'),
(1008, 'admin', 'INSERT', 'resources', '941', NULL, '\"Added a new resource: \'The Sources of Students\' Misery\'\"', '2025-04-04 02:57:58'),
(1009, 'admin', 'INSERT', 'resources', '942', NULL, '\"Added a new resource: \'A Documentation for Educational Plant Tour at Gardenia Bakeries Inc. in Biñan, Laguna\'\"', '2025-04-04 02:57:58'),
(1010, 'admin', 'INSERT', 'resources', '943', NULL, '\"Added a new resource: \'Job Qualification and Demographic Factors to Employees Productivity\'\"', '2025-04-04 02:57:58'),
(1011, 'admin', 'INSERT', 'resources', '944', NULL, '\"Added a new resource: \'Relationship Between Socio Demographic and Professional Growth of the Employees\'\"', '2025-04-04 02:57:58'),
(1012, 'admin', 'INSERT', 'resources', '945', NULL, '\"Added a new resource: \'Safety Operation Program\'\"', '2025-04-04 02:57:58'),
(1013, 'admin', 'INSERT', 'resources', '946', NULL, '\"Added a new resource: \'Compilation of Reports in IM11 (ENVIRONMENTAL MANAGEMENT)\'\"', '2025-04-04 02:57:58'),
(1014, 'admin', 'INSERT', 'resources', '947', NULL, '\"Added a new resource: \'House of Crayfish: We Grow. We Breed. We Share\'\"', '2025-04-04 02:57:58'),
(1015, 'admin', 'INSERT', 'resources', '948', NULL, '\"Added a new resource: \'CHICK BONED: Skin the Bone, Savor the Flavor\'\"', '2025-04-04 02:57:58'),
(1016, 'admin', 'INSERT', 'resources', '949', NULL, '\"Added a new resource: \'SABUCHI \\\"A Twist of Banana in Every Bite\\\"\'\"', '2025-04-04 02:57:58'),
(1017, 'admin', 'INSERT', 'resources', '950', NULL, '\"Added a new resource: \'VIAJE RETRATO Gunitain at Marahuyo sa Nakaraan\'\"', '2025-04-04 02:57:58'),
(1018, 'admin', 'INSERT', 'resources', '951', NULL, '\"Added a new resource: \'THE SCRAMBLE SPOT: Beat the Heat with ICe Scramble\'s Sweet Retreat!\'\"', '2025-04-04 02:57:58'),
(1019, 'admin', 'INSERT', 'resources', '952', NULL, '\"Added a new resource: \'SEOULFUL BOWL \\\"All in one bowl\\\"\'\"', '2025-04-04 02:57:58'),
(1020, 'admin', 'INSERT', 'resources', '953', NULL, '\"Added a new resource: \'MIX & MUNCH Bursts in your mouth, Melts in your heart\'\"', '2025-04-04 02:57:59'),
(1021, 'admin', 'INSERT', 'resources', '954', NULL, '\"Added a new resource: \'\\\"SIDE-BITE-SIDE\\\" Your wich is my command\'\"', '2025-04-04 02:57:59'),
(1022, 'admin', 'INSERT', 'resources', '955', NULL, '\"Added a new resource: \'DUOCAFE \\\"Hey! Doughnut Worry, Grab a Coffee\\\"\'\"', '2025-04-04 02:57:59'),
(1023, 'admin', 'INSERT', 'resources', '956', NULL, '\"Added a new resource: \'3\'\"', '2025-04-04 02:57:59'),
(1024, 'admin', 'INSERT', 'resources', '957', NULL, '\"Added a new resource: \'THIRSTDAY FRYDAY \\\"Fill your thirst, Satisfy your Hunger\\\"\'\"', '2025-04-04 02:57:59'),
(1025, 'admin', 'INSERT', 'resources', '958', NULL, '\"Added a new resource: \'DON KATSU THE MASTER OF GOOD FOOD\'\"', '2025-04-04 02:57:59'),
(1026, 'admin', 'INSERT', 'resources', '959', NULL, '\"Added a new resource: \'OVERSTUFFEDWICH \\\"Overloaded, fully loaded\\\"\'\"', '2025-04-04 02:57:59'),
(1027, 'admin', 'INSERT', 'resources', '960', NULL, '\"Added a new resource: \'D & F \\\"Tiny treats, Big delight\\\"\'\"', '2025-04-04 02:57:59'),
(1028, 'admin', 'INSERT', 'resources', '961', NULL, '\"Added a new resource: \'NutriCHEWS A healthy sweet, without the guilt\'\"', '2025-04-04 02:57:59'),
(1029, 'admin', 'INSERT', 'resources', '962', NULL, '\"Added a new resource: \'ARTE ADORN \\\"Charm your Moment\\\".\'\"', '2025-04-04 02:57:59'),
(1030, 'admin', 'INSERT', 'resources', '963', NULL, '\"Added a new resource: \'CHICK N\' POP A BENTO CHICKEN LOLLIPOP \\\"Taking Chicken to a New-Dip Level!\'\"', '2025-04-04 02:57:59'),
(1031, 'admin', 'INSERT', 'resources', '964', NULL, '\"Added a new resource: \'THRISTDAY FRYDAY \\\"Fill your Thirst, Satisfy your Hunger\\\"\'\"', '2025-04-04 02:57:59'),
(1032, 'admin', 'INSERT', 'resources', '965', NULL, '\"Added a new resource: \'SHAWARMA DYNASTY \\\"Two worlds, one bowl\\\"\'\"', '2025-04-04 02:57:59'),
(1033, 'admin', 'INSERT', 'resources', '966', NULL, '\"Added a new resource: \'FRIT O\'s Sweet but Fried!\'\"', '2025-04-04 02:57:59'),
(1034, 'admin', 'INSERT', 'resources', '967', NULL, '\"Added a new resource: \'SOY BLISS \\\"Taho-licious Creations Await!\\\"\'\"', '2025-04-04 02:57:59'),
(1035, 'admin', 'INSERT', 'resources', '968', NULL, '\"Added a new resource: \'PURPLE AVENUE Bite into purple pleasure\'\"', '2025-04-04 02:57:59'),
(1036, 'admin', 'INSERT', 'resources', '969', NULL, '\"Added a new resource: \'CHIMCKEN WONDERS Savor The Extraordinary\'\"', '2025-04-04 02:58:00'),
(1037, 'admin', 'INSERT', 'resources', '970', NULL, '\"Added a new resource: \'BREWEDtrip I\'ve BEAN there!\'\"', '2025-04-04 02:58:00'),
(1038, 'admin', 'INSERT', 'resources', '971', NULL, '\"Added a new resource: \'Plus Love (+LOVE)\'\"', '2025-04-04 02:58:00'),
(1039, 'admin', 'INSERT', 'resources', '972', NULL, '\"Added a new resource: \'ENCHANTED SEIFE brings out the soapi-est and aro-mantic in you\'\"', '2025-04-04 02:58:00'),
(1040, 'admin', 'INSERT', 'resources', '973', NULL, '\"Added a new resource: \'Solatium cafe and bar \\\"find solace in the metropolis\\\"\'\"', '2025-04-04 02:58:00'),
(1041, 'admin', 'INSERT', 'resources', '974', NULL, '\"Added a new resource: \'Coltelleria It is more than just a spoon, it\'s an EDIBLE spoon!\'\"', '2025-04-04 02:58:00'),
(1042, 'admin', 'INSERT', 'resources', '975', NULL, '\"Added a new resource: \'Eatensils \\\"Utensils like never before!\\\"\'\"', '2025-04-04 02:58:00'),
(1043, 'admin', 'INSERT', 'resources', '976', NULL, '\"Added a new resource: \'Pomosquiller \\\"A Mist of Protection\\\"\'\"', '2025-04-04 02:58:00'),
(1044, 'admin', 'INSERT', 'resources', '977', NULL, '\"Added a new resource: \'AP LI KA BL: Socks for all weather, make your feet feel better\'\"', '2025-04-04 02:58:00'),
(1045, 'admin', 'INSERT', 'resources', '978', NULL, '\"Added a new resource: \'AlcoCream \\\"In every sip and lick, there\'s a kick\\\"\'\"', '2025-04-04 02:58:00'),
(1046, 'admin', 'INSERT', 'resources', '979', NULL, '\"Added a new resource: \'SHANGHEY ON THE WAY Shanghai na tapat, sharap buhay lahat\'\"', '2025-04-04 02:58:00'),
(1047, 'admin', 'INSERT', 'resources', '980', NULL, '\"Added a new resource: \'CHICK N\' POP A BENTO CHICKEN LOLLIPOP \\\"Taking Chicken to a New-Dip Level!\\\"\'\"', '2025-04-04 02:58:00'),
(1048, 'admin', 'INSERT', 'resources', '981', NULL, '\"Added a new resource: \'FINTA COSMETICS Where LIPS meets ART\'\"', '2025-04-04 02:58:00'),
(1049, 'admin', 'INSERT', 'resources', '982', NULL, '\"Added a new resource: \'DALISAY: A COCONUT-BASED ENERGY DRINK \\\"Go logo for coco\\\"\'\"', '2025-04-04 02:58:00'),
(1050, 'admin', 'INSERT', 'resources', '983', NULL, '\"Added a new resource: \'SHAWarma Boulevard \\\"Make it, Have it\\\"\'\"', '2025-04-04 02:58:00'),
(1051, 'admin', 'INSERT', 'resources', '984', NULL, '\"Added a new resource: \'CAFICA Make it yours\'\"', '2025-04-04 02:58:00'),
(1052, 'admin', 'INSERT', 'resources', '985', NULL, '\"Added a new resource: \'INKTURE\'\"', '2025-04-04 02:58:00'),
(1053, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Kristine Danielle Ferrer\"', '2025-04-04 03:03:02'),
(1054, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Sophia Luisa Balagtas\"', '2025-04-04 03:03:02'),
(1055, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Kerzlyn Alto\"', '2025-04-04 03:03:02'),
(1056, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Mhitchie Suico\"', '2025-04-04 03:03:02'),
(1057, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Ealjean Arielle Velches\"', '2025-04-04 03:03:02'),
(1058, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Joao Ashpyr Catarungan\"', '2025-04-04 03:03:02'),
(1059, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Binn Yazzer Ayunon\"', '2025-04-04 03:03:02'),
(1060, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Kristine Claire Corpuz\"', '2025-04-04 03:03:02'),
(1061, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Kharla Mae Celmar\"', '2025-04-04 03:03:02'),
(1062, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Angela May Teneros\"', '2025-04-04 03:03:02'),
(1063, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Janehery Bernal\"', '2025-04-04 03:03:02'),
(1064, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Irish Nabayra\"', '2025-04-04 03:03:02'),
(1065, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: ANDREA DECELYN SILVA\"', '2025-04-04 03:03:02'),
(1066, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Sandy Gawat\"', '2025-04-04 03:03:02'),
(1067, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Krizia Mae De Honor\"', '2025-04-04 03:03:02'),
(1068, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: CHRISTINE MAE Ricafrente\"', '2025-04-04 03:03:02'),
(1069, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: MARIE ANGELA DEL CASTILLO\"', '2025-04-04 03:03:02'),
(1070, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Marie Angelie Del Castillo\"', '2025-04-04 03:03:02'),
(1071, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Nicolyn Jean San Jose\"', '2025-04-04 03:03:02'),
(1072, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Berna Marie Toñacao\"', '2025-04-04 03:03:02'),
(1073, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Alena Joy Torres\"', '2025-04-04 03:03:02'),
(1074, 'admin', 'INSERT', 'report', NULL, NULL, '\"Added new report: Inventory Report\"', '2025-04-04 03:04:57'),
(1075, 'admin', 'INSERT', 'report', NULL, NULL, '\"Added new report: Active Patron Records\"', '2025-04-04 03:05:44'),
(1076, 'admin', 'INSERT', 'report', NULL, NULL, '\"Added new report: Theses Inventory\"', '2025-04-04 03:06:39');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `author_lname` varchar(45) DEFAULT NULL,
  `author_fname` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `author_lname`, `author_fname`) VALUES
(326, 'Manzano', 'Ronald'),
(327, 'Santos', 'Buen'),
(328, 'Buenaventura', 'John Paul Guevarra'),
(329, 'Buenaventura-Gutierrez', 'Liberty'),
(330, 'Manzano', 'Ronald G.'),
(331, 'Lansangan-Cruz', 'Zenaida'),
(332, 'Sawada', 'Masanobu'),
(333, 'Galvez', 'Virgilio DC.'),
(334, 'Lim', 'Romeo D.'),
(335, 'Mancini', 'Marc'),
(336, 'Bell', 'Ann'),
(337, 'Barrell', 'Sarah'),
(338, 'Baxter', 'Sarah'),
(339, 'Cornell', 'Daryl Ace V.'),
(340, 'Cruz', 'Reil G.'),
(341, 'Marte-Lago', 'Elpedia M.'),
(342, 'Jerusalem', 'Leo Benjamin'),
(343, 'Ministries', 'RBC'),
(344, 'Artisan', 'The Philippine'),
(345, 'n/a', 'n/a'),
(346, 'Araojo', 'Gina B.'),
(347, 'A.Baquiran', 'Delfin'),
(348, 'V.Nicdao', 'Rosario'),
(349, 'G.Origenes', 'Ricardo'),
(350, 'Ramisan', 'Georgie R.'),
(351, 'D.Trinidad', 'Alfredo'),
(352, 'Gualdo', 'Rosendo S.'),
(353, 'Vega', 'Jose Mario D. de'),
(354, 'Cooper', 'John'),
(355, 'Leuterio', 'Florida'),
(356, 'Araojo', 'Gina  Bernaldez -'),
(357, 'Baquiran', 'Delfin A.'),
(358, 'Trinidad', 'Alfredo D.'),
(359, 'Cruz', 'Corazon L.'),
(360, 'Ordoñez', 'Elemer A.'),
(361, 'Costales', 'Mabeth C.'),
(362, 'Palomares', 'Cenon O.'),
(363, 'Enriquez', 'Rhodora DC'),
(364, 'Macapagal', 'Paulo Manuel L.'),
(365, 'Bacalso', 'Rolito E. '),
(366, 'Agudon', 'Rita G. '),
(367, 'Sangines', 'Mylene T.'),
(368, 'Trambulo', 'Jona Iris M.'),
(369, 'Kahayon', 'Alicia'),
(370, 'Aquino', 'Gaudencio'),
(371, 'Zulueta', 'Francisco'),
(372, 'Cruz', 'Rosemarie Theresa M.'),
(373, 'Jr.', 'Jaime E. Mozo'),
(374, 'Andres', 'Paul Mark C.'),
(375, 'Jr.', 'Eduardo S. Sucob'),
(376, 'Bunye', 'Noemie DC'),
(377, 'Culla', 'A.S.'),
(378, 'Panisan', 'W.K.'),
(379, 'Ofalia', 'B.C.'),
(380, 'Evangelista', 'Lourdes L.'),
(381, 'McCormick', 'Ernest J.'),
(382, '', ''),
(383, 'Maslow', 'Abrahan H.'),
(384, 'Frager', 'Robert '),
(385, 'Fadiman', 'James '),
(386, 'McReynolds', 'Cynthia'),
(387, 'Cox', 'Ruth'),
(388, 'Cronbach', 'Lee J.'),
(389, 'The', 'Lota A.'),
(390, 'Macapagal', 'Ma. Elizabeth J.'),
(391, 'Gaerlan', 'Josefina E. '),
(392, 'Limpingco', 'Delia A.'),
(393, 'Eitzen', 'D. Stanley'),
(394, 'Baca', 'Maxine'),
(395, 'Hollnester', 'Mary'),
(396, 'Hunt', 'Chester'),
(397, 'Lacar', 'Luis'),
(398, 'Quisumbing', 'Lourdes'),
(399, 'Maguigad', 'Rogelio'),
(400, 'Cordero', 'Felicidad'),
(401, 'Panopio', 'Isabel'),
(402, 'Plog', 'Fred'),
(403, 'Jolly', 'Clifford'),
(404, 'Bates', 'Daniel'),
(405, 'Sanchez', 'Custodiosa'),
(406, 'Mendoza', 'Martina'),
(407, 'Ramos', 'Fe'),
(408, 'University', 'United Nations'),
(409, 'Weeramantry', 'C.G.'),
(410, 'Naval-Cerbo', 'Shirley'),
(411, 'Gonong', 'Gina'),
(412, 'Santiago-Morales', 'Glinore'),
(413, 'Butler', 'Chris'),
(414, 'Macapagal', 'Paulo Manuel'),
(415, 'Trambulo', 'Jona Iris'),
(416, 'Bunye', 'Noemie'),
(417, 'Lagrimas', 'Janice Marie'),
(418, 'Enriquez', 'Rhodora'),
(419, 'Santos', 'Emmanuel'),
(420, 'Nolleda', 'Jose'),
(421, 'Steiner', 'George'),
(422, 'Steiner', 'John'),
(423, 'Boek', 'Walter'),
(424, 'Self', 'Peter'),
(425, 'Ayson', 'Florentino'),
(426, 'Aligad-Reyes', 'Dolores'),
(427, 'Pereda', 'Purisima'),
(428, 'Tracena', 'Marcial'),
(429, 'Pereda', 'Pedrito'),
(430, 'Altbach', 'Philip'),
(431, 'Selvaratnam', 'Viswanathan'),
(432, 'Colson', 'Chuck'),
(433, 'Eckerd', 'Jack'),
(434, 'Handoussa', 'Heba'),
(435, 'Nolledo', 'Jose'),
(436, 'Oposa', 'Antonio'),
(437, 'Gabriel', 'Pablo C.'),
(438, 'Tracina', 'Maricial H.'),
(439, 'Medel', 'Alice A.'),
(440, 'Vallejos', 'Eden G.A'),
(441, 'Mills', 'Gordon H.'),
(442, 'Walter', 'John A.'),
(443, 'Winston', 'Holt Rinehart'),
(444, 'Obnamia', 'Corazon C.'),
(445, 'Cruz', 'Mariano S. De La'),
(446, 'Aquino', 'Margaret S.'),
(447, 'Campbell', 'William Giles'),
(448, 'Ballon', 'Stephen Vaughan'),
(449, 'Slade', 'Carole'),
(450, 'Belen', 'Venus M.'),
(451, 'Plantilla', 'Felicitas O.'),
(452, 'Rodriguez', 'Loida A.'),
(453, 'Villamejor', 'Socorro R.'),
(454, 'Tungpalan', 'Aquino A.'),
(455, 'Patricio', 'Corales A.'),
(456, 'Guth', 'Hans P.'),
(457, 'Rico', 'Gabriele L.'),
(458, 'Viney', 'Peter'),
(459, 'Heidegger', 'Martin'),
(460, 'Stambaugh', 'Joan'),
(461, 'Aurella', 'Alfie'),
(462, 'Cabello', 'Maricel'),
(463, 'Domenden', 'Jerome'),
(464, 'Facal', 'Karl Jericho'),
(465, 'Kalong', 'Karlo Joshua'),
(466, 'Legaspi', 'John Jerald'),
(467, 'Navarro', 'Renz Paolo'),
(468, 'Opilas', 'Jett Rodwyn'),
(469, 'Asejo', 'Arjay'),
(470, 'Bation', 'Marjerine'),
(471, 'Calong', 'Jerome'),
(472, 'Genotiva', 'Jasmine Sheena'),
(473, 'Ibita', 'Joseph'),
(474, 'Ocampo', 'Jerrel John'),
(475, 'Palmes', 'Michelle'),
(476, 'Revillosa', 'Mary Rose'),
(477, 'Maria', 'Mc Lauro Sta.'),
(478, 'Tolentino', 'Jhonray'),
(479, 'Anolin', 'Kirsten'),
(480, 'Camangian', 'Camille'),
(481, 'Galia', 'Arvie'),
(482, 'Gimena', 'Joanna Marie'),
(483, 'Monsale', 'HArvy'),
(484, 'Sales', 'Rainer'),
(485, 'Tan', 'Keith Martie'),
(486, 'Alcanar', 'Joy C.'),
(487, 'Bardoza', 'Fellylyn T.'),
(488, 'Camantigue', 'John-Dell B.'),
(489, 'Deang', 'Meirel L.'),
(490, 'Meija', 'Michael R.'),
(491, 'Nadal', 'Mark Oliver P.'),
(492, 'Castante', 'Jammel L.'),
(493, 'Continnado', 'Ezekiel Y.'),
(494, 'Enalpe', 'Edgardo V.'),
(495, 'Guevarra', 'John Maverick M.'),
(496, 'Holgado', 'Jorina B.'),
(497, 'Verueco', 'John Ryan D.'),
(498, 'Management', 'MM 505- Production'),
(499, 'Balolot', 'Meliza Rose B.'),
(500, 'Vera', 'Anzn De'),
(501, 'Domenden', 'Jomar P.'),
(502, 'Dumali', 'Danica A.'),
(503, 'Laberinto', 'Cirna C.'),
(504, 'Liwanag', 'Dennise Christelle N.'),
(505, 'Longcop', 'Zeus B.'),
(506, 'Bellen', 'Melvin Leonard'),
(507, 'Buella', 'Vaughn Russel '),
(508, 'Caguioa', 'Mark Christian'),
(509, 'Castro', 'Yves Jomari'),
(510, 'Celosa', 'Robie James'),
(511, 'Dizon', 'John Gil'),
(512, 'Said', 'Hamil'),
(513, 'Dakanay', 'Ma. Vivien'),
(514, 'Dematera', 'Ralp Christian'),
(515, 'Dimapilis', 'Neil'),
(516, 'Duragnparang', 'Herwyna'),
(517, 'Masindo', 'Robelynn'),
(518, 'Torres', 'Christian Carl'),
(519, 'Villanueva', 'Jose Rizaldy'),
(520, 'Students', 'BAM IM 3LD'),
(521, 'Carmona', 'Dan Adrian N.'),
(522, 'Ocampo', 'Jeff Anthony D. De'),
(523, 'Mundo', 'Regine R. Del'),
(524, 'Espiritu', 'Rosalyn Joy I.'),
(525, 'Guinto', 'Joane M.'),
(526, 'Medollar', 'Janica C.'),
(527, 'Naredo', 'Sally Joy'),
(528, 'Grimaldo', 'Honeylet D.'),
(529, 'Quinzon', 'Glenda P.'),
(530, 'Ramos', 'Liza R.'),
(531, 'Arriola', 'Anna Victoria A.'),
(532, 'Castillon', 'Sarah Kimberly A.'),
(533, 'Delima', 'Dece Mae N.'),
(534, 'Gayuma', 'Zandra R.'),
(535, 'Landicho', 'Mary Ann N.'),
(536, 'Pangilinan', 'Anah Victoria Q.'),
(537, 'Tubera', 'May Ann B. '),
(538, 'Cellan', 'Rhia Sheila L.'),
(539, 'Dio', 'Lady Gemaica D.'),
(540, 'Falcis', 'Dianne E.'),
(541, 'II', 'Victor Emmanuel R. Galicinao'),
(542, 'Jimenez', 'Jessica Macy S.'),
(543, 'Navarrete', 'Marvin C.'),
(544, 'Pangan', 'Trixia P.'),
(545, 'Maria', 'Camille S. Sta'),
(546, 'Tolentino', 'Jaspher Paul T.'),
(547, 'Amil', 'Joanah Paola G.'),
(548, 'Barrameda', 'Mechielle Lee O.'),
(549, 'Concepcion', 'Patricia Alex G.'),
(550, 'Constantino', 'la Gabrielle M.'),
(551, 'Gatchalian', 'Jemson C.'),
(552, 'Linis', 'Joshua Ros Marion M.'),
(553, 'Naipa', 'Mary Joy C.'),
(554, 'Victoria', 'Edelson C.'),
(555, 'Calamlam', 'Juan Carlos'),
(556, 'Castro', 'Yvess Jomari'),
(557, 'Cheng', 'Vicky'),
(558, 'Cristobal', 'Romelle Joyce'),
(559, 'Guerrero', 'Van Allen'),
(560, 'Olivar', 'Hanna Joy'),
(561, 'Palmes', 'Mitchie'),
(562, 'Inocencio', 'Alfredo DJ.'),
(563, 'Alamo', 'Harry S.'),
(564, 'Garino', 'Maximo C.'),
(565, 'A.Tacsuan', 'Willfred'),
(566, 'C.Yamit', 'Perseus'),
(567, 'Baking-Esquivel', 'Maria Wilhelma'),
(568, 'C.Kho', 'Wilfredo'),
(569, 'Jiranuntarar', 'Somchai'),
(570, 'II', 'Gorgonio C.Vallestero'),
(571, 'Lim', 'Myrna L.'),
(572, 'Andion', 'Lee Justin D. '),
(573, 'Malunes', 'Jenelyn Mae V.'),
(574, 'Nicolas', 'Charles Robbie T.'),
(575, 'Omadto', 'Lady Ann B.'),
(576, 'Ortiz', 'Gina D.'),
(577, 'Torcelino', 'Joshua '),
(578, 'Tordesillas', 'Desil D.'),
(579, 'Deplomo', 'Jinky A.'),
(580, 'Acuba', 'Alondra P.'),
(581, 'Defeo', 'Patricia V.'),
(582, 'Torres', 'Joybelle T.'),
(583, 'Roquero', 'Kurt Russel T. '),
(584, 'Fernandez', 'Laila Mae A.'),
(585, 'Arao', 'Ross Ella Joyce F.'),
(586, 'Catada', 'Arjold Dhamie Q.'),
(587, 'Cuchon', 'Caridad M.'),
(588, 'S.Alamo', 'Harry'),
(589, 'Mavarez', 'Carlito Eludo'),
(590, 'Dj.Inocencio', 'Alfredo'),
(591, 'A.Piliin', 'Victoriana'),
(592, 'Vargas', 'Noel H.'),
(593, 'Muanchoo', 'Tongchai'),
(594, 'Du', 'Wilma M.'),
(595, 'Kho', 'Wilfredo C.'),
(596, 'C.Muñoz', 'Marnito'),
(597, 'Dilag', 'Katharine Vyoma A.'),
(598, 'Gomez', 'Jhea S.'),
(599, 'Lachica', 'Ronald A.'),
(600, 'Sultan', 'Monaisa R.'),
(601, 'Temploneuvo', 'Rizalyn C.'),
(602, 'Velasco', 'Charie '),
(603, 'Villarante', 'John Lloyd P.'),
(604, 'Bristol', 'Jasmin T. '),
(605, 'Cabaltera', 'Reynan D.'),
(606, 'Cepeda', 'Le-Ann T.'),
(607, 'Lachica', 'Vergie M.'),
(608, 'Martinez', 'Mikaela C.'),
(609, 'Santos', 'Julia Mikaela T.'),
(610, 'Toledo', 'Mark Caleb S.'),
(611, 'Diana', 'Angelly '),
(612, 'Enriquez', 'Roan H. '),
(613, 'Escobar', 'Alyssa Marie P.'),
(614, 'facun', 'Angelli C.'),
(615, 'Palisoc', 'Lovely D. '),
(616, 'Sunga', 'Katrina O.'),
(617, 'Genoguin', 'Ella Marie '),
(618, 'Gonzales', 'Erica Mae R.'),
(619, 'Montero', 'Melvin'),
(620, 'Nieva', 'Jimmy Morris S. '),
(621, 'Oliva', 'Ma. Shaira Quin'),
(622, 'A', 'Wilfredo'),
(623, 'Sandial', 'Raquel A.'),
(624, 'Zarate', 'Kristina Cassandra R.'),
(625, 'Pahamutang', 'John Morrel'),
(626, 'Cortez', 'Reynald'),
(627, 'Basal', 'Junelle Vincent R.'),
(628, 'Bataller', 'Abbygail P.'),
(629, 'Beltran', 'Irish Mae G.'),
(630, 'Calunsag', 'Ma. Tanya P.'),
(631, 'Delavin', 'Mark Glenn C.'),
(632, 'Jacinto', 'Angelo P.'),
(633, 'Miranda', 'Liezl G. '),
(634, 'Arcega', 'Jillian'),
(635, 'Corpuz', 'Enrish Claire'),
(636, 'Fajardo', 'Mary Daphne '),
(637, 'Magparangalan', 'Jairah'),
(638, 'Nacin', 'Eunice Faith'),
(639, 'Radam', 'Nicole Angeline'),
(640, 'Relorcasa', 'Princess Jane'),
(641, 'Valle', 'Ma. Rona Belle'),
(642, 'Arcibal', 'Alexander Daniel D. '),
(643, 'Barcenas', 'Alvin S.'),
(644, 'Pullon', 'Anjelyn G.'),
(645, 'Petran', 'Christine R.'),
(646, 'Gatela', 'Justin T. '),
(647, 'C', 'Ma. Gina Cassandra'),
(648, 'Guzman', 'De'),
(649, 'Penoliar', 'Nicole Khay R. '),
(650, 'Adora', 'Katrina A.'),
(651, 'Alconga', 'Rose Anne M.'),
(652, 'Ampo', 'Zarah Yosabel D.L.'),
(653, 'Bongolo', 'Clarize Ann C. '),
(654, 'Cabal', 'Mary Joy L. '),
(655, 'Eugenio', 'Alyzza Xialeemar P.'),
(656, 'Vasquez', 'Bent Marthy'),
(657, 'Poliarco', 'Angella P. '),
(658, 'Lachica', 'Angilyn C. '),
(659, 'Macailao', 'Catherine Mae S.'),
(660, 'Cagang', 'Gay C.'),
(661, 'Pascua', 'Jocelle Carmen H.'),
(662, 'Abelgos', 'Mayvelyn B.'),
(663, 'Vistan', 'Mika Ela P.'),
(664, 'Abaño', 'Wendel'),
(665, '3I(D)', 'BAM-1M'),
(666, 'Masangkay', 'Mary Rose G.'),
(667, 'Almodal', 'Anthony'),
(668, 'Francisco', 'Homer'),
(669, 'Gapasin', 'Regiene'),
(670, 'Irabon', 'Giro Neil'),
(671, 'Laserna', 'Caren Jane'),
(672, 'Manalo', 'Henrick'),
(673, 'Remion', 'Annalyn'),
(674, 'Rosal', 'Jayvee'),
(675, 'Tolis', 'Raineil'),
(676, 'Yadao', 'Jenina Anne'),
(677, 'Adraincem', 'Flora Mae'),
(678, 'Arpia', 'Deah'),
(679, 'Casil', 'Aljohn'),
(680, 'Concepcion', 'Levy'),
(681, 'Diaz', 'Isaias Jerome'),
(682, 'Garcia', 'Marjo'),
(683, 'Llenrizas', 'Mariel Anne'),
(684, 'Pinili', 'Duane Joseph'),
(685, 'Roncesvalles', 'Sheela'),
(686, 'Santos', 'Abigail'),
(687, 'Sardinia', 'Jalene'),
(688, 'Salazar', 'Bruce Christian'),
(689, 'Bonsol', 'Shane R.'),
(690, 'Tayag', 'Jaimie Rose D.'),
(691, 'Arcega', 'Jillian G.'),
(692, 'Guzman', 'Ma. Gina Cassandra C. De'),
(693, 'Ferrer', 'Fatima Faye D.'),
(694, 'Magparangalan', 'Jairah S.'),
(695, 'Ramirez', 'Karl M.'),
(696, 'Serrano', 'Jehoia Kim B.'),
(697, 'Druja', 'Jan Mikeil A.'),
(698, 'Guardiano', 'Mary Joy O.'),
(699, 'Reyes', 'Maria Patricia Erika B.'),
(700, 'Roquero', 'Kurt Russell P.'),
(701, 'Defeo', 'Patricia Ann V.'),
(702, 'Dellova', 'April M.'),
(703, 'Cabatbat', 'Felicity Godwin C.'),
(704, 'Hilot', 'Catherine P.'),
(705, 'Ignacio', 'Shaina G.'),
(706, 'Leyva', 'Bianca Marie J.'),
(707, 'Macenas', 'Alexa Cris Y.'),
(708, 'Orbeta', 'Janessa J.'),
(709, 'Rocha', 'Christine Joy F. '),
(710, 'Ulang', 'Sancho R.'),
(711, 'Valdepeña', 'Gyan Ross A.'),
(712, 'Dumalaon', 'Julian'),
(713, 'Nacinn', 'Eunice Faith D.'),
(714, 'Fajardo', 'Mary Daphne A.'),
(715, 'Valle', 'Ma Rona Belle N.'),
(716, 'Jarabe', 'Kaye Angelene M.'),
(717, 'Patdo', 'Wilfredo A.'),
(718, 'Rodrigo', 'Dorothy Joy D.'),
(719, 'Jarabe', 'Kaye Angelene M. '),
(720, 'Cruz', 'Jaquilyn T. De La'),
(721, 'Ganir', 'Jhustine T.'),
(722, 'Langares', 'Erwin John B.'),
(723, 'Larin', 'Louis Daniel V.'),
(724, 'Leuterio', 'Barbara Gin '),
(725, 'Pabelic', 'Aleana Joy P.'),
(726, 'Payawal', 'John Andrei '),
(727, 'Velasco', 'Monique R.'),
(728, 'Tordesillas', 'Desill D.'),
(729, 'Cruz', 'Jessica D.'),
(730, 'Jabien', 'Kristina A.'),
(731, 'Gonzales', 'Kate M.'),
(732, 'Malinao', 'Vaxter M.'),
(733, 'Bartoline', 'Jesse Aaron V.'),
(734, 'Gutierez', 'Gerald M.'),
(735, 'Manalang', 'Francen Rhein L.'),
(736, 'Templonuevo', 'Rizalyn C.'),
(737, 'Macatuno', 'Edgel Leila R.'),
(738, 'Rebonanza', 'Melanie V.'),
(739, 'Cifra', 'Janine A.'),
(740, 'Padilla', 'Jo Francesca M.'),
(741, 'Radam', 'Nicole Angeline S.'),
(742, 'Mason', 'Wyneth Margaux P.'),
(743, 'Co', 'Aebriel John'),
(744, 'Gonzales', 'Erica Mae'),
(745, 'Jacot', 'Almira Kate'),
(746, 'Lorzano', 'Bhea'),
(747, 'Talion', 'Yanzy'),
(748, 'Bellosillo', 'Erwin R.'),
(749, 'Binarao', 'Marjorie C.'),
(750, 'Cortez', 'Reynald G.'),
(751, 'Pahamutang', 'John Morrell'),
(752, 'Ramores', 'Bianca Isabel G.'),
(753, 'Tumanday', 'John Ray R. '),
(754, 'Alvendia', 'Moises Bradley M. '),
(755, 'Enojardo', 'Lou Nila C.'),
(756, 'Fernandez', 'Riza D.'),
(757, 'Palcuto', 'April M.'),
(758, 'Sadial', 'Raquel'),
(759, 'Zarate', 'Kristina Kassandra'),
(760, 'Alavarez', 'Maria Louise Veronica T.'),
(761, 'Carreras', 'Catherina Joy A.'),
(762, 'Chua', 'Liezel Grace B.'),
(763, 'Vera', 'Angelo O. De'),
(764, 'Laurente', 'Angelica Zoe S.'),
(765, 'Licong', 'Jamaica Mae B.'),
(766, 'Sentorias', 'Patricia Joyce P.'),
(767, 'Bartolome', 'Jesse Aaron V.'),
(768, 'Gutierrez', 'Gerald M. '),
(769, 'Barrios', 'Cristine Janna M.'),
(770, 'Catapang', 'Patricia Mae L.'),
(771, 'Ejera', 'Roxanne W.'),
(772, 'Seguira', 'Jeline S.'),
(773, 'Torres', 'Joybelle Marie T. '),
(774, 'Galachico', 'Joycelle M.'),
(775, 'Saquita', 'Luwensky D.'),
(776, 'Visperas', 'Rosemie Ann B.'),
(777, 'Adora', 'Katrina A'),
(778, 'Bugenio', 'Alyzza Xialeemar P.'),
(779, 'Simbajon', 'Charity Faith S.'),
(780, 'Vasquez', 'Bent Marthy B.'),
(781, 'Dilag', 'Katherine Vyoma A.'),
(782, 'Resonable', 'Clarice Ann T.'),
(783, 'Valencia', 'Christine S.'),
(784, 'Diño', 'Angelou M.'),
(785, 'Estillore', 'Bryan Dave H. '),
(786, 'Magnaye', 'Hazel D. '),
(787, 'Reduta', 'Ida Louise Isabel L.'),
(788, 'Martin', 'Jeanelle Rose D.'),
(789, 'Medollar', 'Jevina C.'),
(790, 'Celestial', 'Kerr Patrick B. '),
(791, 'Leon', 'Sheila May M. De'),
(792, 'Briones', 'Clare Angela H.'),
(793, 'Dioneda', 'Christine Gail H.'),
(794, 'Dionisio', 'Gabriel D.'),
(795, 'Dizon', 'Domenique T.'),
(796, 'Libao', 'Aubrey Marie'),
(797, 'Meneses', 'Mary Anne A.'),
(798, 'Ng', 'Aaron Harold M.'),
(799, 'Albarina', 'Miko Gaebriel R.'),
(800, 'Carpio', 'Lady Marjorie'),
(801, 'Denieca', 'Michelle E.'),
(802, 'Dolendo', 'Sofia Francesca R.'),
(803, 'Gillo', 'Ella Mae'),
(804, 'Guiriba', 'Angelica'),
(805, 'Solanoy', 'Justine'),
(806, 'Tiopez', 'Shane Ella Mae'),
(807, 'Cosme', 'Hergie C.'),
(808, 'Evangelista', 'Renella Grace C.'),
(809, 'Dugusin', 'Jan Andre C.'),
(810, 'Halog', 'Charlyn D.'),
(811, 'Teloman', 'Angeline V.'),
(812, 'Uy-Oco', 'Jan Arvie S.'),
(813, 'Zamora', 'Anna Marie Shannel D.'),
(814, 'Licong', 'Jamaica Mae M.'),
(815, 'Rodrigo', 'Dorothy D.'),
(816, 'Gonzales', 'Kate Alessandra '),
(817, 'Talion', 'Yanzy R.'),
(818, 'Asual', 'Nathalea A.'),
(819, 'Bautista', 'Sarah Mae D. '),
(820, 'Borongan', 'Rocelyn G.'),
(821, 'Cabiling', 'Irish Claire G.'),
(822, 'Calayo', 'Dahnalie H.'),
(823, 'Garcia', 'Syrhille L.'),
(824, 'Manansala', 'Jamaica O.'),
(825, 'Recto', 'Ela Mae T.'),
(826, 'Co', 'Aebriel John DV.'),
(827, 'Jacot', 'Almira Kate Q.'),
(828, 'Lorzano', 'Bhea A.'),
(829, 'Jabien', 'Kristina Cassandra A.'),
(830, 'Malinao', 'Vaxter Jarvis M.'),
(831, 'Mendoza', 'Arabelle V.'),
(832, 'Ornopia', 'Clariza R.'),
(833, 'Jabulin', 'Jerriz P.'),
(834, 'Panamogan', 'Mae D.'),
(835, 'Adame', 'Ma. Kyle D.'),
(836, 'Estrologo', 'Mary Joy J.'),
(837, 'Hingada', 'Nenice C.'),
(838, 'Sagun', 'Leimari A.'),
(839, 'Alvarez', 'Maria Louise Veronica T.'),
(840, 'Licong', 'Jamica Mae B. '),
(841, 'Abitria', 'Nicole M.'),
(842, 'Amistoso', 'Askhiea Ashley E.'),
(843, 'Arzaga', 'Elaisa Shane G.'),
(844, 'Mendoza', 'Shairah Daphne E.'),
(845, 'Navarra', 'Resiely S.'),
(846, 'Pante', 'Ma. Edelyn L.'),
(847, 'Mateo', 'Sharmane Mae S. San'),
(848, 'Sol', 'Oia Bernadette P.'),
(849, 'Langres', 'Erwin John B.'),
(850, 'Larin', 'Loius Daniel V.'),
(851, 'Leuterio', 'Barbara Gin G.'),
(852, 'Catapang', 'Patricia L.'),
(853, 'Alacida', 'Lyra Mae R.'),
(854, 'Alto', 'Marjorie C.'),
(855, 'Barata', 'Abegale N. '),
(856, 'Gumidam', 'Erika R.'),
(857, 'Manuel', 'Eia Caterina G.'),
(858, 'Jimenez', 'Jacquelyn DC.'),
(859, 'Ticsay', 'Mhicka Ella N.'),
(860, 'Berry', 'Mary Nuff'),
(861, 'Castro', 'Mark Kevin'),
(862, 'Cruz', 'Mars M dela'),
(863, 'Delgado', 'Regine Carmella P.'),
(864, 'Deniega', 'John Rutter'),
(865, 'Dionisio', 'Heavenly Faith B.'),
(866, 'Garduque', 'Reychell Joy L.'),
(867, 'Cajurao', 'April Haide A.'),
(868, 'Midoro', 'Zaira Yuki'),
(869, 'Violeta', 'Shaira Mae A.'),
(870, 'Jugal', 'Jelyn J.'),
(871, 'Sampang', 'Trisha Camille L.'),
(872, 'Bron', 'Christian Jay M.'),
(873, 'Jr.', 'Dodgie B. Cantos'),
(874, 'Mangampo', 'Jonalyn R.'),
(875, 'Monzon', 'Frances Alei P.'),
(876, 'Villa', 'Carl Eliozer D'),
(877, 'Paré', 'Jean'),
(878, 'Dinaga', 'Maria Rhoda D.'),
(879, 'Lirazan', 'Tenie P.'),
(880, 'Batiao', 'Isidra G.'),
(881, 'Policarpio', 'John Ericson'),
(882, 'Alfonso', 'Olivia B.'),
(883, 'Bravo', 'Annie Lyn M.'),
(884, 'Cruz', 'Princes M. Dela'),
(885, 'Gerero', 'Salve N.'),
(886, 'Gutierez', 'Mary Grace V.'),
(887, 'Pajimola', 'Frederick S.'),
(888, 'Roldan', 'Kris R.'),
(889, 'Ruel', 'Sophia A. '),
(890, 'Vitangcul', 'Mariecon P.'),
(891, 'Apar', 'Marcelo B.'),
(892, 'Samuelson', 'Paul A.'),
(893, 'Nordhaus', 'William D.'),
(894, 'Enriquez', 'Antonio M.'),
(895, 'Jr.', 'Antonio T. Burca'),
(896, 'Cidron', 'John Rodulph B.'),
(897, 'Directo', 'Anthony Charles B.'),
(898, 'Enriquez', 'Kevin M.'),
(899, 'Sinco', 'Arial P.'),
(900, 'Viduya', 'Mark Dominic '),
(901, 'Stevenson', 'William J.'),
(902, 'Kotler', 'Philip'),
(903, 'Keller', 'Kevin Lane'),
(904, 'Abarra', 'Loiuse Patricia'),
(905, 'Betalas', 'Gian Clifford T.'),
(906, 'Juan', 'Lance'),
(907, 'Matro', 'Louie Anthony P.'),
(908, 'Perez', 'Vanjon R.'),
(909, 'Artacho', 'Faustin Robie M. '),
(910, 'Leon', 'John Aaron C.  De'),
(911, 'Malasig', 'Churto B.'),
(912, 'Pagmanoja', 'Khail P.'),
(913, 'Refil', 'Aubrey L.'),
(914, 'Vilanaba', 'Jovanny E. '),
(915, 'Capuli', 'Trixie Nicole'),
(916, 'Montero', 'Jonah H.'),
(917, 'Pamintuan', 'Anie Claire E.'),
(918, 'Sibayan', 'James B.'),
(919, 'Vailoces', 'Daniela Marie A.'),
(920, 'Camutin', 'Daniela Mykaella J.'),
(921, 'Carlos', 'Khyle Ashley G.'),
(922, 'Datoon', 'Mariz M.'),
(923, 'Dicdican', 'Joanna Monica O.'),
(924, 'Domingo', 'Emanuelle Louise O.'),
(925, 'Espiritu', 'Alexandra Mae G.'),
(926, 'Galvez', 'Rachelle T.'),
(927, 'Garing', 'Jono Elierick '),
(928, 'Pomarca', 'Celine Alynna M.'),
(929, 'Pring', 'Jasmine F.'),
(930, 'Bituon', 'Reign Vincent B.'),
(931, 'Ebio', 'Maria Zeny B. '),
(932, 'Permacio', 'Lyra C.'),
(933, 'Pujalte', 'Joshua Emmanuel M.'),
(934, 'Sallas', 'Riza Belle R.'),
(935, 'Ocampo', 'Ma. Edeliza Buck '),
(936, 'Mercado', 'Emma '),
(937, 'Borja', 'Mitchell A.'),
(938, 'Sato', 'Eriko'),
(939, 'Toralba', 'Amelia C.'),
(940, 'Altoveros', 'Hans Adrian Nimrod J.'),
(941, 'Asma', 'Jheawon P.'),
(942, 'Carinal', 'Harly P.'),
(943, 'Castillo', 'Lean Alejandro '),
(944, 'Lagman', 'Andrei R.'),
(945, 'Mira', 'Anna Jesusa D.'),
(946, 'Piorque', 'Kenneth Arvin B.'),
(947, 'Santos', 'Jon Derick T.'),
(948, 'Tolentino', 'Arphee Dex C.'),
(949, 'Teodora', 'Rossan E.'),
(950, 'Negi', 'Jagmohan'),
(951, 'Scannell', 'Edward E.'),
(952, 'Newstrom', 'John W. '),
(953, 'Frisch', 'Emma'),
(954, 'Navarro', 'Rosita L.'),
(955, 'Lucido', 'Jose R. '),
(956, 'Danziger', 'Pamela N.');

-- --------------------------------------------------------

--
-- Table structure for table `availability`
--

CREATE TABLE `availability` (
  `avail_id` int(11) NOT NULL,
  `avail_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `availability`
--

INSERT INTO `availability` (`avail_id`, `avail_name`) VALUES
(1, 'available'),
(2, 'lost'),
(3, 'damaged'),
(4, 'archive');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `book_isbn` varchar(45) DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL,
  `pub_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `filepath` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `book_isbn`, `resource_id`, `pub_id`, `topic_id`, `filepath`) VALUES
(369, '9781593118235', 834, 209, 11, 'public/images/not_found.png'),
(370, NULL, 835, 210, 11, 'public/images/not_found.png'),
(371, '9789710116775', 836, 211, 11, 'public/images/not_found.png'),
(372, NULL, 837, 212, 11, 'public/images/not_found.png'),
(373, '971683182x', 838, 213, 7, 'public/images/not_found.png'),
(374, '9789719537878', 839, 214, 7, 'public/images/not_found.png'),
(375, NULL, 840, 215, 11, 'public/images/not_found.png'),
(376, NULL, 841, 216, 7, 'public/images/not_found.png'),
(377, '9786210225204', 842, 217, 7, 'public/images/not_found.png'),
(378, '9786210225235', 843, 217, 7, 'public/images/not_found.png'),
(379, NULL, 844, 218, 8, 'public/images/not_found.png'),
(380, NULL, 845, 219, 11, 'public/images/not_found.png'),
(381, '9786210225266', 846, 220, 11, 'public/images/not_found.png'),
(382, '', 847, 221, 11, 'public/images/not_found.png'),
(383, '978621022521', 848, 220, 11, 'public/images/not_found.png'),
(384, '9789719482031', 849, 222, 8, 'public/images/not_found.png'),
(385, NULL, 850, 223, 8, 'public/images/not_found.png'),
(386, '', 851, 224, 8, 'public/images/not_found.png'),
(387, NULL, 852, 225, 8, 'public/images/not_found.png'),
(388, NULL, 853, 226, 8, 'public/images/not_found.png'),
(389, '', 854, 227, 8, 'public/images/not_found.png'),
(390, '', 855, 228, 8, 'public/images/not_found.png'),
(391, '0205125840', 856, 229, 10, 'public/images/not_found.png'),
(392, '9789715382663', 857, 230, 10, 'public/images/not_found.png'),
(393, '9710865854', 858, 231, 10, 'public/images/not_found.png'),
(394, '', 859, 232, 10, 'public/images/not_found.png'),
(395, '', 860, 228, 10, 'public/images/not_found.png'),
(396, '', 861, 233, 10, 'public/images/not_found.png'),
(397, NULL, 862, 234, 10, 'public/images/not_found.png'),
(398, '', 863, 235, 10, 'public/images/not_found.png'),
(399, NULL, 864, 236, 10, 'public/images/not_found.png'),
(400, '', 865, 237, 10, 'public/images/not_found.png'),
(401, '9789719478102', 866, 238, 10, 'public/images/not_found.png'),
(402, NULL, 867, 209, 10, 'public/images/not_found.png'),
(403, '', 868, 209, 10, 'public/images/not_found.png'),
(404, '9786210225273', 869, 239, 9, 'public/images/not_found.png'),
(405, NULL, 870, 240, 9, 'public/images/not_found.png'),
(406, '', 871, 241, 9, 'public/images/not_found.png'),
(407, '9710856243', 872, 242, 9, 'public/images/not_found.png'),
(408, '0072994428', 873, 243, 9, 'public/images/not_found.png'),
(409, '', 874, 244, 9, 'public/images/not_found.png'),
(410, NULL, 875, 245, 9, 'public/images/not_found.png'),
(411, '0043510434', 876, 246, 9, 'public/images/not_found.png'),
(412, '9710860356', 877, 209, 9, 'public/images/not_found.png'),
(413, '', 878, 247, 9, 'public/images/not_found.png'),
(414, '902473777X', 879, 248, 9, 'public/images/not_found.png'),
(415, NULL, 880, 249, 9, 'public/images/not_found.png'),
(416, '', 881, 250, 9, 'public/images/not_found.png'),
(417, '', 882, 251, 9, 'public/images/not_found.png'),
(418, '', 883, 252, 9, 'public/images/not_found.png'),
(419, '971926070X', 884, 253, 9, 'public/images/not_found.png'),
(420, '', 885, 254, 9, 'public/images/not_found.png'),
(421, '', 886, 255, 12, 'public/images/not_found.png'),
(422, '627394257380212', 887, 256, 12, 'public/images/not_found.png'),
(423, NULL, 888, 257, 12, 'public/images/not_found.png'),
(424, NULL, 889, 258, 12, 'public/images/not_found.png'),
(425, '', 890, 257, 12, 'public/images/not_found.png'),
(426, NULL, 891, 257, 12, 'public/images/not_found.png'),
(427, '16555457', 892, 259, 14, 'public/images/not_found.png'),
(428, '9789712500381', 893, 247, 14, 'public/images/not_found.png'),
(429, '0669937169', 894, 260, 14, 'public/images/not_found.png'),
(430, '9781405003889', 895, 261, 14, 'public/images/not_found.png'),
(431, '0136917186', 896, 262, 14, 'public/images/not_found.png'),
(432, '0136917593', 897, 262, 14, 'public/images/not_found.png'),
(433, '', 898, 263, 14, 'public/images/not_found.png'),
(434, '', 899, 264, 14, 'public/images/not_found.png');

-- --------------------------------------------------------

--
-- Table structure for table `checkin`
--

CREATE TABLE `checkin` (
  `checkin_id` int(11) NOT NULL,
  `checkin_date` date DEFAULT NULL,
  `checkout_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `checkout_id` int(11) NOT NULL,
  `checkout_date` date DEFAULT NULL,
  `checkout_due` date DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL,
  `patron_id` int(11) DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'borrowed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `college_id` int(11) NOT NULL,
  `college_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`college_id`, `college_name`) VALUES
(1, 'College of Science'),
(2, 'College of Engineering '),
(3, 'College of Industrial Education'),
(4, 'College of Liberal Arts'),
(5, 'College of Architecture and Fine Arts'),
(6, 'College of Industrial Technology');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(60) NOT NULL,
  `college_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `college_id`) VALUES
(1, 'Bachelor of Science in Information Technology', 1),
(2, 'Bachelor of Technical Teacher Education', 3),
(3, 'Bachelor of Science in Computer Science', 1),
(4, 'Bachelor of Applied Science in Laboratory Technology', 1),
(5, 'Bachelor of Science in Environmental Science', 1),
(6, 'Bachelor of Information System', 1),
(7, 'Bachelor of Science in Civil Engineering', 2),
(8, 'Bachelor of Science in Electrical Engineering', 2),
(9, 'Bachelor of Science in Electronics Engineering', 2),
(10, 'Bachelor of Science in Mechanical Engineering', 2),
(11, 'Bachelor of Science Industrial Education', 3),
(12, 'Bachelor of Science in Business Management', 4),
(13, 'Bachelor of Science in Entrepreneurship', 4),
(14, 'Bachelor of Science in Hospitality Management', 4),
(15, 'Bachelor of Science in Architecture', 5),
(16, 'Bachelor of Fine Arts', 5),
(17, 'Bachelor of Graphic Technology', 5),
(18, 'Bachelor of Science in Food Technology', 6),
(19, 'Bachelor of Engineering Technology', 6);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(45) DEFAULT NULL,
  `dept_shelf_no` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`, `dept_shelf_no`) VALUES
(1, 'social science', '1'),
(2, 'languages', '2'),
(3, 'business management ', '3'),
(4, 'hospitality and restaurant management', '4'),
(5, 'references', '5'),
(6, 'student output', '6'),
(7, 'thesis and dissertation', '7'),
(15, 'Entrepreneurship and Management', '10');

-- --------------------------------------------------------

--
-- Table structure for table `journalnewsletter`
--

CREATE TABLE `journalnewsletter` (
  `jn_id` int(11) NOT NULL,
  `jn_volume` varchar(45) DEFAULT NULL,
  `jn_issue` varchar(45) DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `filepath` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `overdue`
--

CREATE TABLE `overdue` (
  `overdue_id` int(11) NOT NULL,
  `overdue_days` int(11) DEFAULT NULL,
  `overdue_fine` int(11) DEFAULT NULL,
  `checkout_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patron`
--

CREATE TABLE `patron` (
  `patron_id` int(11) NOT NULL,
  `tup_id` varchar(50) NOT NULL,
  `patron_fname` varchar(45) DEFAULT NULL,
  `patron_lname` varchar(45) DEFAULT NULL,
  `patron_sex` varchar(45) DEFAULT NULL,
  `patron_mobile` varchar(45) DEFAULT NULL,
  `patron_email` varchar(45) DEFAULT NULL,
  `category` varchar(10) DEFAULT 'Student',
  `college_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'active',
  `timestamp` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patron`
--

INSERT INTO `patron` (`patron_id`, `tup_id`, `patron_fname`, `patron_lname`, `patron_sex`, `patron_mobile`, `patron_email`, `category`, `college_id`, `course_id`, `status`, `timestamp`) VALUES
(348, 'TUPM-23-1538', 'Kristine Danielle', 'Ferrer', 'Female', '09929927679', 'kristinedanielle.ferrer@tup.edu.ph', 'Student', 2, 10, 'active', '2025-04-04 03:03:02'),
(349, 'TUPM-24-1038', 'Sophia Luisa', 'Balagtas', 'Female', '09085501761', 'sophialuisa.balagtas@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-04 03:03:02'),
(350, 'TUPM-24-1840', 'Kerzlyn', 'Alto', 'Female', '09213499780', 'kerzlyn.alto@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-04 03:03:02'),
(351, 'TUPM-23-6928', 'Mhitchie', 'Suico', 'Female', '09519110630', 'mhitchie.suico@tup.edu.ph', 'Student', 2, 9, 'active', '2025-04-04 03:03:02'),
(352, 'TUPM-23-6931', 'Ealjean Arielle', 'Velches', 'Female', '09751178746', 'ealjeanarielle.velches@tup.edu.ph', 'Student', 2, 9, 'active', '2025-04-04 03:03:02'),
(353, 'TUPM-23-9021', 'Joao Ashpyr', 'Catarungan', 'Male', '', 'joaoashpyr.catarungan@tup.edu.ph', 'Student', 2, 9, 'active', '2025-04-04 03:03:02'),
(354, 'TUPM-23-7088', 'Binn Yazzer', 'Ayunon', 'Male', '09495941708', 'binnyazzer.ayunon@tup.edu.ph', 'Student', 2, 9, 'active', '2025-04-04 03:03:02'),
(355, 'TUPM-24-0988', 'Kristine Claire', 'Corpuz', 'Female', '09703690205', 'kristineclaire.corpuz@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-04 03:03:02'),
(356, 'TUPM-24-2344', 'Kharla Mae', 'Celmar', 'Female', '09455978618', 'kharlamae.celmar@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-04 03:03:02'),
(357, 'TUPM-24-1301', 'Angela May', 'Teneros', 'Female', '09201249524', 'angelamay.teneros@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-04 03:03:02'),
(358, 'TUPM-24-1811', 'Janehery', 'Bernal', 'Female', '09157998759', 'janeherylei.bernal@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-04 03:03:02'),
(359, 'TUPM-24-2384', 'Irish', 'Nabayra', 'Female', '09772306421', 'irish.nabayra@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-04 03:03:02'),
(360, 'TUPM-24-0689', 'ANDREA DECELYN', 'SILVA', 'Female', '09381714619', 'andreadecelyn.silva@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-04 03:03:02'),
(361, 'TUPM-23-6062', 'Sandy', 'Gawat', 'Female', '09754980420', 'sandy.gawat@tup.edu.ph', 'Student', 2, 9, 'active', '2025-04-04 03:03:02'),
(362, 'TUPM-24-1818', 'Krizia Mae', 'De Honor', 'Female', '09122824638', 'kriziamaedehonor@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-04 03:03:02'),
(363, 'TUPM-24-2429', 'CHRISTINE MAE', 'Ricafrente', 'Female', '09637743734', 'christinemae.ricafrente@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-04 03:03:02'),
(364, 'TUPM-24-0845', 'MARIE ANGELA', 'DEL CASTILLO', 'Female', '09982676384', 'marieangela.delcastillo@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-04 03:03:02'),
(365, 'TUPM-24-0869', 'Marie Angelie', 'Del Castillo', 'Female', '09602925476', 'marieangelie.delcastillo@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-04 03:03:02'),
(366, 'TUPM-24-1482', 'Nicolyn Jean', 'San Jose', 'Female', '09064644205', 'nicolynjean.sanjose@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-04 03:03:02'),
(367, 'TUPM-24-0749', 'Berna Marie', 'Toñacao', 'Female', '09166095454', 'bernamarie.tonacao@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-04 03:03:02'),
(368, 'TUPM-24-2296', 'Alena Joy', 'Torres', 'Female', '09630803975', 'alenajoy.torres@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-04 03:03:02');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `pub_id` int(11) NOT NULL,
  `pub_name` varchar(100) DEFAULT NULL,
  `pub_address` varchar(100) DEFAULT NULL,
  `pub_email` varchar(45) DEFAULT NULL,
  `pub_phone` varchar(45) DEFAULT NULL,
  `pub_website` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`pub_id`, `pub_name`, `pub_address`, `pub_email`, `pub_phone`, `pub_website`) VALUES
(209, ' n/a n/a', '', '', '', ''),
(210, 'Mutya Publishing House', '#12 P. Gomez St., Maysan, Valenzuela City', '', '2921908/2932163', ''),
(211, 'Central Book Supply Inc.', 'Ground Floor Phoenix Bldg. 927, Quezon Ave. Quezon City', '', '', 'www.central.com.ph'),
(212, 'Princeton University Press', '41 William Street , Princeton, New Jersey', '', '', 'pup.princeton.edu'),
(213, '1624-1626 Espana cor. Don Quijote St., Sampaloc Metro Manila Philippines', '', 'info@staugustinepublications.com', '622068, 7163873, 7437477', 'https://www.staugustinepublications.com/'),
(214, 'Esplana Publishing', 'Manila, Philippines', '', '', ''),
(215, 'National Book Store', 'Quad Alpha Centrum Bldg. 125 Pioneer Street Mandaluyong City 1550', '', '6318061', 'www.nationalbookstore.com'),
(216, 'Tahanan Books for Young Readers', 'Unit 402 Cityland 3 Building, 105 V.A. Rufino corner Esteban Streets, Makati ·', '', '', 'https://tahananbooks.com/'),
(217, 'Central Book Supply, Inc.', '927 Quezon Avenue, Quezon City', 'info@central.com.ph', '', 'www.central.com.ph'),
(218, 'National Book Store, Inc.', 'Quad Alpha Centrum Bldg. 125 Pioneer Street Mandaluyong City 1550', '', '', 'www.nationalbookstore.com'),
(219, 'National Book Store', 'Quad Alpha Centrum Bldg. 125 Pioneer St., Mandaluyong City', '', '', 'www.nationalbookstore.com'),
(220, 'Central Books Supply, Inc.', '927 Quezon Avenue, Quezon City', 'info@central.com.ph', '', 'www.central.com.ph'),
(221, 'De La Salle University Press', '', '', '', ''),
(222, 'RAHA Publishing House', '33 Cotabato Street, Brgy. Sapa II, Rosario, Cavite', '', '9488106197', ''),
(223, 'Booklore Publishing Corporation', '33 Acebo St. Marulas, Valenzuela City', '', '', ''),
(224, 'Prentice-Hall, Inc.', 'Englewood Cliffs, New Jersey', '', '', ''),
(225, 'Longman', '', '', '', ''),
(226, 'Harcourt, Brace & World Inc.', '3 Upper James Street Golden Square London W1', '', '', ''),
(227, 'Philippine Social Science Council', '', '', '', ''),
(228, 'KEN Incorporated', '', '', '', ''),
(229, '\r\nAllyn and Bacon', '160 Gould Street, Needham heights, Massachusetts 02194.', '', '', ''),
(230, 'National Historical Commission of the Philippines', 'T.M. Kalaw St., Ermita, Manila, Philippines', '', '(63)(2)2547482', 'www.nhcp.gov.ph'),
(231, 'National Bookstore', 'Quad Alpha Centrum Bldg., 125 Pioneer Street, Mandaluyong City', '', '631-80-61 to 66', 'www.nationalboookstore.com'),
(232, 'Phoenix Publishing House, Inc.', '927 Quezon Avenue, Quezon City', '', '', ''),
(233, 'Knopf', '', '', '', ''),
(234, 'National Book Store, Inc.', '', '', '', ''),
(235, 'Milrose Printing Corporation', '4592 Closer St., Sun Valley, Paranaque, Metro Manila', '', '823-03-44, 823-03-69', ''),
(236, 'United Nation University Press', 'The United Nations University, 53-70, Jingumae 5-chome, Shinuya-ku, Tokyo 150, Japan', '', '3499-2811', ''),
(237, ' n/a n/a', 'Makati, Metro Manila Philippines', '', '', ''),
(238, 'Suatengco Publishing House', '19 Barangay St., Kaloocan City 1400', '', '(02) 239-2048', ''),
(239, 'Central Book Supply, Inc.', 'Phoenix Building, Quezon Avenue, Quezon City', 'info@central.com.ph', '', 'www.central.com.ph'),
(240, 'United Nations', '', '', '', ''),
(241, 'Philippine Society of Constitutional Law', '', '', '', ''),
(242, 'National Book Store, Inc.', 'Quad Alpha Centrum Bldg. 125 Pioneer St., Mandaluyong City', '', '', ''),
(243, 'McGraw-Hill/irwin', '1221 Avenue of the Americas, New York, NY', '', '', ''),
(244, 'n/a', '', '', '', ''),
(245, 'The College of Democracy', '1101 North Highland Street - Arlington, Virginia', '', '', ''),
(246, 'George Allen & Unwin Ltd', '', '', '', ''),
(247, 'Vigor Print Mark', '', '', '', ''),
(248, 'Kluwer Academic Publisher', '3300 AA Dordrecht, The Netherlands', '', '5313859 / 5335249', ''),
(249, 'Word Publishing', 'United States of America', '', '(02) 929-5088', ''),
(250, 'The OPEC Fund for International Development', 'Vienna, Austria', 'info@ofid.org', '(+43-1)515-640', 'www.ofid.org'),
(251, 'REX Bookstore', '856 Nicanor Reyes, Sr. St. 1977 C.M. Recto Avenue Manila Philippines', '', '7414957 / 7414956 / 7414916 / 7414920', ''),
(252, 'Edward Elgar Publishing', 'Glensanda House Montpellier Parade, Cheltenham Glos GL50 1UA UK', 'info@e-elgar.co.uk', '44 1242 226934', 'www.e-elgar.com'),
(253, 'Batas  Kalikasan Foundation', '6-J Westgate Tower, Investment Drive, Madrigal Business Park, Alabang, Muntinlupa City, 1780', '', '', ''),
(254, 'Department of Environment and Natural Resources', '', '', '920-2273/928-12-14', 'www.denr.gov.ph'),
(255, 'Technological University of the Philippines College of Liberal Arts Manila', 'Ayala Boulevard, Ermita, Manila', '', '', ''),
(256, 'KEN incorporated', 'Quezon City', '', '', ''),
(257, 'Technological University of the Philippines', 'Ayala Boulevard, Ermita, Manila', '', '', ''),
(258, 'Houghton Mifflin Company', 'Boston, Massachusettes, United States of America', '', '', ''),
(259, 'St. Pauls Philippines', '7708 St. Paul Road, San Antonio Village, 1203 Makati City, Philippines', '', '895-9701 to 04', 'www.stpauls.com'),
(260, 'D.C. Heath and Company', '', '', '', ''),
(261, 'Macmillan Education', '', '', '', ''),
(262, 'Prentice Hall', 'Englewood Cliffs, New Jersey', '', '', ''),
(263, 'Reader\'s Condensed Book', 'Pleasantville, N.Y', '', '', ''),
(264, 'State University of New York Press', '90 State Street, Suite 700, Albany, N.Y. 12207', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `reportcategory`
--

CREATE TABLE `reportcategory` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reportcategory`
--

INSERT INTO `reportcategory` (`cat_id`, `cat_name`) VALUES
(1, 'attendance'),
(2, 'circulation'),
(3, 'inventory'),
(4, 'patron');

-- --------------------------------------------------------

--
-- Table structure for table `reportdetail`
--

CREATE TABLE `reportdetail` (
  `detail_id` int(11) NOT NULL,
  `detail_name` varchar(45) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reportdetail`
--

INSERT INTO `reportdetail` (`detail_id`, `detail_name`, `cat_id`) VALUES
(1, 'daily attendance', 1),
(2, 'monthly attendance', 1),
(3, 'books issued', 2),
(4, 'books returned', 2),
(5, 'overdue books', 2),
(6, 'most borrowed books', 2),
(7, 'least borrowed books', 2),
(8, 'available resources', 3),
(9, 'lost resources', 3),
(10, 'damaged resources', 3),
(11, 'books', 3),
(12, 'journals', 3),
(13, 'newsletters', 3),
(14, 'theses', 3),
(15, 'top borrowers', 4),
(16, 'users with overdue', 4),
(17, 'daily circulation', 2),
(18, 'monthly circulation', 2),
(19, 'custom attendance', 1),
(20, 'custom circulation', 2),
(21, 'archived', 3),
(22, 'unarchived', 3),
(23, 'active patrons', 4),
(24, 'inactive patrons', 4);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `report_id` int(11) NOT NULL,
  `report_name` varchar(45) DEFAULT NULL,
  `report_description` varchar(45) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `detail_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `report_start_date` date DEFAULT NULL,
  `report_end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `filepath` varchar(500) DEFAULT NULL,
  `is_archived` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`report_id`, `report_name`, `report_description`, `cat_id`, `detail_id`, `staff_id`, `report_start_date`, `report_end_date`, `created_at`, `filepath`, `is_archived`) VALUES
(13, 'Inventory Report', 'Book Inventory as of April 4', 3, 11, 11, '0000-00-00', '0000-00-00', '2025-04-04 03:04:57', '/public/reports/Inventory Report_2025-04-04_11-04-57.xlsx', 0),
(14, 'Active Patron Records', 'Patrons as of April 4', 4, 23, 11, '0000-00-00', '0000-00-00', '2025-04-04 03:05:44', '/public/reports/Active Patron Records_2025-04-04_11-05-44.xlsx', 0),
(15, 'Theses Inventory', 'Inventory for Theses & Dissertations as of Ap', 3, 14, 11, '0000-00-00', '0000-00-00', '2025-04-04 03:06:39', '/public/reports/Theses Inventory_2025-04-04_11-06-39.xlsx', 0);

-- --------------------------------------------------------

--
-- Table structure for table `resourceauthors`
--

CREATE TABLE `resourceauthors` (
  `resource_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resourceauthors`
--

INSERT INTO `resourceauthors` (`resource_id`, `author_id`) VALUES
(834, 345),
(835, 352),
(836, 353),
(837, 354),
(838, 355),
(839, 356),
(839, 357),
(839, 358),
(840, 359),
(841, 360),
(842, 363),
(842, 364),
(842, 365),
(842, 366),
(842, 367),
(843, 363),
(843, 364),
(843, 365),
(843, 367),
(843, 368),
(844, 369),
(844, 370),
(845, 371),
(846, 364),
(846, 372),
(846, 373),
(846, 374),
(846, 375),
(847, 345),
(848, 363),
(848, 364),
(848, 373),
(848, 374),
(848, 376),
(849, 377),
(849, 378),
(849, 379),
(850, 380),
(851, 381),
(851, 382),
(852, 383),
(852, 384),
(852, 385),
(852, 386),
(852, 387),
(853, 388),
(854, 389),
(854, 390),
(855, 391),
(855, 392),
(856, 393),
(856, 394),
(857, 345),
(858, 371),
(859, 395),
(859, 396),
(859, 397),
(859, 398),
(859, 399),
(860, 382),
(860, 400),
(860, 401),
(861, 402),
(861, 403),
(861, 404),
(862, 405),
(863, 406),
(863, 407),
(864, 408),
(864, 409),
(865, 345),
(866, 410),
(866, 411),
(866, 412),
(867, 413),
(868, 406),
(868, 407),
(869, 414),
(869, 415),
(869, 416),
(869, 417),
(869, 418),
(870, 345),
(871, 419),
(872, 420),
(873, 421),
(873, 422),
(874, 345),
(875, 423),
(876, 424),
(877, 425),
(877, 426),
(878, 427),
(878, 428),
(878, 429),
(879, 430),
(879, 431),
(880, 432),
(880, 433),
(881, 434),
(882, 435),
(883, 345),
(884, 436),
(885, 345),
(886, 382),
(886, 437),
(886, 438),
(886, 439),
(886, 440),
(887, 441),
(887, 442),
(887, 443),
(888, 444),
(888, 445),
(888, 446),
(889, 447),
(889, 448),
(889, 449),
(890, 450),
(890, 451),
(890, 452),
(890, 453),
(891, 444),
(891, 445),
(891, 446),
(892, 345),
(893, 454),
(893, 455),
(894, 456),
(894, 457),
(895, 458),
(896, 345),
(897, 345),
(898, 345),
(899, 459),
(899, 460),
(900, 461),
(900, 462),
(900, 463),
(900, 464),
(900, 465),
(900, 466),
(900, 467),
(900, 468),
(901, 469),
(901, 470),
(901, 471),
(901, 472),
(901, 473),
(901, 474),
(901, 475),
(901, 476),
(901, 477),
(901, 478),
(902, 479),
(902, 480),
(902, 481),
(902, 482),
(902, 483),
(902, 484),
(902, 485),
(903, 486),
(903, 487),
(903, 488),
(903, 489),
(903, 490),
(903, 491),
(904, 492),
(904, 493),
(904, 494),
(904, 495),
(904, 496),
(904, 497),
(905, 498),
(906, 499),
(906, 500),
(906, 501),
(906, 502),
(906, 503),
(906, 504),
(906, 505),
(907, 506),
(907, 507),
(907, 508),
(907, 509),
(907, 510),
(907, 511),
(907, 512),
(908, 513),
(908, 514),
(908, 515),
(908, 516),
(908, 517),
(908, 518),
(908, 519),
(909, 520),
(910, 521),
(910, 522),
(910, 523),
(910, 524),
(910, 525),
(910, 526),
(910, 527),
(911, 528),
(911, 529),
(911, 530),
(912, 531),
(912, 532),
(912, 533),
(912, 534),
(912, 535),
(912, 536),
(912, 537),
(913, 538),
(913, 539),
(913, 540),
(913, 541),
(913, 542),
(913, 543),
(913, 544),
(913, 545),
(913, 546),
(914, 469),
(914, 555),
(914, 556),
(914, 557),
(914, 558),
(914, 559),
(914, 560),
(914, 561),
(915, 562),
(916, 563),
(917, 382),
(918, 564),
(919, 565),
(920, 566),
(921, 567),
(922, 382),
(923, 568),
(924, 569),
(925, 570),
(926, 571),
(927, 572),
(927, 573),
(927, 574),
(927, 575),
(927, 576),
(927, 577),
(927, 578),
(928, 579),
(928, 580),
(928, 581),
(928, 582),
(928, 583),
(928, 584),
(928, 585),
(928, 586),
(929, 591),
(930, 597),
(930, 598),
(930, 599),
(930, 600),
(930, 601),
(930, 602),
(930, 603),
(931, 604),
(931, 605),
(931, 606),
(931, 607),
(931, 608),
(931, 609),
(931, 610),
(932, 611),
(932, 612),
(932, 613),
(932, 614),
(932, 615),
(932, 616),
(933, 382),
(933, 617),
(933, 618),
(933, 619),
(933, 620),
(933, 621),
(933, 622),
(933, 623),
(933, 624),
(934, 625),
(934, 626),
(935, 627),
(935, 628),
(935, 629),
(935, 630),
(935, 631),
(935, 632),
(935, 633),
(936, 634),
(936, 635),
(936, 636),
(936, 637),
(936, 638),
(936, 639),
(936, 640),
(936, 641),
(937, 642),
(937, 643),
(937, 644),
(937, 645),
(937, 646),
(937, 647),
(937, 648),
(937, 649),
(938, 650),
(938, 651),
(938, 652),
(938, 653),
(938, 654),
(938, 655),
(938, 656),
(939, 657),
(939, 658),
(939, 659),
(939, 660),
(939, 661),
(939, 662),
(939, 663),
(939, 664),
(940, 382),
(941, 665),
(942, 345),
(943, 666),
(943, 667),
(943, 668),
(943, 669),
(943, 670),
(943, 671),
(943, 672),
(943, 673),
(943, 674),
(943, 675),
(943, 676),
(944, 677),
(944, 678),
(944, 679),
(944, 680),
(944, 681),
(944, 682),
(944, 683),
(944, 684),
(944, 685),
(944, 686),
(944, 687),
(944, 688),
(945, 666),
(945, 667),
(945, 669),
(945, 671),
(945, 673),
(946, 345),
(947, 689),
(947, 690),
(948, 646),
(948, 662),
(948, 691),
(948, 692),
(948, 693),
(948, 694),
(948, 695),
(948, 696),
(949, 586),
(949, 697),
(949, 698),
(949, 699),
(949, 700),
(949, 701),
(949, 702),
(950, 703),
(950, 704),
(950, 705),
(950, 706),
(950, 707),
(950, 708),
(950, 709),
(950, 710),
(950, 711),
(951, 635),
(951, 649),
(951, 663),
(951, 712),
(951, 713),
(951, 714),
(951, 715),
(952, 605),
(952, 607),
(952, 608),
(952, 609),
(952, 716),
(952, 717),
(952, 718),
(953, 643),
(953, 644),
(953, 645),
(953, 658),
(953, 659),
(953, 660),
(953, 664),
(953, 720),
(954, 721),
(954, 722),
(954, 723),
(954, 724),
(954, 725),
(954, 726),
(954, 727),
(955, 573),
(955, 575),
(955, 576),
(955, 612),
(955, 629),
(955, 728),
(956, 604),
(956, 606),
(956, 610),
(956, 729),
(956, 730),
(956, 731),
(956, 732),
(957, 598),
(957, 653),
(957, 733),
(957, 734),
(957, 735),
(957, 736),
(958, 572),
(958, 577),
(958, 611),
(958, 627),
(958, 630),
(958, 737),
(958, 738),
(959, 642),
(959, 657),
(959, 661),
(959, 739),
(959, 740),
(959, 741),
(959, 742),
(960, 617),
(960, 619),
(960, 743),
(960, 744),
(960, 745),
(960, 746),
(960, 747),
(961, 580),
(961, 748),
(961, 749),
(961, 750),
(961, 751),
(961, 752),
(961, 753),
(962, 620),
(962, 621),
(962, 754),
(962, 755),
(962, 756),
(962, 757),
(962, 758),
(962, 759),
(963, 760),
(963, 761),
(963, 762),
(963, 763),
(963, 764),
(963, 765),
(963, 766),
(964, 598),
(964, 653),
(964, 735),
(964, 736),
(964, 767),
(964, 768),
(965, 584),
(965, 585),
(965, 769),
(965, 770),
(965, 771),
(965, 772),
(965, 773),
(966, 613),
(966, 614),
(966, 628),
(966, 633),
(966, 774),
(966, 775),
(967, 574),
(967, 615),
(967, 616),
(967, 631),
(967, 776),
(968, 651),
(968, 652),
(968, 654),
(968, 777),
(968, 778),
(968, 779),
(968, 780),
(969, 599),
(969, 600),
(969, 602),
(969, 603),
(969, 781),
(969, 782),
(969, 783),
(970, 784),
(970, 785),
(970, 786),
(970, 787),
(970, 788),
(970, 789),
(970, 790),
(970, 791),
(971, 792),
(971, 793),
(971, 794),
(971, 795),
(971, 796),
(971, 797),
(971, 798),
(972, 799),
(972, 800),
(972, 801),
(972, 802),
(972, 803),
(972, 804),
(972, 805),
(972, 806),
(973, 807),
(973, 808),
(973, 809),
(973, 810),
(973, 811),
(973, 812),
(973, 813),
(974, 735),
(974, 762),
(974, 766),
(974, 779),
(974, 782),
(974, 783),
(974, 814),
(975, 729),
(975, 754),
(975, 755),
(975, 756),
(975, 815),
(975, 816),
(975, 817),
(976, 689),
(976, 690),
(976, 737),
(976, 738),
(976, 774),
(976, 775),
(976, 776),
(977, 818),
(977, 819),
(977, 820),
(977, 821),
(977, 822),
(977, 823),
(977, 824),
(977, 825),
(978, 716),
(978, 757),
(978, 826),
(978, 827),
(978, 828),
(978, 829),
(978, 830),
(979, 831),
(979, 832),
(979, 833),
(979, 834),
(979, 835),
(979, 836),
(979, 837),
(979, 838),
(980, 761),
(980, 762),
(980, 763),
(980, 764),
(980, 766),
(980, 839),
(980, 840),
(981, 841),
(981, 842),
(981, 843),
(981, 844),
(981, 845),
(981, 846),
(981, 847),
(981, 848),
(982, 699),
(982, 721),
(982, 748),
(982, 749),
(982, 752),
(982, 753),
(982, 769),
(982, 772),
(983, 698),
(983, 725),
(983, 727),
(983, 771),
(983, 849),
(983, 850),
(983, 851),
(983, 852),
(984, 853),
(984, 854),
(984, 855),
(984, 856),
(984, 857),
(984, 858),
(984, 859),
(985, 860),
(985, 861),
(985, 862),
(985, 863),
(985, 864),
(985, 865),
(985, 866);

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `resource_id` int(11) NOT NULL,
  `resource_title` varchar(200) DEFAULT NULL,
  `resource_description` varchar(1000) DEFAULT NULL,
  `resource_published_date` varchar(20) DEFAULT NULL,
  `original_resource_quantity` int(10) NOT NULL,
  `resource_quantity` int(11) DEFAULT NULL,
  `resource_is_circulation` tinyint(4) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `avail_id` int(11) DEFAULT NULL,
  `resource_is_archived` tinyint(4) DEFAULT 0,
  `timestamp` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`resource_id`, `resource_title`, `resource_description`, `resource_published_date`, `original_resource_quantity`, `resource_quantity`, `resource_is_circulation`, `dept_id`, `type_id`, `avail_id`, `resource_is_archived`, `timestamp`) VALUES
(834, 'Justice, Morality, and Social Responsibilty', 'This volume of Research in Social Issues in Management critically examines theoretical underpinnings of organizational justice and corporate social responsibility by identifying motives underlying desires for justice and by considering responses to injustice. The first set of chapters explores issues of morality, emotions, and social exchange relationships. These can be seen as engines that drive reactions to organizational justice. The second set of chapters addresses injustice and recovery, the social systems surrounding justice, and the application of justice principles to organizations’ environmental and sustainability practices. A commentary chapter highlights ten themes that cross this interesting collection of paper on Justice, Morality, and Social Responsibility.', '2008', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:54:59'),
(835, 'Ethics: Basic Concepts and Contemporary Moral Issues', 'Ethics is a study for knowledge ; but more than that, it is a way of living. Moral educators impart the knowledge in the hope that they be translated into the daily living of the individual, the learner; to transform his life from unrighteousness to righteousness; to affirm and realize the ultimate meaning of his being.', '2000', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:54:59'),
(836, 'Dissidente', 'n/a', '2013', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:54:59'),
(837, 'Knowlege, Nature, and the Good', 'Knowledge, Nature, and the Good brings together some of John Cooper’s most important works on ancient philosophy. In thirteen chapters that represent an ideal companion to the author’s influential Reason and Emotion, Cooper addresses a wide range of topics and periods—from Hippocratic medical theory and Plato’s epistemology and moral philosophy, to Aristotle’s physics and metaphysics, academic scepticism, and the cosmology, moral psychology, and ethical theory of the ancient Stoics.', '2004', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:54:59'),
(838, 'Philippine History and Government', 'n/a', '1998', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:54:59'),
(839, 'Rizal: Buhay at Katha', 'n/a', '2014', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:54:59'),
(840, 'Introduction to Logic', 'n/a', '1995', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:54:59'),
(841, 'Emilio Aguinaldo', 'The riveting life stories of our Philippine heroes can inspire children, students, and the next generation of community leaders. Share your love of history by bringing home Tahanan\'s award-winning Great Lives Library.--Publisher\'s description.', '1992', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:54:59'),
(842, 'Readings in Philippine History', 'n/a', '2024', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:54:59'),
(843, 'The Life and Works of Rizal', 'n/a', '2024', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:54:59'),
(844, 'General Psychology', 'n/a', '1995', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:54:59'),
(845, 'The Humanities Revised Edition', 'n/a', '2003', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:54:59'),
(846, 'Ethics', 'n/a', '2024', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:54:59'),
(847, 'Readings in the Introduction to Philosophy', 'n/a', '1993', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:54:59'),
(848, 'Religion, Religious Experiences, and Spirituality', 'n/a', '2024', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:54:59'),
(849, 'PSYCHOLOGY: Knowledge Application And Beyond', 'n/a', '2012', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:54:59'),
(850, 'Exceptional Psychology (with Questions and Answers)', 'n/a', '1999', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:54:59'),
(851, 'Industrial Psychology', 'n/a', '1980', 2, 2, 1, 1, 1, 1, 0, '2025-04-04 02:54:59'),
(852, 'Motivation and Personality (Third Edition)', 'n/a', '1987', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:00'),
(853, 'Educational Psychology', 'n/a', '1970', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:00'),
(854, 'Reading in General Psychology', 'n/a', '1999', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:00'),
(855, 'General Psychology Second Edition', 'n/a', '1978', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:00'),
(856, 'In Conflict And Order: Understanding Society (Fifth Edition)', 'n/a', '1991', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:00'),
(857, 'Naning:Mariano Ponce 150th Birth Anniversary Commemorative Lectures and Selected Articles from La Solidaridad', 'n/a', '2013', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:00'),
(858, 'Sociology Focus On The Philippines', 'n/a', '2005', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:00'),
(859, 'Sociology In The New Philippine Setting', 'n/a', '1977', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:00'),
(860, 'General Sociology Focus on the Philippines Second Edition', 'n/a', '1984', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:00'),
(861, 'Anthropology: Decisions, Adaptation, and Evolution', 'n/a', '1980', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:00'),
(862, 'Population Education Revised Edition', 'n/a', '1983', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:00'),
(863, 'Introductory Sociology for Science and Technology (Revised Edition 2009)', 'n/a', '1995', 2, 2, 1, 1, 1, 1, 0, '2025-04-04 02:55:00'),
(864, 'The Impact of Technology on Human Rights: Global Case-Studies', 'n/a', '1993', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:00'),
(865, 'When Parents are Friends', 'n/a', '1986', 7, 7, 1, 1, 1, 1, 0, '2025-04-04 02:55:00'),
(866, 'An Introduction to the Humanities: The Arts', 'n/a', '2010', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:00'),
(867, 'Social Problems in the West Drugs Suicide Divorce', 'n/a', '1984', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:00'),
(868, 'Introductory Sociology for Science and Technology (Revised Edition 2010)', 'n/a', '1995', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:00'),
(869, 'The Contemporary World', 'n/a', '2024', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:00'),
(870, 'Basic Facts about the United Nations', 'n/a', '1993', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:00'),
(871, 'The Constitution of the Philippines: Notes and Comments', 'n/a', '1976', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:00'),
(872, 'The Family Code of the Philippines Annotated (Fourth and Revised Edition)', 'n/a', '1993', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:00'),
(873, 'Business, Government, and Society A managerial Perspective, Text, and Cases', 'n/a', '2006', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:00'),
(874, 'Ang 1986 Konstitusyon ng Republika ng Pilipinas', 'n/a', '1986', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:00'),
(875, 'How to Establish a Democracy or Improve the One You Now Have: A Practical Guide for Developing Essential Government and Business Structures and Personal Systems of Values', 'n/a', '1993', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:00'),
(876, 'Administrative Theories and Politics: An Inquiry Into the Structure and Processes of Modern Government', 'n/a', '1972', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:01'),
(877, 'Fundamentals Of Political Science (Second Edition)', 'n/a', '2000', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:01'),
(878, 'Resource Book on Environmental Management', 'n/a', '2003', 4, 4, 1, 1, 1, 1, 0, '2025-04-04 02:55:01'),
(879, 'From Dependence to Autonomy The Development of Asian Universities', 'n/a', '1989', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:01'),
(880, 'Why America Doesn\'t Work', 'n/a', '1991', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:01'),
(881, 'The Quest for Economic Reform and Structural Transformation in the Arab Region', 'n/a', '2007', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:01'),
(882, 'The Constitution of the Republic of the Philippines with Annotations 1987 First Edition', 'n/a', '1987', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:01'),
(883, 'European Studies: New Titles and Backlist', 'n/a', '2003', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:01'),
(884, 'A Legal Arsenal for the Philippine Environment', 'n/a', '2002', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:01'),
(885, 'The Philippine Clean Water Act of 2004 (R.A. 9275): Implications to Local Government Units, Small Business Establishments, and Women', 'n/a', '2012', 1, 1, 1, 1, 1, 1, 0, '2025-04-04 02:55:01'),
(886, 'Technical Report Writing Revised Edition', 'n/a', '1997', 10, 10, 1, 2, 1, 1, 0, '2025-04-04 02:55:01'),
(887, 'Technical Writing Revised Edition', 'n/a', '1962', 1, 1, 1, 2, 1, 1, 0, '2025-04-04 02:55:01'),
(888, 'Technical Writing Organization, Form and Content Revised Edition', 'n/a', '2008', 1, 1, 1, 2, 1, 1, 0, '2025-04-04 02:55:01'),
(889, 'Form and Style: Theses, Reports, Term Papers Sixth Edition', 'n/a', '1982', 1, 1, 1, 2, 1, 1, 0, '2025-04-04 02:55:01'),
(890, 'Communication Arts II', 'n/a', '1995', 1, 1, 1, 2, 1, 1, 0, '2025-04-04 02:55:01'),
(891, 'Technical Writing Organization, Form and Content', 'n/a', '2005', 3, 3, 1, 2, 1, 1, 0, '2025-04-04 02:55:01'),
(892, '366 Days with the Lord', 'n/a', '2004', 1, 1, 1, 2, 1, 1, 0, '2025-04-04 02:55:01'),
(893, 'The Humanities in World Literature', 'n/a', '2004', 2, 2, 1, 2, 1, 1, 0, '2025-04-04 02:55:01'),
(894, 'Living Literature Beginnings', 'n/a', '1981', 1, 1, 1, 2, 1, 1, 0, '2025-04-04 02:55:01'),
(895, 'Survival English: International Communication for Professional People', 'n/a', '2004', 1, 1, 1, 2, 1, 1, 0, '2025-04-04 02:55:02'),
(896, 'Prentice Hall Literature: The American Experience', 'n/a', '1991', 1, 1, 1, 2, 1, 1, 0, '2025-04-04 02:55:02'),
(897, 'Prentice Hall Literature: Platinum', 'n/a', '1991', 1, 1, 1, 2, 1, 1, 0, '2025-04-04 02:55:02'),
(898, 'Reader\'s Digest Condensed Books Volume 1', 'n/a', '1975', 1, 1, 1, 2, 1, 1, 0, '2025-04-04 02:55:02'),
(899, 'Being and Time: A Translation of Sein and Zeit', 'n/a', '1996', 1, 1, 1, 2, 1, 1, 0, '2025-04-04 02:55:02'),
(900, 'A Research Presented ti the Faculty od the Social Science Department Technological University of the Philippines', 'n/a', '2017', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:55'),
(901, 'The Effects of Road Reblocking in the Telecommunication Industry', 'n/a', '2016', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:55'),
(902, 'The Implementation of Quezon City Ordinance No. SP 2501, S-2016 (Anti-Catcalling Ordinance): An Assessment', 'n/a', '2017', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:55'),
(903, 'Implementation of Martial Law in the Philippines: An Assessment', 'n/a', '2017', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:56'),
(904, 'An Assessment on the Implementation of K to 12 Education Program: A Technological University of the Philippines Experience', 'n/a', '2017', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:56'),
(905, 'Compilation Of Oral Reports In Production Management', 'n/a', '2008', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:56'),
(906, 'The Implementation of Total Productive Maintenance Program: A Semiconductor Company Experience', 'n/a', '2016', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:56'),
(907, 'Tattos and Piercing in the Medical Field: An Assessment', 'n/a', '2016', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:56'),
(908, 'Home-Based Employment: A National Capitol Region Experience', 'n/a', '2018', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:56'),
(909, 'An Assessment Of The Social Science Program Offered At Tup: Basis For Effective Management Of A Curricular Program', 'n/a', '2014', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:56'),
(910, 'Level of Implementation of Personal Protective Equipment (PPE) of Holcim Philippines: An Assessment', 'n/a', '2015', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:56'),
(911, 'TUP.ACAPEDIA.PH: An e-Learning System', 'n/a', '2006', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:56'),
(912, 'The Implementation of Manila Ordinance No. 8336 Truck Ban Ordinance: An Assessment', 'n/a', '2015', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:56'),
(913, 'The Effects Of Hypercompetition To Employees\' Morale', 'n/a', '2015', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:56'),
(914, 'Management Skills & Management Styles Industrial Organization and Management', 'n/a', '2015', 2, 2, 0, 1, 4, 1, 0, '2025-04-04 02:57:56'),
(915, 'The Privatization Of The Philippine National Bank', 'n/a', '2004', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:56'),
(916, 'Performance Of The Philippine Aviation Industry: Basis For Policy Direction', 'n/a', '2004', 3, 3, 0, 1, 4, 1, 0, '2025-04-04 02:57:56'),
(917, 'Business Finance Written Report SY 2014-2015', 'n/a', '2015', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:56'),
(918, 'Predictors Of Safety Awareness Of Ship Personnel And Passengers In The Philippine Domestic Trade: Directions For Policy Action', 'n/a', '2004', 2, 2, 0, 1, 4, 1, 0, '2025-04-04 02:57:56'),
(919, 'Social Power And Politics That Influence Organization Development Of Pamantasan Ng Lungsod Ng Muntinlupa: Implications For Policy Direction', 'n/a', '2004', 3, 3, 0, 1, 4, 1, 0, '2025-04-04 02:57:56'),
(920, 'Performance Of Selected Domestic Shipping Companies, Fiscal Year 2002-2003: An Assessment', 'n/a', '2004', 4, 4, 0, 1, 4, 1, 0, '2025-04-04 02:57:56'),
(921, 'Servant-Leadership And Work Commitment: Inputs For Building A New Public Service Concept', 'n/a', '2005', 3, 3, 0, 1, 4, 1, 0, '2025-04-04 02:57:56'),
(922, 'Planning Aspects And Organizational Effectiveness Of Faculties Of Management Science Of Rajabhat Institutes (Universities) In The Central, Eastern, And Northeastern Thailand', 'n/a', '2006', 2, 2, 0, 1, 4, 1, 0, '2025-04-04 02:57:56'),
(923, 'Management Effectiveness Of Selected Barangays In The First Congressional District Of Rizal', 'n/a', '2006', 3, 3, 0, 1, 4, 1, 0, '2025-04-04 02:57:56'),
(924, 'Collection and Disposal of Used Lubricants: Model for Environmental Management', 'n/a', '2002', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:57'),
(925, 'The Effectiveness of Database Management System in Selected Learning Institutions in Metro Manila', 'n/a', '2005', 2, 2, 0, 1, 4, 1, 0, '2025-04-04 02:57:57'),
(926, 'Organizational Culture: Its Influence on Level of Job Satisfaction and Effectiveness of Faculty Members in Selected Educational Institutions in Metro Manila', 'n/a', '2005', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:57'),
(927, 'SOFT DELIGHT \"Have a Soft Delight Experience\"', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:57'),
(928, 'Veggies Scream Veggiesk, I Scream!', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:57'),
(929, 'Effectiveness Of Hotel And Restaurant Management Program In Selected Schools In Northern Metro Manila: Inputs To Total Quality Management', 'n/a', '2004', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:57'),
(930, 'SEAWHARMA LE DELICE \"Experience the Sea in a Wrap\"', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:57'),
(931, 'TOT BAG \"Tot bag, your thoughts in the bag\"', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:57'),
(932, 'KKK MOCHI: Sweet and Healthy Rice Cake', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:57'),
(933, 'BLUEMACK BURGER \'Every Bite, You Feel Delight\'', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:57'),
(934, 'HUNGER BUSTER: TRADITIONAL FILIPINO INSTANT FOOD \"MURDERING YOUR HUNGER\"', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:57'),
(935, 'SPLATTY BURGER \"Meaty goodness from the tree of life\"', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:57'),
(936, 'AFTER MEAL ICE CREAM \"We\'ll complete your meal today\"', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:57'),
(937, 'NYMPHAEA \"Tote Full of Pockets\"', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:58'),
(938, 'QUENCHED \"Have it all without alcohol\"', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:58'),
(939, 'HIMAGAS BITES Taste the Filipino Delicacy with just one BITE!', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:58'),
(940, 'A COMPILATION REPORT', 'n/a', '2013', 2, 2, 0, 1, 4, 1, 0, '2025-04-04 02:57:58'),
(941, 'The Sources of Students\' Misery', 'n/a', '2014', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:58'),
(942, 'A Documentation for Educational Plant Tour at Gardenia Bakeries Inc. in Biñan, Laguna', 'n/a', '2012', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:58'),
(943, 'Job Qualification and Demographic Factors to Employees Productivity', 'n/a', '2012', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:58'),
(944, 'Relationship Between Socio Demographic and Professional Growth of the Employees', 'n/a', '2012', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:58'),
(945, 'Safety Operation Program', 'n/a', '2012', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:58'),
(946, 'Compilation of Reports in IM11 (ENVIRONMENTAL MANAGEMENT)', 'n/a', '2012', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:58'),
(947, 'House of Crayfish: We Grow. We Breed. We Share', 'n/a', '2024', 2, 2, 0, 1, 4, 1, 0, '2025-04-04 02:57:58'),
(948, 'CHICK BONED: Skin the Bone, Savor the Flavor', 'n/a', '2024', 2, 2, 0, 1, 4, 1, 0, '2025-04-04 02:57:58'),
(949, 'SABUCHI \"A Twist of Banana in Every Bite\"', 'n/a', '2024', 2, 2, 0, 1, 4, 1, 0, '2025-04-04 02:57:58'),
(950, 'VIAJE RETRATO Gunitain at Marahuyo sa Nakaraan', 'n/a', '2023', 2, 2, 0, 1, 4, 1, 0, '2025-04-04 02:57:58'),
(951, 'THE SCRAMBLE SPOT: Beat the Heat with ICe Scramble\'s Sweet Retreat!', 'n/a', '2024', 2, 2, 0, 1, 4, 1, 0, '2025-04-04 02:57:58'),
(952, 'SEOULFUL BOWL \"All in one bowl\"', 'n/a', '2024', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:58'),
(953, 'MIX & MUNCH Bursts in your mouth, Melts in your heart', 'n/a', '2024', 2, 2, 0, 1, 4, 1, 0, '2025-04-04 02:57:58'),
(954, '\"SIDE-BITE-SIDE\" Your wich is my command', 'n/a', '2024', 2, 2, 0, 1, 4, 1, 0, '2025-04-04 02:57:59'),
(955, 'DUOCAFE \"Hey! Doughnut Worry, Grab a Coffee\"', 'n/a', '2024', 2, 2, 0, 1, 4, 1, 0, '2025-04-04 02:57:59'),
(956, '3', 'n/a', '2024', 2, 2, 0, 1, 4, 1, 0, '2025-04-04 02:57:59'),
(957, 'THIRSTDAY FRYDAY \"Fill your thirst, Satisfy your Hunger\"', 'n/a', '2024', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:59'),
(958, 'DON KATSU THE MASTER OF GOOD FOOD', 'n/a', '2024', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:57:59'),
(959, 'OVERSTUFFEDWICH \"Overloaded, fully loaded\"', 'n/a', '2024', 2, 2, 0, 1, 4, 1, 0, '2025-04-04 02:57:59'),
(960, 'D & F \"Tiny treats, Big delight\"', 'n/a', '2024', 2, 2, 0, 15, 4, 1, 0, '2025-04-04 02:57:59'),
(961, 'NutriCHEWS A healthy sweet, without the guilt', 'n/a', '2024', 2, 2, 0, 15, 4, 1, 0, '2025-04-04 02:57:59'),
(962, 'ARTE ADORN \"Charm your Moment\".', 'n/a', '2024', 2, 2, 0, 15, 4, 1, 0, '2025-04-04 02:57:59'),
(963, 'CHICK N\' POP A BENTO CHICKEN LOLLIPOP \"Taking Chicken to a New-Dip Level!', 'n/a', '2024', 1, 1, 0, 15, 4, 1, 0, '2025-04-04 02:57:59'),
(964, 'THRISTDAY FRYDAY \"Fill your Thirst, Satisfy your Hunger\"', 'n/a', '2024', 1, 1, 0, 15, 4, 1, 0, '2025-04-04 02:57:59'),
(965, 'SHAWARMA DYNASTY \"Two worlds, one bowl\"', 'n/a', '2024', 2, 2, 0, 15, 4, 1, 0, '2025-04-04 02:57:59'),
(966, 'FRIT O\'s Sweet but Fried!', 'n/a', '2024', 2, 2, 0, 15, 4, 1, 0, '2025-04-04 02:57:59'),
(967, 'SOY BLISS \"Taho-licious Creations Await!\"', 'n/a', '2024', 2, 2, 0, 15, 4, 1, 0, '2025-04-04 02:57:59'),
(968, 'PURPLE AVENUE Bite into purple pleasure', 'n/a', '2024', 2, 2, 0, 15, 4, 1, 0, '2025-04-04 02:57:59'),
(969, 'CHIMCKEN WONDERS Savor The Extraordinary', 'n/a', '2024', 2, 2, 0, 15, 4, 1, 0, '2025-04-04 02:57:59'),
(970, 'BREWEDtrip I\'ve BEAN there!', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:58:00'),
(971, 'Plus Love (+LOVE)', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:58:00'),
(972, 'ENCHANTED SEIFE brings out the soapi-est and aro-mantic in you', 'n/a', '2023', 1, 1, 0, 15, 4, 1, 0, '2025-04-04 02:58:00'),
(973, 'Solatium cafe and bar \"find solace in the metropolis\"', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:58:00'),
(974, 'Coltelleria It is more than just a spoon, it\'s an EDIBLE spoon!', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:58:00'),
(975, 'Eatensils \"Utensils like never before!\"', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:58:00'),
(976, 'Pomosquiller \"A Mist of Protection\"', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-04 02:58:00'),
(977, 'AP LI KA BL: Socks for all weather, make your feet feel better', 'n/a', '2023', 1, 1, 0, 15, 4, 1, 0, '2025-04-04 02:58:00'),
(978, 'AlcoCream \"In every sip and lick, there\'s a kick\"', 'n/a', '2023', 1, 1, 0, 15, 4, 1, 0, '2025-04-04 02:58:00'),
(979, 'SHANGHEY ON THE WAY Shanghai na tapat, sharap buhay lahat', 'n/a', '2023', 1, 1, 0, 15, 4, 1, 0, '2025-04-04 02:58:00'),
(980, 'CHICK N\' POP A BENTO CHICKEN LOLLIPOP \"Taking Chicken to a New-Dip Level!\"', 'n/a', '2024', 1, 1, 0, 15, 4, 1, 0, '2025-04-04 02:58:00'),
(981, 'FINTA COSMETICS Where LIPS meets ART', 'n/a', '2023', 1, 1, 0, 15, 4, 1, 0, '2025-04-04 02:58:00'),
(982, 'DALISAY: A COCONUT-BASED ENERGY DRINK \"Go logo for coco\"', 'n/a', '2023', 1, 1, 0, 15, 4, 1, 0, '2025-04-04 02:58:00'),
(983, 'SHAWarma Boulevard \"Make it, Have it\"', 'n/a', '2023', 1, 1, 0, 15, 4, 1, 0, '2025-04-04 02:58:00'),
(984, 'CAFICA Make it yours', 'n/a', '2023', 1, 1, 0, 15, 4, 1, 0, '2025-04-04 02:58:00'),
(985, 'INKTURE', 'n/a', '2023', 1, 1, 0, 15, 4, 1, 0, '2025-04-04 02:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `resourcetype`
--

CREATE TABLE `resourcetype` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resourcetype`
--

INSERT INTO `resourcetype` (`type_id`, `type_name`) VALUES
(1, 'book'),
(2, 'journal'),
(3, 'newsletter'),
(4, 'thesis');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'admin'),
(2, 'staff');

-- --------------------------------------------------------

--
-- Table structure for table `staffaccount`
--

CREATE TABLE `staffaccount` (
  `staff_id` int(11) NOT NULL,
  `staff_uname` varchar(45) DEFAULT NULL,
  `staff_fname` varchar(45) DEFAULT NULL,
  `staff_lname` varchar(45) DEFAULT NULL,
  `staff_password` varchar(500) DEFAULT NULL,
  `staff_status` varchar(45) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staffaccount`
--

INSERT INTO `staffaccount` (`staff_id`, `staff_uname`, `staff_fname`, `staff_lname`, `staff_password`, `staff_status`, `role_id`) VALUES
(11, 'admin', 'admin', 'admin', '$2b$10$cuJjy.qU.HmrzFv3vPmQyu6ZKmtlGqd2I2ICo1FFDK7giAD5nLeZO', 'active', 1),
(23, 'staff', 'staff', 'staff', '$2b$10$sszAnn6MJTHs1KXJhecdWOCFCC1pxRQvDiVxBOVfLiRNcS3DneAy.', 'active', 2);

-- --------------------------------------------------------

--
-- Table structure for table `thesis`
--

CREATE TABLE `thesis` (
  `thesis_id` int(11) NOT NULL,
  `resource_id` int(11) DEFAULT NULL,
  `adviser_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thesis`
--

INSERT INTO `thesis` (`thesis_id`, `resource_id`, `adviser_id`) VALUES
(200, 900, 71),
(201, 901, 71),
(202, 902, 71),
(203, 903, 71),
(204, 904, 71),
(205, 905, 72),
(206, 906, 71),
(207, 907, 71),
(208, 908, 71),
(209, 909, 73),
(210, 910, 74),
(211, 911, 75),
(212, 912, 74),
(213, 913, 76),
(214, 914, 77),
(215, 915, 78),
(216, 916, 79),
(217, 917, 80),
(218, 918, 81),
(219, 919, 82),
(220, 920, 83),
(221, 921, 84),
(222, 922, 85),
(223, 923, 86),
(224, 924, 87),
(225, 925, 88),
(226, 926, 89),
(227, 927, 90),
(228, 928, 90),
(229, 929, 91),
(230, 930, 90),
(231, 931, 90),
(232, 932, 90),
(233, 933, 90),
(234, 934, 90),
(235, 935, 90),
(236, 936, 90),
(237, 937, 90),
(238, 938, 90),
(239, 939, 90),
(240, 940, 92),
(241, 941, 92),
(242, 942, 93),
(243, 943, 94),
(244, 944, 94),
(245, 945, 95),
(246, 946, 96),
(247, 947, 97),
(248, 948, 97),
(249, 949, 97),
(250, 950, 97),
(251, 951, 97),
(252, 952, 97),
(253, 953, 97),
(254, 954, 97),
(255, 955, 97),
(256, 956, 97),
(257, 957, 97),
(258, 958, 97),
(259, 959, 97),
(260, 960, 97),
(261, 961, 97),
(262, 962, 97),
(263, 963, 97),
(264, 964, 97),
(265, 965, 97),
(266, 966, 97),
(267, 967, 97),
(268, 968, 97),
(269, 969, 97),
(270, 970, 97),
(271, 971, 98),
(272, 972, 97),
(273, 973, 97),
(274, 974, 97),
(275, 975, 97),
(276, 976, 97),
(277, 977, 97),
(278, 978, 97),
(279, 979, 97),
(280, 980, 97),
(281, 981, 97),
(282, 982, 97),
(283, 983, 97),
(284, 984, 97),
(285, 985, 97);

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `topic_id` int(11) NOT NULL,
  `topic_name` varchar(100) DEFAULT NULL,
  `topic_row_no` varchar(45) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`topic_id`, `topic_name`, `topic_row_no`, `dept_id`) VALUES
(1, 'information and organizational management', '1', 3),
(2, 'operational management', '2', 3),
(3, 'financial management', '3', 3),
(4, 'accounting', '4', 3),
(5, 'business and human resource', '5', 3),
(6, 'marketing', '6', 3),
(7, 'philippine history and rizal', '1', 1),
(8, 'psychology', '2', 1),
(9, 'politics and government', '3', 1),
(10, 'sociology and anthropology', '4', 1),
(11, 'philosophy and ethics', '5', 1),
(12, 'writing', '1', 2),
(13, 'communication', '2', 2),
(14, 'literature', '3', 2),
(15, 'food preparation and service', '1', 4),
(16, 'hospitality management', '3', 3),
(19, 'tourism and marketing', '1', 4),
(20, 'References', '5', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adviser`
--
ALTER TABLE `adviser`
  ADD PRIMARY KEY (`adviser_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `att_patron_id_idx` (`patron_id`);

--
-- Indexes for table `audit_log`
--
ALTER TABLE `audit_log`
  ADD PRIMARY KEY (`audit_id`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `availability`
--
ALTER TABLE `availability`
  ADD PRIMARY KEY (`avail_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `book_pub_id` (`pub_id`),
  ADD KEY `book_res_id` (`resource_id`),
  ADD KEY `book_topic_id_idx` (`topic_id`);

--
-- Indexes for table `checkin`
--
ALTER TABLE `checkin`
  ADD PRIMARY KEY (`checkin_id`),
  ADD KEY `ci_checkout_id` (`checkout_id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`checkout_id`),
  ADD KEY `che_resource_id_idx` (`resource_id`),
  ADD KEY `che_pat_id_idx` (`patron_id`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`college_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `journalnewsletter`
--
ALTER TABLE `journalnewsletter`
  ADD PRIMARY KEY (`jn_id`),
  ADD KEY `jn_resource_id` (`resource_id`),
  ADD KEY `jn_topic_id_idx` (`topic_id`);

--
-- Indexes for table `overdue`
--
ALTER TABLE `overdue`
  ADD PRIMARY KEY (`overdue_id`),
  ADD KEY `ov_checkout_id` (`checkout_id`);

--
-- Indexes for table `patron`
--
ALTER TABLE `patron`
  ADD PRIMARY KEY (`patron_id`),
  ADD KEY `pat_college_id_idx` (`college_id`),
  ADD KEY `pat_course_id_idx` (`course_id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`pub_id`);

--
-- Indexes for table `reportcategory`
--
ALTER TABLE `reportcategory`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `reportdetail`
--
ALTER TABLE `reportdetail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `cat_id_idx` (`cat_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `rep_cat_id_idx` (`cat_id`),
  ADD KEY `rep_detail_id_idx` (`detail_id`),
  ADD KEY `rep_staff_id_idx` (`staff_id`);

--
-- Indexes for table `resourceauthors`
--
ALTER TABLE `resourceauthors`
  ADD PRIMARY KEY (`resource_id`,`author_id`),
  ADD KEY `ra_resource_id_idx` (`resource_id`),
  ADD KEY `ra_author_d_idx` (`author_id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`resource_id`),
  ADD KEY `res_avail_id` (`avail_id`),
  ADD KEY `res_dept_id` (`dept_id`),
  ADD KEY `res_type_id` (`type_id`);

--
-- Indexes for table `resourcetype`
--
ALTER TABLE `resourcetype`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `staffaccount`
--
ALTER TABLE `staffaccount`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `sa_role_id_idx` (`role_id`);

--
-- Indexes for table `thesis`
--
ALTER TABLE `thesis`
  ADD PRIMARY KEY (`thesis_id`),
  ADD KEY `the_adviser_id` (`adviser_id`),
  ADD KEY `the_resource_id` (`resource_id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `fk_topic_department` (`dept_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adviser`
--
ALTER TABLE `adviser`
  MODIFY `adviser_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `audit_log`
--
ALTER TABLE `audit_log`
  MODIFY `audit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1077;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=957;

--
-- AUTO_INCREMENT for table `availability`
--
ALTER TABLE `availability`
  MODIFY `avail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=435;

--
-- AUTO_INCREMENT for table `checkin`
--
ALTER TABLE `checkin`
  MODIFY `checkin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `checkout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `journalnewsletter`
--
ALTER TABLE `journalnewsletter`
  MODIFY `jn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `overdue`
--
ALTER TABLE `overdue`
  MODIFY `overdue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `patron`
--
ALTER TABLE `patron`
  MODIFY `patron_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=369;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `pub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `reportcategory`
--
ALTER TABLE `reportcategory`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reportdetail`
--
ALTER TABLE `reportdetail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `resource_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=986;

--
-- AUTO_INCREMENT for table `resourcetype`
--
ALTER TABLE `resourcetype`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staffaccount`
--
ALTER TABLE `staffaccount`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `thesis`
--
ALTER TABLE `thesis`
  MODIFY `thesis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `att_patron_id` FOREIGN KEY (`patron_id`) REFERENCES `patron` (`patron_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_pub_id` FOREIGN KEY (`pub_id`) REFERENCES `publisher` (`pub_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `book_res_id` FOREIGN KEY (`resource_id`) REFERENCES `resources` (`resource_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `book_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`topic_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `checkin`
--
ALTER TABLE `checkin`
  ADD CONSTRAINT `ci_checkout_id` FOREIGN KEY (`checkout_id`) REFERENCES `checkout` (`checkout_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `checkout`
--
ALTER TABLE `checkout`
  ADD CONSTRAINT `che_pat_id` FOREIGN KEY (`patron_id`) REFERENCES `patron` (`patron_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `che_resource_id` FOREIGN KEY (`resource_id`) REFERENCES `resources` (`resource_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `journalnewsletter`
--
ALTER TABLE `journalnewsletter`
  ADD CONSTRAINT `jn_resource_id` FOREIGN KEY (`resource_id`) REFERENCES `resources` (`resource_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `jn_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`topic_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `overdue`
--
ALTER TABLE `overdue`
  ADD CONSTRAINT `ov_checkout_id` FOREIGN KEY (`checkout_id`) REFERENCES `checkout` (`checkout_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `patron`
--
ALTER TABLE `patron`
  ADD CONSTRAINT `pat_college_id` FOREIGN KEY (`college_id`) REFERENCES `college` (`college_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `pat_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `reportdetail`
--
ALTER TABLE `reportdetail`
  ADD CONSTRAINT `cat_id` FOREIGN KEY (`cat_id`) REFERENCES `reportcategory` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `rep_cat_id` FOREIGN KEY (`cat_id`) REFERENCES `reportcategory` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `rep_detail_id` FOREIGN KEY (`detail_id`) REFERENCES `reportdetail` (`detail_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `rep_staff_id` FOREIGN KEY (`staff_id`) REFERENCES `staffaccount` (`staff_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `resourceauthors`
--
ALTER TABLE `resourceauthors`
  ADD CONSTRAINT `fk_author_id` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`),
  ADD CONSTRAINT `fk_resource_id` FOREIGN KEY (`resource_id`) REFERENCES `resources` (`resource_id`),
  ADD CONSTRAINT `ra_author_d` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ra_resource_id` FOREIGN KEY (`resource_id`) REFERENCES `resources` (`resource_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `resources`
--
ALTER TABLE `resources`
  ADD CONSTRAINT `res_avail_id` FOREIGN KEY (`avail_id`) REFERENCES `availability` (`avail_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `res_dept_id` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `res_type_id` FOREIGN KEY (`type_id`) REFERENCES `resourcetype` (`type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `staffaccount`
--
ALTER TABLE `staffaccount`
  ADD CONSTRAINT `sa_role_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `thesis`
--
ALTER TABLE `thesis`
  ADD CONSTRAINT `the_adviser_id` FOREIGN KEY (`adviser_id`) REFERENCES `adviser` (`adviser_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `the_resource_id` FOREIGN KEY (`resource_id`) REFERENCES `resources` (`resource_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `topic`
--
ALTER TABLE `topic`
  ADD CONSTRAINT `fk_topic_department` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
