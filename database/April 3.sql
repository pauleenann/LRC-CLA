-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2025 at 11:44 AM
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
(35, 'Pauleen Ann', 'Dingcong');

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
(739, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-04-03 09:39:43');

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
(460, 'Stambaugh', 'Joan');

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
(103, '2025-04-03', '2025-04-10', 595, 327, 'borrowed'),
(104, '2025-04-03', '2025-04-10', 664, 339, 'borrowed');

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
(15, 'Entrepreneurship and Management', '10'),
(16, 'sample', '1'),
(17, 'sasas', '1'),
(18, 'sample2', '2');

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
(9, 'dasd', 'dsad', 1, 1, 11, '2025-04-03', '2025-04-03', '2025-04-03 06:01:11', '/public/reports/dasd_2025-04-03_14-01-11.xlsx', 0),
(10, 'sa', 'sa', 2, 17, 11, '2025-04-03', '2025-04-03', '2025-04-03 06:12:08', '/public/reports/sa_2025-04-03_14-12-08.xlsx', 1);

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
(678, 440);

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
(595, 'Tourism and Hospitality Marketing', '', '2022', 2, 0, 1, 4, 1, 1, 0, '2025-04-02 06:04:40'),
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
(678, 'Technical Report Writing Revised Edition', 'n/a', '1997', 10, 10, 1, 2, 1, 4, 1, '2025-04-03 03:19:24');

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
(44, 605, 35);

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
  MODIFY `adviser_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `audit_log`
--
ALTER TABLE `audit_log`
  MODIFY `audit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=740;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=461;

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
  MODIFY `checkin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `checkout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

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
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `resource_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=679;

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
  MODIFY `thesis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

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
