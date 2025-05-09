-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2025 at 07:26 AM
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
(99, 'n/a', 'n/a');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `att_id` int(11) NOT NULL,
  `att_log_in_time` time DEFAULT curtime(),
  `att_date` date DEFAULT curdate(),
  `patron_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`att_id`, `att_log_in_time`, `att_date`, `patron_id`) VALUES
(378, '13:20:46', '2025-05-09', 369);

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
(1387, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'sample\'\"', '2025-05-07 17:51:25'),
(1388, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'sample2\'\"', '2025-05-07 17:53:24'),
(1389, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'sample2\'\"', '2025-05-07 18:01:18'),
(1390, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'sample\'\"', '2025-05-07 18:03:44'),
(1391, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'sample3\'\"', '2025-05-07 18:04:52'),
(1392, 'admin', 'UPDATE', 'resources', '1030', '{\"resource_id\":1030,\"resource_title\":\"sample3\",\"resource_description\":\"\",\"resource_published_date\":\"2002\",\"original_resource_quantity\":3,\"resource_quantity\":3,\"dept_id\":3,\"type_id\":1,\"timestamp\":\"2025-05-07T18:04:52.000Z\"}', '\"Edited a resource: \'sample3 edited\'\"', '2025-05-08 03:52:06'),
(1393, 'admin', 'UPDATE', 'resources', '1030', '{\"resource_id\":1030,\"resource_title\":\"sample3 edited\",\"resource_description\":\"\",\"resource_published_date\":\"2002\",\"original_resource_quantity\":3,\"resource_quantity\":3,\"dept_id\":3,\"type_id\":1,\"timestamp\":\"2025-05-07T18:04:52.000Z\"}', '\"Edited a resource: \'sample3 edited\'\"', '2025-05-08 03:52:52'),
(1394, 'admin', 'UPDATE', 'resources', '1030', '{\"resource_id\":1030,\"resource_title\":\"sample3 edited\",\"resource_description\":\"description\",\"resource_published_date\":\"2002\",\"original_resource_quantity\":3,\"resource_quantity\":3,\"dept_id\":3,\"type_id\":1,\"timestamp\":\"2025-05-07T18:04:52.000Z\"}', '\"Edited a resource: \'sample3 edited\'\"', '2025-05-08 03:56:44'),
(1395, 'admin', 'UPDATE', 'resources', '1030', '{\"resource_id\":1030,\"resource_title\":\"sample3 edited\",\"resource_description\":\"description\",\"resource_published_date\":\"2002\",\"original_resource_quantity\":3,\"resource_quantity\":3,\"dept_id\":3,\"type_id\":1,\"timestamp\":\"2025-05-07T18:04:52.000Z\"}', '\"Edited a resource: \'sample3 edited\'\"', '2025-05-08 03:58:33'),
(1396, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'sample4\'\"', '2025-05-08 04:01:22'),
(1397, 'admin', 'UPDATE', 'resources', '1031', '{\"resource_id\":1031,\"resource_title\":\"sample4\",\"resource_description\":\"\",\"resource_published_date\":\"2002\",\"original_resource_quantity\":1,\"resource_quantity\":1,\"dept_id\":4,\"type_id\":1,\"timestamp\":\"2025-05-08T04:01:22.000Z\"}', '\"Edited a resource: \'sample4\'\"', '2025-05-08 04:04:11'),
(1398, 'admin', 'UPDATE', 'resources', '1031', '{\"resource_id\":1031,\"resource_title\":\"sample4\",\"resource_description\":\"\",\"resource_published_date\":\"2002\",\"original_resource_quantity\":1,\"resource_quantity\":1,\"dept_id\":4,\"type_id\":1,\"timestamp\":\"2025-05-08T04:01:22.000Z\"}', '\"Edited a resource: \'sample4\'\"', '2025-05-08 04:04:23'),
(1399, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'sample5\'\"', '2025-05-08 05:02:32'),
(1400, 'admin', 'UPDATE', 'resources', '1032', 'Unarchived', '\"Changed archive status to: Archived\"', '2025-05-08 05:24:56'),
(1401, 'admin', 'UPDATE', 'resources', '1030', 'Unarchived', '\"Changed archive status to: Archived\"', '2025-05-08 05:25:14'),
(1402, 'admin', 'UPDATE', 'resources', '1032', 'Archived', '\"Changed archive status to: Unarchived\"', '2025-05-08 05:26:48'),
(1403, 'admin', 'UPDATE', 'resources', '1030', 'Archived', '\"Changed archive status to: Unarchived\"', '2025-05-08 05:26:55'),
(1404, 'admin', 'UPDATE', 'resources', '1030', 'Unarchived', '\"Changed archive status to: Archived\"', '2025-05-08 05:27:33'),
(1405, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'newsletter\'\"', '2025-05-08 06:10:53'),
(1406, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'sample6\'\"', '2025-05-08 07:57:34'),
(1407, 'admin', 'INSERT', 'checkout', '1032', NULL, '\"Patron: CHRISTINE MAE Ricafrente borrowed a book: \'sample5\'\"', '2025-05-08 08:21:02'),
(1408, 'admin', 'INSERT', 'checkout', '1029', NULL, '\"Patron: CHRISTINE MAE Ricafrente borrowed a book: \'sample\'\"', '2025-05-08 08:21:45'),
(1409, 'admin', 'INSERT', 'checkout', '1029', NULL, '\"Patron: Irish Nabayra borrowed a book: \'sample\'\"', '2025-05-08 08:22:56'),
(1410, 'admin', 'INSERT', 'checkout', '1029', NULL, '\"Patron: Irish Nabayra borrowed a book: \'sample\'\"', '2025-05-08 08:25:23'),
(1411, 'admin', 'INSERT', 'checkout', '1029', NULL, '\"Patron: CHRISTINE MAE Ricafrente borrowed a book: \'sample\'\"', '2025-05-08 08:26:24'),
(1412, 'admin', 'INSERT', 'checkout', '1028', NULL, '\"Patron: Kharla Mae Celmar borrowed a book: \'sample2\'\"', '2025-05-08 08:32:09'),
(1413, 'admin', 'INSERT', 'checkout', '1028', NULL, '\"Patron: Alena Joy Torres borrowed a book: \'sample2\'\"', '2025-05-08 08:34:41'),
(1414, 'admin', 'INSERT', 'checkout', '1028', NULL, '\"Patron: Kerzlyn Alto borrowed a book: \'sample2\'\"', '2025-05-08 08:37:30'),
(1415, 'admin', 'INSERT', 'checkout', '1030', NULL, '\"Patron: Joao Ashpyr Catarungan borrowed a book: \'sample3 edited\'\"', '2025-05-08 09:16:13'),
(1416, 'admin', 'INSERT', 'checkin', '1030', NULL, '\"Patron: Joao Ashpyr Catarungan returned a book: \'sample3 edited\'\"', '2025-05-08 09:28:21'),
(1417, 'admin', 'INSERT', 'checkin', '1028', NULL, '\"Patron: Kerzlyn Alto returned a book: \'sample2\'\"', '2025-05-08 09:31:36'),
(1418, 'admin', 'INSERT', 'checkin', '1028', NULL, '\"Patron: Kharla Mae Celmar returned a book: \'sample2\'\"', '2025-05-08 09:32:59'),
(1419, 'admin', 'INSERT', 'checkout', '1028', NULL, '\"Patron: Pauleen Dingcong borrowed a book: \'sample2\'\"', '2025-05-08 09:46:06'),
(1420, 'admin', 'INSERT', 'checkin', '1028', NULL, '\"Patron: Pauleen Dingcong returned a book: \'sample2\'\"', '2025-05-08 09:46:16'),
(1421, 'admin', 'INSERT', 'checkout', '1028', NULL, '\"Patron: CHRISTINE MAE Ricafrente borrowed a book: \'sample2\'\"', '2025-05-08 09:59:49'),
(1422, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-05-09 02:46:45'),
(1423, 'admin', 'INSERT', 'resources', '1055', NULL, '\"Added a new resource: \'Principles of Tourism 1\'\"', '2025-05-09 03:32:51'),
(1424, 'admin', 'INSERT', 'resources', '1056', NULL, '\"Added a new resource: \'Tourism and Hospitality Marketing\'\"', '2025-05-09 03:32:51'),
(1425, 'admin', 'INSERT', 'resources', '1057', NULL, '\"Added a new resource: \'Principles of Tourism 2\'\"', '2025-05-09 03:32:51'),
(1426, 'admin', 'INSERT', 'resources', '1058', NULL, '\"Added a new resource: \'Micro Perspective of Tourism and Hosptality\'\"', '2025-05-09 03:32:51'),
(1427, 'admin', 'INSERT', 'resources', '1059', NULL, '\"Added a new resource: \'English Filipino Japanese Dictionary\'\"', '2025-05-09 03:32:51'),
(1428, 'admin', 'INSERT', 'resources', '1060', NULL, '\"Added a new resource: \'Understanding Travel and Tours Essential\'\"', '2025-05-09 03:32:51'),
(1429, 'admin', 'INSERT', 'resources', '1061', NULL, '\"Added a new resource: \'Selling Tourism Desinations Geography for Travel Professionals\'\"', '2025-05-09 03:32:51'),
(1430, 'admin', 'INSERT', 'resources', '1062', NULL, '\"Added a new resource: \'Lonely Planet You Only Live Once 1 1st Ed: A Lifetime of Experiences for the Explorer in All of Us\'\"', '2025-05-09 03:32:51'),
(1431, 'admin', 'INSERT', 'resources', '1063', NULL, '\"Added a new resource: \'Quality Service Management in Tourism and Hospitality\'\"', '2025-05-09 03:32:51'),
(1432, 'admin', 'INSERT', 'resources', '1064', NULL, '\"Added a new resource: \'Room Division: Management and Control System\'\"', '2025-05-09 03:32:51'),
(1433, 'admin', 'INSERT', 'resources', '1065', NULL, '\"Added a new resource: \'Principles of Tourism 1\'\"', '2025-05-09 03:38:47'),
(1434, 'admin', 'INSERT', 'resources', '1066', NULL, '\"Added a new resource: \'Tourism and Hospitality Marketing\'\"', '2025-05-09 03:38:47'),
(1435, 'admin', 'INSERT', 'resources', '1067', NULL, '\"Added a new resource: \'Principles of Tourism 2\'\"', '2025-05-09 03:38:47'),
(1436, 'admin', 'INSERT', 'resources', '1068', NULL, '\"Added a new resource: \'Micro Perspective of Tourism and Hosptality\'\"', '2025-05-09 03:38:47'),
(1437, 'admin', 'INSERT', 'resources', '1069', NULL, '\"Added a new resource: \'English Filipino Japanese Dictionary\'\"', '2025-05-09 03:38:47'),
(1438, 'admin', 'INSERT', 'resources', '1070', NULL, '\"Added a new resource: \'Understanding Travel and Tours Essential\'\"', '2025-05-09 03:38:47'),
(1439, 'admin', 'INSERT', 'resources', '1071', NULL, '\"Added a new resource: \'Selling Tourism Desinations Geography for Travel Professionals\'\"', '2025-05-09 03:38:47'),
(1440, 'admin', 'INSERT', 'resources', '1072', NULL, '\"Added a new resource: \'Lonely Planet You Only Live Once 1 1st Ed: A Lifetime of Experiences for the Explorer in All of Us\'\"', '2025-05-09 03:38:47'),
(1441, 'admin', 'INSERT', 'resources', '1073', NULL, '\"Added a new resource: \'Quality Service Management in Tourism and Hospitality\'\"', '2025-05-09 03:38:47'),
(1442, 'admin', 'INSERT', 'resources', '1074', NULL, '\"Added a new resource: \'Room Division: Management and Control System\'\"', '2025-05-09 03:38:47'),
(1443, 'admin', 'INSERT', 'resources', '1075', NULL, '\"Added a new resource: \'Food Service and Catering Management: A Practical Guide\'\"', '2025-05-09 03:39:37'),
(1444, 'admin', 'INSERT', 'resources', '1076', NULL, '\"Added a new resource: \'Food Service and Bartending Revised Edition\'\"', '2025-05-09 03:39:37'),
(1445, 'admin', 'INSERT', 'resources', '1077', NULL, '\"Added a new resource: \'Go Kamado: More Than 100 Recipes for Your Ceramic Grill\'\"', '2025-05-09 03:39:37'),
(1446, 'admin', 'INSERT', 'resources', '1078', NULL, '\"Added a new resource: \'Philippine Recipes and Other International Recipes\'\"', '2025-05-09 03:39:37'),
(1447, 'admin', 'INSERT', 'resources', '1079', NULL, '\"Added a new resource: \'A Guide to Meal Management and Table Services Revised Edition\'\"', '2025-05-09 03:39:37'),
(1448, 'admin', 'INSERT', 'resources', '1080', NULL, '\"Added a new resource: \'Food Safety, Sanitation and Hygiene\'\"', '2025-05-09 03:39:37'),
(1449, 'admin', 'INSERT', 'resources', '1081', NULL, '\"Added a new resource: \'Western Cuisine\'\"', '2025-05-09 03:39:37'),
(1450, 'admin', 'INSERT', 'resources', '1082', NULL, '\"Added a new resource: \'A Concise Guide in Food & Beverage Service Procedures 2nd Edition\'\"', '2025-05-09 03:39:37'),
(1451, 'admin', 'INSERT', 'resources', '1083', NULL, '\"Added a new resource: \'Technology and Livelihood Education: Cookery\'\"', '2025-05-09 03:39:37'),
(1452, 'admin', 'INSERT', 'resources', '1084', NULL, '\"Added a new resource: \'Principles of Bar Operations\'\"', '2025-05-09 03:39:37'),
(1453, 'admin', 'INSERT', 'resources', '1085', NULL, '\"Added a new resource: \'Introduction to Culinary Arts\'\"', '2025-05-09 03:39:37'),
(1454, 'admin', 'INSERT', 'resources', '1086', NULL, '\"Added a new resource: \'Applied FoodService Sanitaion\'\"', '2025-05-09 03:39:37'),
(1455, 'admin', 'INSERT', 'resources', '1087', NULL, '\"Added a new resource: \'The Dinah Shore American Kitchen\'\"', '2025-05-09 03:39:37'),
(1456, 'admin', 'INSERT', 'resources', '1088', NULL, '\"Added a new resource: \'Asian Cuisine\'\"', '2025-05-09 03:39:38'),
(1457, 'admin', 'INSERT', 'resources', '1089', NULL, '\"Added a new resource: \'Experience Baking\'\"', '2025-05-09 03:39:38'),
(1458, 'admin', 'INSERT', 'resources', '1090', NULL, '\"Added a new resource: \'Bar and Beverage Service\'\"', '2025-05-09 03:39:38'),
(1459, 'admin', 'INSERT', 'resources', '1091', NULL, '\"Added a new resource: \'Kitchen Essentials and Basic Food Preparation\'\"', '2025-05-09 03:39:38'),
(1460, 'admin', 'INSERT', 'resources', '1092', NULL, '\"Added a new resource: \'Modern Food Service Purchasing: A Complete Resource\'\"', '2025-05-09 03:39:38'),
(1461, 'admin', 'INSERT', 'resources', '1093', NULL, '\"Added a new resource: \'Quick and Easy Sushi Cook Book\'\"', '2025-05-09 03:39:38'),
(1462, 'admin', 'INSERT', 'resources', '1094', NULL, '\"Added a new resource: \'Restaurant and Cafeteria Management Service\'\"', '2025-05-09 03:39:38'),
(1463, 'admin', 'INSERT', 'resources', '1095', NULL, '\"Added a new resource: \'Technical-Vocational-Livelihood Home Economics: Bread & Pastry Production Manuel 1st Edition\'\"', '2025-05-09 03:39:38'),
(1464, 'admin', 'INSERT', 'resources', '1096', NULL, '\"Added a new resource: \'Basic Restaurant Service with Marking Guides\'\"', '2025-05-09 03:39:38'),
(1465, 'admin', 'INSERT', 'resources', '1097', NULL, '\"Added a new resource: \'Sain Bury\'s Healthy Eating Cook Books: Pasta, Pizzas & Pancakes\'\"', '2025-05-09 03:39:38'),
(1466, 'admin', 'INSERT', 'resources', '1098', NULL, '\"Added a new resource: \'Fundamentals of Food Service Operations\'\"', '2025-05-09 03:39:38'),
(1467, 'admin', 'INSERT', 'resources', '1099', NULL, '\"Added a new resource: \'Food Service and Management II\'\"', '2025-05-09 03:39:38'),
(1468, 'admin', 'INSERT', 'resources', '1100', NULL, '\"Added a new resource: \'A Module in FoodService and Management 3&4\'\"', '2025-05-09 03:39:38'),
(1469, 'admin', 'INSERT', 'resources', '1101', NULL, '\"Added a new resource: \'Beverage Knowledge: An Introduction to Bar Operation\'\"', '2025-05-09 03:39:38'),
(1470, 'admin', 'INSERT', 'resources', '1102', NULL, '\"Added a new resource: \'Korean Cooking for Everyone\'\"', '2025-05-09 03:39:38'),
(1471, 'admin', 'INSERT', 'resources', '1103', NULL, '\"Added a new resource: \'Paleo Cooking With Your Instant Pot: 80 Incredible Gluten- and Grain-Free Recipes Made Twice as Delicious in Half the Time\'\"', '2025-05-09 03:39:38'),
(1472, 'admin', 'INSERT', 'resources', '1104', NULL, '\"Added a new resource: \'Southern Living Comfort Food: A Delicious Trip Down Memory Lane\'\"', '2025-05-09 03:39:38'),
(1473, 'admin', 'INSERT', 'resources', '1105', NULL, '\"Added a new resource: \'Bar &  Beverag Service with Mixology 2nd Edition\'\"', '2025-05-09 03:39:38'),
(1474, 'admin', 'INSERT', 'resources', '1106', NULL, '\"Added a new resource: \'Principles of Tourism Part II (Updated version)\'\"', '2025-05-09 03:39:38'),
(1475, 'admin', 'INSERT', 'resources', '1107', NULL, '\"Added a new resource: \'Multicultural Diversity in Workplace for the Tourism Professional\'\"', '2025-05-09 03:39:38'),
(1476, 'admin', 'INSERT', 'resources', '1108', NULL, '\"Added a new resource: \'Tourism Marketing\'\"', '2025-05-09 03:39:38'),
(1477, 'admin', 'INSERT', 'resources', '1109', NULL, '\"Added a new resource: \'Supply Chain Management in Hospitakity Industry\'\"', '2025-05-09 03:39:38'),
(1478, 'admin', 'INSERT', 'resources', '1110', NULL, '\"Added a new resource: \'Introduction to Meetings, Incentives, Conferences and Events Management (MICE)\'\"', '2025-05-09 03:39:38'),
(1479, 'admin', 'INSERT', 'resources', '1111', NULL, '\"Added a new resource: \'Cost and Materials Management in the Food Service Industry\'\"', '2025-05-09 03:39:38'),
(1480, 'admin', 'INSERT', 'resources', '1112', NULL, '\"Added a new resource: \'Front Office Management and Operations\'\"', '2025-05-09 03:39:38'),
(1481, 'admin', 'INSERT', 'checkout', '1028', NULL, '\"Patron: Irish Nabayra borrowed a book: \'sample2\'\"', '2025-05-09 05:07:03'),
(1482, 'admin', 'INSERT', 'checkin', '1028', NULL, '\"Patron: Irish Nabayra returned a book: \'sample2\'\"', '2025-05-09 05:08:48'),
(1483, 'admin', 'INSERT', 'checkin', '1028', NULL, '\"Patron: CHRISTINE MAE Ricafrente returned a book: \'sample2\'\"', '2025-05-09 05:09:43'),
(1484, 'admin', 'INSERT', 'checkout', '1028', NULL, '\"Patron: Pauleen Dingcong borrowed a book: \'sample2\'\"', '2025-05-09 05:09:59'),
(1485, 'admin', 'INSERT', 'checkin', '1028', NULL, '\"Patron: Pauleen Dingcong returned a book: \'sample2\'\"', '2025-05-09 05:11:58'),
(1486, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: prof prof\"', '2025-05-09 05:15:28'),
(1487, 'admin', 'INSERT', 'patron', NULL, NULL, '\"Added new patron: prof prof\"', '2025-05-09 05:17:22'),
(1488, 'admin', 'INSERT', 'resources', '1114', NULL, '\"Added a new resource: \'COMPILATION OF SUPERVISED INDUSTRIAL TRAINING (SIT) PROGRAM NARRATIVE REPORT OF BAM-IM4LD Part 1\'\"', '2025-05-09 05:19:05'),
(1489, 'admin', 'INSERT', 'resources', '1115', NULL, '\"Added a new resource: \'COMPILATION OF SUPERVISED INDUSTRIAL TRAINING (SIT) PROGRAM NARRATIVE REPORT OF BAM-IM4LD Part 2\'\"', '2025-05-09 05:19:05'),
(1490, 'admin', 'INSERT', 'resources', '1116', NULL, '\"Added a new resource: \'Compilation of Supervised Industrial Training (SIT) Program Narrative Report of BAM-IM 4LE\'\"', '2025-05-09 05:19:05'),
(1491, 'admin', 'INSERT', 'resources', '1117', NULL, '\"Added a new resource: \'Classroom Facilities and Student\'s Classroom Performance: An Impact Analysis\'\"', '2025-05-09 05:19:05'),
(1492, 'admin', 'INSERT', 'resources', '1118', NULL, '\"Added a new resource: \'Bicolano Delights: A Collection of Traditional Recipes A Guide to Culinary Heritage of Albay, Bicol\'\"', '2025-05-09 05:19:05'),
(1493, 'admin', 'INSERT', 'resources', '1119', NULL, '\"Added a new resource: \'Proposed Marketing Strategy Plan\'\"', '2025-05-09 05:19:05'),
(1494, 'admin', 'INSERT', 'resources', '1120', NULL, '\"Added a new resource: \'Chicken Now All-new recipes All-new flavours\'\"', '2025-05-09 05:19:06'),
(1495, 'admin', 'INSERT', 'resources', '1121', NULL, '\"Added a new resource: \'Tourism Impacts And Sustainability\'\"', '2025-05-09 05:19:06'),
(1496, 'admin', 'INSERT', 'resources', '1122', NULL, '\"Added a new resource: \'Commercial Baking with Entrepreneurship (Revised Edition)\'\"', '2025-05-09 05:19:06'),
(1497, 'admin', 'INSERT', 'resources', '1123', NULL, '\"Added a new resource: \'Philippine Journal Of Industrial Education & Technology\'\"', '2025-05-09 05:19:06'),
(1498, 'admin', 'INSERT', 'resources', '1124', NULL, '\"Added a new resource: \'Laboratory Manual in Culinary Arts 1\'\"', '2025-05-09 05:19:06'),
(1499, 'admin', 'INSERT', 'resources', '1125', NULL, '\"Added a new resource: \'Fundamentals In Lodging Operations\'\"', '2025-05-09 05:19:06'),
(1500, 'admin', 'INSERT', 'resources', '1126', NULL, '\"Added a new resource: \'Technological University of the Philippines: Factors Affecting the Employability of the TUP-CIT Graduates from the year 2005-2009\'\"', '2025-05-09 05:19:06'),
(1501, 'admin', 'INSERT', 'resources', '1127', NULL, '\"Added a new resource: \'Technological University of the Philippines: Sining Ng Pakikipagtalastasan para sa Teknikong Mag-aaral\'\"', '2025-05-09 05:19:06'),
(1502, 'admin', 'INSERT', 'resources', '1128', NULL, '\"Added a new resource: \'Chapters 1-4 Economics (16th Edition)\'\"', '2025-05-09 05:19:06'),
(1503, 'admin', 'INSERT', 'resources', '1129', NULL, '\"Added a new resource: \'Technological University of the Philippines: Advancing Science and Technology for a Globally-Competitive University\'\"', '2025-05-09 05:19:06'),
(1504, 'admin', 'INSERT', 'resources', '1130', NULL, '\"Added a new resource: \'Mentoring With Care In the Workplace\'\"', '2025-05-09 05:19:06'),
(1505, 'admin', 'INSERT', 'resources', '1131', NULL, '\"Added a new resource: \'Technological University of the Philippines: Annual Report S.Y. 2000-2001\'\"', '2025-05-09 05:19:06'),
(1506, 'admin', 'INSERT', 'resources', '1132', NULL, '\"Added a new resource: \'Technological University of the Philippines Annual Report 2001\'\"', '2025-05-09 05:19:06'),
(1507, 'admin', 'INSERT', 'resources', '1133', NULL, '\"Added a new resource: \'Supervised Industrial Training Manual\'\"', '2025-05-09 05:19:06'),
(1508, 'admin', 'INSERT', 'resources', '1134', NULL, '\"Added a new resource: \'Student Attitude And Peer Relationship\'\"', '2025-05-09 05:19:06'),
(1509, 'admin', 'INSERT', 'resources', '1135', NULL, '\"Added a new resource: \'The Implementation of Manila Ordinance No. 8046 \\\"Barangay Curfew Hours\\\": An Assessment\'\"', '2025-05-09 05:19:06'),
(1510, 'admin', 'INSERT', 'resources', '1136', NULL, '\"Added a new resource: \'The Effects of Marketing Strategies of Small Business Carts To the Buying-Behavior of Consumers\'\"', '2025-05-09 05:19:06'),
(1511, 'admin', 'INSERT', 'resources', '1137', NULL, '\"Added a new resource: \'The Relationship between Sources of Information and Degree of Dissemination\'\"', '2025-05-09 05:19:06'),
(1512, 'admin', 'INSERT', 'resources', '1138', NULL, '\"Added a new resource: \'Production/Operations Management 5th Edition\'\"', '2025-05-09 05:19:06'),
(1513, 'admin', 'INSERT', 'resources', '1139', NULL, '\"Added a new resource: \'Marketing Management\'\"', '2025-05-09 05:19:06'),
(1514, 'admin', 'INSERT', 'resources', '1140', NULL, '\"Added a new resource: \'Philippine Jornal if Industrial Education and Technology\'\"', '2025-05-09 05:19:06'),
(1515, 'admin', 'INSERT', 'resources', '1141', NULL, '\"Added a new resource: \'Human Factors in Engineering and Design 4th Edition\'\"', '2025-05-09 05:19:06'),
(1516, 'admin', 'INSERT', 'resources', '1142', NULL, '\"Added a new resource: \'Commercial Baking with Entrepreneurship\'\"', '2025-05-09 05:19:06'),
(1517, 'admin', 'INSERT', 'resources', '1143', NULL, '\"Added a new resource: \'Chicken Now\'\"', '2025-05-09 05:19:06'),
(1518, 'admin', 'INSERT', 'resources', '1144', NULL, '\"Added a new resource: \'Analysis of Black Drip Cafe Using 8 P\'s Marketing Mix: Basis for Marketing Improvement Plan\'\"', '2025-05-09 05:19:06'),
(1519, 'admin', 'INSERT', 'resources', '1145', NULL, '\"Added a new resource: \'S.A.L.T TOWARDS PERFORMANCE: EFFECTS OF RESTAURANT SPATIAL LAYOUT, AMBIANCE, LIGHTING, AND THEME ON EMPLOYEE PERFORMANCE\'\"', '2025-05-09 05:19:06'),
(1520, 'admin', 'INSERT', 'resources', '1146', NULL, '\"Added a new resource: \'Proposed Marketing Plan\'\"', '2025-05-09 05:19:06'),
(1521, 'admin', 'INSERT', 'resources', '1147', NULL, '\"Added a new resource: \'Proposed Process Improvement Plan\'\"', '2025-05-09 05:19:06'),
(1522, 'admin', 'INSERT', 'resources', '1148', NULL, '\"Added a new resource: \'Proposed Sustainable Food Waste Practices Plan\'\"', '2025-05-09 05:19:06'),
(1523, 'admin', 'INSERT', 'resources', '1149', NULL, '\"Added a new resource: \'2\'\"', '2025-05-09 05:19:07'),
(1524, 'admin', 'INSERT', 'resources', '1150', NULL, '\"Added a new resource: \'Restaurants Food Waste Management System Towards Sustainable Value\'\"', '2025-05-09 05:19:07'),
(1525, 'admin', 'INSERT', 'resources', '1151', NULL, '\"Added a new resource: \'Fundamentals Of Nutrition For HRM Students\'\"', '2025-05-09 05:19:07'),
(1526, 'admin', 'INSERT', 'resources', '1152', NULL, '\"Added a new resource: \'The Second 100 Japanese Kanji\'\"', '2025-05-09 05:19:07'),
(1527, 'admin', 'INSERT', 'resources', '1153', NULL, '\"Added a new resource: \'Food and beverage service\'\"', '2025-05-09 05:19:07'),
(1528, 'admin', 'INSERT', 'resources', '1154', NULL, '\"Added a new resource: \'Bachelor of Science in Hospitality Management\'\"', '2025-05-09 05:19:07'),
(1529, 'admin', 'INSERT', 'resources', '1155', NULL, '\"Added a new resource: \'A Business Proposal on Free Spirit Co.\'\"', '2025-05-09 05:19:07'),
(1530, 'admin', 'INSERT', 'resources', '1156', NULL, '\"Added a new resource: \'Analysis of ASEAN Guidelines on Food Safety Knowledge and Handling Practices in Selected Casual Dining Restaurants in Metro Manila: Basis for an Improved Operational Plan\'\"', '2025-05-09 05:19:07'),
(1531, 'admin', 'INSERT', 'resources', '1157', NULL, '\"Added a new resource: \'Revitalizing & Regenerating in the New Normal: Taking Advantage of the New Possibilities for the Hospitality & Tourism Industry in the New Normal\'\"', '2025-05-09 05:19:07'),
(1532, 'admin', 'INSERT', 'resources', '1158', NULL, '\"Added a new resource: \'Academic Conference \\\"Unleashing Student\'s Competence Through Hospitality Research, Sustainability, and Innovation\\\"\'\"', '2025-05-09 05:19:07'),
(1533, 'admin', 'INSERT', 'resources', '1159', NULL, '\"Added a new resource: \'Food and Beverage: Management and Cost Control\'\"', '2025-05-09 05:19:07'),
(1534, 'admin', 'INSERT', 'resources', '1160', NULL, '\"Added a new resource: \'The Complete Househol Organizer\'\"', '2025-05-09 05:19:07'),
(1535, 'admin', 'INSERT', 'resources', '1161', NULL, '\"Added a new resource: \'Korean Intangible Cultural Properties\'\"', '2025-05-09 05:19:07'),
(1536, 'admin', 'INSERT', 'resources', '1162', NULL, '\"Added a new resource: \'Manual on Purchasing and Ware Housing\'\"', '2025-05-09 05:19:07'),
(1537, 'admin', 'INSERT', 'resources', '1163', NULL, '\"Added a new resource: \'The Only Basic English Grammar in Korea\'\"', '2025-05-09 05:19:07'),
(1538, 'admin', 'INSERT', 'resources', '1164', NULL, '\"Added a new resource: \'English Theme Reading\'\"', '2025-05-09 05:19:07'),
(1539, 'admin', 'INSERT', 'resources', '1165', NULL, '\"Added a new resource: \'Organization And Management Theories And Behavior 2024 Edition\'\"', '2025-05-09 05:19:07'),
(1540, 'admin', 'INSERT', 'resources', '1166', NULL, '\"Added a new resource: \'STILL MORE GAMES TRAINERS PLAY Experiential Learning Exercises\'\"', '2025-05-09 05:19:07'),
(1541, 'admin', 'INSERT', 'resources', '1167', NULL, '\"Added a new resource: \'Feast By Firelight\'\"', '2025-05-09 05:19:07'),
(1542, 'admin', 'INSERT', 'resources', '1168', NULL, '\"Added a new resource: \'An Introduction to the Study of Social Philosophy\'\"', '2025-05-09 05:19:07'),
(1543, 'admin', 'INSERT', 'resources', '1169', NULL, '\"Added a new resource: \'Human Resource Management\'\"', '2025-05-09 05:19:07'),
(1544, 'admin', 'INSERT', 'resources', '1170', NULL, '\"Added a new resource: \'Qualitative Research 2024 Edition\'\"', '2025-05-09 05:19:07'),
(1545, 'admin', 'INSERT', 'resources', '1171', NULL, '\"Added a new resource: \'Why People Buy Things They Don\'t Need\'\"', '2025-05-09 05:19:07');

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
(1005, 'sample2', 'sample2'),
(1006, 'Manzano', 'Ronald'),
(1007, 'Santos', '  Buen'),
(1008, 'Buenaventura', 'John Paul Guevarra'),
(1009, 'Buenaventura-Gutierrez', '  Liberty'),
(1010, 'Santos', 'Buen'),
(1011, 'Manzano', ' Ronald G.'),
(1012, 'Lansangan-Cruz', 'Zenaida'),
(1013, 'Sawada', 'Masanobu'),
(1014, 'Galvez', ' Virgilio DC.'),
(1015, 'Lim', 'Romeo D.'),
(1016, 'Mancini', 'Marc'),
(1017, 'Bell', 'Ann'),
(1018, 'Barrell', ' Sarah'),
(1019, 'Baxter', ' Sarah'),
(1020, 'Cornell', 'Daryl Ace V.'),
(1021, 'Cruz', ' Reil G.'),
(1022, 'Marte-Lago', 'Elpedia M.'),
(1023, 'Jerusalem', ' Leo Benjamin'),
(1024, 'Buenaventura-Gutierrez', 'Liberty'),
(1025, 'Manzano', 'Ronald G.'),
(1026, 'Galvez', 'Virgilio DC.'),
(1027, 'Barrell', 'Sarah'),
(1028, 'Baxter', 'Sarah'),
(1029, 'Cruz', 'Reil G.'),
(1030, 'Jerusalem', 'Leo Benjamin'),
(1031, 'Kitchen', 'The Maya'),
(1032, 'Roldan', 'Amelia Samson'),
(1033, 'Edica', 'Benito Tangonan'),
(1034, 'Boston', 'Chef JJ'),
(1035, 'Ramos', 'Celia'),
(1036, 'Narvaez-Soriano', 'Nora'),
(1037, 'Alvarez', 'Helen U.'),
(1038, 'Cabuhal', 'Gina Marie M.'),
(1039, 'Jr.', 'Reynaldo H. Carandang'),
(1040, 'Cariño', 'Celia E.'),
(1041, 'Luces', 'Enrique R.'),
(1042, '', ''),
(1043, 'Abellana', 'Ephraimuel Jose L.'),
(1044, 'Roxas', 'Christian Joy E.'),
(1045, 'Ditan', 'Joseph Linford A.'),
(1046, 'Aquino-Pauig', 'Chef Xenia Zioneka P.'),
(1047, 'n/a', 'n/a'),
(1048, 'Shore', 'Dinah'),
(1049, 'Banzuelo', 'Loida R.'),
(1050, 'Lazaro', 'Amor S.'),
(1051, 'Rojo', 'Lorenzo G.'),
(1052, 'Yao', 'Claire Ann M.'),
(1053, 'Garlough', 'Robert'),
(1054, 'Tohyama', 'Heihachiro'),
(1055, 'Moriyama', 'Yukiko'),
(1056, 'Villanueva', 'Benita V.'),
(1057, 'Education', 'Department of'),
(1058, 'Buted', 'Dexter R.'),
(1059, 'Celis', 'Mark Irvin. C'),
(1060, 'Mejia', 'Rhea Corina B.'),
(1061, 'Brown', 'Sarah'),
(1062, 'Burleigh', 'Ian'),
(1063, 'Cruz', 'Rea Dv. Dela'),
(1064, 'Viana', 'Dr. Jake C.'),
(1065, 'De-Guzman', 'Ines A.'),
(1066, 'Trinidad', 'Ma. Christina Q.'),
(1067, 'Trinidad', 'Ma. Corazon R.'),
(1068, 'Choe', 'Ji Sook'),
(1069, 'Robins', 'Jennifer'),
(1070, 'Cruz', 'Zenaida L.'),
(1071, 'Baluyot', 'Michael Bhobet B.'),
(1072, 'Jimenez', 'Ma. Dina D.'),
(1073, 'Gatchalian-Badilla', 'Maricel'),
(1074, 'Roldan', 'Amelia S.'),
(1075, 'DeVeau', 'Linsley T.'),
(1076, 'DeVeau', 'Patricia M.'),
(1077, 'Portocarrero', 'Nestor de J.'),
(1078, 'Escooffier', 'Marcel'),
(1079, 'Cajurao', 'April Haide A.'),
(1080, 'Midoro', 'Zaira Yuki'),
(1081, 'Violeta', 'Shaira Mae A.'),
(1082, 'Jugal', 'Jelyn J.'),
(1083, 'Sampang', 'Trisha Camille L.'),
(1084, 'Bron', 'Christian Jay M.'),
(1085, 'Jr.', 'Dodgie B. Cantos'),
(1086, 'Mangampo', 'Jonalyn R.'),
(1087, 'Monzon', 'Frances Alei P.'),
(1088, 'Villa', 'Carl Eliozer D'),
(1089, 'Paré', 'Jean'),
(1090, 'Dinaga', 'Maria Rhoda D.'),
(1091, 'Lirazan', 'Tenie P.'),
(1092, 'Batiao', 'Isidra G.'),
(1093, 'Policarpio', 'John Ericson'),
(1094, 'Alfonso', 'Olivia B.'),
(1095, 'Bravo', 'Annie Lyn M.'),
(1096, 'Cruz', 'Princes M. Dela'),
(1097, 'Gerero', 'Salve N.'),
(1098, 'Gutierez', 'Mary Grace V.'),
(1099, 'Pajimola', 'Frederick S.'),
(1100, 'Roldan', 'Kris R.'),
(1101, 'Ruel', 'Sophia A. '),
(1102, 'Vitangcul', 'Mariecon P.'),
(1103, 'Apar', 'Marcelo B.'),
(1104, 'Samuelson', 'Paul A.'),
(1105, 'Nordhaus', 'William D.'),
(1106, 'Enriquez', 'Antonio M.'),
(1107, 'Jr.', 'Antonio T. Burca'),
(1108, 'Carmona', 'Dan Adrian N.'),
(1109, 'Ocampo', 'Jeff Anthony D. De'),
(1110, 'Cidron', 'John Rodulph B.'),
(1111, 'Directo', 'Anthony Charles B.'),
(1112, 'Enriquez', 'Kevin M.'),
(1113, 'Sinco', 'Arial P.'),
(1114, 'Viduya', 'Mark Dominic '),
(1115, 'Stevenson', 'William J.'),
(1116, 'Kotler', 'Philip'),
(1117, 'Keller', 'Kevin Lane'),
(1118, 'McCormick', 'Ernest J.'),
(1119, 'Abarra', 'Loiuse Patricia'),
(1120, 'Betalas', 'Gian Clifford T.'),
(1121, 'Juan', 'Lance'),
(1122, 'Matro', 'Louie Anthony P.'),
(1123, 'Perez', 'Vanjon R.'),
(1124, 'Artacho', 'Faustin Robie M. '),
(1125, 'Leon', 'John Aaron C.  De'),
(1126, 'Malasig', 'Churto B.'),
(1127, 'Pagmanoja', 'Khail P.'),
(1128, 'Refil', 'Aubrey L.'),
(1129, 'Vilanaba', 'Jovanny E. '),
(1130, 'Capuli', 'Trixie Nicole'),
(1131, 'Montero', 'Jonah H.'),
(1132, 'Pamintuan', 'Anie Claire E.'),
(1133, 'Sibayan', 'James B.'),
(1134, 'Vailoces', 'Daniela Marie A.'),
(1135, 'Camutin', 'Daniela Mykaella J.'),
(1136, 'Carlos', 'Khyle Ashley G.'),
(1137, 'Datoon', 'Mariz M.'),
(1138, 'Dicdican', 'Joanna Monica O.'),
(1139, 'Domingo', 'Emanuelle Louise O.'),
(1140, 'Espiritu', 'Alexandra Mae G.'),
(1141, 'Galvez', 'Rachelle T.'),
(1142, 'Garing', 'Jono Elierick '),
(1143, 'Pomarca', 'Celine Alynna M.'),
(1144, 'Pring', 'Jasmine F.'),
(1145, 'Bituon', 'Reign Vincent B.'),
(1146, 'Ebio', 'Maria Zeny B. '),
(1147, 'Permacio', 'Lyra C.'),
(1148, 'Pujalte', 'Joshua Emmanuel M.'),
(1149, 'Sallas', 'Riza Belle R.'),
(1150, 'Ocampo', 'Ma. Edeliza Buck '),
(1151, 'Mercado', 'Emma '),
(1152, 'Borja', 'Mitchell A.'),
(1153, 'Sato', 'Eriko'),
(1154, 'Toralba', 'Amelia C.'),
(1155, 'Altoveros', 'Hans Adrian Nimrod J.'),
(1156, 'Asma', 'Jheawon P.'),
(1157, 'Carinal', 'Harly P.'),
(1158, 'Castillo', 'Lean Alejandro '),
(1159, 'Lagman', 'Andrei R.'),
(1160, 'Mira', 'Anna Jesusa D.'),
(1161, 'Piorque', 'Kenneth Arvin B.'),
(1162, 'Santos', 'Jon Derick T.'),
(1163, 'Tolentino', 'Arphee Dex C.'),
(1164, 'Teodora', 'Rossan E.'),
(1165, 'Negi', 'Jagmohan'),
(1166, 'Macapagal', 'Paulo Manuel L.'),
(1167, 'Sangines', 'Mylene T.'),
(1168, 'Cruz', 'Rosemarie Theresa M.'),
(1169, 'Scannell', 'Edward E.'),
(1170, 'Newstrom', 'John W. '),
(1171, 'Frisch', 'Emma'),
(1172, 'Navarro', 'Rosita L.'),
(1173, 'Lucido', 'Jose R. '),
(1174, 'Danziger', 'Pamela N.');

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
(4, 'borrowed');

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
(475, '22222', 1028, NULL, 4, 'public/images/not_found.png'),
(476, NULL, 1029, NULL, 4, 'public/images/not_found.png'),
(477, '', 1030, NULL, 5, 'public\\images\\20241217_073823219_iOS.jpg'),
(478, '', 1031, NULL, 15, 'public\\images\\20241217_073852300_iOS.jpg'),
(479, NULL, 1032, NULL, 15, 'public/images/20241217_073824507_iOS.jpg'),
(480, NULL, 1034, 291, 5, 'public/images/not_found.png'),
(510, '9789710167425', 1065, 292, 19, 'public/images/not_found.png'),
(511, '9786214063437', 1066, 293, 19, 'public/images/not_found.png'),
(512, '9789715849760', 1067, 294, 19, 'public/images/not_found.png'),
(513, '9789712399107', 1068, 295, 19, 'public/images/not_found.png'),
(514, '9789716102505', 1069, 296, 19, 'public/images/not_found.png'),
(515, '9789719905202', 1070, 297, 19, 'public/images/not_found.png'),
(516, '9789814314787', 1071, 298, 19, 'public/images/not_found.png'),
(517, '9781760342593', 1072, 299, 19, 'public/images/not_found.png'),
(518, '9786210403794', 1073, 295, 16, 'public/images/not_found.png'),
(519, '9789719905059', 1074, 300, 16, 'public/images/not_found.png'),
(520, '9712714578', 1075, 301, 15, 'public/images/not_found.png'),
(521, '971971921371X', 1076, 302, 15, 'public/images/not_found.png'),
(522, NULL, 1077, NULL, 15, 'public/images/not_found.png'),
(523, '9710804286', 1078, 303, 15, 'public/images/not_found.png'),
(524, '971233905', 1079, 304, 15, 'public/images/not_found.png'),
(525, '9789710445765', 1080, 305, 15, 'public/images/not_found.png'),
(526, '9789719905813', 1081, 305, 15, 'public/images/not_found.png'),
(527, '9789719905935', 1082, 305, 15, 'public/images/not_found.png'),
(528, '9789719996224', 1083, 306, 15, 'public/images/not_found.png'),
(529, '9710867148', 1084, 303, 15, 'public/images/not_found.png'),
(530, '9786214063239', 1085, 307, 15, 'public/images/not_found.png'),
(531, '0915452170', 1086, 308, 15, 'public/images/not_found.png'),
(532, '0385246838>2495', 1087, 309, 15, 'public/images/not_found.png'),
(533, '', 1088, 307, 15, 'public/images/not_found.png'),
(534, '9786214062829', 1089, 307, 15, 'public/images/not_found.png'),
(535, '9786214063284', 1090, 307, 15, 'public/images/not_found.png'),
(536, '9786210403824', 1091, 310, 15, 'public/images/not_found.png'),
(537, '9789814336642', 1092, 311, 15, 'public/images/not_found.png'),
(538, '4915249042', 1093, 312, 15, 'public/images/not_found.png'),
(539, '9789710445356', 1094, 313, 15, 'public/images/not_found.png'),
(540, '', 1095, 314, 15, 'public/images/not_found.png'),
(541, '9789710388370', 1096, 315, 15, 'public/images/not_found.png'),
(542, '0863181457', 1097, 316, 15, 'public/images/not_found.png'),
(543, '9789719655046', 1098, 307, 15, 'public/images/not_found.png'),
(544, '9789719905943', 1099, 307, 15, 'public/images/not_found.png'),
(545, '9716210760', 1100, 317, 15, 'public/images/not_found.png'),
(546, '9789710445615', 1101, 307, 15, 'public/images/not_found.png'),
(547, NULL, 1102, 318, 15, 'public/images/not_found.png'),
(548, NULL, 1103, 319, 15, 'public/images/not_found.png'),
(549, '9780848732660', 1104, 320, 15, 'public/images/not_found.png'),
(550, '9789719905455', 1105, 307, 15, 'public/images/not_found.png'),
(551, '9712343871', 1106, 295, 19, 'public/images/not_found.png'),
(552, '9786214063222', 1107, 300, 19, 'public/images/not_found.png'),
(553, '9789712371196', 1108, 321, 19, 'public/images/not_found.png'),
(554, '9786210438956', 1109, 295, 16, 'public/images/not_found.png'),
(555, '9786210403848', 1110, 295, 16, 'public/images/not_found.png'),
(556, '9789719213796', 1111, 322, 16, 'public/images/not_found.png'),
(557, '0133341453', 1112, 323, 16, 'public/images/not_found.png'),
(558, NULL, 1113, NULL, 7, 'public/images/not_found.png');

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
(136, '2025-05-08', 128),
(137, '2025-05-09', 130),
(138, '2025-05-09', 129),
(139, '2025-05-09', 131);

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `checkout_id` int(11) NOT NULL,
  `checkout_date` date DEFAULT NULL,
  `checkout_due` date DEFAULT NULL,
  `patron_id` int(11) DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'borrowed',
  `rc_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`checkout_id`, `checkout_date`, `checkout_due`, `patron_id`, `status`, `rc_id`) VALUES
