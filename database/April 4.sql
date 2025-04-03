-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2025 at 06:06 PM
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
(35, 'Pauleen Ann', 'Dingcong'),
(36, 'Kevien P.', 'Cabarrubias'),
(37, 'Pedrito Real', 'Pereda'),
(38, 'Danilo', 'Gatus'),
(39, 'Dr. Kevein', 'Cabarrubias'),
(40, 'Dr. Corazon C.', 'Obnamia'),
(41, 'Prof. Kevien P.', 'Cabarrubias'),
(42, 'Danilo James', 'Gatus'),
(43, 'Orlando B. Asiddao, Ph.', 'D'),
(44, 'Lourdes G. Valderrama,', 'D.P.A.'),
(45, 'Jeffren R.', 'Dioquino'),
(46, 'Romulita C. Alto,', 'EdD'),
(47, 'Dr. Edgar I.', 'Gay-ya'),
(48, 'Dr. Manuel R.', 'Pangilinan'),
(49, 'Radames M. Doctor,', 'M.N.S.A'),
(50, 'Dr. Romulita C.', 'Alto'),
(51, 'Dr. Nilo S.', 'Salas'),
(52, 'Dr. Jose R.', 'Vergara'),
(53, 'Dr. Ronaldo A.', 'Juanatas'),
(54, 'Martina M. Mendoza Ed.', 'D/'),
(55, 'Genesis S. Austria, RMP,', 'MBA'),
(56, 'Nilo S.', 'Salas'),
(57, 'Lourdes G.', 'Valderrama'),
(58, 'Orlando B.', 'Asiddao'),
(59, 'Julian O. Marquez,', 'Jr.'),
(60, 'Victor R. Macam,', 'Jr.'),
(61, 'Radames M.', 'Doctor'),
(62, 'Romulita C.', 'Alto'),
(63, 'Manuel R.', 'Pangilinan'),
(64, 'Danilo G.', 'Gatus'),
(65, 'Noel B.', 'Hernandez'),
(66, 'n/a', 'n/a'),
(67, 'Noel Hernandez, Ph.,', 'D'),
(68, 'Noel B. Hernandez, Ph.', 'D.'),
(69, 'Genesis S. Austria, RMP, MBA,', 'LPT'),
(70, 'Anna Brenda B.', 'Romilla');

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

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`att_id`, `att_log_in_time`, `att_date`, `patron_id`) VALUES
(62, '18:50:42', '2025-04-02', 347),
(63, '18:50:55', '2025-04-02', 347),
(64, '18:51:10', '2025-04-02', 347),
(65, '18:55:34', '2025-04-02', 347),
(66, '18:57:08', '2025-04-02', 347),
(67, '18:57:41', '2025-04-02', 347),
(68, '18:58:09', '2025-04-02', 347),
(69, '19:12:19', '2025-04-02', 347),
(70, '10:24:12', '2025-04-03', 319),
(71, '12:40:43', '2025-04-03', 347),
(72, '12:40:51', '2025-04-03', 347),
(73, '12:41:19', '2025-04-03', 347),
(74, '12:42:14', '2025-04-03', 347),
(75, '12:47:53', '2025-04-03', 347),
(76, '12:47:53', '2025-04-03', 347),
(77, '12:48:05', '2025-04-03', 347),
(78, '12:48:05', '2025-04-03', 347),
(79, '12:48:54', '2025-04-03', 347),
(80, '12:49:20', '2025-04-03', 347),
(81, '12:50:57', '2025-04-03', 347),
(82, '12:50:57', '2025-04-03', 347),
(83, '12:51:04', '2025-04-03', 347),
(84, '17:41:34', '2025-04-03', 347),
(85, '17:41:34', '2025-04-03', 347),
(86, '17:41:44', '2025-04-03', 347),
(87, '17:42:11', '2025-04-03', 347),
(88, '17:42:19', '2025-04-03', 347);

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
(583, 'admin', 'INSERT', 'resources', '592', NULL, '\"Added a new resource: \'Our Daily Bread 2005 Annual Edition\'\"', '2025-04-02 04:14:07'),
(584, 'admin', 'INSERT', 'resources', '593', NULL, '\"Added a new resource: \'The Fault under Pnoys Governance\'\"', '2025-04-02 04:14:07'),
(585, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Giolliana Plandez\"', '2025-04-02 04:17:27'),
(586, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Kristine Danielle Ferrer\"', '2025-04-02 04:17:27'),
(587, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Sophia Luisa Balagtas\"', '2025-04-02 04:17:27'),
(588, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Kerzlyn Alto\"', '2025-04-02 04:17:27'),
(589, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Mhitchie Suico\"', '2025-04-02 04:17:27'),
(590, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Ealjean Arielle Velches\"', '2025-04-02 04:17:27'),
(591, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Joao Ashpyr Catarungan\"', '2025-04-02 04:17:27'),
(592, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Binn Yazzer Ayunon\"', '2025-04-02 04:17:27'),
(593, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Kristine Claire Corpuz\"', '2025-04-02 04:17:27'),
(594, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Kharla Mae Celmar\"', '2025-04-02 04:17:27'),
(595, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Angela May Teneros\"', '2025-04-02 04:17:27'),
(596, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Janehery Bernal\"', '2025-04-02 04:17:27'),
(597, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Irish Nabayra\"', '2025-04-02 04:17:27'),
(598, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: ANDREA DECELYN SILVA\"', '2025-04-02 04:17:27'),
(599, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Sandy Gawat\"', '2025-04-02 04:17:27'),
(600, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Krizia Mae De Honor\"', '2025-04-02 04:17:27'),
(601, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: CHRISTINE MAE Ricafrente\"', '2025-04-02 04:17:27'),
(602, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: MARIE ANGELA DEL CASTILLO\"', '2025-04-02 04:17:27'),
(603, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Marie Angelie Del Castillo\"', '2025-04-02 04:17:27'),
(604, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Nicolyn Jean San Jose\"', '2025-04-02 04:17:27'),
(605, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Berna Marie Toñacao\"', '2025-04-02 04:17:27'),
(606, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Alena Joy Torres\"', '2025-04-02 04:17:27'),
(607, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged Out \"', '2025-04-02 05:49:33'),
(608, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-04-02 06:03:15'),
(609, 'admin', 'INSERT', 'resources', '594', NULL, '\"Added a new resource: \'Principles of Tourism 1\'\"', '2025-04-02 06:04:40'),
(610, 'admin', 'INSERT', 'resources', '595', NULL, '\"Added a new resource: \'Tourism and Hospitality Marketing\'\"', '2025-04-02 06:04:40'),
(611, 'admin', 'INSERT', 'resources', '596', NULL, '\"Added a new resource: \'Principles of Tourism 2\'\"', '2025-04-02 06:04:40'),
(612, 'admin', 'INSERT', 'resources', '597', NULL, '\"Added a new resource: \'Micro Perspective of Tourism and Hosptality\'\"', '2025-04-02 06:04:40'),
(613, 'admin', 'INSERT', 'resources', '598', NULL, '\"Added a new resource: \'English Filipino Japanese Dictionary\'\"', '2025-04-02 06:04:40'),
(614, 'admin', 'INSERT', 'resources', '599', NULL, '\"Added a new resource: \'Understanding Travel and Tours Essential\'\"', '2025-04-02 06:04:40'),
(615, 'admin', 'INSERT', 'resources', '600', NULL, '\"Added a new resource: \'Selling Tourism Desinations Geography for Travel Professionals\'\"', '2025-04-02 06:04:40'),
(616, 'admin', 'INSERT', 'resources', '601', NULL, '\"Added a new resource: \'Lonely Planet You Only Live Once 1 1st Ed: A Lifetime of Experiences for the Explorer in All of Us\'\"', '2025-04-02 06:04:40'),
(617, 'admin', 'INSERT', 'resources', '602', NULL, '\"Added a new resource: \'Quality Service Management in Tourism and Hospitality\'\"', '2025-04-02 06:04:40'),
(618, 'admin', 'INSERT', 'resources', '603', NULL, '\"Added a new resource: \'Room Division: Management and Control System\'\"', '2025-04-02 06:04:40'),
(619, 'admin', 'INSERT', 'checkout', '601', NULL, '\"Patron: CHRISTINE MAE Ricafrente borrowed a book: \'Lonely Planet You Only Live Once 1 1st Ed: A Lifetime of Experiences for the Explorer in All of Us\'\"', '2025-04-02 06:05:00'),
(620, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged Out \"', '2025-04-02 06:09:42'),
(621, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-04-02 06:10:20'),
(622, NULL, 'INSERT', 'staffaccount', NULL, NULL, '\"Added a new user: staff\"', '2025-04-02 06:10:51'),
(623, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged Out \"', '2025-04-02 06:10:57'),
(624, 'staff', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-04-02 06:11:09'),
(625, 'staff', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged Out \"', '2025-04-02 06:12:16'),
(626, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-04-02 06:12:22'),
(627, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged Out \"', '2025-04-02 06:13:21'),
(628, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-04-02 06:13:40'),
(629, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged Out \"', '2025-04-02 06:17:56'),
(630, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-04-02 06:18:09'),
(631, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged Out \"', '2025-04-02 06:24:58'),
(632, 'staff', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-04-02 06:25:05'),
(633, 'staff', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged Out \"', '2025-04-02 06:53:53'),
(634, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-04-02 06:54:27'),
(635, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-04-02 07:22:09'),
(636, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'thesis\'\"', '2025-04-02 07:38:52'),
(637, 'admin', 'UPDATE', 'resources', '605', 'Unarchived', '\"Changed archive status to: Archived\"', '2025-04-02 07:45:15'),
(638, 'admin', 'UPDATE', 'resources', '604', 'Unarchived', '\"Changed archive status to: Archived\"', '2025-04-02 07:45:42'),
(639, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: Pauleen Dingcong\"', '2025-04-02 08:39:03'),
(640, 'admin', 'UPDATE', 'patron', NULL, NULL, '\"Edited a patron: Pauleen Dingcong\"', '2025-04-02 08:43:58'),
(641, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged Out \"', '2025-04-02 10:45:22'),
(642, 'staff', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-04-02 10:45:42'),
(643, 'admin', 'INSERT', 'checkout', '595', NULL, '\"Patron: Irish Nabayra borrowed a book: \'Tourism and Hospitality Marketing\'\"', '2025-04-02 11:50:20'),
(644, NULL, 'SELECT', 'staffaccount', NULL, NULL, '\"Logged Out \"', '2025-04-02 11:54:19'),
(645, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-04-02 11:55:31'),
(646, 'admin', 'INSERT', 'checkout', '595', NULL, '\"Patron: Kharla Mae Celmar borrowed a book: \'Tourism and Hospitality Marketing\'\"', '2025-04-03 03:08:11'),
(647, 'admin', 'INSERT', 'resources', '606', NULL, '\"Added a new resource: \'Justice, Morality, and Social Responsibilty\'\"', '2025-04-03 03:12:20'),
(648, 'admin', 'INSERT', 'resources', '607', NULL, '\"Added a new resource: \'Komunikasyon Sa Akademikong Filipino\'\"', '2025-04-03 03:12:20'),
(649, 'admin', 'INSERT', 'resources', '608', NULL, '\"Added a new resource: \'Ethics: Basic Concepts and Contemporary Moral Issues\'\"', '2025-04-03 03:12:20'),
(650, 'admin', 'INSERT', 'resources', '609', NULL, '\"Added a new resource: \'Justice, Morality, and Social Responsibilty\'\"', '2025-04-03 03:17:04'),
(651, 'admin', 'INSERT', 'resources', '610', NULL, '\"Added a new resource: \'Komunikasyon Sa Akademikong Filipino\'\"', '2025-04-03 03:17:04'),
(652, 'admin', 'INSERT', 'resources', '611', NULL, '\"Added a new resource: \'Ethics: Basic Concepts and Contemporary Moral Issues\'\"', '2025-04-03 03:17:04'),
(653, 'admin', 'INSERT', 'resources', '612', NULL, '\"Added a new resource: \'Dissidente\'\"', '2025-04-03 03:17:04'),
(654, 'admin', 'INSERT', 'resources', '613', NULL, '\"Added a new resource: \'Knowlege, Nature, and the Good\'\"', '2025-04-03 03:17:04'),
(655, 'admin', 'INSERT', 'resources', '614', NULL, '\"Added a new resource: \'Philippine History and Government\'\"', '2025-04-03 03:17:04'),
(656, 'admin', 'INSERT', 'resources', '615', NULL, '\"Added a new resource: \'Rizal: Buhay at Katha\'\"', '2025-04-03 03:17:04'),
(657, 'admin', 'INSERT', 'resources', '616', NULL, '\"Added a new resource: \'Introduction to Logic\'\"', '2025-04-03 03:17:04'),
(658, 'admin', 'INSERT', 'resources', '617', NULL, '\"Added a new resource: \'Emilio Aguinaldo\'\"', '2025-04-03 03:17:04'),
(659, 'admin', 'INSERT', 'resources', '618', NULL, '\"Added a new resource: \'Familia Sagrada\'\"', '2025-04-03 03:17:04'),
(660, 'admin', 'INSERT', 'resources', '619', NULL, '\"Added a new resource: \'Readings in Philippine History\'\"', '2025-04-03 03:17:04'),
(661, 'admin', 'INSERT', 'resources', '620', NULL, '\"Added a new resource: \'The Life and Works of Rizal\'\"', '2025-04-03 03:17:04'),
(662, 'admin', 'INSERT', 'resources', '621', NULL, '\"Added a new resource: \'General Psychology\'\"', '2025-04-03 03:17:04'),
(663, 'admin', 'INSERT', 'resources', '622', NULL, '\"Added a new resource: \'The Humanities Revised Edition\'\"', '2025-04-03 03:17:04'),
(664, 'admin', 'INSERT', 'resources', '623', NULL, '\"Added a new resource: \'Ethics\'\"', '2025-04-03 03:17:04'),
(665, 'admin', 'INSERT', 'resources', '624', NULL, '\"Added a new resource: \'Readings in the Introduction to Philosophy\'\"', '2025-04-03 03:17:04'),
(666, 'admin', 'INSERT', 'resources', '625', NULL, '\"Added a new resource: \'Religion, Religious Experiences, and Spirituality\'\"', '2025-04-03 03:17:04'),
(667, 'admin', 'INSERT', 'resources', '626', NULL, '\"Added a new resource: \'PSYCHOLOGY: Knowledge Application And Beyond\'\"', '2025-04-03 03:17:04'),
(668, 'admin', 'INSERT', 'resources', '627', NULL, '\"Added a new resource: \'Exceptional Psychology (with Questions and Answers)\'\"', '2025-04-03 03:17:05'),
(669, 'admin', 'INSERT', 'resources', '628', NULL, '\"Added a new resource: \'Industrial Psychology\'\"', '2025-04-03 03:17:05'),
(670, 'admin', 'INSERT', 'resources', '629', NULL, '\"Added a new resource: \'Motivation and Personality (Third Edition)\'\"', '2025-04-03 03:17:05'),
(671, 'admin', 'INSERT', 'resources', '630', NULL, '\"Added a new resource: \'Educational Psychology\'\"', '2025-04-03 03:17:05'),
(672, 'admin', 'INSERT', 'resources', '631', NULL, '\"Added a new resource: \'Reading in General Psychology\'\"', '2025-04-03 03:17:05'),
(673, 'admin', 'INSERT', 'resources', '632', NULL, '\"Added a new resource: \'General Psychology Second Edition\'\"', '2025-04-03 03:17:05'),
(674, 'admin', 'INSERT', 'resources', '633', NULL, '\"Added a new resource: \'In Conflict And Order: Understanding Society (Fifth Edition)\'\"', '2025-04-03 03:17:05'),
(675, 'admin', 'INSERT', 'resources', '634', NULL, '\"Added a new resource: \'Naning:Mariano Ponce 150th Birth Anniversary Commemorative Lectures and Selected Articles from La Solidaridad\'\"', '2025-04-03 03:17:05'),
(676, 'admin', 'INSERT', 'resources', '635', NULL, '\"Added a new resource: \'Sociology Focus On The Philippines\'\"', '2025-04-03 03:17:05'),
(677, 'admin', 'INSERT', 'resources', '636', NULL, '\"Added a new resource: \'Sociology In The New Philippine Setting\'\"', '2025-04-03 03:17:05'),
(678, 'admin', 'INSERT', 'resources', '637', NULL, '\"Added a new resource: \'Fundamentals of World Geography\'\"', '2025-04-03 03:17:05'),
(679, 'admin', 'INSERT', 'resources', '638', NULL, '\"Added a new resource: \'General Sociology Focus on the Philippines Second Edition\'\"', '2025-04-03 03:17:05'),
(680, 'admin', 'INSERT', 'resources', '639', NULL, '\"Added a new resource: \'Anthropology: Decisions, Adaptation, and Evolution\'\"', '2025-04-03 03:17:05'),
(681, 'admin', 'INSERT', 'resources', '640', NULL, '\"Added a new resource: \'Population Education Revised Edition\'\"', '2025-04-03 03:17:05'),
(682, 'admin', 'INSERT', 'resources', '641', NULL, '\"Added a new resource: \'Introductory Sociology for Science and Technology (Revised Edition 2009)\'\"', '2025-04-03 03:17:05'),
(683, 'admin', 'INSERT', 'resources', '642', NULL, '\"Added a new resource: \'The Impact of Technology on Human Rights: Global Case-Studies\'\"', '2025-04-03 03:17:05'),
(684, 'admin', 'INSERT', 'resources', '643', NULL, '\"Added a new resource: \'When Parents are Friends\'\"', '2025-04-03 03:17:06'),
(685, 'admin', 'INSERT', 'resources', '644', NULL, '\"Added a new resource: \'An Introduction to the Humanities: The Arts\'\"', '2025-04-03 03:17:06'),
(686, 'admin', 'INSERT', 'resources', '645', NULL, '\"Added a new resource: \'Social Problems in the West Drugs Suicide Divorce\'\"', '2025-04-03 03:17:06'),
(687, 'admin', 'INSERT', 'resources', '646', NULL, '\"Added a new resource: \'Introductory Sociology for Science and Technology (Revised Edition 2010)\'\"', '2025-04-03 03:17:06'),
(688, 'admin', 'INSERT', 'resources', '647', NULL, '\"Added a new resource: \'The Contemporary World\'\"', '2025-04-03 03:17:06'),
(689, 'admin', 'INSERT', 'resources', '648', NULL, '\"Added a new resource: \'Basic Facts about the United Nations\'\"', '2025-04-03 03:17:06'),
(690, 'admin', 'INSERT', 'resources', '649', NULL, '\"Added a new resource: \'The Constitution of the Philippines: Notes and Comments\'\"', '2025-04-03 03:17:06'),
(691, 'admin', 'INSERT', 'resources', '650', NULL, '\"Added a new resource: \'The Family Code of the Philippines Annotated (Fourth and Revised Edition)\'\"', '2025-04-03 03:17:06'),
(692, 'admin', 'INSERT', 'resources', '651', NULL, '\"Added a new resource: \'Business, Government, and Society A managerial Perspective, Text, and Cases\'\"', '2025-04-03 03:17:06'),
(693, 'admin', 'INSERT', 'resources', '652', NULL, '\"Added a new resource: \'Ang 1986 Konstitusyon ng Republika ng Pilipinas\'\"', '2025-04-03 03:17:06'),
(694, 'admin', 'INSERT', 'resources', '653', NULL, '\"Added a new resource: \'How to Establish a Democracy or Improve the One You Now Have: A Practical Guide for Developing Essential Government and Business Structures and Personal Systems of Values\'\"', '2025-04-03 03:17:06'),
(695, 'admin', 'INSERT', 'resources', '654', NULL, '\"Added a new resource: \'Administrative Theories and Politics: An Inquiry Into the Structure and Processes of Modern Government\'\"', '2025-04-03 03:17:06'),
(696, 'admin', 'INSERT', 'resources', '655', NULL, '\"Added a new resource: \'Fundamentals Of Political Science (Second Edition)\'\"', '2025-04-03 03:17:06'),
(697, 'admin', 'INSERT', 'resources', '656', NULL, '\"Added a new resource: \'Resource Book on Environmental Management\'\"', '2025-04-03 03:17:06'),
(698, 'admin', 'INSERT', 'resources', '657', NULL, '\"Added a new resource: \'From Dependence to Autonomy The Development of Asian Universities\'\"', '2025-04-03 03:17:06'),
(699, 'admin', 'INSERT', 'resources', '658', NULL, '\"Added a new resource: \'Why America Doesn\'t Work\'\"', '2025-04-03 03:17:06'),
(700, 'admin', 'INSERT', 'resources', '659', NULL, '\"Added a new resource: \'The Quest for Economic Reform and Structural Transformation in the Arab Region\'\"', '2025-04-03 03:17:06'),
(701, 'admin', 'INSERT', 'resources', '660', NULL, '\"Added a new resource: \'The Constitution of the Republic of the Philippines with Annotations 1987 First Edition\'\"', '2025-04-03 03:17:06'),
(702, 'admin', 'INSERT', 'resources', '661', NULL, '\"Added a new resource: \'European Studies: New Titles and Backlist\'\"', '2025-04-03 03:17:06'),
(703, 'admin', 'INSERT', 'resources', '662', NULL, '\"Added a new resource: \'A Legal Arsenal for the Philippine Environment\'\"', '2025-04-03 03:17:06'),
(704, 'admin', 'INSERT', 'resources', '663', NULL, '\"Added a new resource: \'The Philippine Clean Water Act of 2004 (R.A. 9275): Implications to Local Government Units, Small Business Establishments, and Women\'\"', '2025-04-03 03:17:06'),
(705, 'admin', 'INSERT', 'resources', '664', NULL, '\"Added a new resource: \'Technical Report Writing Revised Edition\'\"', '2025-04-03 03:17:06'),
(706, 'admin', 'INSERT', 'resources', '665', NULL, '\"Added a new resource: \'Technical Writing Revised Edition\'\"', '2025-04-03 03:17:06'),
(707, 'admin', 'INSERT', 'resources', '666', NULL, '\"Added a new resource: \'Technical Writing Organization, Form and Content Revised Edition\'\"', '2025-04-03 03:17:06'),
(708, 'admin', 'INSERT', 'resources', '667', NULL, '\"Added a new resource: \'Form and Style: Theses, Reports, Term Papers Sixth Edition\'\"', '2025-04-03 03:17:06'),
(709, 'admin', 'INSERT', 'resources', '668', NULL, '\"Added a new resource: \'Communication Arts II\'\"', '2025-04-03 03:17:06'),
(710, 'admin', 'INSERT', 'resources', '669', NULL, '\"Added a new resource: \'Technical Writing Organization, Form and Content\'\"', '2025-04-03 03:17:07'),
(711, 'admin', 'INSERT', 'resources', '670', NULL, '\"Added a new resource: \'366 Days with the Lord\'\"', '2025-04-03 03:17:07'),
(712, 'admin', 'INSERT', 'resources', '671', NULL, '\"Added a new resource: \'The Humanities in World Literature\'\"', '2025-04-03 03:17:07'),
(713, 'admin', 'INSERT', 'resources', '672', NULL, '\"Added a new resource: \'Living Literature Beginnings\'\"', '2025-04-03 03:17:07'),
(714, 'admin', 'INSERT', 'resources', '673', NULL, '\"Added a new resource: \'Survival English: International Communication for Professional People\'\"', '2025-04-03 03:17:07'),
(715, 'admin', 'INSERT', 'resources', '674', NULL, '\"Added a new resource: \'Prentice Hall Literature: The American Experience\'\"', '2025-04-03 03:17:07'),
(716, 'admin', 'INSERT', 'resources', '675', NULL, '\"Added a new resource: \'Prentice Hall Literature: Platinum\'\"', '2025-04-03 03:17:07'),
(717, 'admin', 'INSERT', 'resources', '676', NULL, '\"Added a new resource: \'Reader\'s Digest Condensed Books Volume 1\'\"', '2025-04-03 03:17:07'),
(718, 'admin', 'INSERT', 'resources', '677', NULL, '\"Added a new resource: \'Being and Time: A Translation of Sein and Zeit\'\"', '2025-04-03 03:17:07'),
(719, 'admin', 'INSERT', 'resources', '678', NULL, '\"Added a new resource: \'Technical Report Writing Revised Edition\'\"', '2025-04-03 03:19:24'),
(720, 'admin', 'UPDATE', 'resources', '678', 'Unarchived', '\"Changed archive status to: Archived\"', '2025-04-03 04:35:17'),
(721, 'admin', 'UPDATE', 'resources', '678', '{\"resource_id\":678,\"resource_title\":\"Technical Report Writing Revised Edition\",\"resource_description\":\"n/a\",\"resource_published_date\":\"1997\",\"original_resource_quantity\":10,\"resource_quantity\":10,\"resource_is_circulation\":1,\"dept_id\":2,\"type_id\":1,\"avail_id\":4,\"resource_is_archived\":1,\"timestamp\":\"2025-04-03T03:19:24.000Z\"}', '\"Edited a resource: \'Technical Report Writing Revised Edition\'\"', '2025-04-03 04:36:08'),
(722, 'admin', 'INSERT', 'checkout', '664', NULL, '\"Patron: Alena Joy Torres borrowed a book: \'Technical Report Writing Revised Edition\'\"', '2025-04-03 04:36:24'),
(723, 'admin', 'UPDATE', 'resources', '664', '{\"resource_id\":664,\"resource_title\":\"Technical Report Writing Revised Edition\",\"resource_description\":\"n/a\",\"resource_published_date\":\"1997\",\"original_resource_quantity\":10,\"resource_quantity\":9,\"resource_is_circulation\":1,\"dept_id\":2,\"type_id\":1,\"avail_id\":1,\"resource_is_archived\":0,\"timestamp\":\"2025-04-03T03:17:06.000Z\"}', '\"Edited a resource: \'Technical Report Writing Revised Edition\'\"', '2025-04-03 04:36:40'),
(724, 'admin', 'INSERT', 'report', NULL, NULL, '\"Added new report: dasd\"', '2025-04-03 06:01:12'),
(725, 'admin', 'INSERT', 'report', NULL, NULL, '\"Added new report: sa\"', '2025-04-03 06:12:08'),
(726, 'admin', 'INSERT', 'report', NULL, NULL, '\"Added new report: sa\"', '2025-04-03 06:12:56'),
(727, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged Out \"', '2025-04-03 08:03:15'),
(728, 'staff', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-04-03 08:03:22'),
(729, 'staff', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged Out \"', '2025-04-03 08:03:30'),
(730, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-04-03 08:04:14'),
(731, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-04-03 09:33:26'),
(732, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged Out \"', '2025-04-03 09:36:59'),
(733, 'staff', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-04-03 09:37:05'),
(734, 'staff', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged Out \"', '2025-04-03 09:37:15'),
(735, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-04-03 09:37:21'),
(736, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged Out \"', '2025-04-03 09:39:24'),
(737, 'staff', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-04-03 09:39:34'),
(738, 'staff', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged Out \"', '2025-04-03 09:39:38'),
(739, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-04-03 09:39:43'),
(740, 'admin', 'INSERT', 'report', NULL, NULL, '\"Added new report: Daily attendance\"', '2025-04-03 10:48:20'),
(741, 'admin', 'INSERT', 'resources', '679', NULL, '\"Added a new resource: \'A Research Presented ti the Faculty od the Social Science Department Technological University of the Philippines\'\"', '2025-04-03 14:44:29'),
(742, 'admin', 'INSERT', 'resources', '680', NULL, '\"Added a new resource: \'The Effects of Road Reblocking in the Telecommunication Industry\'\"', '2025-04-03 14:44:29'),
(743, 'admin', 'INSERT', 'resources', '681', NULL, '\"Added a new resource: \'The Implementation of Quezon City Ordinance No. SP 2501, S-2016 (Anti-Catcalling Ordinance): An Assessment\'\"', '2025-04-03 14:44:29'),
(744, 'admin', 'INSERT', 'resources', '682', NULL, '\"Added a new resource: \'Implementation of Martial Law in the Philippines: An Assessment\'\"', '2025-04-03 14:44:29'),
(745, 'admin', 'INSERT', 'resources', '683', NULL, '\"Added a new resource: \'An Assessment on the Implementation of K to 12 Education Program: A Technological University of the Philippines Experience\'\"', '2025-04-03 14:44:29'),
(746, 'admin', 'INSERT', 'resources', '684', NULL, '\"Added a new resource: \'Compilation Of Oral Reports In Production Management\'\"', '2025-04-03 14:44:29'),
(747, 'admin', 'INSERT', 'resources', '685', NULL, '\"Added a new resource: \'The Implementation of Total Productive Maintenance Program: A Semiconductor Company Experience\'\"', '2025-04-03 14:44:29'),
(748, 'admin', 'INSERT', 'resources', '686', NULL, '\"Added a new resource: \'Tattos and Piercing in the Medical Field: An Assessment\'\"', '2025-04-03 14:44:29'),
(749, 'admin', 'INSERT', 'resources', '687', NULL, '\"Added a new resource: \'Home-Based Employment: A National Capitol Region Experience\'\"', '2025-04-03 14:44:30'),
(750, 'admin', 'INSERT', 'resources', '688', NULL, '\"Added a new resource: \'An Assessment Of The Social Science Program Offered At Tup: Basis For Effective Management Of A Curricular Program\'\"', '2025-04-03 14:44:30'),
(751, 'admin', 'INSERT', 'resources', '689', NULL, '\"Added a new resource: \'Level of Implementation of Personal Protective Equipment (PPE) of Holcim Philippines: An Assessment\'\"', '2025-04-03 14:44:30'),
(752, 'admin', 'INSERT', 'resources', '690', NULL, '\"Added a new resource: \'TUP.ACAPEDIA.PH: An e-Learning System\'\"', '2025-04-03 14:44:30'),
(753, 'admin', 'INSERT', 'resources', '691', NULL, '\"Added a new resource: \'The Implementation of Manila Ordinance No. 8336 Truck Ban Ordinance: An Assessment\'\"', '2025-04-03 14:44:30'),
(754, 'admin', 'INSERT', 'resources', '692', NULL, '\"Added a new resource: \'The Effects Of Hypercompetition To Employees\' Morale\'\"', '2025-04-03 14:44:30'),
(755, 'admin', 'INSERT', 'resources', '693', NULL, '\"Added a new resource: \'The Effects Of Job Performance To Work Behavior: The Automotive Technicians\' Experience\'\"', '2025-04-03 14:44:30'),
(756, 'admin', 'INSERT', 'resources', '694', NULL, '\"Added a new resource: \'Management Skills & Management Styles Industrial Organization and Management\'\"', '2025-04-03 14:44:30'),
(757, 'admin', 'INSERT', 'resources', '695', NULL, '\"Added a new resource: \'The Privatization Of The Philippine National Bank\'\"', '2025-04-03 14:44:30'),
(758, 'admin', 'INSERT', 'resources', '696', NULL, '\"Added a new resource: \'Performance Of The Philippine Aviation Industry: Basis For Policy Direction\'\"', '2025-04-03 14:44:30'),
(759, 'admin', 'INSERT', 'resources', '697', NULL, '\"Added a new resource: \'Business Finance Written Report SY 2014-2015\'\"', '2025-04-03 14:44:30'),
(760, 'admin', 'INSERT', 'resources', '698', NULL, '\"Added a new resource: \'Predictors Of Safety Awareness Of Ship Personnel And Passengers In The Philippine Domestic Trade: Directions For Policy Action\'\"', '2025-04-03 14:44:30'),
(761, 'admin', 'INSERT', 'resources', '699', NULL, '\"Added a new resource: \'Social Power And Politics That Influence Organization Development Of Pamantasan Ng Lungsod Ng Muntinlupa: Implications For Policy Direction\'\"', '2025-04-03 14:44:30'),
(762, 'admin', 'INSERT', 'resources', '700', NULL, '\"Added a new resource: \'Performance Of Selected Domestic Shipping Companies, Fiscal Year 2002-2003: An Assessment\'\"', '2025-04-03 14:44:30'),
(763, 'admin', 'INSERT', 'resources', '701', NULL, '\"Added a new resource: \'Servant-Leadership And Work Commitment: Inputs For Building A New Public Service Concept\'\"', '2025-04-03 14:44:31'),
(764, 'admin', 'INSERT', 'resources', '702', NULL, '\"Added a new resource: \'Planning Aspects And Organizational Effectiveness Of Faculties Of Management Science Of Rajabhat Institutes (Universities) In The Central, Eastern, And Northeastern Thailand\'\"', '2025-04-03 14:44:31'),
(765, 'admin', 'INSERT', 'resources', '703', NULL, '\"Added a new resource: \'Management Effectiveness Of Selected Barangays In The First Congressional District Of Rizal\'\"', '2025-04-03 14:44:31'),
(766, 'admin', 'INSERT', 'resources', '704', NULL, '\"Added a new resource: \'Collection and Disposal of Used Lubricants: Model for Environmental Management\'\"', '2025-04-03 14:44:31'),
(767, 'admin', 'INSERT', 'resources', '705', NULL, '\"Added a new resource: \'The Effectiveness of Database Management System in Selected Learning Institutions in Metro Manila\'\"', '2025-04-03 14:44:31'),
(768, 'admin', 'INSERT', 'resources', '706', NULL, '\"Added a new resource: \'Organizational Culture: Its Influence on Level of Job Satisfaction and Effectiveness of Faculty Members in Selected Educational Institutions in Metro Manila\'\"', '2025-04-03 14:44:31'),
(769, 'admin', 'INSERT', 'resources', '707', NULL, '\"Added a new resource: \'SOFT DELIGHT \\\"Have a Soft Delight Experience\\\"\'\"', '2025-04-03 14:44:31'),
(770, 'admin', 'INSERT', 'resources', '708', NULL, '\"Added a new resource: \'Veggies Scream Veggiesk, I Scream!\'\"', '2025-04-03 14:44:31'),
(771, 'admin', 'INSERT', 'resources', '709', NULL, '\"Added a new resource: \'Determinants Of Performance Management Effectiveness Of Research And Development Institutes Of The Department Of Science And Technology\'\"', '2025-04-03 14:44:31'),
(772, 'admin', 'INSERT', 'resources', '710', NULL, '\"Added a new resource: \'Performance Of The Philippine Aviation Industry: Basis For Policy Direction\'\"', '2025-04-03 14:44:31'),
(773, 'admin', 'INSERT', 'resources', '711', NULL, '\"Added a new resource: \'Performance Of Selected Cold Storage Establishment In Metro Manila: Basis For Policy Development\'\"', '2025-04-03 14:44:31'),
(774, 'admin', 'INSERT', 'resources', '712', NULL, '\"Added a new resource: \'The Privatization Of The Philippine National Bank\'\"', '2025-04-03 14:44:31'),
(775, 'admin', 'INSERT', 'resources', '713', NULL, '\"Added a new resource: \'Effectiveness Of Hotel And Restaurant Management Program In Selected Schools In Northern Metro Manila: Inputs To Total Quality Management\'\"', '2025-04-03 14:44:31'),
(776, 'admin', 'INSERT', 'resources', '714', NULL, '\"Added a new resource: \'The Productivity Of Selected Steel Rolling Malls In Thailand: Input For Technology Management\'\"', '2025-04-03 14:44:31'),
(777, 'admin', 'INSERT', 'resources', '715', NULL, '\"Added a new resource: \'The Effectiveness Of Campus Security And Safety Management In Selected Learning Institutions In Metro Manila\'\"', '2025-04-03 14:44:31'),
(778, 'admin', 'INSERT', 'resources', '716', NULL, '\"Added a new resource: \'Planning Aspects And Organizational Effectiveness Of Facilities Of Management Science Of Rajabhat Institutes (Universities) In The Central, Eastern, And Northeastern Thailand\'\"', '2025-04-03 14:44:31'),
(779, 'admin', 'INSERT', 'resources', '717', NULL, '\"Added a new resource: \'Commitment, Work And Organization Values Of Selected Lay Leaders And Their Impact On The Work Performance In The Archdioceses In Metro Manila\'\"', '2025-04-03 14:44:31'),
(780, 'admin', 'INSERT', 'resources', '718', NULL, '\"Added a new resource: \'Management Effectiveness Of Selected Barangays In The First Congressional District Of Rizal\'\"', '2025-04-03 14:44:31'),
(781, 'admin', 'INSERT', 'resources', '719', NULL, '\"Added a new resource: \'Acceptability Of The National Service Training Program In Selected Institutions In The National Capital Region: Inputs To Strengthen Policy Implementation\'\"', '2025-04-03 14:44:31'),
(782, 'admin', 'INSERT', 'resources', '720', NULL, '\"Added a new resource: \'SEAWHARMA LE DELICE \\\"Experience the Sea in a Wrap\\\"\'\"', '2025-04-03 14:44:31'),
(783, 'admin', 'INSERT', 'resources', '721', NULL, '\"Added a new resource: \'TOT BAG \\\"Tot bag, your thoughts in the bag\\\"\'\"', '2025-04-03 14:44:31'),
(784, 'admin', 'INSERT', 'resources', '722', NULL, '\"Added a new resource: \'KKK MOCHI: Sweet and Healthy Rice Cake\'\"', '2025-04-03 14:44:31'),
(785, 'admin', 'INSERT', 'resources', '723', NULL, '\"Added a new resource: \'BLUEMACK BURGER \'Every Bite, You Feel Delight\'\'\"', '2025-04-03 14:44:31'),
(786, 'admin', 'INSERT', 'resources', '724', NULL, '\"Added a new resource: \'HUNGER BUSTER: TRADITIONAL FILIPINO INSTANT FOOD \\\"MURDERING YOUR HUNGER\\\"\'\"', '2025-04-03 14:44:32'),
(787, 'admin', 'INSERT', 'resources', '725', NULL, '\"Added a new resource: \'SPLATTY BURGER \\\"Meaty goodness from the tree of life\\\"\'\"', '2025-04-03 14:44:32'),
(788, 'admin', 'INSERT', 'resources', '726', NULL, '\"Added a new resource: \'AFTER MEAL ICE CREAM \\\"We\'ll complete your meal today\\\"\'\"', '2025-04-03 14:44:32'),
(789, 'admin', 'INSERT', 'resources', '727', NULL, '\"Added a new resource: \'NYMPHAEA \\\"Tote Full of Pockets\\\"\'\"', '2025-04-03 14:44:32'),
(790, 'admin', 'INSERT', 'resources', '728', NULL, '\"Added a new resource: \'QUENCHED \\\"Have it all without alcohol\\\"\'\"', '2025-04-03 14:44:32'),
(791, 'admin', 'INSERT', 'resources', '729', NULL, '\"Added a new resource: \'HIMAGAS BITES Taste the Filipino Delicacy with just one BITE!\'\"', '2025-04-03 14:44:32'),
(792, 'admin', 'INSERT', 'resources', '730', NULL, '\"Added a new resource: \'A COMPILATION REPORT\'\"', '2025-04-03 14:44:32'),
(793, 'admin', 'INSERT', 'resources', '731', NULL, '\"Added a new resource: \'The Sources of Students\' Misery\'\"', '2025-04-03 14:44:32'),
(794, 'admin', 'INSERT', 'resources', '732', NULL, '\"Added a new resource: \'A Documentation for Educational Plant Tour at Gardenia Bakeries Inc. in Biñan, Laguna\'\"', '2025-04-03 14:44:32'),
(795, 'admin', 'INSERT', 'resources', '733', NULL, '\"Added a new resource: \'Job Qualification and Demographic Factors to Employees Productivity\'\"', '2025-04-03 14:44:32'),
(796, 'admin', 'INSERT', 'resources', '734', NULL, '\"Added a new resource: \'Relationship Between Socio Demographic and Professional Growth of the Employees\'\"', '2025-04-03 14:44:32'),
(797, 'admin', 'INSERT', 'resources', '735', NULL, '\"Added a new resource: \'Safety Operation Program\'\"', '2025-04-03 14:44:32'),
(798, 'admin', 'INSERT', 'resources', '736', NULL, '\"Added a new resource: \'Compilation of Reports in IM11 (ENVIRONMENTAL MANAGEMENT)\'\"', '2025-04-03 14:44:32'),
(799, 'admin', 'INSERT', 'resources', '737', NULL, '\"Added a new resource: \'House of Crayfish: We Grow. We Breed. We Share\'\"', '2025-04-03 14:44:32'),
(800, 'admin', 'INSERT', 'resources', '738', NULL, '\"Added a new resource: \'CHICK BONED: Skin the Bone, Savor the Flavor\'\"', '2025-04-03 14:44:32'),
(801, 'admin', 'INSERT', 'resources', '739', NULL, '\"Added a new resource: \'SABUCHI \\\"A Twist of Banana in Every Bite\\\"\'\"', '2025-04-03 14:44:32'),
(802, 'admin', 'INSERT', 'resources', '740', NULL, '\"Added a new resource: \'VIAJE RETRATO Gunitain at Marahuyo sa Nakaraan\'\"', '2025-04-03 14:44:33'),
(803, 'admin', 'INSERT', 'resources', '741', NULL, '\"Added a new resource: \'THE SCRAMBLE SPOT: Beat the Heat with ICe Scramble\'s Sweet Retreat!\'\"', '2025-04-03 14:44:33'),
(804, 'admin', 'INSERT', 'resources', '742', NULL, '\"Added a new resource: \'SEOULFUL BOWL \\\"All in one bowl\\\"\'\"', '2025-04-03 14:44:33'),
(805, 'admin', 'INSERT', 'resources', '743', NULL, '\"Added a new resource: \'MIX & MUNCH Bursts in your mouth, Melts in your heart\'\"', '2025-04-03 14:44:33'),
(806, 'admin', 'INSERT', 'resources', '744', NULL, '\"Added a new resource: \'\\\"SIDE-BITE-SIDE\\\" Your wich is my command\'\"', '2025-04-03 14:44:33'),
(807, 'admin', 'INSERT', 'resources', '745', NULL, '\"Added a new resource: \'DUOCAFE \\\"Hey! Doughnut Worry, Grab a Coffee\\\"\'\"', '2025-04-03 14:44:33'),
(808, 'admin', 'INSERT', 'resources', '746', NULL, '\"Added a new resource: \'3\'\"', '2025-04-03 14:44:33'),
(809, 'admin', 'INSERT', 'resources', '747', NULL, '\"Added a new resource: \'THIRSTDAY FRYDAY \\\"Fill your thirst, Satisfy your Hunger\\\"\'\"', '2025-04-03 14:44:33'),
(810, 'admin', 'INSERT', 'resources', '748', NULL, '\"Added a new resource: \'DON KATSU THE MASTER OF GOOD FOOD\'\"', '2025-04-03 14:44:33'),
(811, 'admin', 'INSERT', 'resources', '749', NULL, '\"Added a new resource: \'OVERSTUFFEDWICH \\\"Overloaded, fully loaded\\\"\'\"', '2025-04-03 14:44:33'),
(812, 'admin', 'INSERT', 'resources', '750', NULL, '\"Added a new resource: \'D & F \\\"Tiny treats, Big delight\\\"\'\"', '2025-04-03 14:44:33'),
(813, 'admin', 'INSERT', 'resources', '751', NULL, '\"Added a new resource: \'NutriCHEWS A healthy sweet, without the guilt\'\"', '2025-04-03 14:44:33'),
(814, 'admin', 'INSERT', 'resources', '752', NULL, '\"Added a new resource: \'ARTE ADORN \\\"Charm your Moment\\\".\'\"', '2025-04-03 14:44:33'),
(815, 'admin', 'INSERT', 'resources', '753', NULL, '\"Added a new resource: \'CHICK N\' POP A BENTO CHICKEN LOLLIPOP \\\"Taking Chicken to a New-Dip Level!\'\"', '2025-04-03 14:44:33'),
(816, 'admin', 'INSERT', 'resources', '754', NULL, '\"Added a new resource: \'THRISTDAY FRYDAY \\\"Fill your Thirst, Satisfy your Hunger\\\"\'\"', '2025-04-03 14:44:33'),
(817, 'admin', 'INSERT', 'resources', '755', NULL, '\"Added a new resource: \'SHAWARMA DYNASTY \\\"Two worlds, one bowl\\\"\'\"', '2025-04-03 14:44:34'),
(818, 'admin', 'INSERT', 'resources', '756', NULL, '\"Added a new resource: \'FRIT O\'s Sweet but Fried!\'\"', '2025-04-03 14:44:34'),
(819, 'admin', 'INSERT', 'resources', '757', NULL, '\"Added a new resource: \'SOY BLISS \\\"Taho-licious Creations Await!\\\"\'\"', '2025-04-03 14:44:34'),
(820, 'admin', 'INSERT', 'resources', '758', NULL, '\"Added a new resource: \'PURPLE AVENUE Bite into purple pleasure\'\"', '2025-04-03 14:44:34'),
(821, 'admin', 'INSERT', 'resources', '759', NULL, '\"Added a new resource: \'CHIMCKEN WONDERS Savor The Extraordinary\'\"', '2025-04-03 14:44:34'),
(822, 'admin', 'INSERT', 'resources', '760', NULL, '\"Added a new resource: \'BREWEDtrip I\'ve BEAN there!\'\"', '2025-04-03 14:44:34'),
(823, 'admin', 'INSERT', 'resources', '761', NULL, '\"Added a new resource: \'Plus Love (+LOVE)\'\"', '2025-04-03 14:44:34'),
(824, 'admin', 'INSERT', 'resources', '762', NULL, '\"Added a new resource: \'ENCHANTED SEIFE brings out the soapi-est and aro-mantic in you\'\"', '2025-04-03 14:44:34'),
(825, 'admin', 'INSERT', 'resources', '763', NULL, '\"Added a new resource: \'Solatium cafe and bar \\\"find solace in the metropolis\\\"\'\"', '2025-04-03 14:44:34'),
(826, 'admin', 'INSERT', 'resources', '764', NULL, '\"Added a new resource: \'Coltelleria It is more than just a spoon, it\'s an EDIBLE spoon!\'\"', '2025-04-03 14:44:34'),
(827, 'admin', 'INSERT', 'resources', '765', NULL, '\"Added a new resource: \'Eatensils \\\"Utensils like never before!\\\"\'\"', '2025-04-03 14:44:34'),
(828, 'admin', 'INSERT', 'resources', '766', NULL, '\"Added a new resource: \'Pomosquiller \\\"A Mist of Protection\\\"\'\"', '2025-04-03 14:44:35'),
(829, 'admin', 'INSERT', 'resources', '767', NULL, '\"Added a new resource: \'AP LI KA BL: Socks for all weather, make your feet feel better\'\"', '2025-04-03 14:44:35'),
(830, 'admin', 'INSERT', 'resources', '768', NULL, '\"Added a new resource: \'AlcoCream \\\"In every sip and lick, there\'s a kick\\\"\'\"', '2025-04-03 14:44:35'),
(831, 'admin', 'INSERT', 'resources', '769', NULL, '\"Added a new resource: \'SHANGHEY ON THE WAY Shanghai na tapat, sharap buhay lahat\'\"', '2025-04-03 14:44:35'),
(832, 'admin', 'INSERT', 'resources', '770', NULL, '\"Added a new resource: \'CHICK N\' POP A BENTO CHICKEN LOLLIPOP \\\"Taking Chicken to a New-Dip Level!\\\"\'\"', '2025-04-03 14:44:35'),
(833, 'admin', 'INSERT', 'resources', '771', NULL, '\"Added a new resource: \'FINTA COSMETICS Where LIPS meets ART\'\"', '2025-04-03 14:44:35'),
(834, 'admin', 'INSERT', 'resources', '772', NULL, '\"Added a new resource: \'DALISAY: A COCONUT-BASED ENERGY DRINK \\\"Go logo for coco\\\"\'\"', '2025-04-03 14:44:35'),
(835, 'admin', 'INSERT', 'resources', '773', NULL, '\"Added a new resource: \'SHAWarma Boulevard \\\"Make it, Have it\\\"\'\"', '2025-04-03 14:44:35'),
(836, 'admin', 'INSERT', 'resources', '774', NULL, '\"Added a new resource: \'CAFICA Make it yours\'\"', '2025-04-03 14:44:35'),
(837, 'admin', 'INSERT', 'resources', '775', NULL, '\"Added a new resource: \'INKTURE\'\"', '2025-04-03 14:44:35'),
(838, 'admin', 'INSERT', 'resources', '776', NULL, '\"Added a new resource: \'COMPILATION OF SUPERVISED INDUSTRIAL TRAINING (SIT) PROGRAM NARRATIVE REPORT OF BAM-IM4LD Part 1\'\"', '2025-04-03 15:00:35'),
(839, 'admin', 'INSERT', 'resources', '777', NULL, '\"Added a new resource: \'COMPILATION OF SUPERVISED INDUSTRIAL TRAINING (SIT) PROGRAM NARRATIVE REPORT OF BAM-IM4LD Part 2\'\"', '2025-04-03 15:00:35'),
(840, 'admin', 'INSERT', 'resources', '778', NULL, '\"Added a new resource: \'Compilation of Supervised Industrial Training (SIT) Program Narrative Report of BAM-IM 4LE\'\"', '2025-04-03 15:00:35'),
(841, 'admin', 'INSERT', 'resources', '779', NULL, '\"Added a new resource: \'Classroom Facilities and Student\'s Classroom Performance: An Impact Analysis\'\"', '2025-04-03 15:00:35'),
(842, 'admin', 'INSERT', 'resources', '780', NULL, '\"Added a new resource: \'Bicolano Delights: A Collection of Traditional Recipes A Guide to Culinary Heritage of Albay, Bicol\'\"', '2025-04-03 15:00:35'),
(843, 'admin', 'INSERT', 'resources', '781', NULL, '\"Added a new resource: \'Proposed Marketing Strategy Plan\'\"', '2025-04-03 15:00:35'),
(844, 'admin', 'INSERT', 'resources', '782', NULL, '\"Added a new resource: \'Chicken Now All-new recipes All-new flavours\'\"', '2025-04-03 15:00:35'),
(845, 'admin', 'INSERT', 'resources', '783', NULL, '\"Added a new resource: \'Tourism Impacts And Sustainability\'\"', '2025-04-03 15:00:36'),
(846, 'admin', 'INSERT', 'resources', '784', NULL, '\"Added a new resource: \'Commercial Baking with Entrepreneurship (Revised Edition)\'\"', '2025-04-03 15:00:36'),
(847, 'admin', 'INSERT', 'resources', '785', NULL, '\"Added a new resource: \'Philippine Journal Of Industrial Education & Technology\'\"', '2025-04-03 15:00:36'),
(848, 'admin', 'INSERT', 'resources', '786', NULL, '\"Added a new resource: \'Laboratory Manual in Culinary Arts 1\'\"', '2025-04-03 15:00:36'),
(849, 'admin', 'INSERT', 'resources', '787', NULL, '\"Added a new resource: \'Fundamentals In Lodging Operations\'\"', '2025-04-03 15:00:36'),
(850, 'admin', 'INSERT', 'resources', '788', NULL, '\"Added a new resource: \'Technological University of the Philippines: Factors Affecting the Employability of the TUP-CIT Graduates from the year 2005-2009\'\"', '2025-04-03 15:00:36'),
(851, 'admin', 'INSERT', 'resources', '789', NULL, '\"Added a new resource: \'Technological University of the Philippines: Sining Ng Pakikipagtalastasan para sa Teknikong Mag-aaral\'\"', '2025-04-03 15:00:36'),
(852, 'admin', 'INSERT', 'resources', '790', NULL, '\"Added a new resource: \'Chapters 1-4 Economics (16th Edition)\'\"', '2025-04-03 15:00:36'),
(853, 'admin', 'INSERT', 'resources', '791', NULL, '\"Added a new resource: \'Technological University of the Philippines: Advancing Science and Technology for a Globally-Competitive University\'\"', '2025-04-03 15:00:36'),
(854, 'admin', 'INSERT', 'resources', '792', NULL, '\"Added a new resource: \'Mentoring With Care In the Workplace\'\"', '2025-04-03 15:00:36'),
(855, 'admin', 'INSERT', 'resources', '793', NULL, '\"Added a new resource: \'Technological University of the Philippines: Annual Report S.Y. 2000-2001\'\"', '2025-04-03 15:00:36'),
(856, 'admin', 'INSERT', 'resources', '794', NULL, '\"Added a new resource: \'Technological University of the Philippines Annual Report 2001\'\"', '2025-04-03 15:00:36'),
(857, 'admin', 'INSERT', 'resources', '795', NULL, '\"Added a new resource: \'Supervised Industrial Training Manual\'\"', '2025-04-03 15:00:36'),
(858, 'admin', 'INSERT', 'resources', '796', NULL, '\"Added a new resource: \'Student Attitude And Peer Relationship\'\"', '2025-04-03 15:00:36'),
(859, 'admin', 'INSERT', 'resources', '797', NULL, '\"Added a new resource: \'The Implementation of Manila Ordinance No. 8046 \\\"Barangay Curfew Hours\\\": An Assessment\'\"', '2025-04-03 15:00:37'),
(860, 'admin', 'INSERT', 'resources', '798', NULL, '\"Added a new resource: \'The Effects of Marketing Strategies of Small Business Carts To the Buying-Behavior of Consumers\'\"', '2025-04-03 15:00:37'),
(861, 'admin', 'INSERT', 'resources', '799', NULL, '\"Added a new resource: \'The Relationship between Sources of Information and Degree of Dissemination\'\"', '2025-04-03 15:00:37'),
(862, 'admin', 'INSERT', 'resources', '800', NULL, '\"Added a new resource: \'Production/Operations Management 5th Edition\'\"', '2025-04-03 15:00:37'),
(863, 'admin', 'INSERT', 'resources', '801', NULL, '\"Added a new resource: \'Marketing Management\'\"', '2025-04-03 15:00:37'),
(864, 'admin', 'INSERT', 'resources', '802', NULL, '\"Added a new resource: \'Philippine Jornal if Industrial Education and Technology\'\"', '2025-04-03 15:00:37'),
(865, 'admin', 'INSERT', 'resources', '803', NULL, '\"Added a new resource: \'Human Factors in Engineering and Design 4th Edition\'\"', '2025-04-03 15:00:37'),
(866, 'admin', 'INSERT', 'resources', '804', NULL, '\"Added a new resource: \'Commercial Baking with Entrepreneurship\'\"', '2025-04-03 15:00:37'),
(867, 'admin', 'INSERT', 'resources', '805', NULL, '\"Added a new resource: \'Chicken Now\'\"', '2025-04-03 15:00:37'),
(868, 'admin', 'INSERT', 'resources', '806', NULL, '\"Added a new resource: \'Analysis of Black Drip Cafe Using 8 P\'s Marketing Mix: Basis for Marketing Improvement Plan\'\"', '2025-04-03 15:00:37'),
(869, 'admin', 'INSERT', 'resources', '807', NULL, '\"Added a new resource: \'S.A.L.T TOWARDS PERFORMANCE: EFFECTS OF RESTAURANT SPATIAL LAYOUT, AMBIANCE, LIGHTING, AND THEME ON EMPLOYEE PERFORMANCE\'\"', '2025-04-03 15:00:37'),
(870, 'admin', 'INSERT', 'resources', '808', NULL, '\"Added a new resource: \'Proposed Marketing Plan\'\"', '2025-04-03 15:00:37'),
(871, 'admin', 'INSERT', 'resources', '809', NULL, '\"Added a new resource: \'Proposed Process Improvement Plan\'\"', '2025-04-03 15:00:37'),
(872, 'admin', 'INSERT', 'resources', '810', NULL, '\"Added a new resource: \'Proposed Sustainable Food Waste Practices Plan\'\"', '2025-04-03 15:00:37'),
(873, 'admin', 'INSERT', 'resources', '811', NULL, '\"Added a new resource: \'2\'\"', '2025-04-03 15:00:37'),
(874, 'admin', 'INSERT', 'resources', '812', NULL, '\"Added a new resource: \'Restaurants Food Waste Management System Towards Sustainable Value\'\"', '2025-04-03 15:00:37'),
(875, 'admin', 'INSERT', 'resources', '813', NULL, '\"Added a new resource: \'Fundamentals Of Nutrition For HRM Students\'\"', '2025-04-03 15:00:38'),
(876, 'admin', 'INSERT', 'resources', '814', NULL, '\"Added a new resource: \'The Second 100 Japanese Kanji\'\"', '2025-04-03 15:00:38'),
(877, 'admin', 'INSERT', 'resources', '815', NULL, '\"Added a new resource: \'Food and beverage service\'\"', '2025-04-03 15:00:38'),
(878, 'admin', 'INSERT', 'resources', '816', NULL, '\"Added a new resource: \'Bachelor of Science in Hospitality Management\'\"', '2025-04-03 15:00:38'),
(879, 'admin', 'INSERT', 'resources', '817', NULL, '\"Added a new resource: \'A Business Proposal on Free Spirit Co.\'\"', '2025-04-03 15:00:38'),
(880, 'admin', 'INSERT', 'resources', '818', NULL, '\"Added a new resource: \'Analysis of ASEAN Guidelines on Food Safety Knowledge and Handling Practices in Selected Casual Dining Restaurants in Metro Manila: Basis for an Improved Operational Plan\'\"', '2025-04-03 15:00:38'),
(881, 'admin', 'INSERT', 'resources', '819', NULL, '\"Added a new resource: \'Revitalizing & Regenerating in the New Normal: Taking Advantage of the New Possibilities for the Hospitality & Tourism Industry in the New Normal\'\"', '2025-04-03 15:00:38'),
(882, 'admin', 'INSERT', 'resources', '820', NULL, '\"Added a new resource: \'Academic Conference \\\"Unleashing Student\'s Competence Through Hospitality Research, Sustainability, and Innovation\\\"\'\"', '2025-04-03 15:00:38'),
(883, 'admin', 'INSERT', 'resources', '821', NULL, '\"Added a new resource: \'Food and Beverage: Management and Cost Control\'\"', '2025-04-03 15:00:38'),
(884, 'admin', 'INSERT', 'resources', '822', NULL, '\"Added a new resource: \'The Complete Househol Organizer\'\"', '2025-04-03 15:00:38'),
(885, 'admin', 'INSERT', 'resources', '823', NULL, '\"Added a new resource: \'Korean Intangible Cultural Properties\'\"', '2025-04-03 15:00:38'),
(886, 'admin', 'INSERT', 'resources', '824', NULL, '\"Added a new resource: \'Manual on Purchasing and Ware Housing\'\"', '2025-04-03 15:00:38'),
(887, 'admin', 'INSERT', 'resources', '825', NULL, '\"Added a new resource: \'The Only Basic English Grammar in Korea\'\"', '2025-04-03 15:00:38'),
(888, 'admin', 'INSERT', 'resources', '826', NULL, '\"Added a new resource: \'English Theme Reading\'\"', '2025-04-03 15:00:38'),
(889, 'admin', 'INSERT', 'resources', '827', NULL, '\"Added a new resource: \'Organization And Management Theories And Behavior 2024 Edition\'\"', '2025-04-03 15:00:38'),
(890, 'admin', 'INSERT', 'resources', '828', NULL, '\"Added a new resource: \'STILL MORE GAMES TRAINERS PLAY Experiential Learning Exercises\'\"', '2025-04-03 15:00:38'),
(891, 'admin', 'INSERT', 'resources', '829', NULL, '\"Added a new resource: \'Feast By Firelight\'\"', '2025-04-03 15:00:38'),
(892, 'admin', 'INSERT', 'resources', '830', NULL, '\"Added a new resource: \'An Introduction to the Study of Social Philosophy\'\"', '2025-04-03 15:00:38'),
(893, 'admin', 'INSERT', 'resources', '831', NULL, '\"Added a new resource: \'Human Resource Management\'\"', '2025-04-03 15:00:38'),
(894, 'admin', 'INSERT', 'resources', '832', NULL, '\"Added a new resource: \'Qualitative Research 2024 Edition\'\"', '2025-04-03 15:00:38'),
(895, 'admin', 'INSERT', 'resources', '833', NULL, '\"Added a new resource: \'Why People Buy Things They Don\'t Need\'\"', '2025-04-03 15:00:38'),
(896, 'admin', 'INSERT', 'checkout', '673', NULL, '\"Patron: Kerzlyn Alto borrowed a book: \'Survival English: International Communication for Professional People\'\"', '2025-04-03 15:08:09'),
(897, 'admin', 'INSERT', 'checkin', '673', NULL, '\"Patron: Kerzlyn Alto returned a book: \'Survival English: International Communication for Professional People\'\"', '2025-04-03 15:16:40'),
(898, 'admin', 'UPDATE', 'resources', '673', 'Unarchived', '\"Changed archive status to: Archived\"', '2025-04-03 15:26:16'),
(899, 'admin', 'UPDATE', 'resources', '673', 'Archived', '\"Changed archive status to: Unarchived\"', '2025-04-03 15:26:39'),
(900, 'admin', 'INSERT', 'checkin', '595', NULL, '\"Patron: Kharla Mae Celmar returned a book: \'Tourism and Hospitality Marketing\'\"', '2025-04-03 15:33:46');

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
(286, '9789710167425', 594, 143, 19, 'public/images/not_found.png'),
(287, '9786214063437', 595, 144, 19, 'public/images/not_found.png'),
(288, '9789715849760', 596, 145, 19, 'public/images/not_found.png'),
(289, '9789712399107', 597, 146, 19, 'public/images/not_found.png'),
(290, '9789716102505', 598, 147, 19, 'public/images/not_found.png'),
(291, '9789719905202', 599, 148, 19, 'public/images/not_found.png'),
(292, '9789814314787', 600, 149, 19, 'public/images/not_found.png'),
(293, '9781760342593', 601, 150, 19, 'public/images/not_found.png'),
(294, '9786210403794', 602, 146, 16, 'public/images/not_found.png'),
(295, '9789719905059', 603, 151, 16, 'public/images/not_found.png'),
(296, NULL, 604, NULL, 8, 'public/images/20241217_073823219_iOS.jpg'),
(299, '9781593118235', 609, 152, 11, 'public/images/not_found.png'),
(300, '', 610, 152, 7, 'public/images/not_found.png'),
(301, NULL, 611, 153, 11, 'public/images/not_found.png'),
(302, '9789710116775', 612, 154, 11, 'public/images/not_found.png'),
(303, NULL, 613, 155, 11, 'public/images/not_found.png'),
(304, '971683182x', 614, 156, 7, 'public/images/not_found.png'),
(305, '9789719537878', 615, 157, 7, 'public/images/not_found.png'),
(306, NULL, 616, 158, 11, 'public/images/not_found.png'),
(307, NULL, 617, 159, 7, 'public/images/not_found.png'),
(308, '971929843X', 618, 152, 7, 'public/images/not_found.png'),
(309, '9786210225204', 619, 160, 7, 'public/images/not_found.png'),
(310, '9786210225235', 620, 160, 7, 'public/images/not_found.png'),
(311, NULL, 621, 161, 8, 'public/images/not_found.png'),
(312, NULL, 622, 162, 11, 'public/images/not_found.png'),
(313, '9786210225266', 623, 163, 11, 'public/images/not_found.png'),
(314, '', 624, 164, 11, 'public/images/not_found.png'),
(315, '978621022521', 625, 163, 11, 'public/images/not_found.png'),
(316, '9789719482031', 626, 165, 8, 'public/images/not_found.png'),
(317, NULL, 627, 166, 8, 'public/images/not_found.png'),
(318, '', 628, 167, 8, 'public/images/not_found.png'),
(319, NULL, 629, 168, 8, 'public/images/not_found.png'),
(320, NULL, 630, 169, 8, 'public/images/not_found.png'),
(321, '', 631, 170, 8, 'public/images/not_found.png'),
(322, '', 632, 171, 8, 'public/images/not_found.png'),
(323, '0205125840', 633, 172, 10, 'public/images/not_found.png'),
(324, '9789715382663', 634, 173, 10, 'public/images/not_found.png'),
(325, '9710865854', 635, 174, 10, 'public/images/not_found.png'),
(326, '', 636, 175, 10, 'public/images/not_found.png'),
(327, '', 637, 176, 10, 'public/images/not_found.png'),
(328, '', 638, 171, 10, 'public/images/not_found.png'),
(329, '', 639, 177, 10, 'public/images/not_found.png'),
(330, NULL, 640, 178, 10, 'public/images/not_found.png'),
(331, '', 641, 179, 10, 'public/images/not_found.png'),
(332, NULL, 642, 180, 10, 'public/images/not_found.png'),
(333, '', 643, 181, 10, 'public/images/not_found.png'),
(334, '9789719478102', 644, 182, 10, 'public/images/not_found.png'),
(335, NULL, 645, 152, 10, 'public/images/not_found.png'),
(336, '', 646, 152, 10, 'public/images/not_found.png'),
(337, '9786210225273', 647, 183, 9, 'public/images/not_found.png'),
(338, NULL, 648, 184, 9, 'public/images/not_found.png'),
(339, '', 649, 185, 9, 'public/images/not_found.png'),
(340, '9710856243', 650, 186, 9, 'public/images/not_found.png'),
(341, '0072994428', 651, 187, 9, 'public/images/not_found.png'),
(342, '', 652, 188, 9, 'public/images/not_found.png'),
(343, NULL, 653, 189, 9, 'public/images/not_found.png'),
(344, '0043510434', 654, 190, 9, 'public/images/not_found.png'),
(345, '9710860356', 655, 152, 9, 'public/images/not_found.png'),
(346, '', 656, 191, 9, 'public/images/not_found.png'),
(347, '902473777X', 657, 192, 9, 'public/images/not_found.png'),
(348, NULL, 658, 193, 9, 'public/images/not_found.png'),
(349, '', 659, 194, 9, 'public/images/not_found.png'),
(350, '', 660, 195, 9, 'public/images/not_found.png'),
(351, '', 661, 196, 9, 'public/images/not_found.png'),
(352, '971926070X', 662, 197, 9, 'public/images/not_found.png'),
(353, '', 663, 198, 9, 'public/images/not_found.png'),
(354, '', 664, 199, 12, 'public/images/not_found.png'),
(355, '627394257380212', 665, 200, 12, 'public/images/not_found.png'),
(356, NULL, 666, 201, 12, 'public/images/not_found.png'),
(357, NULL, 667, 202, 12, 'public/images/not_found.png'),
(358, '', 668, 201, 12, 'public/images/not_found.png'),
(359, NULL, 669, 201, 12, 'public/images/not_found.png'),
(360, '16555457', 670, 203, 14, 'public/images/not_found.png'),
(361, '9789712500381', 671, 191, 14, 'public/images/not_found.png'),
(362, '0669937169', 672, 204, 14, 'public/images/not_found.png'),
(363, '9781405003889', 673, 205, 14, 'public/images/not_found.png'),
(364, '0136917186', 674, 206, 14, 'public/images/not_found.png'),
(365, '0136917593', 675, 206, 14, 'public/images/not_found.png'),
(366, '', 676, 207, 14, 'public/images/not_found.png'),
(367, '', 677, 208, 14, 'public/images/not_found.png'),
(368, '', 678, 199, 12, 'public/images/not_found.png');

-- --------------------------------------------------------

--
-- Table structure for table `checkin`
--

CREATE TABLE `checkin` (
  `checkin_id` int(11) NOT NULL,
  `checkin_date` date DEFAULT NULL,
  `checkout_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checkin`
--

INSERT INTO `checkin` (`checkin_id`, `checkin_date`, `checkout_id`) VALUES
(121, '2025-04-03', 105),
(122, '2025-04-03', 103);

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

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`checkout_id`, `checkout_date`, `checkout_due`, `resource_id`, `patron_id`, `status`) VALUES
(101, '2025-04-02', '2025-04-09', 601, 334, 'borrowed'),
(102, '2025-04-02', '2025-04-09', 595, 330, 'borrowed'),
(103, '2025-04-03', '2025-04-10', 595, 327, 'returned'),
(104, '2025-04-03', '2025-04-10', 664, 339, 'borrowed'),
(105, '2025-04-03', '2025-04-10', 673, 321, 'returned');

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

--
-- Dumping data for table `journalnewsletter`
--

INSERT INTO `journalnewsletter` (`jn_id`, `jn_volume`, `jn_issue`, `resource_id`, `topic_id`, `filepath`) VALUES
(35, 'Volume 11', '2004', 592, 10, 'public/images/not_found.png'),
(36, '', '2014', 593, 20, 'public/images/not_found.png');

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
(318, 'TUPM-21-0210', 'Giolliana', 'Plandez', 'Female', '09151150102', 'giolliana.plandez@tup.edu.ph', 'Student', 1, 1, 'active', '2025-04-02 04:17:27'),
(319, 'TUPM-23-1538', 'Kristine Danielle', 'Ferrer', 'Female', '09929927679', 'kristinedanielle.ferrer@tup.edu.ph', 'Student', 2, 10, 'active', '2025-04-02 04:17:27'),
(320, 'TUPM-24-1038', 'Sophia Luisa', 'Balagtas', 'Female', '09085501761', 'sophialuisa.balagtas@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-02 04:17:27'),
(321, 'TUPM-24-1840', 'Kerzlyn', 'Alto', 'Female', '09213499780', 'kerzlyn.alto@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-02 04:17:27'),
(322, 'TUPM-23-6928', 'Mhitchie', 'Suico', 'Female', '09519110630', 'mhitchie.suico@tup.edu.ph', 'Student', 2, 9, 'active', '2025-04-02 04:17:27'),
(323, 'TUPM-23-6931', 'Ealjean Arielle', 'Velches', 'Female', '09751178746', 'ealjeanarielle.velches@tup.edu.ph', 'Student', 2, 9, 'active', '2025-04-02 04:17:27'),
(324, 'TUPM-23-9021', 'Joao Ashpyr', 'Catarungan', 'Male', '', 'joaoashpyr.catarungan@tup.edu.ph', 'Student', 2, 9, 'active', '2025-04-02 04:17:27'),
(325, 'TUPM-23-7088', 'Binn Yazzer', 'Ayunon', 'Male', '09495941708', 'binnyazzer.ayunon@tup.edu.ph', 'Student', 2, 9, 'active', '2025-04-02 04:17:27'),
(326, 'TUPM-24-0988', 'Kristine Claire', 'Corpuz', 'Female', '09703690205', 'kristineclaire.corpuz@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-02 04:17:27'),
(327, 'TUPM-24-2344', 'Kharla Mae', 'Celmar', 'Female', '09455978618', 'kharlamae.celmar@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-02 04:17:27'),
(328, 'TUPM-24-1301', 'Angela May', 'Teneros', 'Female', '09201249524', 'angelamay.teneros@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-02 04:17:27'),
(329, 'TUPM-24-1811', 'Janehery', 'Bernal', 'Female', '09157998759', 'janeherylei.bernal@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-02 04:17:27'),
(330, 'TUPM-24-2384', 'Irish', 'Nabayra', 'Female', '09772306421', 'irish.nabayra@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-02 04:17:27'),
(331, 'TUPM-24-0689', 'ANDREA DECELYN', 'SILVA', 'Female', '09381714619', 'andreadecelyn.silva@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-02 04:17:27'),
(332, 'TUPM-23-6062', 'Sandy', 'Gawat', 'Female', '09754980420', 'sandy.gawat@tup.edu.ph', 'Student', 2, 9, 'active', '2025-04-02 04:17:27'),
(333, 'TUPM-24-1818', 'Krizia Mae', 'De Honor', 'Female', '09122824638', 'kriziamaedehonor@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-02 04:17:27'),
(334, 'TUPM-24-2429', 'CHRISTINE MAE', 'Ricafrente', 'Female', '09637743734', 'christinemae.ricafrente@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-02 04:17:27'),
(335, 'TUPM-24-0845', 'MARIE ANGELA', 'DEL CASTILLO', 'Female', '09982676384', 'marieangela.delcastillo@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-02 04:17:27'),
(336, 'TUPM-24-0869', 'Marie Angelie', 'Del Castillo', 'Female', '09602925476', 'marieangelie.delcastillo@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-02 04:17:27'),
(337, 'TUPM-24-1482', 'Nicolyn Jean', 'San Jose', 'Female', '09064644205', 'nicolynjean.sanjose@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-02 04:17:27'),
(338, 'TUPM-24-0749', 'Berna Marie', 'Toñacao', 'Female', '09166095454', 'bernamarie.tonacao@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-02 04:17:27'),
(339, 'TUPM-24-2296', 'Alena Joy', 'Torres', 'Female', '09630803975', 'alenajoy.torres@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-02 04:17:27'),
(347, 'TUPM-21-0220', 'Pauleen', 'Dingcong', 'Female', '09270477362', 'pauleendingcong@tup.edu.ph', 'Student', 1, 1, 'inactive', '2025-04-02 08:39:03');

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
(143, 'MaxCor Publishing House, Inc.', '132 Kalayaan Avenue, Diliman, Quezon City', '', '9211857', 'www.maxcorpublishing.com'),
(144, 'Mindshapers Co., Inc,', 'Rm.108, ICP Bldg., Recoletos St., Intramuros, Manila', 'mindshapersco@yahoo.com', '82546160', 'www.mindshaperspublishing.com'),
(145, 'C & E Publishing, Inc.', '839 EDSA, South Triangle Quezon City, Philippines', 'info@cebookshop.com', '9295088', 'www.cebookshop.com'),
(146, 'REX Book Store', '856 Nicanor Reyes, Sr. St.', '', '7360567', 'www.rexinteractive.com'),
(147, 'ISA-JECHO Publishing, Inc.', '96 Kalayaan Avenue, Diliman, Quezon City', 'isajecho@yahoo.com', '9218289', ''),
(148, 'Mindshapers Cp., Inc.', 'Rm.108, ICP Bldg., Recoletos St., Intramuros, Manila', 'mindshapersco@yahoo.com', '82546160', 'www.mindshaperspublishing.com'),
(149, 'Cengage Learning Asia Pte Ltd', '5 Shenton Way #01-01 UIC Building Singapore 068808', 'asia.infophilippines@cengage.com', '9155290', ''),
(150, 'Lonely Planet', '', '', '', ''),
(151, 'Mindshapers Co., Inc.', 'Rm. 108 Intramuros Corporate Plaza Building Recoletos Street, Intramuros, Manila', 'mindshapersco@yahoo.com', '82546160', ''),
(152, ' n/a n/a', '', '', '', ''),
(153, 'Mutya Publishing House', '#12 P. Gomez St., Maysan, Valenzuela City', '', '2921908/2932163', ''),
(154, 'Central Book Supply Inc.', 'Ground Floor Phoenix Bldg. 927, Quezon Ave. Quezon City', '', '', 'www.central.com.ph'),
(155, 'Princeton University Press', '41 William Street , Princeton, New Jersey', '', '', 'pup.princeton.edu'),
(156, '1624-1626 Espana cor. Don Quijote St., Sampaloc Metro Manila Philippines', '', 'info@staugustinepublications.com', '622068, 7163873, 7437477', 'https://www.staugustinepublications.com/'),
(157, 'Esplana Publishing', 'Manila, Philippines', '', '', ''),
(158, 'National Book Store', 'Quad Alpha Centrum Bldg. 125 Pioneer Street Mandaluyong City 1550', '', '6318061', 'www.nationalbookstore.com'),
(159, 'Tahanan Books for Young Readers', 'Unit 402 Cityland 3 Building, 105 V.A. Rufino corner Esteban Streets, Makati ·', '', '', 'https://tahananbooks.com/'),
(160, 'Central Book Supply, Inc.', '927 Quezon Avenue, Quezon City', 'info@central.com.ph', '', 'www.central.com.ph'),
(161, 'National Book Store, Inc.', 'Quad Alpha Centrum Bldg. 125 Pioneer Street Mandaluyong City 1550', '', '', 'www.nationalbookstore.com'),
(162, 'National Book Store', 'Quad Alpha Centrum Bldg. 125 Pioneer St., Mandaluyong City', '', '', 'www.nationalbookstore.com'),
(163, 'Central Books Supply, Inc.', '927 Quezon Avenue, Quezon City', 'info@central.com.ph', '', 'www.central.com.ph'),
(164, 'De La Salle University Press', '', '', '', ''),
(165, 'RAHA Publishing House', '33 Cotabato Street, Brgy. Sapa II, Rosario, Cavite', '', '9488106197', ''),
(166, 'Booklore Publishing Corporation', '33 Acebo St. Marulas, Valenzuela City', '', '', ''),
(167, 'Prentice-Hall, Inc.', 'Englewood Cliffs, New Jersey', '', '', ''),
(168, 'Longman', '', '', '', ''),
(169, 'Harcourt, Brace & World Inc.', '3 Upper James Street Golden Square London W1', '', '', ''),
(170, 'Philippine Social Science Council', '', '', '', ''),
(171, 'KEN Incorporated', '', '', '', ''),
(172, '\r\nAllyn and Bacon', '160 Gould Street, Needham heights, Massachusetts 02194.', '', '', ''),
(173, 'National Historical Commission of the Philippines', 'T.M. Kalaw St., Ermita, Manila, Philippines', '', '(63)(2)2547482', 'www.nhcp.gov.ph'),
(174, 'National Bookstore', 'Quad Alpha Centrum Bldg., 125 Pioneer Street, Mandaluyong City', '', '631-80-61 to 66', 'www.nationalboookstore.com'),
(175, 'Phoenix Publishing House, Inc.', '927 Quezon Avenue, Quezon City', '', '', ''),
(176, 'Libro Filipino Enterprises', '2077 Promenade Square, C.M. Recto, Manila', '', '4934356', ''),
(177, 'Knopf', '', '', '', ''),
(178, 'National Book Store, Inc.', '', '', '', ''),
(179, 'Milrose Printing Corporation', '4592 Closer St., Sun Valley, Paranaque, Metro Manila', '', '823-03-44, 823-03-69', ''),
(180, 'United Nation University Press', 'The United Nations University, 53-70, Jingumae 5-chome, Shinuya-ku, Tokyo 150, Japan', '', '3499-2811', ''),
(181, ' n/a n/a', 'Makati, Metro Manila Philippines', '', '', ''),
(182, 'Suatengco Publishing House', '19 Barangay St., Kaloocan City 1400', '', '(02) 239-2048', ''),
(183, 'Central Book Supply, Inc.', 'Phoenix Building, Quezon Avenue, Quezon City', 'info@central.com.ph', '', 'www.central.com.ph'),
(184, 'United Nations', '', '', '', ''),
(185, 'Philippine Society of Constitutional Law', '', '', '', ''),
(186, 'National Book Store, Inc.', 'Quad Alpha Centrum Bldg. 125 Pioneer St., Mandaluyong City', '', '', ''),
(187, 'McGraw-Hill/irwin', '1221 Avenue of the Americas, New York, NY', '', '', ''),
(188, 'n/a', '', '', '', ''),
(189, 'The College of Democracy', '1101 North Highland Street - Arlington, Virginia', '', '', ''),
(190, 'George Allen & Unwin Ltd', '', '', '', ''),
(191, 'Vigor Print Mark', '', '', '', ''),
(192, 'Kluwer Academic Publisher', '3300 AA Dordrecht, The Netherlands', '', '5313859 / 5335249', ''),
(193, 'Word Publishing', 'United States of America', '', '(02) 929-5088', ''),
(194, 'The OPEC Fund for International Development', 'Vienna, Austria', 'info@ofid.org', '(+43-1)515-640', 'www.ofid.org'),
(195, 'REX Bookstore', '856 Nicanor Reyes, Sr. St. 1977 C.M. Recto Avenue Manila Philippines', '', '7414957 / 7414956 / 7414916 / 7414920', ''),
(196, 'Edward Elgar Publishing', 'Glensanda House Montpellier Parade, Cheltenham Glos GL50 1UA UK', 'info@e-elgar.co.uk', '44 1242 226934', 'www.e-elgar.com'),
(197, 'Batas  Kalikasan Foundation', '6-J Westgate Tower, Investment Drive, Madrigal Business Park, Alabang, Muntinlupa City, 1780', '', '', ''),
(198, 'Department of Environment and Natural Resources', '', '', '920-2273/928-12-14', 'www.denr.gov.ph'),
(199, 'Technological University of the Philippines College of Liberal Arts Manila', 'Ayala Boulevard, Ermita, Manila', '', '', ''),
(200, 'KEN incorporated', 'Quezon City', '', '', ''),
(201, 'Technological University of the Philippines', 'Ayala Boulevard, Ermita, Manila', '', '', ''),
(202, 'Houghton Mifflin Company', 'Boston, Massachusettes, United States of America', '', '', ''),
(203, 'St. Pauls Philippines', '7708 St. Paul Road, San Antonio Village, 1203 Makati City, Philippines', '', '895-9701 to 04', 'www.stpauls.com'),
(204, 'D.C. Heath and Company', '', '', '', ''),
(205, 'Macmillan Education', '', '', '', ''),
(206, 'Prentice Hall', 'Englewood Cliffs, New Jersey', '', '', ''),
(207, 'Reader\'s Condensed Book', 'Pleasantville, N.Y', '', '', ''),
(208, 'State University of New York Press', '90 State Street, Suite 700, Albany, N.Y. 12207', '', '', '');

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
(12, 'Daily attendance', 'April 3', 1, 1, 11, '2025-04-03', '2025-04-03', '2025-04-03 10:48:20', '/public/reports/Daily attendance_2025-04-03_18-48-20.xlsx', 0);

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
(592, 343),
(593, 344),
(594, 326),
(594, 327),
(595, 328),
(595, 329),
(596, 327),
(596, 330),
(597, 331),
(598, 332),
(598, 333),
(599, 334),
(600, 335),
(601, 336),
(601, 337),
(601, 338),
(602, 330),
(602, 339),
(602, 340),
(603, 341),
(603, 342),
(604, 327),
(605, 326),
(609, 345),
(610, 346),
(610, 347),
(610, 348),
(610, 349),
(610, 350),
(610, 351),
(611, 352),
(612, 353),
(613, 354),
(614, 355),
(615, 356),
(615, 357),
(615, 358),
(616, 359),
(617, 360),
(618, 361),
(618, 362),
(619, 363),
(619, 364),
(619, 365),
(619, 366),
(619, 367),
(620, 363),
(620, 364),
(620, 365),
(620, 367),
(620, 368),
(621, 369),
(621, 370),
(622, 371),
(623, 364),
(623, 372),
(623, 373),
(623, 374),
(623, 375),
(624, 345),
(625, 363),
(625, 364),
(625, 373),
(625, 374),
(625, 376),
(626, 377),
(626, 378),
(626, 379),
(627, 380),
(628, 381),
(628, 382),
(629, 383),
(629, 384),
(629, 385),
(629, 386),
(629, 387),
(630, 388),
(631, 389),
(631, 390),
(632, 391),
(632, 392),
(633, 393),
(633, 394),
(634, 345),
(635, 371),
(636, 395),
(636, 396),
(636, 397),
(636, 398),
(636, 399),
(637, 399),
(638, 382),
(638, 400),
(638, 401),
(639, 402),
(639, 403),
(639, 404),
(640, 405),
(641, 406),
(641, 407),
(642, 408),
(642, 409),
(643, 345),
(644, 410),
(644, 411),
(644, 412),
(645, 413),
(646, 406),
(646, 407),
(647, 414),
(647, 415),
(647, 416),
(647, 417),
(647, 418),
(648, 345),
(649, 419),
(650, 420),
(651, 421),
(651, 422),
(652, 345),
(653, 423),
(654, 424),
(655, 425),
(655, 426),
(656, 427),
(656, 428),
(656, 429),
(657, 430),
(657, 431),
(658, 432),
(658, 433),
(659, 434),
(660, 435),
(661, 345),
(662, 436),
(663, 345),
(664, 437),
(664, 438),
(664, 439),
(664, 440),
(665, 441),
(665, 442),
(665, 443),
(666, 444),
(666, 445),
(666, 446),
(667, 447),
(667, 448),
(667, 449),
(668, 450),
(668, 451),
(668, 452),
(668, 453),
(669, 444),
(669, 445),
(669, 446),
(670, 345),
(671, 454),
(671, 455),
(672, 456),
(672, 457),
(673, 458),
(674, 345),
(675, 345),
(676, 345),
(677, 459),
(677, 460),
(678, 437),
(678, 438),
(678, 439),
(678, 440),
(679, 461),
(679, 462),
(679, 463),
(679, 464),
(679, 465),
(679, 466),
(679, 467),
(679, 468),
(680, 469),
(680, 470),
(680, 471),
(680, 472),
(680, 473),
(680, 474),
(680, 475),
(680, 476),
(680, 477),
(680, 478),
(681, 479),
(681, 480),
(681, 481),
(681, 482),
(681, 483),
(681, 484),
(681, 485),
(682, 486),
(682, 487),
(682, 488),
(682, 489),
(682, 490),
(682, 491),
(683, 492),
(683, 493),
(683, 494),
(683, 495),
(683, 496),
(683, 497),
(684, 498),
(685, 499),
(685, 500),
(685, 501),
(685, 502),
(685, 503),
(685, 504),
(685, 505),
(686, 506),
(686, 507),
(686, 508),
(686, 509),
(686, 510),
(686, 511),
(686, 512),
(687, 513),
(687, 514),
(687, 515),
(687, 516),
(687, 517),
(687, 518),
(687, 519),
(688, 520),
(689, 521),
(689, 522),
(689, 523),
(689, 524),
(689, 525),
(689, 526),
(689, 527),
(690, 528),
(690, 529),
(690, 530),
(691, 531),
(691, 532),
(691, 533),
(691, 534),
(691, 535),
(691, 536),
(691, 537),
(692, 538),
(692, 539),
(692, 540),
(692, 541),
(692, 542),
(692, 543),
(692, 544),
(692, 545),
(692, 546),
(693, 547),
(693, 548),
(693, 549),
(693, 550),
(693, 551),
(693, 552),
(693, 553),
(693, 554),
(694, 469),
(694, 555),
(694, 556),
(694, 557),
(694, 558),
(694, 559),
(694, 560),
(694, 561),
(695, 562),
(696, 563),
(697, 382),
(698, 564),
(699, 565),
(700, 566),
(701, 567),
(702, 382),
(703, 568),
(704, 569),
(705, 570),
(706, 571),
(707, 572),
(707, 573),
(707, 574),
(707, 575),
(707, 576),
(707, 577),
(707, 578),
(708, 579),
(708, 580),
(708, 581),
(708, 582),
(708, 583),
(708, 584),
(708, 585),
(708, 586),
(709, 587),
(710, 588),
(711, 589),
(712, 590),
(713, 591),
(714, 382),
(715, 592),
(716, 593),
(717, 594),
(718, 595),
(719, 596),
(720, 597),
(720, 598),
(720, 599),
(720, 600),
(720, 601),
(720, 602),
(720, 603),
(721, 604),
(721, 605),
(721, 606),
(721, 607),
(721, 608),
(721, 609),
(721, 610),
(722, 611),
(722, 612),
(722, 613),
(722, 614),
(722, 615),
(722, 616),
(723, 382),
(723, 617),
(723, 618),
(723, 619),
(723, 620),
(723, 621),
(723, 622),
(723, 623),
(723, 624),
(724, 625),
(724, 626),
(725, 627),
(725, 628),
(725, 629),
(725, 630),
(725, 631),
(725, 632),
(725, 633),
(726, 634),
(726, 635),
(726, 636),
(726, 637),
(726, 638),
(726, 639),
(726, 640),
(726, 641),
(727, 642),
(727, 643),
(727, 644),
(727, 645),
(727, 646),
(727, 647),
(727, 648),
(727, 649),
(728, 650),
(728, 651),
(728, 652),
(728, 653),
(728, 654),
(728, 655),
(728, 656),
(729, 657),
(729, 658),
(729, 659),
(729, 660),
(729, 661),
(729, 662),
(729, 663),
(729, 664),
(730, 382),
(731, 665),
(732, 345),
(733, 666),
(733, 667),
(733, 668),
(733, 669),
(733, 670),
(733, 671),
(733, 672),
(733, 673),
(733, 674),
(733, 675),
(733, 676),
(734, 677),
(734, 678),
(734, 679),
(734, 680),
(734, 681),
(734, 682),
(734, 683),
(734, 684),
(734, 685),
(734, 686),
(734, 687),
(734, 688),
(735, 666),
(735, 667),
(735, 669),
(735, 671),
(735, 673),
(736, 345),
(737, 689),
(737, 690),
(738, 646),
(738, 662),
(738, 691),
(738, 692),
(738, 693),
(738, 694),
(738, 695),
(738, 696),
(739, 586),
(739, 697),
(739, 698),
(739, 699),
(739, 700),
(739, 701),
(739, 702),
(740, 703),
(740, 704),
(740, 705),
(740, 706),
(740, 707),
(740, 708),
(740, 709),
(740, 710),
(740, 711),
(741, 635),
(741, 649),
(741, 663),
(741, 712),
(741, 713),
(741, 714),
(741, 715),
(742, 605),
(742, 607),
(742, 608),
(742, 609),
(742, 716),
(742, 717),
(742, 718),
(742, 719),
(743, 643),
(743, 644),
(743, 645),
(743, 658),
(743, 659),
(743, 660),
(743, 664),
(743, 720),
(744, 721),
(744, 722),
(744, 723),
(744, 724),
(744, 725),
(744, 726),
(744, 727),
(745, 573),
(745, 575),
(745, 576),
(745, 612),
(745, 629),
(745, 728),
(746, 604),
(746, 606),
(746, 610),
(746, 729),
(746, 730),
(746, 731),
(746, 732),
(747, 598),
(747, 653),
(747, 733),
(747, 734),
(747, 735),
(747, 736),
(748, 572),
(748, 577),
(748, 611),
(748, 627),
(748, 630),
(748, 737),
(748, 738),
(749, 642),
(749, 657),
(749, 661),
(749, 739),
(749, 740),
(749, 741),
(749, 742),
(750, 617),
(750, 619),
(750, 743),
(750, 744),
(750, 745),
(750, 746),
(750, 747),
(751, 580),
(751, 748),
(751, 749),
(751, 750),
(751, 751),
(751, 752),
(751, 753),
(752, 620),
(752, 621),
(752, 754),
(752, 755),
(752, 756),
(752, 757),
(752, 758),
(752, 759),
(753, 760),
(753, 761),
(753, 762),
(753, 763),
(753, 764),
(753, 765),
(753, 766),
(754, 598),
(754, 653),
(754, 735),
(754, 736),
(754, 767),
(754, 768),
(755, 584),
(755, 585),
(755, 769),
(755, 770),
(755, 771),
(755, 772),
(755, 773),
(756, 613),
(756, 614),
(756, 628),
(756, 633),
(756, 774),
(756, 775),
(757, 574),
(757, 615),
(757, 616),
(757, 631),
(757, 776),
(758, 651),
(758, 652),
(758, 654),
(758, 777),
(758, 778),
(758, 779),
(758, 780),
(759, 599),
(759, 600),
(759, 602),
(759, 603),
(759, 781),
(759, 782),
(759, 783),
(760, 784),
(760, 785),
(760, 786),
(760, 787),
(760, 788),
(760, 789),
(760, 790),
(760, 791),
(761, 792),
(761, 793),
(761, 794),
(761, 795),
(761, 796),
(761, 797),
(761, 798),
(762, 799),
(762, 800),
(762, 801),
(762, 802),
(762, 803),
(762, 804),
(762, 805),
(762, 806),
(763, 807),
(763, 808),
(763, 809),
(763, 810),
(763, 811),
(763, 812),
(763, 813),
(764, 735),
(764, 762),
(764, 766),
(764, 779),
(764, 782),
(764, 783),
(764, 814),
(765, 729),
(765, 754),
(765, 755),
(765, 756),
(765, 815),
(765, 816),
(765, 817),
(766, 689),
(766, 690),
(766, 737),
(766, 738),
(766, 774),
(766, 775),
(766, 776),
(767, 818),
(767, 819),
(767, 820),
(767, 821),
(767, 822),
(767, 823),
(767, 824),
(767, 825),
(768, 716),
(768, 757),
(768, 826),
(768, 827),
(768, 828),
(768, 829),
(768, 830),
(769, 831),
(769, 832),
(769, 833),
(769, 834),
(769, 835),
(769, 836),
(769, 837),
(769, 838),
(770, 761),
(770, 762),
(770, 763),
(770, 764),
(770, 766),
(770, 839),
(770, 840),
(771, 841),
(771, 842),
(771, 843),
(771, 844),
(771, 845),
(771, 846),
(771, 847),
(771, 848),
(772, 699),
(772, 721),
(772, 748),
(772, 749),
(772, 752),
(772, 753),
(772, 769),
(772, 772),
(773, 698),
(773, 725),
(773, 727),
(773, 771),
(773, 849),
(773, 850),
(773, 851),
(773, 852),
(774, 853),
(774, 854),
(774, 855),
(774, 856),
(774, 857),
(774, 858),
(774, 859),
(775, 860),
(775, 861),
(775, 862),
(775, 863),
(775, 864),
(775, 865),
(775, 866),
(776, 345),
(777, 345),
(778, 345),
(779, 345),
(780, 867),
(780, 868),
(780, 869),
(780, 870),
(780, 871),
(781, 872),
(781, 873),
(781, 874),
(781, 875),
(781, 876),
(782, 877),
(783, 340),
(784, 878),
(784, 879),
(785, 345),
(786, 880),
(787, 881),
(788, 882),
(788, 883),
(788, 884),
(788, 885),
(788, 886),
(788, 887),
(788, 888),
(788, 889),
(788, 890),
(789, 891),
(790, 892),
(790, 893),
(791, 345),
(792, 345),
(793, 345),
(794, 345),
(795, 894),
(796, 521),
(796, 522),
(796, 895),
(796, 896),
(796, 897),
(796, 898),
(796, 899),
(796, 900),
(797, 345),
(798, 345),
(799, 345),
(800, 901),
(801, 902),
(801, 903),
(802, 345),
(803, 381),
(804, 878),
(805, 877),
(806, 904),
(806, 905),
(806, 906),
(806, 907),
(806, 908),
(807, 345),
(808, 909),
(808, 910),
(808, 911),
(808, 912),
(808, 913),
(808, 914),
(809, 915),
(809, 916),
(809, 917),
(809, 918),
(809, 919),
(810, 920),
(810, 921),
(810, 922),
(810, 923),
(810, 924),
(811, 925),
(811, 926),
(811, 927),
(811, 928),
(811, 929),
(812, 930),
(812, 931),
(812, 932),
(812, 933),
(812, 934),
(813, 935),
(813, 936),
(813, 937),
(814, 938),
(815, 939),
(816, 940),
(816, 941),
(816, 942),
(816, 943),
(816, 944),
(816, 945),
(816, 946),
(816, 947),
(816, 948),
(817, 949),
(818, 345),
(819, 345),
(820, 345),
(821, 950),
(822, 345),
(823, 345),
(824, 345),
(825, 345),
(826, 345),
(827, 364),
(827, 367),
(827, 372),
(828, 951),
(828, 952),
(829, 953),
(830, 954),
(830, 955),
(831, 364),
(832, 364),
(833, 956);

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
(592, 'Our Daily Bread 2005 Annual Edition', '', '2004', 1, 1, 0, 1, 2, 1, 0, '2025-04-02 04:14:07'),
(593, 'The Fault under Pnoys Governance', '', '2014', 1, 1, 0, 5, 2, 1, 0, '2025-04-02 04:14:07'),
(594, 'Principles of Tourism 1', '', '2014', 2, 2, 1, 4, 1, 1, 0, '2025-04-02 06:04:40'),
(595, 'Tourism and Hospitality Marketing', '', '2022', 2, 1, 1, 4, 1, 1, 0, '2025-04-02 06:04:40'),
(596, 'Principles of Tourism 2', '', '2010', 2, 2, 1, 4, 1, 1, 0, '2025-04-02 06:04:40'),
(597, 'Micro Perspective of Tourism and Hosptality', '', '2019', 1, 1, 1, 4, 1, 1, 0, '2025-04-02 06:04:40'),
(598, 'English Filipino Japanese Dictionary', '', '2019', 1, 1, 1, 4, 1, 1, 0, '2025-04-02 06:04:40'),
(599, 'Understanding Travel and Tours Essential', '', '2011', 1, 1, 1, 4, 1, 1, 0, '2025-04-02 06:04:40'),
(600, 'Selling Tourism Desinations Geography for Travel Professionals', '', '2011', 1, 1, 1, 4, 1, 1, 0, '2025-04-02 06:04:40'),
(601, 'Lonely Planet You Only Live Once 1 1st Ed: A Lifetime of Experiences for the Explorer in All of Us', '', '2016', 1, 0, 1, 4, 1, 1, 0, '2025-04-02 06:04:40'),
(602, 'Quality Service Management in Tourism and Hospitality', '', '2020', 1, 1, 1, 4, 1, 1, 0, '2025-04-02 06:04:40'),
(603, 'Room Division: Management and Control System', '', '2011', 1, 1, 1, 4, 1, 1, 0, '2025-04-02 06:04:40'),
(604, 'offlinedata', '', '2025', 1, 1, 1, 1, 1, 4, 1, '2025-04-02 07:29:49'),
(605, 'thesis', '', '2025', 1, 1, 0, 1, 4, 4, 1, '2025-04-02 07:38:52'),
(609, 'Justice, Morality, and Social Responsibilty', 'This volume of Research in Social Issues in Management critically examines theoretical underpinnings of organizational justice and corporate social responsibility by identifying motives underlying desires for justice and by considering responses to injustice. The first set of chapters explores issues of morality, emotions, and social exchange relationships. These can be seen as engines that drive reactions to organizational justice. The second set of chapters addresses injustice and recovery, the social systems surrounding justice, and the application of justice principles to organizations’ environmental and sustainability practices. A commentary chapter highlights ten themes that cross this interesting collection of paper on Justice, Morality, and Social Responsibility.', '2008', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:04'),
(610, 'Komunikasyon Sa Akademikong Filipino', 'n/a', 'n/a', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:04'),
(611, 'Ethics: Basic Concepts and Contemporary Moral Issues', 'Ethics is a study for knowledge ; but more than that, it is a way of living. Moral educators impart the knowledge in the hope that they be translated into the daily living of the individual, the learner; to transform his life from unrighteousness to righteousness; to affirm and realize the ultimate meaning of his being.', '2000', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:04'),
(612, 'Dissidente', 'n/a', '2013', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:04'),
(613, 'Knowlege, Nature, and the Good', 'Knowledge, Nature, and the Good brings together some of John Cooper’s most important works on ancient philosophy. In thirteen chapters that represent an ideal companion to the author’s influential Reason and Emotion, Cooper addresses a wide range of topics and periods—from Hippocratic medical theory and Plato’s epistemology and moral philosophy, to Aristotle’s physics and metaphysics, academic scepticism, and the cosmology, moral psychology, and ethical theory of the ancient Stoics.', '2004', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:04'),
(614, 'Philippine History and Government', 'n/a', '1998', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:04'),
(615, 'Rizal: Buhay at Katha', 'n/a', '2014', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:04'),
(616, 'Introduction to Logic', 'n/a', '1995', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:04'),
(617, 'Emilio Aguinaldo', 'The riveting life stories of our Philippine heroes can inspire children, students, and the next generation of community leaders. Share your love of history by bringing home Tahanan\'s award-winning Great Lives Library.--Publisher\'s description.', '1992', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:04'),
(618, 'Familia Sagrada', 'n/a', 'n/a', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:04'),
(619, 'Readings in Philippine History', 'n/a', '2024', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:04'),
(620, 'The Life and Works of Rizal', 'n/a', '2024', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:04'),
(621, 'General Psychology', 'n/a', '1995', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:04'),
(622, 'The Humanities Revised Edition', 'n/a', '2003', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:04'),
(623, 'Ethics', 'n/a', '2024', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:04'),
(624, 'Readings in the Introduction to Philosophy', 'n/a', '1993', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:04'),
(625, 'Religion, Religious Experiences, and Spirituality', 'n/a', '2024', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:04'),
(626, 'PSYCHOLOGY: Knowledge Application And Beyond', 'n/a', '2012', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:04'),
(627, 'Exceptional Psychology (with Questions and Answers)', 'n/a', '1999', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:04'),
(628, 'Industrial Psychology', 'n/a', '1980', 2, 2, 1, 1, 1, 1, 0, '2025-04-03 03:17:05'),
(629, 'Motivation and Personality (Third Edition)', 'n/a', '1987', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:05'),
(630, 'Educational Psychology', 'n/a', '1970', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:05'),
(631, 'Reading in General Psychology', 'n/a', '1999', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:05'),
(632, 'General Psychology Second Edition', 'n/a', '1978', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:05'),
(633, 'In Conflict And Order: Understanding Society (Fifth Edition)', 'n/a', '1991', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:05'),
(634, 'Naning:Mariano Ponce 150th Birth Anniversary Commemorative Lectures and Selected Articles from La Solidaridad', 'n/a', '2013', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:05'),
(635, 'Sociology Focus On The Philippines', 'n/a', '2005', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:05'),
(636, 'Sociology In The New Philippine Setting', 'n/a', '1977', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:05'),
(637, 'Fundamentals of World Geography', 'n/a', 'n/a', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:05'),
(638, 'General Sociology Focus on the Philippines Second Edition', 'n/a', '1984', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:05'),
(639, 'Anthropology: Decisions, Adaptation, and Evolution', 'n/a', '1980', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:05'),
(640, 'Population Education Revised Edition', 'n/a', '1983', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:05'),
(641, 'Introductory Sociology for Science and Technology (Revised Edition 2009)', 'n/a', '1995', 2, 2, 1, 1, 1, 1, 0, '2025-04-03 03:17:05'),
(642, 'The Impact of Technology on Human Rights: Global Case-Studies', 'n/a', '1993', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:05'),
(643, 'When Parents are Friends', 'n/a', '1986', 7, 7, 1, 1, 1, 1, 0, '2025-04-03 03:17:06'),
(644, 'An Introduction to the Humanities: The Arts', 'n/a', '2010', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:06'),
(645, 'Social Problems in the West Drugs Suicide Divorce', 'n/a', '1984', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:06'),
(646, 'Introductory Sociology for Science and Technology (Revised Edition 2010)', 'n/a', '1995', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:06'),
(647, 'The Contemporary World', 'n/a', '2024', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:06'),
(648, 'Basic Facts about the United Nations', 'n/a', '1993', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:06'),
(649, 'The Constitution of the Philippines: Notes and Comments', 'n/a', '1976', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:06'),
(650, 'The Family Code of the Philippines Annotated (Fourth and Revised Edition)', 'n/a', '1993', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:06'),
(651, 'Business, Government, and Society A managerial Perspective, Text, and Cases', 'n/a', '2006', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:06'),
(652, 'Ang 1986 Konstitusyon ng Republika ng Pilipinas', 'n/a', '1986', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:06'),
(653, 'How to Establish a Democracy or Improve the One You Now Have: A Practical Guide for Developing Essential Government and Business Structures and Personal Systems of Values', 'n/a', '1993', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:06'),
(654, 'Administrative Theories and Politics: An Inquiry Into the Structure and Processes of Modern Government', 'n/a', '1972', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:06'),
(655, 'Fundamentals Of Political Science (Second Edition)', 'n/a', '2000', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:06'),
(656, 'Resource Book on Environmental Management', 'n/a', '2003', 4, 4, 1, 1, 1, 1, 0, '2025-04-03 03:17:06'),
(657, 'From Dependence to Autonomy The Development of Asian Universities', 'n/a', '1989', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:06'),
(658, 'Why America Doesn\'t Work', 'n/a', '1991', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:06'),
(659, 'The Quest for Economic Reform and Structural Transformation in the Arab Region', 'n/a', '2007', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:06'),
(660, 'The Constitution of the Republic of the Philippines with Annotations 1987 First Edition', 'n/a', '1987', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:06'),
(661, 'European Studies: New Titles and Backlist', 'n/a', '2003', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:06'),
(662, 'A Legal Arsenal for the Philippine Environment', 'n/a', '2002', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:06'),
(663, 'The Philippine Clean Water Act of 2004 (R.A. 9275): Implications to Local Government Units, Small Business Establishments, and Women', 'n/a', '2012', 1, 1, 1, 1, 1, 1, 0, '2025-04-03 03:17:06'),
(664, 'Technical Report Writing Revised Edition', 'n/a', '1997', 10, 9, 1, 2, 1, 1, 0, '2025-04-03 03:17:06'),
(665, 'Technical Writing Revised Edition', 'n/a', '1962', 1, 1, 1, 2, 1, 1, 0, '2025-04-03 03:17:06'),
(666, 'Technical Writing Organization, Form and Content Revised Edition', 'n/a', '2008', 1, 1, 1, 2, 1, 1, 0, '2025-04-03 03:17:06'),
(667, 'Form and Style: Theses, Reports, Term Papers Sixth Edition', 'n/a', '1982', 1, 1, 1, 2, 1, 1, 0, '2025-04-03 03:17:06'),
(668, 'Communication Arts II', 'n/a', '1995', 1, 1, 1, 2, 1, 1, 0, '2025-04-03 03:17:06'),
(669, 'Technical Writing Organization, Form and Content', 'n/a', '2005', 3, 3, 1, 2, 1, 1, 0, '2025-04-03 03:17:07'),
(670, '366 Days with the Lord', 'n/a', '2004', 1, 1, 1, 2, 1, 1, 0, '2025-04-03 03:17:07'),
(671, 'The Humanities in World Literature', 'n/a', '2004', 2, 2, 1, 2, 1, 1, 0, '2025-04-03 03:17:07'),
(672, 'Living Literature Beginnings', 'n/a', '1981', 1, 1, 1, 2, 1, 1, 0, '2025-04-03 03:17:07'),
(673, 'Survival English: International Communication for Professional People', 'n/a', '2004', 1, 1, 1, 2, 1, 1, 0, '2025-04-03 03:17:07'),
(674, 'Prentice Hall Literature: The American Experience', 'n/a', '1991', 1, 1, 1, 2, 1, 1, 0, '2025-04-03 03:17:07'),
(675, 'Prentice Hall Literature: Platinum', 'n/a', '1991', 1, 1, 1, 2, 1, 1, 0, '2025-04-03 03:17:07'),
(676, 'Reader\'s Digest Condensed Books Volume 1', 'n/a', '1975', 1, 1, 1, 2, 1, 1, 0, '2025-04-03 03:17:07'),
(677, 'Being and Time: A Translation of Sein and Zeit', 'n/a', '1996', 1, 1, 1, 2, 1, 1, 0, '2025-04-03 03:17:07'),
(678, 'Technical Report Writing Revised Edition', 'n/a', '1997', 10, 10, 1, 2, 1, 4, 1, '2025-04-03 03:19:24'),
(679, 'A Research Presented ti the Faculty od the Social Science Department Technological University of the Philippines', 'n/a', '2017', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:29'),
(680, 'The Effects of Road Reblocking in the Telecommunication Industry', 'n/a', '2016', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:29'),
(681, 'The Implementation of Quezon City Ordinance No. SP 2501, S-2016 (Anti-Catcalling Ordinance): An Assessment', 'n/a', '2017', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:29'),
(682, 'Implementation of Martial Law in the Philippines: An Assessment', 'n/a', '2017', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:29'),
(683, 'An Assessment on the Implementation of K to 12 Education Program: A Technological University of the Philippines Experience', 'n/a', '2017', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:29'),
(684, 'Compilation Of Oral Reports In Production Management', 'n/a', '2008', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:29'),
(685, 'The Implementation of Total Productive Maintenance Program: A Semiconductor Company Experience', 'n/a', '2016', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:29'),
(686, 'Tattos and Piercing in the Medical Field: An Assessment', 'n/a', '2016', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:29'),
(687, 'Home-Based Employment: A National Capitol Region Experience', 'n/a', '2018', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:30'),
(688, 'An Assessment Of The Social Science Program Offered At Tup: Basis For Effective Management Of A Curricular Program', 'n/a', '2014', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:30'),
(689, 'Level of Implementation of Personal Protective Equipment (PPE) of Holcim Philippines: An Assessment', 'n/a', '2015', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:30'),
(690, 'TUP.ACAPEDIA.PH: An e-Learning System', 'n/a', '2006', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:30'),
(691, 'The Implementation of Manila Ordinance No. 8336 Truck Ban Ordinance: An Assessment', 'n/a', '2015', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:30'),
(692, 'The Effects Of Hypercompetition To Employees\' Morale', 'n/a', '2015', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:30'),
(693, 'The Effects Of Job Performance To Work Behavior: The Automotive Technicians\' Experience', 'n/a', '42278', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:30'),
(694, 'Management Skills & Management Styles Industrial Organization and Management', 'n/a', '2015', 2, 2, 0, 1, 4, 1, 0, '2025-04-03 14:44:30'),
(695, 'The Privatization Of The Philippine National Bank', 'n/a', '2004', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:30'),
(696, 'Performance Of The Philippine Aviation Industry: Basis For Policy Direction', 'n/a', '2004', 3, 3, 0, 1, 4, 1, 0, '2025-04-03 14:44:30'),
(697, 'Business Finance Written Report SY 2014-2015', 'n/a', '2015', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:30'),
(698, 'Predictors Of Safety Awareness Of Ship Personnel And Passengers In The Philippine Domestic Trade: Directions For Policy Action', 'n/a', '2004', 2, 2, 0, 1, 4, 1, 0, '2025-04-03 14:44:30'),
(699, 'Social Power And Politics That Influence Organization Development Of Pamantasan Ng Lungsod Ng Muntinlupa: Implications For Policy Direction', 'n/a', '2004', 3, 3, 0, 1, 4, 1, 0, '2025-04-03 14:44:30'),
(700, 'Performance Of Selected Domestic Shipping Companies, Fiscal Year 2002-2003: An Assessment', 'n/a', '2004', 4, 4, 0, 1, 4, 1, 0, '2025-04-03 14:44:30'),
(701, 'Servant-Leadership And Work Commitment: Inputs For Building A New Public Service Concept', 'n/a', '2005', 3, 3, 0, 1, 4, 1, 0, '2025-04-03 14:44:31'),
(702, 'Planning Aspects And Organizational Effectiveness Of Faculties Of Management Science Of Rajabhat Institutes (Universities) In The Central, Eastern, And Northeastern Thailand', 'n/a', '2006', 2, 2, 0, 1, 4, 1, 0, '2025-04-03 14:44:31'),
(703, 'Management Effectiveness Of Selected Barangays In The First Congressional District Of Rizal', 'n/a', '2006', 3, 3, 0, 1, 4, 1, 0, '2025-04-03 14:44:31'),
(704, 'Collection and Disposal of Used Lubricants: Model for Environmental Management', 'n/a', '2002', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:31'),
(705, 'The Effectiveness of Database Management System in Selected Learning Institutions in Metro Manila', 'n/a', '2005', 2, 2, 0, 1, 4, 1, 0, '2025-04-03 14:44:31'),
(706, 'Organizational Culture: Its Influence on Level of Job Satisfaction and Effectiveness of Faculty Members in Selected Educational Institutions in Metro Manila', 'n/a', '2005', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:31'),
(707, 'SOFT DELIGHT \"Have a Soft Delight Experience\"', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:31'),
(708, 'Veggies Scream Veggiesk, I Scream!', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:31'),
(709, 'Determinants Of Performance Management Effectiveness Of Research And Development Institutes Of The Department Of Science And Technology', 'n/a', '37681', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:31'),
(710, 'Performance Of The Philippine Aviation Industry: Basis For Policy Direction', 'n/a', '38018', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:31'),
(711, 'Performance Of Selected Cold Storage Establishment In Metro Manila: Basis For Policy Development', 'n/a', '38047', 2, 2, 0, 1, 4, 1, 0, '2025-04-03 14:44:31'),
(712, 'The Privatization Of The Philippine National Bank', 'n/a', '38048', 2, 2, 0, 1, 4, 1, 0, '2025-04-03 14:44:31'),
(713, 'Effectiveness Of Hotel And Restaurant Management Program In Selected Schools In Northern Metro Manila: Inputs To Total Quality Management', 'n/a', '2004', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:31'),
(714, 'The Productivity Of Selected Steel Rolling Malls In Thailand: Input For Technology Management', 'n/a', '38048', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:31'),
(715, 'The Effectiveness Of Campus Security And Safety Management In Selected Learning Institutions In Metro Manila', 'n/a', '38018', 2, 2, 0, 1, 4, 1, 0, '2025-04-03 14:44:31'),
(716, 'Planning Aspects And Organizational Effectiveness Of Facilities Of Management Science Of Rajabhat Institutes (Universities) In The Central, Eastern, And Northeastern Thailand', 'n/a', '38777', 2, 2, 0, 1, 4, 1, 0, '2025-04-03 14:44:31'),
(717, 'Commitment, Work And Organization Values Of Selected Lay Leaders And Their Impact On The Work Performance In The Archdioceses In Metro Manila', 'n/a', '38777', 3, 3, 0, 1, 4, 1, 0, '2025-04-03 14:44:31'),
(718, 'Management Effectiveness Of Selected Barangays In The First Congressional District Of Rizal', 'n/a', '38777', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:31'),
(719, 'Acceptability Of The National Service Training Program In Selected Institutions In The National Capital Region: Inputs To Strengthen Policy Implementation', 'n/a', '38108', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:31'),
(720, 'SEAWHARMA LE DELICE \"Experience the Sea in a Wrap\"', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:31'),
(721, 'TOT BAG \"Tot bag, your thoughts in the bag\"', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:31'),
(722, 'KKK MOCHI: Sweet and Healthy Rice Cake', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:31'),
(723, 'BLUEMACK BURGER \'Every Bite, You Feel Delight\'', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:31'),
(724, 'HUNGER BUSTER: TRADITIONAL FILIPINO INSTANT FOOD \"MURDERING YOUR HUNGER\"', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:32'),
(725, 'SPLATTY BURGER \"Meaty goodness from the tree of life\"', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:32'),
(726, 'AFTER MEAL ICE CREAM \"We\'ll complete your meal today\"', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:32'),
(727, 'NYMPHAEA \"Tote Full of Pockets\"', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:32'),
(728, 'QUENCHED \"Have it all without alcohol\"', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:32'),
(729, 'HIMAGAS BITES Taste the Filipino Delicacy with just one BITE!', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:32'),
(730, 'A COMPILATION REPORT', 'n/a', '2013', 2, 2, 0, 1, 4, 1, 0, '2025-04-03 14:44:32'),
(731, 'The Sources of Students\' Misery', 'n/a', '2014', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:32'),
(732, 'A Documentation for Educational Plant Tour at Gardenia Bakeries Inc. in Biñan, Laguna', 'n/a', '2012', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:32'),
(733, 'Job Qualification and Demographic Factors to Employees Productivity', 'n/a', '2012', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:32'),
(734, 'Relationship Between Socio Demographic and Professional Growth of the Employees', 'n/a', '2012', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:32'),
(735, 'Safety Operation Program', 'n/a', '2012', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:32'),
(736, 'Compilation of Reports in IM11 (ENVIRONMENTAL MANAGEMENT)', 'n/a', '2012', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:32'),
(737, 'House of Crayfish: We Grow. We Breed. We Share', 'n/a', '2024', 2, 2, 0, 1, 4, 1, 0, '2025-04-03 14:44:32'),
(738, 'CHICK BONED: Skin the Bone, Savor the Flavor', 'n/a', '2024', 2, 2, 0, 1, 4, 1, 0, '2025-04-03 14:44:32'),
(739, 'SABUCHI \"A Twist of Banana in Every Bite\"', 'n/a', '2024', 2, 2, 0, 1, 4, 1, 0, '2025-04-03 14:44:32'),
(740, 'VIAJE RETRATO Gunitain at Marahuyo sa Nakaraan', 'n/a', '2023', 2, 2, 0, 1, 4, 1, 0, '2025-04-03 14:44:33'),
(741, 'THE SCRAMBLE SPOT: Beat the Heat with ICe Scramble\'s Sweet Retreat!', 'n/a', '2024', 2, 2, 0, 1, 4, 1, 0, '2025-04-03 14:44:33'),
(742, 'SEOULFUL BOWL \"All in one bowl\"', 'n/a', '2024', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:33'),
(743, 'MIX & MUNCH Bursts in your mouth, Melts in your heart', 'n/a', '2024', 2, 2, 0, 1, 4, 1, 0, '2025-04-03 14:44:33'),
(744, '\"SIDE-BITE-SIDE\" Your wich is my command', 'n/a', '2024', 2, 2, 0, 1, 4, 1, 0, '2025-04-03 14:44:33'),
(745, 'DUOCAFE \"Hey! Doughnut Worry, Grab a Coffee\"', 'n/a', '2024', 2, 2, 0, 1, 4, 1, 0, '2025-04-03 14:44:33'),
(746, '3', 'n/a', '2024', 2, 2, 0, 1, 4, 1, 0, '2025-04-03 14:44:33'),
(747, 'THIRSTDAY FRYDAY \"Fill your thirst, Satisfy your Hunger\"', 'n/a', '2024', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:33'),
(748, 'DON KATSU THE MASTER OF GOOD FOOD', 'n/a', '2024', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:33'),
(749, 'OVERSTUFFEDWICH \"Overloaded, fully loaded\"', 'n/a', '2024', 2, 2, 0, 1, 4, 1, 0, '2025-04-03 14:44:33'),
(750, 'D & F \"Tiny treats, Big delight\"', 'n/a', '2024', 2, 2, 0, 15, 4, 1, 0, '2025-04-03 14:44:33'),
(751, 'NutriCHEWS A healthy sweet, without the guilt', 'n/a', '2024', 2, 2, 0, 15, 4, 1, 0, '2025-04-03 14:44:33'),
(752, 'ARTE ADORN \"Charm your Moment\".', 'n/a', '2024', 2, 2, 0, 15, 4, 1, 0, '2025-04-03 14:44:33'),
(753, 'CHICK N\' POP A BENTO CHICKEN LOLLIPOP \"Taking Chicken to a New-Dip Level!', 'n/a', '2024', 1, 1, 0, 15, 4, 1, 0, '2025-04-03 14:44:33'),
(754, 'THRISTDAY FRYDAY \"Fill your Thirst, Satisfy your Hunger\"', 'n/a', '2024', 1, 1, 0, 15, 4, 1, 0, '2025-04-03 14:44:33'),
(755, 'SHAWARMA DYNASTY \"Two worlds, one bowl\"', 'n/a', '2024', 2, 2, 0, 15, 4, 1, 0, '2025-04-03 14:44:34'),
(756, 'FRIT O\'s Sweet but Fried!', 'n/a', '2024', 2, 2, 0, 15, 4, 1, 0, '2025-04-03 14:44:34'),
(757, 'SOY BLISS \"Taho-licious Creations Await!\"', 'n/a', '2024', 2, 2, 0, 15, 4, 1, 0, '2025-04-03 14:44:34'),
(758, 'PURPLE AVENUE Bite into purple pleasure', 'n/a', '2024', 2, 2, 0, 15, 4, 1, 0, '2025-04-03 14:44:34'),
(759, 'CHIMCKEN WONDERS Savor The Extraordinary', 'n/a', '2024', 2, 2, 0, 15, 4, 1, 0, '2025-04-03 14:44:34'),
(760, 'BREWEDtrip I\'ve BEAN there!', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:34'),
(761, 'Plus Love (+LOVE)', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:34'),
(762, 'ENCHANTED SEIFE brings out the soapi-est and aro-mantic in you', 'n/a', '2023', 1, 1, 0, 15, 4, 1, 0, '2025-04-03 14:44:34'),
(763, 'Solatium cafe and bar \"find solace in the metropolis\"', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:34'),
(764, 'Coltelleria It is more than just a spoon, it\'s an EDIBLE spoon!', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:34'),
(765, 'Eatensils \"Utensils like never before!\"', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:34'),
(766, 'Pomosquiller \"A Mist of Protection\"', 'n/a', '2023', 1, 1, 0, 1, 4, 1, 0, '2025-04-03 14:44:35'),
(767, 'AP LI KA BL: Socks for all weather, make your feet feel better', 'n/a', '2023', 1, 1, 0, 15, 4, 1, 0, '2025-04-03 14:44:35'),
(768, 'AlcoCream \"In every sip and lick, there\'s a kick\"', 'n/a', '2023', 1, 1, 0, 15, 4, 1, 0, '2025-04-03 14:44:35'),
(769, 'SHANGHEY ON THE WAY Shanghai na tapat, sharap buhay lahat', 'n/a', '2023', 1, 1, 0, 15, 4, 1, 0, '2025-04-03 14:44:35'),
(770, 'CHICK N\' POP A BENTO CHICKEN LOLLIPOP \"Taking Chicken to a New-Dip Level!\"', 'n/a', '2024', 1, 1, 0, 15, 4, 1, 0, '2025-04-03 14:44:35'),
(771, 'FINTA COSMETICS Where LIPS meets ART', 'n/a', '2023', 1, 1, 0, 15, 4, 1, 0, '2025-04-03 14:44:35'),
(772, 'DALISAY: A COCONUT-BASED ENERGY DRINK \"Go logo for coco\"', 'n/a', '2023', 1, 1, 0, 15, 4, 1, 0, '2025-04-03 14:44:35'),
(773, 'SHAWarma Boulevard \"Make it, Have it\"', 'n/a', '2023', 1, 1, 0, 15, 4, 1, 0, '2025-04-03 14:44:35'),
(774, 'CAFICA Make it yours', 'n/a', '2023', 1, 1, 0, 15, 4, 1, 0, '2025-04-03 14:44:35'),
(775, 'INKTURE', 'n/a', '2023', 1, 1, 0, 15, 4, 1, 0, '2025-04-03 14:44:35'),
(776, 'COMPILATION OF SUPERVISED INDUSTRIAL TRAINING (SIT) PROGRAM NARRATIVE REPORT OF BAM-IM4LD Part 1', 'n/a', '43160', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:35'),
(777, 'COMPILATION OF SUPERVISED INDUSTRIAL TRAINING (SIT) PROGRAM NARRATIVE REPORT OF BAM-IM4LD Part 2', 'n/a', '43160', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:35'),
(778, 'Compilation of Supervised Industrial Training (SIT) Program Narrative Report of BAM-IM 4LE', 'n/a', '43160', 2, 2, 0, 5, 4, 1, 0, '2025-04-03 15:00:35'),
(779, 'Classroom Facilities and Student\'s Classroom Performance: An Impact Analysis', 'n/a', '42644', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:35'),
(780, 'Bicolano Delights: A Collection of Traditional Recipes A Guide to Culinary Heritage of Albay, Bicol', 'n/a', '42644', 2, 2, 0, 5, 4, 1, 0, '2025-04-03 15:00:35'),
(781, 'Proposed Marketing Strategy Plan', 'n/a', '42644', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:35'),
(782, 'Chicken Now All-new recipes All-new flavours', 'n/a', '39203', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:35'),
(783, 'Tourism Impacts And Sustainability', 'n/a', '43009', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:36'),
(784, 'Commercial Baking with Entrepreneurship (Revised Edition)', 'n/a', '2022', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:36'),
(785, 'Philippine Journal Of Industrial Education & Technology', 'n/a', 'January-December 200', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:36'),
(786, 'Laboratory Manual in Culinary Arts 1', 'n/a', 'January-December 200', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:36'),
(787, 'Fundamentals In Lodging Operations', 'n/a', '44805', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:36'),
(788, 'Technological University of the Philippines: Factors Affecting the Employability of the TUP-CIT Graduates from the year 2005-2009', 'n/a', '40817', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:36'),
(789, 'Technological University of the Philippines: Sining Ng Pakikipagtalastasan para sa Teknikong Mag-aaral', 'n/a', 'May  4, 1990', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:36'),
(790, 'Chapters 1-4 Economics (16th Edition)', 'n/a', '40817', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:36'),
(791, 'Technological University of the Philippines: Advancing Science and Technology for a Globally-Competitive University', 'n/a', '2004', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:36'),
(792, 'Mentoring With Care In the Workplace', 'n/a', '2002', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:36'),
(793, 'Technological University of the Philippines: Annual Report S.Y. 2000-2001', 'n/a', '2001', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:36'),
(794, 'Technological University of the Philippines Annual Report 2001', 'n/a', '2001', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:36'),
(795, 'Supervised Industrial Training Manual', 'n/a', '2001', 3, 3, 0, 5, 4, 1, 0, '2025-04-03 15:00:36'),
(796, 'Student Attitude And Peer Relationship', 'n/a', '41939', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:36'),
(797, 'The Implementation of Manila Ordinance No. 8046 \"Barangay Curfew Hours\": An Assessment', 'n/a', '42644', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:37'),
(798, 'The Effects of Marketing Strategies of Small Business Carts To the Buying-Behavior of Consumers', 'n/a', '40836', 2, 2, 0, 5, 4, 1, 0, '2025-04-03 15:00:37'),
(799, 'The Relationship between Sources of Information and Degree of Dissemination', 'n/a', '40836', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:37'),
(800, 'Production/Operations Management 5th Edition', 'n/a', '1996', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:37'),
(801, 'Marketing Management', 'n/a', '2012', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:37'),
(802, 'Philippine Jornal if Industrial Education and Technology', 'n/a', '2006', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:37'),
(803, 'Human Factors in Engineering and Design 4th Edition', 'n/a', '1976', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:37'),
(804, 'Commercial Baking with Entrepreneurship', 'n/a', '2002', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:37'),
(805, 'Chicken Now', 'n/a', '2007', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:37'),
(806, 'Analysis of Black Drip Cafe Using 8 P\'s Marketing Mix: Basis for Marketing Improvement Plan', 'n/a', '2007', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:37'),
(807, 'S.A.L.T TOWARDS PERFORMANCE: EFFECTS OF RESTAURANT SPATIAL LAYOUT, AMBIANCE, LIGHTING, AND THEME ON EMPLOYEE PERFORMANCE', 'n/a', '2023', 2, 2, 0, 5, 4, 1, 0, '2025-04-03 15:00:37'),
(808, 'Proposed Marketing Plan', 'n/a', '45231', 2, 2, 0, 5, 4, 1, 0, '2025-04-03 15:00:37'),
(809, 'Proposed Process Improvement Plan', 'n/a', '45231', 2, 2, 0, 5, 4, 1, 0, '2025-04-03 15:00:37'),
(810, 'Proposed Sustainable Food Waste Practices Plan', 'n/a', '2024', 2, 2, 0, 5, 4, 1, 0, '2025-04-03 15:00:37'),
(811, '2', 'n/a', '2024', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:37'),
(812, 'Restaurants Food Waste Management System Towards Sustainable Value', 'n/a', '45292', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:37'),
(813, 'Fundamentals Of Nutrition For HRM Students', 'n/a', '45292', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:37'),
(814, 'The Second 100 Japanese Kanji', 'n/a', '2009', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:38'),
(815, 'Food and beverage service', 'n/a', '2009', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:38'),
(816, 'Bachelor of Science in Hospitality Management', 'n/a', '2009', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:38'),
(817, 'A Business Proposal on Free Spirit Co.', 'n/a', '41913', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:38'),
(818, 'Analysis of ASEAN Guidelines on Food Safety Knowledge and Handling Practices in Selected Casual Dining Restaurants in Metro Manila: Basis for an Improved Operational Plan', 'n/a', '41913', 2, 2, 0, 5, 4, 1, 0, '2025-04-03 15:00:38'),
(819, 'Revitalizing & Regenerating in the New Normal: Taking Advantage of the New Possibilities for the Hospitality & Tourism Industry in the New Normal', 'n/a', '2021', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:38'),
(820, 'Academic Conference \"Unleashing Student\'s Competence Through Hospitality Research, Sustainability, and Innovation\"', 'n/a', '2021', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:38'),
(821, 'Food and Beverage: Management and Cost Control', 'n/a', '2004', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:38'),
(822, 'The Complete Househol Organizer', 'n/a', '2006', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:38'),
(823, 'Korean Intangible Cultural Properties', 'n/a', '2001', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:38'),
(824, 'Manual on Purchasing and Ware Housing', 'n/a', '2001', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:38'),
(825, 'The Only Basic English Grammar in Korea', 'n/a', '2001', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:38'),
(826, 'English Theme Reading', 'n/a', '2003', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:38'),
(827, 'Organization And Management Theories And Behavior 2024 Edition', 'n/a', '2024', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:38'),
(828, 'STILL MORE GAMES TRAINERS PLAY Experiential Learning Exercises', 'n/a', '1991', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:38'),
(829, 'Feast By Firelight', 'n/a', '2018', 2, 2, 0, 5, 4, 1, 0, '2025-04-03 15:00:38'),
(830, 'An Introduction to the Study of Social Philosophy', 'n/a', '2001', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:38'),
(831, 'Human Resource Management', 'n/a', '2024', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:38'),
(832, 'Qualitative Research 2024 Edition', 'n/a', '2024', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:38'),
(833, 'Why People Buy Things They Don\'t Need', 'n/a', '2004', 1, 1, 0, 5, 4, 1, 0, '2025-04-03 15:00:38');

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
(44, 605, 35),
(45, 679, 36),
(46, 680, 36),
(47, 681, 36),
(48, 682, 36),
(49, 683, 36),
(50, 684, 37),
(51, 685, 36),
(52, 686, 36),
(53, 687, 36),
(54, 688, 38),
(55, 689, 39),
(56, 690, 40),
(57, 691, 39),
(58, 692, 41),
(59, 693, 36),
(60, 694, 42),
(61, 695, 43),
(62, 696, 44),
(63, 697, 45),
(64, 698, 46),
(65, 699, 47),
(66, 700, 48),
(67, 701, 49),
(68, 702, 50),
(69, 703, 51),
(70, 704, 52),
(71, 705, 53),
(72, 706, 54),
(73, 707, 55),
(74, 708, 55),
(75, 709, 56),
(76, 710, 57),
(77, 711, 57),
(78, 712, 58),
(79, 713, 59),
(80, 714, 60),
(81, 715, 61),
(82, 716, 62),
(83, 717, 63),
(84, 718, 56),
(85, 719, 59),
(86, 720, 55),
(87, 721, 55),
(88, 722, 55),
(89, 723, 55),
(90, 724, 55),
(91, 725, 55),
(92, 726, 55),
(93, 727, 55),
(94, 728, 55),
(95, 729, 55),
(96, 730, 64),
(97, 731, 64),
(98, 732, 65),
(99, 733, 66),
(100, 734, 66),
(101, 735, 67),
(102, 736, 68),
(103, 737, 69),
(104, 738, 69),
(105, 739, 69),
(106, 740, 69),
(107, 741, 69),
(108, 742, 69),
(109, 743, 69),
(110, 744, 69),
(111, 745, 69),
(112, 746, 69),
(113, 747, 69),
(114, 748, 69),
(115, 749, 69),
(116, 750, 69),
(117, 751, 69),
(118, 752, 69),
(119, 753, 69),
(120, 754, 69),
(121, 755, 69),
(122, 756, 69),
(123, 757, 69),
(124, 758, 69),
(125, 759, 69),
(126, 760, 69),
(127, 761, 70),
(128, 762, 69),
(129, 763, 69),
(130, 764, 69),
(131, 765, 69),
(132, 766, 69),
(133, 767, 69),
(134, 768, 69),
(135, 769, 69),
(136, 770, 69),
(137, 771, 69),
(138, 772, 69),
(139, 773, 69),
(140, 774, 69),
(141, 775, 69),
(142, 776, 66),
(143, 777, 66),
(144, 778, 66),
(145, 779, 66),
(146, 780, 66),
(147, 781, 66),
(148, 782, 66),
(149, 783, 66),
(150, 784, 66),
(151, 785, 66),
(152, 786, 66),
(153, 787, 66),
(154, 788, 66),
(155, 789, 66),
(156, 790, 66),
(157, 791, 66),
(158, 792, 66),
(159, 793, 66),
(160, 794, 66),
(161, 795, 66),
(162, 796, 66),
(163, 797, 66),
(164, 798, 66),
(165, 799, 66),
(166, 800, 66),
(167, 801, 66),
(168, 802, 66),
(169, 803, 66),
(170, 804, 66),
(171, 805, 66),
(172, 806, 66),
(173, 807, 66),
(174, 808, 66),
(175, 809, 66),
(176, 810, 66),
(177, 811, 66),
(178, 812, 66),
(179, 813, 66),
(180, 814, 66),
(181, 815, 66),
(182, 816, 66),
(183, 817, 66),
(184, 818, 66),
(185, 819, 66),
(186, 820, 66),
(187, 821, 66),
(188, 822, 66),
(189, 823, 66),
(190, 824, 66),
(191, 825, 66),
(192, 826, 66),
(193, 827, 66),
(194, 828, 66),
(195, 829, 66),
(196, 830, 66),
(197, 831, 66),
(198, 832, 66),
(199, 833, 66);

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
  MODIFY `adviser_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `audit_log`
--
ALTER TABLE `audit_log`
  MODIFY `audit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=901;

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
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=369;

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
  MODIFY `patron_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `pub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

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
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `resource_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=834;

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
  MODIFY `thesis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

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