(128, '2025-05-08', '2025-05-15', 369, 'returned', 3),
(129, '2025-05-08', '2025-05-15', 363, 'returned', 4),
(130, '2025-05-09', '2025-05-16', 359, 'returned', 5),
(131, '2025-05-09', '2025-05-16', 369, 'returned', 3);

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
-- Table structure for table `invitation`
--

CREATE TABLE `invitation` (
  `inv_id` int(11) NOT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `token` varchar(500) DEFAULT NULL,
  `is_used` tinyint(4) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(37, 'newsletter', 'newsletter', 1033, 5, 'public/images/20241217_073852300_iOS.jpg');

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
-- Table structure for table `passwordreset`
--

CREATE TABLE `passwordreset` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `token` varchar(500) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `is_used` tinyint(4) DEFAULT 0
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
(368, 'TUPM-24-2296', 'Alena Joy', 'Torres', 'Female', '09630803975', 'alenajoy.torres@tup.edu.ph', 'Student', 6, 18, 'active', '2025-04-04 03:03:02'),
(369, 'TUPM-21-0220', 'Pauleen', 'Dingcong', 'Female', '09270477362', 'pauleen.dingcong@tup.edu.ph', 'Student', 1, 1, 'active', '2025-04-04 06:08:08'),
(371, 'TUPM-22-2222', 'prof', 'prof', 'Male', '09222232323', 'prof@gmail.com', 'Faculty', 5, NULL, 'active', '2025-05-09 05:17:22');

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
(291, 'sample6', 'sample6', 'sample6', 'sample6', 'sample6'),
(292, 'MaxCor Publishing House, Inc.', '132 Kalayaan Avenue, Diliman, Quezon City', '', '9211857', 'www.maxcorpublishing.com'),
(293, 'Mindshapers Co., Inc,', 'Rm.108, ICP Bldg., Recoletos St., Intramuros, Manila', 'mindshapersco@yahoo.com', '82546160', 'www.mindshaperspublishing.com'),
(294, 'C & E Publishing, Inc.', '839 EDSA, South Triangle Quezon City, Philippines', 'info@cebookshop.com', '9295088', 'www.cebookshop.com'),
(295, 'REX Book Store', '856 Nicanor Reyes, Sr. St.', '', '7360567', 'www.rexinteractive.com'),
(296, 'ISA-JECHO Publishing, Inc.', '96 Kalayaan Avenue, Diliman, Quezon City', 'isajecho@yahoo.com', '9218289', ''),
(297, 'Mindshapers Cp., Inc.', 'Rm.108, ICP Bldg., Recoletos St., Intramuros, Manila', 'mindshapersco@yahoo.com', '82546160', 'www.mindshaperspublishing.com'),
(298, 'Cengage Learning Asia Pte Ltd', '5 Shenton Way #01-01 UIC Building Singapore 068808', 'asia.infophilippines@cengage.com', '9155290', ''),
(299, 'Lonely Planet', '', '', '', ''),
(300, 'Mindshapers Co., Inc.', 'Rm. 108 Intramuros Corporate Plaza Building Recoletos Street, Intramuros, Manila', 'mindshapersco@yahoo.com', '82546160', ''),
(301, 'Anvil Publishing, Inc.', '8007-B Pioneer St., Brgy. Kapitolyo, Pasig City', 'marketing@anvilpublishing.com', '637-3621, 7471622, 747-1624', 'www.anvilpublishing.com'),
(302, 'AR Skills Development & Management Services', 'Parañaque City, Metro-Manila, Philippines', 'amysroldan@yahoo.com', '9178367678', ''),
(303, 'National Book Store', 'Quad Alpha Centrum Building, 125 Pioneer Street, Mandaluyong City 1550', '', '631-80-61', 'www.nationalbookstore.com'),
(304, 'Rex Book Store', '856 Nicanor Reyes, Sr. St., Manila', '', '', ''),
(305, 'Mindshapers Co., Inc.', '61 Muralla Street, Intramuros, Manila', 'mindshapersco@yahoo.com', '381-0466', ''),
(306, 'Bright House Publishing', 'Project 8, Quezon City, Philippines', 'bh_publishing2007@yahoo.com', '', '(02) 453-0786'),
(307, 'Mindshapers Co., Inc.', '', '', '', ''),
(308, 'Kendall/Hunt Publishing Company', 'Dubuque, Iowa', '', '', ''),
(309, 'DoubleDay', '666 Fifth Avenue, New York, New York 10103', '', '', ''),
(310, 'REX Book Store', '856 Nicanor Reyes, Sr. St.', '', '7355527', 'www.rexpublishing.com'),
(311, 'Cengage Learning Asia Pte. Ltd', 'Unit 2105-2106 Raffles Corporate Center, Emerald Avenue, Ortigas Avenue, Pasig City, Philippines', 'asia.infophilippines@cengage.com', '(632) 915 5290 to 93', ''),
(312, 'Joie, Inc.', '1-8-3, Hirakawa-cho, Chiyoda-ku, Tokyo 102 Japan', '', '', ''),
(313, 'Mindshapers Co., Inc.', '61 Muralla Street, Intramuros Manila', '', '3810466', ''),
(314, 'Sunshine Interlinks Publishing House, Inc.', '3F Maine City Tower, 236 Tomas Morato Avenue, Brgy. South Triangle, Quezon City', '', '', ''),
(315, 'Books Atbp. Publishing Corp/', '436 M. Leyva St., Dela Cruz Cmpd. Mandaluyong City', '', '5344697', ''),
(316, 'J Sainsbury plc', 'Stamford House, Stamford Street, London SE1 9LL', '', '19216000', ''),
(317, 'Saint Bernadette Publications. Inc.', '3335 V. Mapa St., Sta. Mesa, Manila', '', '', ''),
(318, 'Prime Communication System', 'P.O. BOX 456 Shaw Island, WA 98286', '', '', ''),
(319, 'Page Street Publishing Co.', '', '', '', ''),
(320, 'Southern Living, Inc.', '', '', '', ''),
(321, 'REX Book Store', '856 Nicanor Reyes, Sr. St.', '', '7360567', 'www.rexpublishing.com.ph'),
(322, 'Skills and Development and Management Services', 'Paranaque City, Metro-Manila', '', '', ''),
(323, 'Prentice Hall', 'Upper Saddle River, NJ 07458', '', '', '');

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
(1028, 1005),
(1029, 1005),
(1030, 1005),
(1031, 1005),
(1032, 1005),
(1033, 1005),
(1034, 1005),
(1065, 1006),
(1065, 1010),
(1066, 1008),
(1066, 1024),
(1067, 1010),
(1067, 1025),
(1068, 1012),
(1069, 1013),
(1069, 1026),
(1070, 1015),
(1071, 1016),
(1072, 1017),
(1072, 1027),
(1072, 1028),
(1073, 1020),
(1073, 1025),
(1073, 1029),
(1074, 1022),
(1074, 1030),
(1075, 1031),
(1076, 1032),
(1076, 1033),
(1077, 1034),
(1078, 1035),
(1079, 1036),
(1080, 1037),
(1080, 1038),
(1080, 1039),
(1081, 1040),
(1081, 1041),
(1081, 1042),
(1082, 1020),
(1082, 1043),
(1083, 1044),
(1084, 1045),
(1085, 1022),
(1085, 1046),
(1086, 1047),
(1087, 1048),
(1088, 1049),
(1089, 1040),
(1089, 1050),
(1090, 1051),
(1091, 1020),
(1091, 1052),
(1092, 1053),
(1093, 1054),
(1093, 1055),
(1094, 1056),
(1095, 1057),
(1096, 1058),
(1096, 1059),
(1096, 1060),
(1097, 1061),
(1097, 1062),
(1098, 1063),
(1099, 1064),
(1100, 1065),
(1101, 1066),
(1101, 1067),
(1102, 1055),
(1102, 1068),
(1103, 1069),
(1104, 1047),
(1105, 1051),
(1106, 1070),
(1107, 1071),
(1107, 1072),
(1108, 1073),
(1109, 1071),
(1110, 1012),
(1111, 1074),
(1112, 1075),
(1112, 1076),
(1112, 1077),
(1112, 1078),
(1113, 1007),
(1114, 1047),
(1115, 1047),
(1116, 1047),
(1117, 1047),
(1118, 1079),
(1118, 1080),
(1118, 1081),
(1118, 1082),
(1118, 1083),
(1119, 1084),
(1119, 1085),
(1119, 1086),
(1119, 1087),
(1119, 1088),
(1120, 1089),
(1121, 1029),
(1122, 1090),
(1122, 1091),
(1123, 1047),
(1124, 1092),
(1125, 1093),
(1126, 1094),
(1126, 1095),
(1126, 1096),
(1126, 1097),
(1126, 1098),
(1126, 1099),
(1126, 1100),
(1126, 1101),
(1126, 1102),
(1127, 1103),
(1128, 1104),
(1128, 1105),
(1129, 1047),
(1130, 1047),
(1131, 1047),
(1132, 1047),
(1133, 1106),
(1134, 1107),
(1134, 1108),
(1134, 1109),
(1134, 1110),
(1134, 1111),
(1134, 1112),
(1134, 1113),
(1134, 1114),
(1135, 1047),
(1136, 1047),
(1137, 1047),
(1138, 1115),
(1139, 1116),
(1139, 1117),
(1140, 1047),
(1141, 1118),
(1142, 1090),
(1143, 1089),
(1144, 1119),
(1144, 1120),
(1144, 1121),
(1144, 1122),
(1144, 1123),
(1145, 1047),
(1146, 1124),
(1146, 1125),
(1146, 1126),
(1146, 1127),
(1146, 1128),
(1146, 1129),
(1147, 1130),
(1147, 1131),
(1147, 1132),
(1147, 1133),
(1147, 1134),
(1148, 1135),
(1148, 1136),
(1148, 1137),
(1148, 1138),
(1148, 1139),
(1149, 1140),
(1149, 1141),
(1149, 1142),
(1149, 1143),
(1149, 1144),
(1150, 1145),
(1150, 1146),
(1150, 1147),
(1150, 1148),
(1150, 1149),
(1151, 1150),
(1151, 1151),
(1151, 1152),
(1152, 1153),
(1153, 1154),
(1154, 1155),
(1154, 1156),
(1154, 1157),
(1154, 1158),
(1154, 1159),
(1154, 1160),
(1154, 1161),
(1154, 1162),
(1154, 1163),
(1155, 1164),
(1156, 1047),
(1157, 1047),
(1158, 1047),
(1159, 1165),
(1160, 1047),
(1161, 1047),
(1162, 1047),
(1163, 1047),
(1164, 1047),
(1165, 1166),
(1165, 1167),
(1165, 1168),
(1166, 1169),
(1166, 1170),
(1167, 1171),
(1168, 1172),
(1168, 1173),
(1169, 1166),
(1170, 1166),
(1171, 1174);

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
  `dept_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`resource_id`, `resource_title`, `resource_description`, `resource_published_date`, `original_resource_quantity`, `resource_quantity`, `dept_id`, `type_id`, `timestamp`) VALUES
(1028, 'sample2', '', '2002', 3, 2, 3, 1, '2025-05-07 18:01:18'),
(1029, 'sample', '', '2002', 2, 2, 3, 1, '2025-05-07 18:03:44'),
(1030, 'sample3 edited', 'description', '2002', 3, 3, 3, 1, '2025-05-07 18:04:52'),
(1031, 'sample4', '', '2002', 1, 1, 4, 1, '2025-05-08 04:01:22'),
(1032, 'sample5', '', '2002', 1, 1, 4, 1, '2025-05-08 05:02:32'),
(1033, 'newsletter', '', '2002', 3, 3, 3, 3, '2025-05-08 06:10:53'),
(1034, 'sample6', '', '2002', 1, 1, 3, 1, '2025-05-08 07:57:34'),
(1065, 'Principles of Tourism 1', '', '2014', 2, 2, 4, 1, '2025-05-09 03:38:47'),
(1066, 'Tourism and Hospitality Marketing', '', '2022', 2, 2, 4, 1, '2025-05-09 03:38:47'),
(1067, 'Principles of Tourism 2', '', '2010', 2, 2, 4, 1, '2025-05-09 03:38:47'),
(1068, 'Micro Perspective of Tourism and Hosptality', '', '2019', 1, 1, 4, 1, '2025-05-09 03:38:47'),
(1069, 'English Filipino Japanese Dictionary', '', '2019', 1, 1, 4, 1, '2025-05-09 03:38:47'),
(1070, 'Understanding Travel and Tours Essential', '', '2011', 1, 1, 4, 1, '2025-05-09 03:38:47'),
(1071, 'Selling Tourism Desinations Geography for Travel Professionals', '', '2011', 1, 1, 4, 1, '2025-05-09 03:38:47'),
(1072, 'Lonely Planet You Only Live Once 1 1st Ed: A Lifetime of Experiences for the Explorer in All of Us', '', '2016', 1, 1, 4, 1, '2025-05-09 03:38:47'),
(1073, 'Quality Service Management in Tourism and Hospitality', '', '2020', 1, 1, 4, 1, '2025-05-09 03:38:47'),
(1074, 'Room Division: Management and Control System', '', '2011', 1, 1, 4, 1, '2025-05-09 03:38:47'),
(1075, 'Food Service and Catering Management: A Practical Guide', '', '2004', 2, 2, 4, 1, '2025-05-09 03:39:37'),
(1076, 'Food Service and Bartending Revised Edition', '', '2003', 1, 1, 4, 1, '2025-05-09 03:39:37'),
(1077, 'Go Kamado: More Than 100 Recipes for Your Ceramic Grill', '', '2018', 1, 1, 4, 1, '2025-05-09 03:39:37'),
(1078, 'Philippine Recipes and Other International Recipes', '', '2012', 1, 1, 4, 1, '2025-05-09 03:39:37'),
(1079, 'A Guide to Meal Management and Table Services Revised Edition', '', '2005', 1, 1, 4, 1, '2025-05-09 03:39:37'),
(1080, 'Food Safety, Sanitation and Hygiene', '', '2010', 2, 2, 4, 1, '2025-05-09 03:39:37'),
(1081, 'Western Cuisine', '', '2014', 1, 1, 4, 1, '2025-05-09 03:39:37'),
(1082, 'A Concise Guide in Food & Beverage Service Procedures 2nd Edition', '', '2015', 1, 1, 4, 1, '2025-05-09 03:39:37'),
(1083, 'Technology and Livelihood Education: Cookery', '', '2015', 1, 1, 4, 1, '2025-05-09 03:39:37'),
(1084, 'Principles of Bar Operations', '', '2007', 1, 1, 4, 1, '2025-05-09 03:39:37'),
(1085, 'Introduction to Culinary Arts', '', '2022', 1, 1, 4, 1, '2025-05-09 03:39:37'),
(1086, 'Applied FoodService Sanitaion', '', '1993', 1, 1, 4, 1, '2025-05-09 03:39:37'),
(1087, 'The Dinah Shore American Kitchen', '', '1990', 1, 1, 4, 1, '2025-05-09 03:39:37'),
(1088, 'Asian Cuisine', '', '2020', 1, 1, 4, 1, '2025-05-09 03:39:38'),
(1089, 'Experience Baking', '', '2020', 1, 1, 4, 1, '2025-05-09 03:39:38'),
(1090, 'Bar and Beverage Service', '', '2022', 2, 2, 4, 1, '2025-05-09 03:39:38'),
(1091, 'Kitchen Essentials and Basic Food Preparation', '', '2021', 2, 2, 4, 1, '2025-05-09 03:39:38'),
(1092, 'Modern Food Service Purchasing: A Complete Resource', '', '2011', 1, 1, 4, 1, '2025-05-09 03:39:38'),
(1093, 'Quick and Easy Sushi Cook Book', '', '1983', 1, 1, 4, 1, '2025-05-09 03:39:38'),
(1094, 'Restaurant and Cafeteria Management Service', '', '2010', 1, 1, 4, 1, '2025-05-09 03:39:38'),
(1095, 'Technical-Vocational-Livelihood Home Economics: Bread & Pastry Production Manuel 1st Edition', '', '2016', 1, 1, 4, 1, '2025-05-09 03:39:38'),
(1096, 'Basic Restaurant Service with Marking Guides', '', '2007', 2, 2, 4, 1, '2025-05-09 03:39:38'),
(1097, 'Sain Bury\'s Healthy Eating Cook Books: Pasta, Pizzas & Pancakes', '', '1986', 1, 1, 4, 1, '2025-05-09 03:39:38'),
(1098, 'Fundamentals of Food Service Operations', '', '2022', 1, 1, 4, 1, '2025-05-09 03:39:38'),
(1099, 'Food Service and Management II', '', '2015', 1, 1, 4, 1, '2025-05-09 03:39:38'),
(1100, 'A Module in FoodService and Management 3&4', '', '1997', 1, 1, 4, 1, '2025-05-09 03:39:38'),
(1101, 'Beverage Knowledge: An Introduction to Bar Operation', '', '2009', 1, 1, 4, 1, '2025-05-09 03:39:38'),
(1102, 'Korean Cooking for Everyone', '', '1986', 1, 1, 4, 1, '2025-05-09 03:39:38'),
(1103, 'Paleo Cooking With Your Instant Pot: 80 Incredible Gluten- and Grain-Free Recipes Made Twice as Delicious in Half the Time', '', '2017', 1, 1, 4, 1, '2025-05-09 03:39:38'),
(1104, 'Southern Living Comfort Food: A Delicious Trip Down Memory Lane', '', '2009', 1, 1, 4, 1, '2025-05-09 03:39:38'),
(1105, 'Bar &  Beverag Service with Mixology 2nd Edition', '', '2012', 1, 1, 4, 1, '2025-05-09 03:39:38'),
(1106, 'Principles of Tourism Part II (Updated version)', '', '2005', 1, 1, 4, 1, '2025-05-09 03:39:38'),
(1107, 'Multicultural Diversity in Workplace for the Tourism Professional', '', '2022', 2, 2, 4, 1, '2025-05-09 03:39:38'),
(1108, 'Tourism Marketing', '', '2015', 2, 2, 4, 1, '2025-05-09 03:39:38'),
(1109, 'Supply Chain Management in Hospitakity Industry', '', '2022', 2, 2, 4, 1, '2025-05-09 03:39:38'),
(1110, 'Introduction to Meetings, Incentives, Conferences and Events Management (MICE)', '', '2020', 1, 1, 4, 1, '2025-05-09 03:39:38'),
(1111, 'Cost and Materials Management in the Food Service Industry', '', '2007', 1, 1, 4, 1, '2025-05-09 03:39:38'),
(1112, 'Front Office Management and Operations', '', '1996', 1, 1, 4, 1, '2025-05-09 03:39:38'),
(1113, 'offline data', '', '2003', 2, 2, 1, 1, '2025-05-09 03:47:45'),
(1114, 'COMPILATION OF SUPERVISED INDUSTRIAL TRAINING (SIT) PROGRAM NARRATIVE REPORT OF BAM-IM4LD Part 1', 'n/a', '43160', 1, 1, 5, 4, '2025-05-09 05:19:05'),
(1115, 'COMPILATION OF SUPERVISED INDUSTRIAL TRAINING (SIT) PROGRAM NARRATIVE REPORT OF BAM-IM4LD Part 2', 'n/a', '43160', 1, 1, 5, 4, '2025-05-09 05:19:05'),
(1116, 'Compilation of Supervised Industrial Training (SIT) Program Narrative Report of BAM-IM 4LE', 'n/a', '43160', 2, 2, 5, 4, '2025-05-09 05:19:05'),
(1117, 'Classroom Facilities and Student\'s Classroom Performance: An Impact Analysis', 'n/a', '42644', 1, 1, 5, 4, '2025-05-09 05:19:05'),
(1118, 'Bicolano Delights: A Collection of Traditional Recipes A Guide to Culinary Heritage of Albay, Bicol', 'n/a', '42644', 2, 2, 5, 4, '2025-05-09 05:19:05'),
(1119, 'Proposed Marketing Strategy Plan', 'n/a', '42644', 1, 1, 5, 4, '2025-05-09 05:19:05'),
(1120, 'Chicken Now All-new recipes All-new flavours', 'n/a', '39203', 1, 1, 5, 4, '2025-05-09 05:19:05'),
(1121, 'Tourism Impacts And Sustainability', 'n/a', '43009', 1, 1, 5, 4, '2025-05-09 05:19:06'),
(1122, 'Commercial Baking with Entrepreneurship (Revised Edition)', 'n/a', '14/07/', 1, 1, 5, 4, '2025-05-09 05:19:06'),
(1123, 'Philippine Journal Of Industrial Education & Technology', 'n/a', 'January-December 200', 1, 1, 5, 4, '2025-05-09 05:19:06'),
(1124, 'Laboratory Manual in Culinary Arts 1', 'n/a', 'January-December 200', 1, 1, 5, 4, '2025-05-09 05:19:06'),
(1125, 'Fundamentals In Lodging Operations', 'n/a', '44805', 1, 1, 5, 4, '2025-05-09 05:19:06'),
(1126, 'Technological University of the Philippines: Factors Affecting the Employability of the TUP-CIT Graduates from the year 2005-2009', 'n/a', '40817', 1, 1, 5, 4, '2025-05-09 05:19:06'),
(1127, 'Technological University of the Philippines: Sining Ng Pakikipagtalastasan para sa Teknikong Mag-aaral', 'n/a', 'May  4, 1990', 1, 1, 5, 4, '2025-05-09 05:19:06'),
(1128, 'Chapters 1-4 Economics (16th Edition)', 'n/a', '40817', 1, 1, 5, 4, '2025-05-09 05:19:06'),
(1129, 'Technological University of the Philippines: Advancing Science and Technology for a Globally-Competitive University', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:06'),
(1130, 'Mentoring With Care In the Workplace', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:06'),
(1131, 'Technological University of the Philippines: Annual Report S.Y. 2000-2001', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:06'),
(1132, 'Technological University of the Philippines Annual Report 2001', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:06'),
(1133, 'Supervised Industrial Training Manual', 'n/a', 'n/a', 3, 3, 5, 4, '2025-05-09 05:19:06'),
(1134, 'Student Attitude And Peer Relationship', 'n/a', '41939', 1, 1, 5, 4, '2025-05-09 05:19:06'),
(1135, 'The Implementation of Manila Ordinance No. 8046 \"Barangay Curfew Hours\": An Assessment', 'n/a', '42644', 1, 1, 5, 4, '2025-05-09 05:19:06'),
(1136, 'The Effects of Marketing Strategies of Small Business Carts To the Buying-Behavior of Consumers', 'n/a', '40836', 2, 2, 5, 4, '2025-05-09 05:19:06'),
(1137, 'The Relationship between Sources of Information and Degree of Dissemination', 'n/a', '40836', 1, 1, 5, 4, '2025-05-09 05:19:06'),
(1138, 'Production/Operations Management 5th Edition', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:06'),
(1139, 'Marketing Management', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:06'),
(1140, 'Philippine Jornal if Industrial Education and Technology', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:06'),
(1141, 'Human Factors in Engineering and Design 4th Edition', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:06'),
(1142, 'Commercial Baking with Entrepreneurship', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:06'),
(1143, 'Chicken Now', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:06'),
(1144, 'Analysis of Black Drip Cafe Using 8 P\'s Marketing Mix: Basis for Marketing Improvement Plan', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:06'),
(1145, 'S.A.L.T TOWARDS PERFORMANCE: EFFECTS OF RESTAURANT SPATIAL LAYOUT, AMBIANCE, LIGHTING, AND THEME ON EMPLOYEE PERFORMANCE', 'n/a', 'n/a', 2, 2, 5, 4, '2025-05-09 05:19:06'),
(1146, 'Proposed Marketing Plan', 'n/a', '45231', 2, 2, 5, 4, '2025-05-09 05:19:06'),
(1147, 'Proposed Process Improvement Plan', 'n/a', '45231', 2, 2, 5, 4, '2025-05-09 05:19:06'),
(1148, 'Proposed Sustainable Food Waste Practices Plan', 'n/a', 'n/a', 2, 2, 5, 4, '2025-05-09 05:19:06'),
(1149, '2', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:07'),
(1150, 'Restaurants Food Waste Management System Towards Sustainable Value', 'n/a', '45292', 1, 1, 5, 4, '2025-05-09 05:19:07'),
(1151, 'Fundamentals Of Nutrition For HRM Students', 'n/a', '45292', 1, 1, 5, 4, '2025-05-09 05:19:07'),
(1152, 'The Second 100 Japanese Kanji', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:07'),
(1153, 'Food and beverage service', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:07'),
(1154, 'Bachelor of Science in Hospitality Management', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:07'),
(1155, 'A Business Proposal on Free Spirit Co.', 'n/a', '41913', 1, 1, 5, 4, '2025-05-09 05:19:07'),
(1156, 'Analysis of ASEAN Guidelines on Food Safety Knowledge and Handling Practices in Selected Casual Dining Restaurants in Metro Manila: Basis for an Improved Operational Plan', 'n/a', '41913', 2, 2, 5, 4, '2025-05-09 05:19:07'),
(1157, 'Revitalizing & Regenerating in the New Normal: Taking Advantage of the New Possibilities for the Hospitality & Tourism Industry in the New Normal', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:07'),
(1158, 'Academic Conference \"Unleashing Student\'s Competence Through Hospitality Research, Sustainability, and Innovation\"', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:07'),
(1159, 'Food and Beverage: Management and Cost Control', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:07'),
(1160, 'The Complete Househol Organizer', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:07'),
(1161, 'Korean Intangible Cultural Properties', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:07'),
(1162, 'Manual on Purchasing and Ware Housing', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:07'),
(1163, 'The Only Basic English Grammar in Korea', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:07'),
(1164, 'English Theme Reading', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:07'),
(1165, 'Organization And Management Theories And Behavior 2024 Edition', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:07'),
(1166, 'STILL MORE GAMES TRAINERS PLAY Experiential Learning Exercises', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:07'),
(1167, 'Feast By Firelight', 'n/a', 'n/a', 2, 2, 5, 4, '2025-05-09 05:19:07'),
(1168, 'An Introduction to the Study of Social Philosophy', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:07'),
(1169, 'Human Resource Management', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:07'),
(1170, 'Qualitative Research 2024 Edition', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:07'),
(1171, 'Why People Buy Things They Don\'t Need', 'n/a', 'n/a', 1, 1, 5, 4, '2025-05-09 05:19:07');

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
-- Table structure for table `resource_copies`
--

CREATE TABLE `resource_copies` (
  `rc_id` int(11) NOT NULL,
  `resource_is_circulation` tinyint(4) DEFAULT 0,
  `resource_is_archived` int(11) DEFAULT 0,
  `avail_id` int(11) DEFAULT 1,
  `resource_id` int(11) DEFAULT NULL,
  `is_borrowed` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resource_copies`
--

INSERT INTO `resource_copies` (`rc_id`, `resource_is_circulation`, `resource_is_archived`, `avail_id`, `resource_id`, `is_borrowed`) VALUES
(3, 1, 0, 1, 1028, 0),
(4, 1, 0, 1, 1028, 0),
(5, 1, 0, 1, 1028, 0),
(6, 1, 0, 1, 1029, 0),
(7, 1, 0, 1, 1029, 0),
(8, 1, 0, 1, 1030, 0),
(9, 1, 0, 1, 1030, 0),
(10, 1, 0, 1, 1030, 0),
(11, 1, 0, 1, 1031, 0),
(12, 1, 0, 1, 1032, 0),
(13, 0, 0, 1, 1033, 0),
(14, 0, 0, 1, 1033, 0),
(15, 0, 0, 1, 1033, 0),
(16, 1, 0, 1, 1034, 0),
(47, 1, 0, 1, 1065, 0),
(48, 1, 0, 1, 1065, 0),
(49, 1, 0, 1, 1066, 0),
(50, 1, 0, 1, 1066, 0),
(51, 1, 0, 1, 1067, 0),
(52, 1, 0, 1, 1067, 0),
(53, 1, 0, 1, 1068, 0),
(54, 1, 0, 1, 1069, 0),
(55, 1, 0, 1, 1070, 0),
(56, 1, 0, 1, 1071, 0),
(57, 1, 0, 1, 1072, 0),
(58, 1, 0, 1, 1073, 0),
(59, 1, 0, 1, 1074, 0),
(60, 1, 0, 1, 1075, 0),
(61, 1, 0, 1, 1075, 0),
(62, 1, 0, 1, 1076, 0),
(63, 1, 0, 1, 1077, 0),
(64, 1, 0, 1, 1078, 0),
(65, 1, 0, 1, 1079, 0),
(66, 1, 0, 1, 1080, 0),
(67, 1, 0, 1, 1080, 0),
(68, 1, 0, 1, 1081, 0),
(69, 1, 0, 1, 1082, 0),
(70, 1, 0, 1, 1083, 0),
(71, 1, 0, 1, 1084, 0),
(72, 1, 0, 1, 1085, 0),
(73, 1, 0, 1, 1086, 0),
(74, 1, 0, 1, 1087, 0),
(75, 1, 0, 1, 1088, 0),
(76, 1, 0, 1, 1089, 0),
(77, 1, 0, 1, 1090, 0),
(78, 1, 0, 1, 1090, 0),
(79, 1, 0, 1, 1091, 0),
(80, 1, 0, 1, 1091, 0),
(81, 1, 0, 1, 1092, 0),
(82, 1, 0, 1, 1093, 0),
(83, 1, 0, 1, 1094, 0),
(84, 1, 0, 1, 1095, 0),
(85, 1, 0, 1, 1096, 0),
(86, 1, 0, 1, 1096, 0),
(87, 1, 0, 1, 1097, 0),
(88, 1, 0, 1, 1098, 0),
(89, 1, 0, 1, 1099, 0),
(90, 1, 0, 1, 1100, 0),
(91, 1, 0, 1, 1101, 0),
(92, 1, 0, 1, 1102, 0),
(93, 1, 0, 1, 1103, 0),
(94, 1, 0, 1, 1104, 0),
(95, 1, 0, 1, 1105, 0),
(96, 1, 0, 1, 1106, 0),
(97, 1, 0, 1, 1107, 0),
(98, 1, 0, 1, 1107, 0),
(99, 1, 0, 1, 1108, 0),
(100, 1, 0, 1, 1108, 0),
(101, 1, 0, 1, 1109, 0),
(102, 1, 0, 1, 1109, 0),
(103, 1, 0, 1, 1110, 0),
(104, 1, 0, 1, 1111, 0),
(105, 1, 0, 1, 1112, 0),
(106, 1, 0, 1, 1113, 0),
(107, 1, 0, 1, 1113, 0),
(108, 0, 0, 1, 1114, 0),
(109, 0, 0, 1, 1115, 0),
(110, 0, 0, 1, 1116, 0),
(111, 0, 0, 1, 1116, 0),
(112, 0, 0, 1, 1117, 0),
(113, 0, 0, 1, 1118, 0),
(114, 0, 0, 1, 1118, 0),
(115, 0, 0, 1, 1119, 0),
(116, 0, 0, 1, 1120, 0),
(117, 0, 0, 1, 1121, 0),
(118, 0, 0, 1, 1122, 0),
(119, 0, 0, 1, 1123, 0),
(120, 0, 0, 1, 1124, 0),
(121, 0, 0, 1, 1125, 0),
(122, 0, 0, 1, 1126, 0),
(123, 0, 0, 1, 1127, 0),
(124, 0, 0, 1, 1128, 0),
(125, 0, 0, 1, 1129, 0),
(126, 0, 0, 1, 1130, 0),
(127, 0, 0, 1, 1131, 0),
(128, 0, 0, 1, 1132, 0),
(129, 0, 0, 1, 1133, 0),
(130, 0, 0, 1, 1133, 0),
(131, 0, 0, 1, 1133, 0),
(132, 0, 0, 1, 1134, 0),
(133, 0, 0, 1, 1135, 0),
(134, 0, 0, 1, 1136, 0),
(135, 0, 0, 1, 1136, 0),
(136, 0, 0, 1, 1137, 0),
(137, 0, 0, 1, 1138, 0),
(138, 0, 0, 1, 1139, 0),
(139, 0, 0, 1, 1140, 0),
(140, 0, 0, 1, 1141, 0),
(141, 0, 0, 1, 1142, 0),
(142, 0, 0, 1, 1143, 0),
(143, 0, 0, 1, 1144, 0),
(144, 0, 0, 1, 1145, 0),
(145, 0, 0, 1, 1145, 0),
(146, 0, 0, 1, 1146, 0),
(147, 0, 0, 1, 1146, 0),
(148, 0, 0, 1, 1147, 0),
(149, 0, 0, 1, 1147, 0),
(150, 0, 0, 1, 1148, 0),
(151, 0, 0, 1, 1148, 0),
(152, 0, 0, 1, 1149, 0),
(153, 0, 0, 1, 1150, 0),
(154, 0, 0, 1, 1151, 0),
(155, 0, 0, 1, 1152, 0),
(156, 0, 0, 1, 1153, 0),
(157, 0, 0, 1, 1154, 0),
(158, 0, 0, 1, 1155, 0),
(159, 0, 0, 1, 1156, 0),
(160, 0, 0, 1, 1156, 0),
(161, 0, 0, 1, 1157, 0),
(162, 0, 0, 1, 1158, 0),
(163, 0, 0, 1, 1159, 0),
(164, 0, 0, 1, 1160, 0),
(165, 0, 0, 1, 1161, 0),
(166, 0, 0, 1, 1162, 0),
(167, 0, 0, 1, 1163, 0),
(168, 0, 0, 1, 1164, 0),
(169, 0, 0, 1, 1165, 0),
(170, 0, 0, 1, 1166, 0),
(171, 0, 0, 1, 1167, 0),
(172, 0, 0, 1, 1167, 0),
(173, 0, 0, 1, 1168, 0),
(174, 0, 0, 1, 1169, 0),
(175, 0, 0, 1, 1170, 0),
(176, 0, 0, 1, 1171, 0);

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
  `staff_status` varchar(45) DEFAULT 'active',
  `staff_email` varchar(100) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staffaccount`
--

INSERT INTO `staffaccount` (`staff_id`, `staff_uname`, `staff_fname`, `staff_lname`, `staff_password`, `staff_status`, `staff_email`, `role_id`) VALUES
(11, 'admin', 'Jeonghan', 'Yoon', '$2b$10$jUvW2CarHn/WgFpx82d5X.R6hnKejwfmPzkzkV12n8g825GDE.Cka', 'active', 'chichivinciii@gmail.com', 1),
(23, 'staff', 'staff2', 'staff', '$2b$10$sszAnn6MJTHs1KXJhecdWOCFCC1pxRQvDiVxBOVfLiRNcS3DneAy.', 'active', NULL, 2),
(41, 'jjeongjjeongie', 'Jeonghan', 'Yoon', '$2b$10$GnvpYTysbTtcMbN62wT1Y.PCQfMG85LlU2q8kHC0H9oKja7Q.H1l2', 'active', 'pauleen.dingcong@tup.edu.ph', 2);

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
(286, 1114, 99),
(287, 1115, 99),
(288, 1116, 99),
(289, 1117, 99),
(290, 1118, 99),
(291, 1119, 99),
(292, 1120, 99),
(293, 1121, 99),
(294, 1122, 99),
(295, 1123, 99),
(296, 1124, 99),
(297, 1125, 99),
(298, 1126, 99),
(299, 1127, 99),
(300, 1128, 99),
(301, 1129, 99),
(302, 1130, 99),
(303, 1131, 99),
(304, 1132, 99),
(305, 1133, 99),
(306, 1134, 99),
(307, 1135, 99),
(308, 1136, 99),
(309, 1137, 99),
(310, 1138, 99),
(311, 1139, 99),
(312, 1140, 99),
(313, 1141, 99),
(314, 1142, 99),
(315, 1143, 99),
(316, 1144, 99),
(317, 1145, 99),
(318, 1146, 99),
(319, 1147, 99),
(320, 1148, 99),
(321, 1149, 99),
(322, 1150, 99),
(323, 1151, 99),
(324, 1152, 99),
(325, 1153, 99),
(326, 1154, 99),
(327, 1155, 99),
(328, 1156, 99),
(329, 1157, 99),
(330, 1158, 99),
(331, 1159, 99),
(332, 1160, 99),
(333, 1161, 99),
(334, 1162, 99),
(335, 1163, 99),
(336, 1164, 99),
(337, 1165, 99),
(338, 1166, 99),
(339, 1167, 99),
(340, 1168, 99),
(341, 1169, 99),
(342, 1170, 99),
(343, 1171, 99);

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
  ADD KEY `che_pat_id_idx` (`patron_id`),
  ADD KEY `che_rc_id_idx` (`rc_id`);

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
-- Indexes for table `invitation`
--
ALTER TABLE `invitation`
  ADD PRIMARY KEY (`inv_id`),
  ADD KEY `inv_role_id_idx` (`role_id`);

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
-- Indexes for table `passwordreset`
--
ALTER TABLE `passwordreset`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `res_dept_id` (`dept_id`),
  ADD KEY `res_type_id` (`type_id`);

--
-- Indexes for table `resourcetype`
--
ALTER TABLE `resourcetype`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `resource_copies`
--
ALTER TABLE `resource_copies`
  ADD PRIMARY KEY (`rc_id`),
  ADD KEY `rc_avail_id_idx` (`avail_id`),
  ADD KEY `rc_resource_id_idx` (`resource_id`);

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
  MODIFY `adviser_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT for table `audit_log`
--
ALTER TABLE `audit_log`
  MODIFY `audit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1546;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1175;

--
-- AUTO_INCREMENT for table `availability`
--
ALTER TABLE `availability`
  MODIFY `avail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=559;

--
-- AUTO_INCREMENT for table `checkin`
--
ALTER TABLE `checkin`
  MODIFY `checkin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `checkout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `invitation`
--
ALTER TABLE `invitation`
  MODIFY `inv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `journalnewsletter`
--
ALTER TABLE `journalnewsletter`
  MODIFY `jn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `overdue`
--
ALTER TABLE `overdue`
  MODIFY `overdue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `passwordreset`
--
ALTER TABLE `passwordreset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `patron`
--
ALTER TABLE `patron`
  MODIFY `patron_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `pub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

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
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `resource_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1172;

--
-- AUTO_INCREMENT for table `resourcetype`
--
ALTER TABLE `resourcetype`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `resource_copies`
--
ALTER TABLE `resource_copies`
  MODIFY `rc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staffaccount`
--
ALTER TABLE `staffaccount`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `thesis`
--
ALTER TABLE `thesis`
  MODIFY `thesis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

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
  ADD CONSTRAINT `che_rc_id` FOREIGN KEY (`rc_id`) REFERENCES `resource_copies` (`rc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `invitation`
--
ALTER TABLE `invitation`
  ADD CONSTRAINT `inv_role_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
  ADD CONSTRAINT `res_dept_id` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `res_type_id` FOREIGN KEY (`type_id`) REFERENCES `resourcetype` (`type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `resource_copies`
--
ALTER TABLE `resource_copies`
  ADD CONSTRAINT `rc_avail_id` FOREIGN KEY (`avail_id`) REFERENCES `availability` (`avail_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `rc_resource_id` FOREIGN KEY (`resource_id`) REFERENCES `resources` (`resource_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
