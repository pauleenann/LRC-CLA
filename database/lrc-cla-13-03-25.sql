-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2025 at 10:23 AM
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
(1, 'adviser', 'lname'),
(29, 'Michael', 'Bhobet'),
(30, 'offlinethesis', 'offlinethesis'),
(31, 'offlinethesis2', 'offlinethesis2'),
(32, 'n/a', 'n/a');

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
(1, '00:02:59', '2024-12-31', 2),
(26, '15:27:48', '2024-12-23', 2),
(27, '15:05:34', '2024-12-27', 1),
(28, '15:06:12', '2024-12-27', 3),
(29, '15:06:27', '2024-12-27', 4),
(30, '15:06:30', '2024-12-27', 1),
(31, '15:06:32', '2024-12-27', 3),
(32, '15:06:35', '2024-12-27', 4),
(33, '15:06:39', '2024-12-27', 2),
(34, '15:06:50', '2024-12-27', 1),
(35, '15:06:52', '2024-12-27', 3),
(36, '15:50:49', '2025-01-14', 2),
(37, '15:54:26', '2025-01-14', 2),
(38, '15:54:40', '2025-01-14', 2),
(39, '13:54:46', '2025-02-13', 2),
(40, '13:58:34', '2025-02-13', 2),
(41, '10:48:26', '2025-02-20', 2),
(42, '10:49:38', '2025-02-20', 3),
(43, '10:51:04', '2025-02-20', 2),
(44, '13:48:00', '2025-02-23', 2),
(45, '21:11:15', '2025-02-23', 2),
(46, '14:48:23', '2025-02-27', 2),
(47, '14:48:30', '2025-02-27', 2),
(48, '14:49:17', '2025-02-27', 2),
(49, '14:51:26', '2025-02-27', 2),
(50, '14:51:58', '2025-02-27', 17),
(51, '14:53:37', '2025-02-27', 2),
(52, '14:55:09', '2025-02-27', 2),
(53, '17:36:51', '2025-03-03', 3),
(54, '11:06:28', '2025-03-11', 3);

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
(157, 'admin', 'INSERT', 'checkin', '236', NULL, '{\"book name \":\"A Concise Guide in Food & Beverage Service Procedures 2nd Edition\",\"status\":\"returned\",\"patron\":\"Pauleen Dingcong\"}', '2025-02-13 11:59:28'),
(158, 'admin', 'INSERT', 'checkout', '228', NULL, '{\"BOOK NAME\":\"Culinart Arts\",\"STATUS\":\" borrowed\",\"PATRON\":\"Giolliana Plandez\"}', '2025-02-20 01:34:18'),
(159, 'admin', 'INSERT', 'checkin', '228', NULL, '{\"book name \":\"Culinart Arts\",\"status\":\"returned\",\"patron\":\"Giolliana Plandez\"}', '2025-02-20 06:54:07'),
(160, 'admin', 'INSERT', 'checkout', '228', NULL, '{\"BOOK NAME\":\"Culinart Arts\",\"STATUS\":\" borrowed\",\"PATRON\":\"Giolliana Plandez\"}', '2025-02-22 14:03:51'),
(161, 'admin', 'INSERT', 'checkin', '228', NULL, '{\"book name \":\"Culinart Arts\",\"status\":\"returned\",\"patron\":\"Giolliana Plandez\"}', '2025-02-22 14:04:16'),
(162, 'admin', 'INSERT', 'checkin', '235', NULL, '{\"book name \":\"Western Cuisine\",\"status\":\"returned\",\"patron\":\"Lance Bernal\"}', '2025-02-22 14:04:57'),
(163, 'admin', 'INSERT', 'checkout', '229', NULL, '{\"BOOK NAME\":\"Food Service and Catering Management: A Practical Guide\",\"STATUS\":\" borrowed\",\"PATRON\":\"Giolliana Plandez\"}', '2025-02-22 14:07:13'),
(164, NULL, 'INSERT', 'checkin', '229', NULL, '{\"book name \":\"Food Service and Catering Management: A Practical Guide\",\"status\":\"returned\",\"patron\":\"Giolliana Plandez\"}', '2025-02-22 14:09:25'),
(165, 'admin', 'INSERT', 'checkout', '228', NULL, '{\"BOOK NAME\":\"Culinart Arts\",\"STATUS\":\" borrowed\",\"PATRON\":\"Giolliana Plandez\"}', '2025-02-22 14:11:40'),
(166, 'admin', 'INSERT', 'checkin', '228', NULL, '{\"book name \":\"Culinart Arts\",\"status\":\"returned\",\"patron\":\"Giolliana Plandez\"}', '2025-02-22 14:11:49'),
(167, 'admin', 'UPDATE', 'resources', '228', '{\"resource_id\":228,\"resource_title\":\"Culinart Arts\",\"resource_description\":\"n/a\",\"resource_published_date\":\"n/a\",\"resource_quantity\":3,\"resource_is_circulation\":0,\"dept_id\":4,\"type_id\":1,\"avail_id\":1}', '{\"resource_id\":\"228\",\"title\":\"Culinart Artss\",\"description\":\"n/a\",\"publishedDate\":\"n/a\",\"quantity\":\"3\",\"isCirculation\":\"false\",\"department\":\"4\",\"mediaType\":\"1\",\"status\":\"1\"}', '2025-02-22 16:02:06'),
(168, 'admin', 'UPDATE', 'resources', '228', '{\"resource_id\":228,\"resource_title\":\"Culinart Artss\",\"resource_description\":\"n/a\",\"resource_published_date\":\"n/a\",\"resource_quantity\":3,\"resource_is_circulation\":0,\"dept_id\":4,\"type_id\":1,\"avail_id\":1}', '{\"resource_id\":\"228\",\"title\":\"Culinart Arts\",\"description\":\"n/a\",\"publishedDate\":\"n/a\",\"quantity\":\"3\",\"isCirculation\":\"false\",\"department\":\"4\",\"mediaType\":\"1\",\"status\":\"1\"}', '2025-02-22 16:03:25'),
(169, 'admin', 'INSERT', 'resources', NULL, NULL, '{\"resource name\":\"sample\"}', '2025-02-22 16:05:09'),
(170, 'admin', 'INSERT', 'resources', NULL, NULL, '{\"resource name\":\"journal\"}', '2025-02-22 16:05:48'),
(171, 'admin', 'INSERT', 'resources', NULL, NULL, '{\"resource name\":\"thesis\"}', '2025-02-22 16:06:26'),
(172, 'admin', 'UPDATE', 'staffaccount', 'admin', 'active', '{\"staff status \":\"inactive\"}', '2025-02-23 02:44:54'),
(173, 'admin', 'UPDATE', 'staffaccount', 'admin', 'active', '{\"staff status \":\"inactive\"}', '2025-02-23 02:45:17'),
(174, 'admin', 'UPDATE', 'staffaccount', 'admin', 'active', '{\"staff status \":\"inactive\"}', '2025-02-23 02:45:22'),
(175, 'admin', 'UPDATE', 'staffaccount', 'admin', 'inactive', '{\"staff status \":\"active\"}', '2025-02-23 02:45:32'),
(176, 'admin', 'UPDATE', 'staffaccount', 'admin', 'active', '{\"staff status \":\"inactive\"}', '2025-02-23 02:46:16'),
(177, 'admin', 'UPDATE', 'staffaccount', 'admin', 'inactive', '{\"staff status \":\"active\"}', '2025-02-23 02:46:20'),
(178, 'admin', 'UPDATE', 'staffaccount', 'staff', 'active', '{\"staff status \":\"inactive\"}', '2025-02-23 02:46:22'),
(179, 'admin', 'UPDATE', 'staffaccount', 'admin', 'active', '{\"staff status \":\"inactive\"}', '2025-02-23 02:46:27'),
(180, 'admin', 'UPDATE', 'staffaccount', 'admin', 'inactive', '{\"staff status \":\"active\"}', '2025-02-23 02:47:42'),
(181, 'admin', 'UPDATE', 'staffaccount', 'admin', 'inactive', '{\"staff status \":\"active\"}', '2025-02-23 02:47:55'),
(182, 'admin', 'UPDATE', 'staffaccount', 'staff', 'inactive', '{\"staff status \":\"active\"}', '2025-02-23 02:49:53'),
(183, 'admin', 'UPDATE', 'staffaccount', 'staff', 'active', '{\"staff status \":\"inactive\"}', '2025-02-23 03:19:26'),
(184, 'admin', 'INSERT', 'checkout', '229', NULL, '{\"BOOK NAME\":\"Food Service and Catering Management: A Practical Guide\",\"STATUS\":\" borrowed\",\"PATRON\":\"Giolliana Plandez\"}', '2025-02-23 05:47:04'),
(185, 'admin', 'INSERT', 'checkin', '229', NULL, '{\"book name \":\"Food Service and Catering Management: A Practical Guide\",\"status\":\"returned\",\"patron\":\"Giolliana Plandez\"}', '2025-02-23 05:47:16'),
(186, 'admin', 'UPDATE', 'resources', '228', '{\"resource_id\":228,\"resource_title\":\"Culinart Arts\",\"resource_description\":\"n/a\",\"resource_published_date\":\"n/a\",\"resource_quantity\":3,\"resource_is_circulation\":0,\"dept_id\":4,\"type_id\":1,\"avail_id\":1}', '{\"resource_id\":\"228\",\"title\":\"Culinart Arts\",\"description\":\"n/a\",\"publishedDate\":\"n/a\",\"quantity\":\"3\",\"isCirculation\":\"1\",\"department\":\"4\",\"mediaType\":\"1\",\"status\":\"1\"}', '2025-02-23 05:49:16'),
(187, 'admin', 'UPDATE', 'resources', '228', '{\"resource_id\":228,\"resource_title\":\"Culinart Arts\",\"resource_description\":\"n/a\",\"resource_published_date\":\"n/a\",\"resource_quantity\":3,\"resource_is_circulation\":1,\"dept_id\":4,\"type_id\":1,\"avail_id\":1}', '{\"resource_id\":\"228\",\"title\":\"Culinart Arts\",\"description\":\"n/a\",\"publishedDate\":\"n/a\",\"quantity\":\"3\",\"isCirculation\":\"0\",\"department\":\"4\",\"mediaType\":\"1\",\"status\":\"1\"}', '2025-02-23 05:51:03'),
(188, 'admin', 'INSERT', 'checkout', '228', NULL, '{\"BOOK NAME\":\"Culinart Arts\",\"STATUS\":\" borrowed\",\"PATRON\":\"Giolliana Plandez\"}', '2025-02-23 05:51:27'),
(189, 'admin', 'INSERT', 'checkout', '228', NULL, '{\"BOOK NAME\":\"Culinart Arts\",\"STATUS\":\" borrowed\",\"PATRON\":\"Pauleen Dingcong\"}', '2025-02-23 05:52:10'),
(190, 'admin', 'INSERT', 'checkout', '228', NULL, '{\"BOOK NAME\":\"Culinart Arts\",\"STATUS\":\" borrowed\",\"PATRON\":\"Lance Bernal\"}', '2025-02-23 05:52:27'),
(191, 'admin', 'INSERT', 'resources', NULL, NULL, '{\"resource name\":\"Under Our Skin\"}', '2025-02-23 13:09:39'),
(192, 'admin', 'INSERT', 'resources', NULL, NULL, '{\"resource name\":\"sample2\"}', '2025-02-23 13:23:03'),
(193, 'admin', 'INSERT', 'resources', NULL, NULL, '{\"resource name\":\"sample3\"}', '2025-02-23 13:24:24'),
(194, 'admin', 'UPDATE', 'resources', '265', '{\"resource_id\":265,\"resource_title\":\"sample3\",\"resource_description\":\"sample3\",\"resource_published_date\":\"2015\",\"resource_quantity\":1,\"resource_is_circulation\":0,\"dept_id\":1,\"type_id\":1,\"avail_id\":1}', '{\"resource_id\":\"265\",\"title\":\"sample4\",\"description\":\"sample3\",\"publishedDate\":\"2015\",\"quantity\":\"1\",\"isCirculation\":\"false\",\"department\":\"1\",\"mediaType\":\"1\",\"status\":\"1\"}', '2025-02-23 13:25:56'),
(195, 'admin', 'INSERT', 'checkin', '228', NULL, '{\"book name \":\"Culinart Arts\",\"status\":\"returned\",\"patron\":\"Giolliana Plandez\"}', '2025-02-23 13:36:03'),
(196, 'admin', 'INSERT', 'checkin', '228', NULL, '{\"book name \":\"Culinart Arts\",\"status\":\"returned\",\"patron\":\"Pauleen Dingcong\"}', '2025-02-23 13:36:23'),
(197, 'admin', 'INSERT', 'checkin', '228', NULL, '{\"book name \":\"Culinart Arts\",\"status\":\"returned\",\"patron\":\"Lance Bernal\"}', '2025-02-23 13:36:38'),
(198, 'admin', 'INSERT', 'checkout', '228', NULL, '{\"BOOK NAME\":\"Culinart Arts\",\"STATUS\":\" borrowed\",\"PATRON\":\"Giolliana Plandez\"}', '2025-02-23 13:36:48'),
(199, 'admin', 'INSERT', 'checkout', '228', NULL, '{\"BOOK NAME\":\"Culinart Arts\",\"STATUS\":\" borrowed\",\"PATRON\":\"Pauleen Dingcong\"}', '2025-02-24 00:39:37'),
(200, 'admin', 'INSERT', 'checkin', '228', NULL, '{\"book name \":\"Culinart Arts\",\"status\":\"returned\",\"patron\":\"Pauleen Dingcong\"}', '2025-02-24 00:39:55'),
(201, 'admin', 'INSERT', 'checkin', '228', NULL, '{\"book name \":\"Culinart Arts\",\"status\":\"returned\",\"patron\":\"Giolliana Plandez\"}', '2025-02-24 00:40:12'),
(202, 'admin', 'INSERT', 'resources', NULL, NULL, '{\"resource name\":\"sample5\"}', '2025-02-24 03:36:10'),
(203, 'admin', 'INSERT', 'resources', NULL, NULL, '{\"resource name\":\"sample6\"}', '2025-02-24 04:21:18'),
(204, 'admin', 'INSERT', 'resources', NULL, NULL, '{\"resource name\":\"filepath\"}', '2025-02-24 04:26:48'),
(205, 'admin', 'UPDATE', 'staffaccount', 'staff', 'inactive', '{\"staff status \":\"active\"}', '2025-02-24 05:18:51'),
(206, 'admin', 'INSERT', 'checkout', '228', NULL, '{\"BOOK NAME\":\"Culinart Arts\",\"STATUS\":\" borrowed\",\"PATRON\":\"Giolliana Plandez\"}', '2025-02-24 05:24:39'),
(207, 'admin', 'INSERT', 'checkout', '228', NULL, '{\"BOOK NAME\":\"Culinart Arts\",\"STATUS\":\" borrowed\",\"PATRON\":\"Pauleen Dingcong\"}', '2025-02-24 05:38:13'),
(208, 'admin', 'INSERT', 'checkin', '228', NULL, '{\"book name \":\"Culinart Arts\",\"status\":\"returned\",\"patron\":\"Giolliana Plandez\"}', '2025-02-24 05:38:34'),
(209, 'admin', 'INSERT', 'checkout', '228', NULL, '{\"BOOK NAME\":\"Culinart Arts\",\"STATUS\":\" borrowed\",\"PATRON\":\"Jeonghan Yoon\"}', '2025-02-24 05:45:57'),
(210, 'admin', 'INSERT', 'checkin', '228', NULL, '{\"book name \":\"Culinart Arts\",\"status\":\"returned\",\"patron\":\"Pauleen Dingcong\"}', '2025-02-24 05:49:35'),
(211, 'admin', 'INSERT', 'checkin', '228', NULL, '{\"book name \":\"Culinart Arts\",\"status\":\"returned\",\"patron\":\"Jeonghan Yoon\"}', '2025-02-24 05:52:20'),
(212, 'admin', 'INSERT', 'checkout', '231', NULL, '{\"BOOK NAME\":\"Go Kamado\",\"STATUS\":\" borrowed\",\"PATRON\":\"Giolliana Plandez\"}', '2025-02-24 05:53:11'),
(213, 'admin', 'INSERT', 'checkin', '231', NULL, '{\"book name \":\"Go Kamado\",\"status\":\"returned\",\"patron\":\"Giolliana Plandez\"}', '2025-02-24 05:53:24'),
(214, 'admin', 'INSERT', 'checkout', '228', NULL, '{\"BOOK NAME\":\"Culinart Arts\",\"STATUS\":\" borrowed\",\"PATRON\":\"Giolliana Plandez\"}', '2025-02-24 05:56:10'),
(215, 'admin', 'INSERT', 'checkout', '228', NULL, '{\"BOOK NAME\":\"Culinart Arts\",\"STATUS\":\" borrowed\",\"PATRON\":\"Pauleen Dingcong\"}', '2025-02-24 05:56:26'),
(216, 'admin', 'INSERT', 'checkin', '228', NULL, '{\"book name \":\"Culinart Arts\",\"status\":\"returned\",\"patron\":\"Giolliana Plandez\"}', '2025-02-24 05:57:33'),
(217, 'admin', 'INSERT', 'checkout', '228', NULL, '{\"BOOK NAME\":\"Culinart Arts\",\"STATUS\":\" borrowed\",\"PATRON\":\"Giolliana Plandez\"}', '2025-02-24 05:57:44'),
(218, 'admin', 'INSERT', 'checkin', '228', NULL, '{\"book name \":\"Culinart Arts\",\"status\":\"returned\",\"patron\":\"Giolliana Plandez\"}', '2025-02-24 05:57:56'),
(219, 'admin', 'INSERT', 'checkin', '228', NULL, '{\"book name \":\"Culinart Arts\",\"status\":\"returned\",\"patron\":\"Pauleen Dingcong\"}', '2025-02-24 05:58:05'),
(220, 'admin', 'INSERT', 'checkout', '231', NULL, '{\"BOOK NAME\":\"Go Kamado\",\"STATUS\":\" borrowed\",\"PATRON\":\"Giolliana Plandez\"}', '2025-02-24 06:44:44'),
(221, 'admin', 'INSERT', 'checkout', '229', NULL, '{\"BOOK NAME\":\"Food Service and Catering Management: A Practical Guide\",\"STATUS\":\" borrowed\",\"PATRON\":\"Pauleen Dingcong\"}', '2025-02-24 06:47:39'),
(222, 'admin', 'INSERT', 'checkout', '228', NULL, '{\"BOOK NAME\":\"Culinart Arts\",\"STATUS\":\" borrowed\",\"PATRON\":\"Giolliana Plandez\"}', '2025-02-24 07:12:44'),
(223, 'admin', 'INSERT', 'checkout', '229', NULL, '{\"BOOK NAME\":\"Food Service and Catering Management: A Practical Guide\",\"STATUS\":\" borrowed\",\"PATRON\":\"Pauleen Dingcong\"}', '2025-02-24 07:13:14'),
(224, 'admin', 'INSERT', 'checkin', '228', NULL, '{\"book name \":\"Culinart Arts\",\"status\":\"returned\",\"patron\":\"Giolliana Plandez\"}', '2025-02-24 08:12:45'),
(225, 'admin', 'INSERT', 'checkout', '228', NULL, '{\"BOOK NAME\":\"Culinart Arts\",\"STATUS\":\" borrowed\",\"PATRON\":\"Giolliana Plandez\"}', '2025-02-24 09:22:11'),
(226, 'admin', 'INSERT', 'resources', NULL, NULL, '{\"resource name\":\"1\"}', '2025-02-24 09:59:23'),
(227, 'admin', 'INSERT', 'resources', NULL, NULL, '{\"resource name\":\"test\"}', '2025-02-24 14:18:25'),
(228, 'admin', 'INSERT', 'resources', NULL, NULL, '{\"resource name\":\"test3\"}', '2025-02-24 14:28:02'),
(229, 'admin', 'INSERT', 'resources', NULL, NULL, '{\"resource name\":\"test9\"}', '2025-02-24 14:39:28'),
(230, 'admin', 'INSERT', 'resources', NULL, NULL, '{\"resource name\":\"test10\"}', '2025-02-24 14:42:07'),
(231, 'admin', 'INSERT', 'resources', NULL, NULL, '{\"resource name\":\"sdsda\"}', '2025-02-24 14:44:56'),
(232, 'admin', 'INSERT', 'resources', NULL, NULL, '{\"resource name\":\"adsd\"}', '2025-02-24 14:50:51'),
(233, 'admin', 'INSERT', 'resources', NULL, NULL, '{\"resource name\":\"1232\"}', '2025-02-24 14:54:13'),
(234, 'admin', 'INSERT', 'resources', NULL, NULL, '{\"resource name\":\"newslettertest\"}', '2025-02-25 00:14:10'),
(235, 'admin', 'INSERT', 'resources', NULL, NULL, '{\"resource name\":\"journaltest8\"}', '2025-02-25 00:19:22'),
(236, 'admin', 'INSERT', 'resources', NULL, NULL, '{\"resource name\":\"testing11\"}', '2025-02-26 05:23:15'),
(237, 'admin', 'INSERT', 'resources', NULL, NULL, '{\"resource name\":\"testing12\"}', '2025-02-26 05:26:02'),
(238, 'admin', 'UPDATE', 'resources', '228', '{\"resource_id\":228,\"resource_title\":\"Culinart Arts\",\"resource_description\":\"n/a\",\"resource_published_date\":\"n/a\",\"resource_quantity\":2,\"resource_is_circulation\":0,\"dept_id\":4,\"type_id\":1,\"avail_id\":1}', '{\"resource_id\":\"228\",\"title\":\"Culinart Arts\",\"description\":\"n/a\",\"publishedDate\":\"n/a\",\"quantity\":\"2\",\"isCirculation\":\"false\",\"department\":\"4\",\"mediaType\":\"1\",\"status\":\"1\"}', '2025-02-26 05:26:55'),
(239, 'admin', 'UPDATE', 'resources', '228', '{\"resource_id\":228,\"resource_title\":\"Culinart Arts\",\"resource_description\":\"n/a\",\"resource_published_date\":\"n/a\",\"resource_quantity\":2,\"resource_is_circulation\":0,\"dept_id\":4,\"type_id\":1,\"avail_id\":1}', '{\"resource_id\":\"228\",\"title\":\"Culinart Arts\",\"description\":\"n/a\",\"publishedDate\":\"n/a\",\"quantity\":\"2\",\"isCirculation\":\"false\",\"department\":\"4\",\"mediaType\":\"1\",\"status\":\"1\"}', '2025-02-26 05:27:02'),
(240, 'admin', 'INSERT', 'resources', NULL, NULL, '{\"resource name\":\"testing13\"}', '2025-02-26 05:28:23'),
(241, 'admin', 'UPDATE', 'resources', '228', '{\"resource_id\":228,\"resource_title\":\"Culinart Arts\",\"resource_description\":\"n/a\",\"resource_published_date\":\"n/a\",\"resource_quantity\":2,\"resource_is_circulation\":0,\"dept_id\":4,\"type_id\":1,\"avail_id\":1}', '{\"resource_id\":\"228\",\"title\":\"Culinart Arts\",\"description\":\"n/a\",\"publishedDate\":\"n/a\",\"quantity\":\"2\",\"isCirculation\":\"false\",\"department\":\"4\",\"mediaType\":\"1\",\"status\":\"1\"}', '2025-02-27 02:43:44'),
(242, 'admin', 'UPDATE', 'resources', '228', '{\"resource_id\":228,\"resource_title\":\"Culinart Arts\",\"resource_description\":\"n/a\",\"resource_published_date\":\"n/a\",\"resource_quantity\":2,\"resource_is_circulation\":0,\"dept_id\":4,\"type_id\":1,\"avail_id\":1}', '{\"resource_id\":\"228\",\"title\":\"Culinart Arts\",\"description\":\"n/a\",\"publishedDate\":\"n/a\",\"quantity\":\"2\",\"isCirculation\":\"false\",\"department\":\"4\",\"mediaType\":\"1\",\"status\":\"1\"}', '2025-02-27 02:50:11'),
(243, 'admin', 'UPDATE', 'resources', '228', '{\"resource_id\":228,\"resource_title\":\"Culinart Arts\",\"resource_description\":\"n/a\",\"resource_published_date\":\"n/a\",\"resource_quantity\":2,\"resource_is_circulation\":0,\"dept_id\":4,\"type_id\":1,\"avail_id\":1}', '{\"resource_id\":\"228\",\"title\":\"Culinart Arts\",\"description\":\"n/a\",\"publishedDate\":\"n/a\",\"quantity\":\"2\",\"isCirculation\":\"false\",\"department\":\"4\",\"mediaType\":\"1\",\"status\":\"1\"}', '2025-02-27 02:54:54'),
(244, 'admin', 'UPDATE', 'resources', '228', '{\"resource_id\":228,\"resource_title\":\"Culinart Arts\",\"resource_description\":\"n/a\",\"resource_published_date\":\"n/a\",\"resource_quantity\":2,\"resource_is_circulation\":0,\"dept_id\":4,\"type_id\":1,\"avail_id\":1}', '{\"resource_id\":\"228\",\"title\":\"Culinart Arts\",\"description\":\"n/a\",\"publishedDate\":\"n/a\",\"quantity\":\"2\",\"isCirculation\":\"false\",\"department\":\"4\",\"mediaType\":\"1\",\"status\":\"1\"}', '2025-02-27 02:56:33'),
(245, 'admin', 'UPDATE', 'staffaccount', 'admin', 'active', '\"Deactivated a user: admin\"', '2025-02-27 03:22:49'),
(246, NULL, 'INSERT', 'checkout', '228', NULL, '\"Patron: Pauleen Dingcong borrowed a book: \'Culinart Arts\'\"', '2025-02-27 05:35:05'),
(247, NULL, 'INSERT', 'checkin', '228', NULL, '\"Patron: Pauleen Dingcong returned a book: \'Culinart Arts\'\"', '2025-02-27 05:35:33'),
(248, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-02-27 05:59:43'),
(249, 'admin', 'INSERT', 'checkin', '228', NULL, '\"Patron: Giolliana Plandez returned a book: \'Culinart Arts\'\"', '2025-02-27 06:36:13'),
(250, 'admin', 'INSERT', 'checkout', '228', NULL, '\"Patron: Pauleen Dingcong borrowed a book: \'Culinart Arts\'\"', '2025-02-27 07:00:23'),
(251, 'admin', 'INSERT', 'checkin', '228', NULL, '\"Patron: Pauleen Dingcong returned a book: \'Culinart Arts\'\"', '2025-02-27 07:01:12'),
(252, 'admin', 'UPDATE', 'staffaccount', 'admin', 'active', '\"Deactivated a user: admin\"', '2025-02-27 07:25:53'),
(253, 'admin', 'UPDATE', 'staffaccount', 'admin', 'inactive', '\"Activated a user: admin\"', '2025-02-27 07:27:42'),
(254, 'admin', 'UPDATE', 'staffaccount', 'admin', 'active', '\"Deactivated a user: admin\"', '2025-02-27 07:27:45'),
(255, 'admin', 'UPDATE', 'staffaccount', 'admin', 'inactive', '\"Activated a user: admin\"', '2025-02-27 07:28:22'),
(256, 'admin', 'INSERT', 'checkout', '228', NULL, '\"Patron: Pauleen Dingcong borrowed a book: \'Culinart Arts\'\"', '2025-02-27 07:59:03'),
(257, NULL, 'UPDATE', 'staffaccount', '20', '{\"staff_uname\":\"Nemia@123\",\"staff_fname\":\"Nemia\",\"staff_lname\":\"BERNAL\",\"role_id\":1,\"staff_password\":\"$2b$10$biYTxqfSQqyAQZN6L/eRTO2hIKL9Wn.mUBPOME2nTMF7i6rjrkMmS\"}', '\"Edited a user: Nemia@123 with ID: 20\"', '2025-02-27 08:47:40'),
(258, NULL, 'UPDATE', 'staffaccount', '20', '{\"staff_uname\":\"Nemia@123\",\"staff_fname\":\"Nemia2\",\"staff_lname\":\"BERNAL\",\"role_id\":1,\"staff_password\":\"$2b$10$n7J2CWRusRZF3g4Wi/SX.eeKTJPvVR76AiBjRtr.DybADCOOBsKXm\"}', '\"Edited a user: Nemia@123 with ID: 20\"', '2025-02-27 09:20:34'),
(259, NULL, 'UPDATE', 'staffaccount', '20', '{\"staff_uname\":\"Nemia@123\",\"staff_fname\":\"Nemia23\",\"staff_lname\":\"BERNAL\",\"role_id\":1,\"staff_password\":\"$2b$10$e6xLFuZfH2cTZbauE29vsuxdEXKe4u5QX1.mcFC4qW2LhSoNYrRuO\"}', '\"Edited a user: Nemia@123 with ID: 20\"', '2025-02-27 09:21:40'),
(260, 'admin', 'UPDATE', 'resources', '229', '{\"resource_id\":229,\"resource_title\":\"Food Service and Catering Management: A Practical Guide\",\"resource_description\":\"n/a\",\"resource_published_date\":\"2004\",\"resource_quantity\":0,\"resource_is_circulation\":0,\"dept_id\":4,\"type_id\":1,\"avail_id\":1}', '\"Edited a resource: \'Food Service and Catering Management: A Practical Guide\'\"', '2025-02-27 11:29:18'),
(261, 'admin', 'UPDATE', 'staffaccount', 'admin', 'active', '\"Deactivated a user: admin\"', '2025-02-27 11:43:56'),
(262, 'admin', 'UPDATE', 'staffaccount', 'admin', 'inactive', '\"Activated a user: admin\"', '2025-02-27 11:44:01'),
(263, 'admin', 'UPDATE', 'staffaccount', 'admin', 'inactive', '\"Activated a user: admin\"', '2025-02-27 11:44:06'),
(264, 'admin', 'INSERT', 'checkin', '228', NULL, '\"Patron: Pauleen Dingcong returned a book: \'Culinart Arts\'\"', '2025-02-27 14:29:32'),
(265, 'admin', 'INSERT', 'checkout', '228', NULL, '\"Patron: Giolliana Plandez borrowed a book: \'Culinart Arts\'\"', '2025-02-27 14:48:25'),
(266, 'admin', 'INSERT', 'checkin', '228', NULL, '\"Patron: Giolliana Plandez returned a book: \'Culinart Arts\'\"', '2025-02-27 14:49:01'),
(267, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-02-28 13:07:24'),
(268, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'thesis sample\'\"', '2025-02-28 13:10:44'),
(269, 'admin', 'UPDATE', 'staffaccount', 'admin', 'active', '\"Deactivated a user: admin\"', '2025-02-28 13:14:19'),
(270, 'admin', 'UPDATE', 'staffaccount', 'admin', 'inactive', '\"Activated a user: admin\"', '2025-02-28 13:14:24'),
(271, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'title\'\"', '2025-02-28 14:57:59'),
(272, NULL, 'INSERT', 'checkout', '290', NULL, '\"Patron: Giolliana Plandez borrowed a book: \'title\'\"', '2025-02-28 15:01:21'),
(273, 'admin', 'UPDATE', 'resources', '290', '{\"resource_id\":290,\"resource_title\":\"title\",\"resource_description\":null,\"resource_published_date\":\"202\",\"resource_quantity\":0,\"resource_is_circulation\":0,\"dept_id\":3,\"type_id\":1,\"avail_id\":1}', '\"Edited a resource: \'title\'\"', '2025-02-28 15:03:03'),
(274, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'sample3\'\"', '2025-02-28 15:05:05'),
(275, 'admin', 'UPDATE', 'resources', '291', '{\"resource_id\":291,\"resource_title\":\"sample3\",\"resource_description\":\"\",\"resource_published_date\":\"2002\",\"resource_quantity\":1,\"resource_is_circulation\":0,\"dept_id\":3,\"type_id\":1,\"avail_id\":1}', '\"Edited a resource: \'sample3\'\"', '2025-02-28 15:05:29'),
(276, 'admin', 'UPDATE', 'resources', '291', '{\"resource_id\":291,\"resource_title\":\"sample3\",\"resource_description\":\"\",\"resource_published_date\":\"2002\",\"resource_quantity\":1,\"resource_is_circulation\":0,\"dept_id\":3,\"type_id\":1,\"avail_id\":2}', '\"Edited a resource: \'sample3\'\"', '2025-02-28 15:06:00'),
(277, NULL, 'INSERT', 'checkout', '291', NULL, '\"Patron: Pauleen Dingcong borrowed a book: \'sample3\'\"', '2025-02-28 15:06:29'),
(278, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'journaltestoptional\'\"', '2025-02-28 15:11:12'),
(279, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'thesisoptional\'\"', '2025-02-28 15:13:22'),
(280, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-03-01 00:08:37'),
(281, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-03-01 02:31:33'),
(282, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-03-01 08:10:33'),
(283, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-03-01 08:52:55'),
(284, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-03-02 12:05:59'),
(285, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-03-02 13:37:38'),
(286, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-03-03 02:11:28'),
(287, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-03-03 02:12:42'),
(288, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'Housekeeping Management\'\"', '2025-03-03 05:57:09'),
(289, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'Financial Management in the Philippine Setting\'\"', '2025-03-03 08:42:22'),
(290, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'Cost Accounting: Its Nature and Usefulness\'\"', '2025-03-03 08:46:44'),
(291, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'Macro-economics: Concepts, Theories, and Policies 7th Edition\'\"', '2025-03-03 08:52:56'),
(292, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'21st Century Accounting Process: Basic Concepts and Procedures (18th Edition)\'\"', '2025-03-03 09:00:52'),
(293, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'A Contemporary Survey of Sentrong Pangkultura ng Biñan: Historicizing its Tangible Heritage\'\"', '2025-03-03 09:08:12'),
(294, 'admin', 'UPDATE', 'resources', '324', '{\"resource_id\":324,\"resource_title\":\"Macro-economics: Concepts, Theories, and Policies 7th Edition\",\"resource_description\":\"n/a\",\"resource_published_date\":\"1985\",\"resource_quantity\":1,\"resource_is_circulation\":1,\"dept_id\":3,\"type_id\":1,\"avail_id\":1}', '\"Edited a resource: \'Macro-economics: Concepts, Theories, and Policies (7th Edition)\'\"', '2025-03-03 09:24:19'),
(295, 'admin', 'INSERT', 'checkout', '240', NULL, '\"Patron: Nathalie Dayao borrowed a book: \'Applied Foodservice Sanitation\'\"', '2025-03-03 09:36:24'),
(296, 'admin', 'INSERT', 'checkin', '240', NULL, '\"Patron: Nathalie Dayao returned a book: \'Applied Foodservice Sanitation\'\"', '2025-03-03 09:36:58'),
(297, 'admin', 'INSERT', 'checkout', '324', NULL, '\"Patron: sample sample borrowed a book: \'Macro-economics: Concepts, Theories, and Policies (7th Edition)\'\"', '2025-03-03 09:37:46'),
(298, 'admin', 'INSERT', 'checkin', '324', NULL, '\"Patron: sample sample returned a book: \'Macro-economics: Concepts, Theories, and Policies (7th Edition)\'\"', '2025-03-03 09:38:53'),
(299, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged Out \"', '2025-03-04 01:26:03'),
(300, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-03-04 01:26:17'),
(301, 'admin', 'UPDATE', 'resources', '236', '{\"resource_id\":236,\"resource_title\":\"A Concise Guide in Food & Beverage Service Procedures 2nd Edition\",\"resource_description\":\"n/a\",\"resource_published_date\":\"2015\",\"resource_quantity\":2,\"resource_is_circulation\":0,\"dept_id\":4,\"type_id\":1,\"avail_id\":1}', '\"Edited a resource: \'A Concise Guide in Food & Beverage Service Procedures 2nd Edition\'\"', '2025-03-04 01:30:22'),
(302, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'Supply Chain Management in Hospitality Industry\'\"', '2025-03-04 05:43:56'),
(303, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-03-04 05:45:46'),
(304, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'Introduction to Meetings, Incentives, Conferences and Events Management (MICE)\'\"', '2025-03-04 05:47:25'),
(305, 'admin', 'UPDATE', 'resources', '328', '{\"resource_id\":328,\"resource_title\":\"Introduction to Meetings, Incentives, Conferences and Events Management (MICE)\",\"resource_description\":\"n/a\",\"resource_published_date\":\"2020\",\"resource_quantity\":1,\"resource_is_circulation\":1,\"dept_id\":4,\"type_id\":1,\"avail_id\":1}', '\"Edited a resource: \'Introduction to Meetings, Incentives, Conferences and Events Management (MICE)\'\"', '2025-03-04 05:50:27'),
(306, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'Cost and Materials Management in the Food Service Industry\'\"', '2025-03-04 05:54:08'),
(307, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'Pertinent Laws On Hospitality Management (Tourism Laws)\'\"', '2025-03-04 05:58:26'),
(308, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'Front Office Management and Operations\'\"', '2025-03-04 06:01:30'),
(309, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'Entrepreneurship In Tourism And Hospitality\'\"', '2025-03-04 06:04:07'),
(310, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'Tourism and Hospitality Research\'\"', '2025-03-04 06:05:59'),
(311, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'Introduction to Hotel and Front Office Operations\'\"', '2025-03-04 06:15:11'),
(312, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'Hospitality Supervision Case Scenarios\'\"', '2025-03-04 06:25:27'),
(313, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'Hotel & Motel Management And Operations\'\"', '2025-03-04 06:35:19'),
(314, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'Operations Management in Tourism and Hospitality\'\"', '2025-03-04 07:00:31'),
(315, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-03-04 07:33:12'),
(316, 'admin', 'UPDATE', 'resources', '321', '{\"resource_id\":321,\"resource_title\":\"Housekeeping Management\",\"resource_description\":\"Hotels are becoming increasingly conscious of their guests\' high expectations from the housekeeping department. This core textbook gives students on hospitality management courses their first look at the operation of this department.\",\"resource_published_date\":\"2000\",\"resource_quantity\":1,\"resource_is_circulation\":1,\"dept_id\":4,\"type_id\":1,\"avail_id\":1}', '\"Edited a resource: \'Housekeeping Management\'\"', '2025-03-04 08:32:51'),
(317, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'Learn and Practice Good Housekeeping\'\"', '2025-03-04 08:49:58'),
(318, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'Fundamentals in Lodging Operations\'\"', '2025-03-04 08:52:54'),
(319, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'Hotel Housekeeping\'\"', '2025-03-04 08:59:42'),
(320, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged Out \"', '2025-03-04 09:20:02'),
(321, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-03-04 09:20:26'),
(322, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged Out \"', '2025-03-04 09:20:56'),
(323, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-03-04 09:25:24'),
(324, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged Out \"', '2025-03-04 09:33:13'),
(325, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-03-04 09:33:23'),
(326, 'admin', 'INSERT', 'resources', NULL, NULL, '\"Added a new resource: \'Introduction to Hospitality Management\'\"', '2025-03-04 09:39:35'),
(327, 'admin', 'UPDATE', 'resources', '233', '{\"resource_id\":233,\"resource_title\":\"A Guide to Meal Management and Table Services Revised Edition\",\"resource_description\":\"n/a\",\"resource_published_date\":\"2005\",\"resource_quantity\":1,\"resource_is_circulation\":0,\"dept_id\":4,\"type_id\":1,\"avail_id\":2}', '\"Edited a resource: \'A Guide to Meal Management and Table Services Revised Edition\'\"', '2025-03-04 09:41:49'),
(328, 'admin', 'UPDATE', 'resources', '233', '{\"resource_id\":233,\"resource_title\":\"A Guide to Meal Management and Table Services Revised Edition\",\"resource_description\":\"n/a\",\"resource_published_date\":\"2005\",\"resource_quantity\":1,\"resource_is_circulation\":0,\"dept_id\":4,\"type_id\":1,\"avail_id\":2}', '\"Edited a resource: \'A Guide to Meal Management and Table Services Revised Edition\'\"', '2025-03-04 09:44:37'),
(329, 'admin', 'UPDATE', 'resources', '229', '{\"resource_id\":229,\"resource_title\":\"Food Service and Catering Management: A Practical Guide\",\"resource_description\":\"n/a\",\"resource_published_date\":\"2004\",\"resource_quantity\":0,\"resource_is_circulation\":0,\"dept_id\":4,\"type_id\":1,\"avail_id\":1}', '\"Edited a resource: \'Food Service and Catering Management: A Practical Guide\'\"', '2025-03-04 09:54:46'),
(330, 'admin', 'UPDATE', 'resources', '229', '{\"resource_id\":229,\"resource_title\":\"Food Service and Catering Management: A Practical Guide\",\"resource_description\":\"n/a\",\"resource_published_date\":\"2004\",\"resource_quantity\":0,\"resource_is_circulation\":1,\"dept_id\":4,\"type_id\":1,\"avail_id\":1}', '\"Edited a resource: \'Food Service and Catering Management: A Practical Guide\'\"', '2025-03-04 09:54:59'),
(331, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-03-04 09:59:28'),
(332, 'admin', 'INSERT', 'checkin', '291', NULL, '\"Patron: Pauleen Dingcong returned a book: \'sample3\'\"', '2025-03-04 10:06:35'),
(333, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-03-09 08:58:39'),
(334, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-03-10 09:28:57'),
(335, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-03-12 08:46:13'),
(336, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-03-12 23:41:08'),
(337, 'admin', 'UPDATE', 'resources', '240', '{\"resource_id\":240,\"resource_title\":\"Applied Foodservice Sanitation\",\"resource_description\":\"n/a\",\"resource_published_date\":\"1995\",\"resource_quantity\":1,\"resource_is_circulation\":0,\"dept_id\":4,\"type_id\":1,\"avail_id\":1}', '\"Edited a resource: \'Applied Foodservice Sanitation\'\"', '2025-03-12 23:42:30'),
(338, 'admin', 'SELECT', 'staffaccount', NULL, NULL, '\"Logged In \"', '2025-03-13 01:18:33'),
(339, 'admin', 'INSERT', 'checkout', '233', NULL, '\"Patron: sample sample borrowed a book: \'A Guide to Meal Management and Table Services Revised Edition\'\"', '2025-03-13 01:20:26'),
(340, 'admin', 'INSERT', 'staffaccount', NULL, NULL, '\"Added a new user: alien\"', '2025-03-13 01:22:24'),
(341, 'admin', 'INSERT', 'checkin', '233', NULL, '\"Patron: sample sample returned a book: \'A Guide to Meal Management and Table Services Revised Edition\'\"', '2025-03-13 01:29:54');

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
(148, 'Reyes', 'Ruth Estrada Javier -'),
(149, 'Austria', 'Chef Aurora S.'),
(150, 'Alvarez', 'Ma. Lindsay J.'),
(151, 'Oñas', 'Ethel May F.'),
(152, 'Kitchen', 'The Maya'),
(153, 'Roldan', 'Amelia Samson'),
(154, 'Edica', 'Benito Tangonan '),
(155, 'Boston', 'JJ'),
(156, 'Ramos', 'Celia'),
(157, 'Narvaez-Soriano', 'Nora'),
(158, 'Alvarez', 'Helen U.'),
(159, 'Cabuhal', 'Gina Marie M.'),
(160, 'Cariño', 'Celia E.'),
(161, 'Luces', 'Enrique R.'),
(162, 'Jr.', 'Reynaldo H. Carandang'),
(163, 'Cornell', 'Daryl Ace V.'),
(164, 'Abellana', 'Ephraimuel Jose L.'),
(165, 'Roxas', 'Christian Joy E.'),
(166, 'Ditan', 'Joseph Linford A.'),
(167, 'Marte-Lago', 'Elpedia M.'),
(168, 'Aquino-Pauig', 'Chef Xenia Zioneka P.'),
(169, 'n/a', 'n/a'),
(170, 'Shore', 'Dinah'),
(171, 'Banzuelo', 'Loida R.'),
(172, 'Lazaro', 'Amor S.'),
(173, 'Rojo', 'Lorenzo G.'),
(174, 'Yao', 'Claire Ann M.'),
(175, 'Garlough', 'Robert'),
(176, 'Ministries', 'RBC'),
(177, 'Asma', 'Jheawon P.'),
(178, 'Castillo', 'Lean Alejandro M.'),
(179, 'Piorque', 'Kenneth Arvin B.'),
(180, 'Tolentino', 'Arphee Dex C.'),
(181, 'Tohyama', 'Heihachiro'),
(182, 'Moriyama', 'Yukiko'),
(183, '', 'Benita V. Villanueva'),
(184, 'Education', 'Department of'),
(185, 'Buted', 'Dexter R. '),
(186, 'Celis', 'Mark Irvin. C'),
(187, 'Mejia', 'Rhea Corina B.'),
(188, 'Plandez', 'Giolliana'),
(189, 'Watson', 'Benjamin'),
(190, 'Petersen', 'Ken'),
(191, 'hellooffline', 'hellooffline'),
(192, 'sample', 'sample'),
(193, 'offlineoffline', 'offlineoffline'),
(194, 'offlinejournal', 'offlinejournal'),
(195, 'offlinethesis', 'offlinethesis'),
(196, 'offlinenewsletter', 'offlinenewsletter'),
(197, 'offlinedata', 'offlinedata'),
(198, 'offlined', 'offlined'),
(199, 'offlined2', 'offlined2'),
(200, 'offlined3', 'offlined3'),
(201, 'offlinebook', 'offlinebook'),
(202, 'offlinejournal2', 'offlinejournal2'),
(203, 'offlinenewsletter2', 'offlinenewsletter2'),
(204, 'offlinethesis2', 'offlinethesis2'),
(205, 'Casado', 'Matt A.'),
(206, 'Livio', 'Mario'),
(207, 'Saldaña', 'Cesar G.'),
(208, 'Deakin', 'Edward B. '),
(209, 'Maher', 'Michael W.'),
(210, 'Dernburg', 'Thomas F.'),
(211, 'Cruz-Manuel', 'Zenaida Vera'),
(212, 'Abreu', 'Arjeque M.'),
(213, 'Abrigo', 'Romar P.'),
(214, 'Barquilla', 'Mark Edward B.'),
(215, 'Campos', 'Arthur M.'),
(216, 'III', 'Narciso L. Calligan'),
(217, 'Noel', 'Jetro Czarlon Lourish B.'),
(218, 'Sueno', 'Herminio C.'),
(219, 'Baluyot', 'Michael Bhobet B.'),
(220, 'Lansangan-Cruz', 'Zenaida'),
(221, 'Roldan', 'Amelia S.'),
(222, 'Maranan', 'Mario H.'),
(223, 'Maranan', 'Jovid Maricar D.'),
(224, 'Rodriguez', 'Violeta V.'),
(225, 'DeVeau', 'Linsley T.'),
(226, 'Marcelo', 'Jefferson S.'),
(227, '', 'Girlie M. Samson'),
(228, 'Szende', 'Peter'),
(229, 'Gray', 'William S.'),
(230, 'Liguori', 'Salvatore C.'),
(231, 'Buenaventura', 'John Paul Guevarra'),
(232, 'Gutierez', 'Liberty Buenaventura'),
(233, 'Yap', 'Jennefer'),
(234, 'Landrito', 'Grace D.'),
(235, 'Policarpio', 'John Ericson'),
(236, 'Singh', 'Malini'),
(237, 'Walker', 'John R.'),
(238, 'Walker', 'Josielyn T.'),
(239, 'offlinesampledata', 'offlinesampledata');

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
(3, 'damaged');

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
(94, '9789719654025', 228, 70, 15, 'public/images/20241217_073837997_iOS.jpg'),
(95, '9712714578', 229, 71, 15, 'public/images/not_found.png'),
(96, '971971921371', 230, 72, 15, 'public/images/NO bookcover.jfif'),
(97, '9781465473530', 231, 73, 15, 'public\\images\\not_found.png'),
(98, '9710804286', 232, 74, 15, 'public/images/NO bookcover.jfif'),
(99, '971233905', 233, 75, 15, 'public/images/NO bookcover.jfif'),
(100, '9789710445765', 234, 76, 15, 'public/images/NO bookcover.jfif'),
(101, '9789719905813', 235, 76, 15, 'public/images/NO bookcover.jfif'),
(102, '9789719905935', 236, 76, 15, 'public/images/not_found.png'),
(103, '9789719996224', 237, 77, 15, 'public/images/NO bookcover.jfif'),
(104, '9710867148', 238, 74, 15, 'public/images/NO bookcover.jfif'),
(105, '9786214063239', 239, 76, 15, 'public/images/NO bookcover.jfif'),
(106, '0915452170', 240, 78, 15, 'public/images/20241217_074010993_iOS.jpg'),
(107, '03852468382495', 241, 79, 15, 'public/images/NO bookcover.jfif'),
(108, '0', 242, 76, 15, 'public/images/NO bookcover.jfif'),
(109, '9786214062829', 243, 76, 15, 'public/images/NO bookcover.jfif'),
(110, '9786214063284', 244, 76, 15, 'public/images/NO bookcover.jfif'),
(111, '9786210403824', 245, 75, 15, 'public/images/NO bookcover.jfif'),
(112, '9789814336642', 246, 80, 15, 'public/images/NO bookcover.jfif'),
(113, '4915249042', 249, 81, 15, 'public/images/NO bookcover.jfif'),
(135, '', 290, NULL, 6, 'public/images/not_found.png'),
(136, '', 291, NULL, 7, 'public/images/not_found.png'),
(139, 'null', 304, 92, 8, 'public/images/NO bookcover.jfif'),
(140, 'null', 305, 93, 9, 'public/images/481037828_564860416575811_7501493922096337725_n.jpg'),
(141, 'null', 306, 94, 1, 'public/images/481037828_564860416575811_7501493922096337725_n.jpg'),
(142, 'n/a', 314, 96, 2, 'public/images/not_found.png'),
(143, 'n/a', 315, 97, 1, 'public/images/not_found.png'),
(144, 'n/a', 316, 98, 1, 'public/images/not_found.png'),
(145, '0983190238', 317, 99, 1, 'public/images/not_found.png'),
(146, '0471251895', 321, 100, 15, 'public/images/NO bookcover.jfif'),
(147, '9711400081', 322, 101, 3, 'public/images/NO bookcover.jfif'),
(148, NULL, 323, 102, 4, 'public/images/NO bookcover.jfif'),
(149, '', 324, 103, 3, 'public/images/not_found.png'),
(150, '9789719368007', 325, 104, 3, 'public/images/Screenshot 2025-03-03 170154.png'),
(151, '9786210438956', 327, 75, 16, 'public/images/Supply-Chain-Management-in-Hospitality-Management.png'),
(152, '9786210403848', 328, 75, 16, 'public/images/opac-image.png'),
(153, '9789719213796', 329, 75, 16, 'public/images/Screenshot 2025-03-04 135516.png'),
(154, '9789710445233', 330, 76, 16, 'public/images/Screenshot 2025-03-04 135745.png'),
(155, '0133341453', 331, 105, 16, 'public/images/not_found.png'),
(156, NULL, 332, 76, 16, 'public/images/Entrep_Marcelo_37.jpg'),
(157, NULL, 333, 76, 16, 'public/images/0001-5.jpg'),
(158, NULL, 334, 106, 16, 'public/images/fc1dc481902c4bd514d2bfc306893b2d.jpg'),
(159, NULL, 335, 80, 16, 'public/images/images (5).jfif'),
(160, NULL, 336, 105, 16, 'public/images/images (6).jfif'),
(161, NULL, 337, NULL, 16, 'public/images/OperationsMgt_52.jpg'),
(162, '9789710445585', 338, 76, 16, 'public/images/opac-image (1).png'),
(163, '9786210434637', 339, 75, 16, 'public/images/ea18e72a24b6ae2dd631342fe83fcb19.png'),
(164, '9781259050534', 340, 107, 16, 'public/images/content (2).jfif'),
(165, '9781292021010', 341, 108, 16, 'http://books.google.com/books/content?id=GQgPngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_ap'),
(166, 'n/a', 342, 109, 1, 'public/images/not_found.png');

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
(101, '2025-02-24', 70),
(102, '2025-02-27', 73),
(103, '2025-02-27', 72),
(104, '2025-02-27', 74),
(105, '2025-02-27', 75),
(106, '2025-02-27', 76),
(107, '2025-03-03', 79),
(108, '2025-03-03', 80),
(109, '2025-03-04', 78),
(110, '2025-03-13', 81);

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
(70, '2025-02-24', '2025-03-03', 228, 4, 'returned'),
(71, '2025-02-24', '2025-02-03', 229, 2, 'overdue'),
(72, '2025-02-24', '2025-03-03', 228, 4, 'returned'),
(73, '2025-02-27', '2025-03-06', 228, 2, 'returned'),
(74, '2025-02-27', '2025-03-06', 228, 2, 'returned'),
(75, '2025-02-27', '2025-03-06', 228, 2, 'returned'),
(76, '2025-02-27', '2025-03-06', 228, 4, 'returned'),
(77, '2025-02-28', '2025-03-07', 290, 4, 'overdue'),
(78, '2025-02-28', '2025-03-07', 291, 2, 'returned'),
(79, '2025-03-03', '2025-03-10', 240, 3, 'returned'),
(80, '2025-03-03', '2025-03-10', 324, 18, 'returned'),
(81, '2025-03-13', '2025-03-20', 233, 18, 'returned');

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
(7, 'thesis and dissertation', '7');

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
(23, '', '', 292, 1, 'public/images/not_found.png'),
(24, 'undefined', 'undefined', 307, 1, 'public/images/481037828_564860416575811_7501493922096337725_n.jpg'),
(25, '', '', 312, 1, 'public/images/480911859_565049833223536_5551429044437532282_n.jpg'),
(26, 'offlinejournal2', 'offlinejournal2', 318, 2, 'public/images/not_found.png'),
(27, 'offlinenewsletter2', 'offlinenewsletter2', 319, 1, 'public/images/not_found.png');

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

--
-- Dumping data for table `overdue`
--

INSERT INTO `overdue` (`overdue_id`, `overdue_days`, `overdue_fine`, `checkout_id`) VALUES
(10, 57, 0, 71),
(11, 5, 0, 77);

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
  `course_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patron`
--

INSERT INTO `patron` (`patron_id`, `tup_id`, `patron_fname`, `patron_lname`, `patron_sex`, `patron_mobile`, `patron_email`, `category`, `college_id`, `course_id`) VALUES
(1, 'TUPM-21-1913', 'Lance', 'Bernal', 'Male', '09695295926', 'lance.bernal@tup.edu.ph', 'Student', 1, 1),
(2, 'TUPM-21-0220', 'Pauleen', 'Dingcong', 'Female', '09163770526', 'pauleen.dingcong@tup.edu.ph', 'Student', 1, 3),
(3, 'TUPM-21-2589', 'Nathalie', 'Dayao', 'Female', '09219161482', 'nathalie.dayao@tup.edu.ph', 'Student', 1, 1),
(4, 'TUPM-21-0210', 'Giolliana', 'Plandez', 'Female', '09151150102', 'giolliana.plandez@tup.edu.ph', 'Student', 1, 1),
(17, 'TUPM-22-2222', 'sample', 'sample', 'Male', '09270477362', 'pauleenanndingcong@gmail.com', 'Student', 1, 1),
(18, 'TUPM-22-2222', 'sample', 'sample', 'Male', '09151150102', 'giolliana.plandez@tup.edu.ph', 'Student', 1, 3),
(19, 'TUPM-33-3333', 'Jeonghan', 'Yoon', 'Male', '09270477362', 'jeonghan@gmail.com', 'Faculty', 1, 1);

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
(70, 'Unlimited Books Library Services & Publishing Inc.', 'Rm. 215 ICP Bldg. Recoletos St., cor Cabildo St., Intramuros Manila', 'unlimitedbooks2014@yahoo.com', '(02) 525-1649', 'n/a'),
(71, 'Anvil Publishing, Inc.', '8007-B Pioneer St., Brgy. Kapitolyo, Pasig City ', 'marketing@anvilpublishing.com', '637-3621, 7471622, 747-1624', 'www.anvilpublishing.com'),
(72, 'AR Skills Development & Management Services', 'Parañaque City, Metro-Manila, Philippines', 'amysroldan@yahoo.com', '9178367678', 'n/a'),
(73, 'n/a', 'n/a', 'n/a', 'n/a', 'n/a'),
(74, 'National Book Store', 'Quad Alpha Centrum Building, 125 Pioneer Street, Mandaluyong City 1550', 'n/a', '631-80-61', 'www.nationalbookstore.com'),
(75, 'Rex Book Store', '856 Nicanor Reyes, Sr. St., Manila', 'n/a', 'n/a', 'n/a'),
(76, 'Mindshapers Co., Inc.', '61 Muralla Street, Intramuros, Manila', 'mindshapersco@yahoo.com', '381-0466', 'n/a'),
(77, 'Bright House Publishing', 'Project 8, Quezon City, Philippines', 'bh_publishing2007@yahoo.com', 'n/a', '(02) 453-0786'),
(78, 'Kendall/Hunt Publishing Company', 'Dubuque, Iowa', 'n/a', 'n/a', 'n/a'),
(79, 'DoubleDay', '666 Fifth Avenue, New York, New York 10103', 'n/a', 'n/a', 'n/a'),
(80, 'Cengage Learning Asia Pte. Ltd', 'Unit 2105-2106 Raffles Corporate Center, Emerald Avenue, Ortigas Avenue, Pasig City, Philippines', 'asia.infophilippines@cengage.com', '(632) 915 5290 to 93', 'n/a'),
(81, 'Joie, Inc.', '1-8-3, Hirakawa-cho, Chiyoda-ku, Tokyo 102 Japan', 'n/a', 'n/a', 'n/a'),
(82, 'Sunshine Interlinks Publishing House, Inc.', '3F Maine City Tower, 236 Tomas Morato Avenue, Brgy. South Triangle, Quezon City', 'n/a', 'n/a', 'n/a'),
(83, 'Books Atbp. Publishing Corp/', '436 M. Leyva St., Dela Cruz Cmpd. Mandaluyong City', 'n/a', '5344697', 'n/a'),
(84, NULL, NULL, NULL, NULL, NULL),
(85, NULL, NULL, NULL, NULL, NULL),
(86, NULL, NULL, NULL, NULL, NULL),
(87, NULL, NULL, NULL, NULL, NULL),
(88, NULL, NULL, NULL, NULL, NULL),
(89, NULL, NULL, NULL, NULL, NULL),
(90, NULL, NULL, NULL, NULL, NULL),
(91, NULL, NULL, NULL, NULL, NULL),
(92, NULL, NULL, NULL, NULL, NULL),
(93, NULL, NULL, NULL, NULL, NULL),
(94, NULL, NULL, NULL, NULL, NULL),
(95, NULL, NULL, NULL, NULL, NULL),
(96, '', NULL, NULL, NULL, NULL),
(97, NULL, NULL, NULL, NULL, NULL),
(98, NULL, NULL, NULL, NULL, NULL),
(99, 'offlinebook', 'offlinebook', 'offlinebook', 'offlinebook', 'offlinebook'),
(100, 'John Wiley & Sons, Inc.', '605 Third Avenue, New York, NY 10158-0012', 'permreq@wiley.com', '8506011', 'n/a'),
(101, 'Afa Publications, Inc. ', 'Quezon City', 'n/a', 'n/a', 'n/a'),
(102, 'Richard D. Irwin, Inc. ', 'Homewood, Illinois 60430', 'n/a', 'n/a', 'n/a'),
(103, 'McGraw-Hill Book Co-Singapore', 'n/a', 'n/a', 'n/a', 'n/a'),
(104, 'Raintree Trading & Publishing, Inc.', '21 Matimtiman St., Teacher\'s Village, Quezon City', 'n/a', 'n/a', 'n/a'),
(105, 'Prentice Hall', 'Upper Saddle River, NJ 07458', 'n/a', 'n/a', 'n/a'),
(106, 'AR Skills Development and Management Services, Inc. (SDMS)', '180 Maple Street, Maywood Village II, Km. 18, South Superhighway, Paranaque City, Metro-Manila', 'arskills@yahoo.com', '8244061', 'www.arskills.com'),
(107, 'McGraw-Hill Publishing Company', 'n/a', 'n/a', 'n/a', 'n/a'),
(108, 'Pearson Education South Asia Pte Ltd. ', '23-25 First Lok Yang Road, Jurong Singapore 629733', 'n/a', 'n/a', 'www.prenhall.com/walker'),
(109, NULL, NULL, NULL, NULL, NULL);

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
(228, 148),
(228, 149),
(228, 150),
(228, 151),
(229, 152),
(230, 153),
(230, 154),
(231, 155),
(232, 156),
(233, 157),
(234, 158),
(234, 159),
(235, 160),
(235, 161),
(235, 162),
(236, 163),
(236, 164),
(237, 165),
(238, 166),
(239, 167),
(239, 168),
(240, 169),
(241, 170),
(242, 171),
(243, 160),
(243, 172),
(244, 173),
(245, 163),
(245, 174),
(246, 175),
(248, 177),
(248, 178),
(248, 179),
(248, 180),
(249, 181),
(249, 182),
(289, 148),
(290, 149),
(291, 149),
(291, 151),
(291, 152),
(292, 148),
(292, 150),
(293, 148),
(304, 191),
(305, 192),
(306, 193),
(307, 194),
(311, 195),
(312, 196),
(313, 197),
(314, 198),
(315, 199),
(316, 200),
(317, 201),
(318, 202),
(319, 202),
(319, 203),
(320, 202),
(320, 204),
(321, 205),
(321, 206),
(322, 207),
(323, 208),
(323, 209),
(324, 210),
(325, 211),
(326, 212),
(326, 213),
(326, 214),
(326, 215),
(326, 216),
(326, 217),
(326, 218),
(327, 219),
(328, 220),
(329, 221),
(330, 222),
(330, 223),
(330, 224),
(331, 208),
(331, 225),
(332, 226),
(332, 227),
(333, 160),
(334, 221),
(335, 228),
(336, 229),
(336, 230),
(337, 231),
(337, 232),
(338, 160),
(338, 233),
(338, 234),
(339, 235),
(340, 236),
(341, 237),
(341, 238),
(342, 239);

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
  `avail_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`resource_id`, `resource_title`, `resource_description`, `resource_published_date`, `original_resource_quantity`, `resource_quantity`, `resource_is_circulation`, `dept_id`, `type_id`, `avail_id`) VALUES
(228, 'Culinart Arts', 'n/a', 'n/a', 0, 3, 1, 4, 1, 1),
(229, 'Food Service and Catering Management: A Practical Guide', 'n/a', '2004', 0, 0, 1, 4, 1, 1),
(230, 'Food Service and Bartending Revised Edition', 'n/a', '2003', 0, 1, 0, 4, 1, 1),
(231, 'Go Kamado', 'An authoritative introduction to the ceramic kamado-style grill, with over 100 recipes for grilling, smoking, and baking, as well as practical guidance on grill use and maintenance. You\'ve got the grill--now get the skills. Learn how to grill, smoke, roast, and bake on the amazing, egg-shaped kamado grill. Backyard entertaining will never be the same once you unlock the potential of this versatile cooker. ', '2018', 0, 0, 0, 4, 1, 1),
(232, 'Philippine Recipes and Other International Recipes', 'n/a', '2012', 0, 1, 0, 4, 1, 1),
(233, 'A Guide to Meal Management and Table Services Revised Edition', 'n/a', '2005', 0, 1, 0, 4, 1, 2),
(234, 'Food Safety, Sanitation and Hygiene', 'n/a', '2010', 0, 2, 0, 4, 1, 1),
(235, 'Western Cuisine', 'n/a', '2014', 0, 1, 0, 4, 1, 1),
(236, 'A Concise Guide in Food & Beverage Service Procedures 2nd Edition', 'n/a', '2015', 0, 2, 1, 4, 1, 1),
(237, 'Technology and Livelihood Education: Cookery', 'n/a', '2015', 0, 1, 0, 4, 1, 1),
(238, 'Principles of Bar Operations', 'n/a', '2007', 0, 1, 0, 4, 1, 1),
(239, 'Introduction to Culinary Arts', 'n/a', '2022', 0, 1, 0, 4, 1, 1),
(240, 'Applied Foodservice Sanitation', 'n/a', '1995', 0, 1, 0, 4, 1, 1),
(241, 'The Dinah Shore American Kitchen', 'n/a', '1990', 0, 1, 0, 4, 1, 1),
(242, 'Asian Cuisine', 'n/a', '2020', 0, 1, 0, 4, 1, 1),
(243, 'Experience Baking', 'n/a', '2020', 0, 4, 0, 4, 1, 1),
(244, 'Bar and Beverage Service', 'n/a', '2022', 0, 2, 0, 4, 1, 1),
(245, 'Kitchen Essentials and Basic Food Preparation', 'n/a', '2021', 0, 2, 0, 4, 1, 1),
(246, 'Modern Food Service Purchasing: A Complete Resource', 'n/a', '2011', 0, 1, 0, 4, 1, 1),
(248, 'A TRACER STUDY OF THE BSHRM PROGRAM OF TECHNOLOGICAL UNIVERSITY OF THE PHILIPPINES FOR THE SCHOOL YEAR 2019-2022', 'n/a', '2024', 0, 2, 0, 4, 4, 1),
(249, 'Quick and Easy Sushi Cook Book', 'n/a', '1983', 0, 1, 0, 4, 1, 1),
(289, 'thesis sample', 'sample', '2002', 0, 1, 0, 2, 4, 1),
(290, 'title', 'null', '202', 0, 1, 1, 3, 1, 1),
(291, 'sample3', '', '2002', 0, 1, 1, 3, 1, 2),
(292, 'journaltestoptional', '', '2025', 0, 1, 0, 2, 2, 1),
(293, 'thesisoptional', '', '2002', 0, 1, 0, 6, 4, 1),
(294, 'offline data', NULL, '2002', 0, 1, 1, 2, 1, 1),
(295, 'offline', NULL, '2002', 0, 1, 1, 2, 1, 1),
(296, 'offlinesample', NULL, '2002', 0, 1, 1, 1, 1, 1),
(297, 'offlinesample2', NULL, '2002', 0, 1, 0, 2, 1, 1),
(298, 'offline4', NULL, '2002', 0, 1, 1, 1, 1, 1),
(304, 'hellooffline', NULL, '2003', 0, 1, 1, 3, 1, 1),
(305, 'sample', '', '2002', 0, 1, 0, 1, 1, 1),
(306, 'offlineoffline', '', '2002', 0, 1, 0, 1, 1, 1),
(307, 'offlinejournal', '', '2002', 0, 1, 0, 1, 2, 1),
(311, 'offlinethesis', '', '2002', 0, 1, 0, 1, 4, 1),
(312, 'offlinenewsletteredited', '', '2002', 0, 1, 0, 1, 3, 1),
(313, 'offlinedata', '', '2002', 0, 1, 0, 1, 1, 1),
(314, 'offlined', '', '2002', 0, 1, 0, 1, 1, 1),
(315, 'offlined2', '', '2002', 0, 1, 0, 1, 1, 1),
(316, 'offlined3', '', '2002', 0, 1, 0, 1, 1, 1),
(317, 'offlinebook(edited)', 'offlinebook', '2002', 0, 1, 0, 1, 1, 1),
(318, 'offlinejournal2', 'offlinejournal2', '2002', 0, 1, 0, 1, 2, 1),
(319, 'offlinenewsletter2', 'offlinenewsletter2', '2002', 0, 1, 0, 1, 3, 1),
(320, 'offlinethesis2', 'offlinethesis2', '2002', 0, 1, 0, 1, 4, 1),
(321, 'Housekeeping Management', 'Hotels are becoming increasingly conscious of their guests\' high expectations from the housekeeping department. This core textbook gives students on hospitality management courses their first look at the operation of this department.', '2000', 0, 1, 0, 4, 1, 1),
(322, 'Financial Management in the Philippine Setting', 'n/a', '1985', 0, 1, 1, 3, 1, 1),
(323, 'Cost Accounting: Its Nature and Usefulness', 'n/a', '1987', 0, 1, 1, 3, 1, 1),
(324, 'Macro-economics: Concepts, Theories, and Policies (7th Edition)', 'n/a', '1985', 0, 1, 0, 3, 1, 1),
(325, '21st Century Accounting Process: Basic Concepts and Procedures (18th Edition)', 'n/a', 'n/a', 0, 1, 1, 3, 1, 1),
(326, 'A Contemporary Survey of Sentrong Pangkultura ng Biñan: Historicizing its Tangible Heritage', 'n/a', '2018', 0, 1, 0, 6, 4, 1),
(327, 'Supply Chain Management in Hospitality Industry', 'n/a', '2022', 0, 2, 1, 4, 1, 1),
(328, 'Introduction to Meetings, Incentives, Conferences and Events Management (MICE)', 'n/a', '2020', 0, 1, 0, 4, 1, 1),
(329, 'Cost and Materials Management in the Food Service Industry', 'n/a', '2007', 0, 1, 1, 4, 1, 1),
(330, 'Pertinent Laws On Hospitality Management (Tourism Laws)', 'n/a', '2007', 0, 1, 1, 4, 1, 1),
(331, 'Front Office Management and Operations', 'n/a', '1996', 0, 1, 1, 4, 1, 1),
(332, 'Entrepreneurship In Tourism And Hospitality', 'n/a', '2022', 0, 1, 1, 4, 1, 1),
(333, 'Tourism and Hospitality Research', 'n/a', '2021', 0, 1, 1, 4, 1, 1),
(334, 'Introduction to Hotel and Front Office Operations', 'n/a', '2010', 0, 1, 1, 4, 1, 1),
(335, 'Hospitality Supervision Case Scenarios', 'n/a', '2011', 0, 1, 1, 4, 1, 1),
(336, 'Hotel & Motel Management And Operations', 'n/a', '1980', 0, 1, 1, 4, 1, 1),
(337, 'Operations Management in Tourism and Hospitality', 'n/a', '2023', 0, 1, 1, 4, 1, 1),
(338, 'Learn and Practice Good Housekeeping', 'n/a', '2009', 0, 1, 1, 4, 1, 1),
(339, 'Fundamentals in Lodging Operations', 'N/A', '2021', 0, 1, 1, 4, 1, 1),
(340, 'Hotel Housekeeping', 'n/a', '2012', 0, 1, 1, 4, 1, 1),
(341, 'Introduction to Hospitality Management', 'For courses in Introduction to Hospitality and Hospitality Management. Capturing the flavor and breadth of the industry, Introduction to Hospitality Management, Fourth Edition, explores all aspects of the field including: travel and tourism; lodging; foodservice; meetings, conventions and expositions; and leisure and recreation. Devoting six chapters to management, the text focuses on hospitality and management and uses first-person accounts, corporate profiles and industry morsels to foster a student\'s appreciation for the field. Throughout, author John R. Walker invites students to share this industry\'s unique enthusiasm and passion. The text is organized into five sections: the hospitality industry and tourism; lodging; restaurants, managed services, and beverages; recreation, theme parks, clubs, and gaming entertainment; and assemblies and event management.', '2013-07-30', 0, 1, 1, 4, 1, 1),
(342, 'offlinesampledata', '', '2002', 0, 1, 0, 1, 1, 1);

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
(12, 'staff', 'staff', 'staff', '$2b$10$9y2umaTy./ftgs/rOEYmd.kosW8yxJnBNT/3bDUfMxXn/E53K33EW', 'active', 2),
(13, 'staff2', 'staff2', 'staff2', '$2b$10$gSeLc3vyW/0OwbX9V19KpuJDlpJfclVYG2fnxnwBG5lUaVPbu2pyG', 'active', 2),
(14, 'lance', 'Lance', 'Bernal', '$2b$10$93aTeArSNugvKmveZg5r0Odfuqd4f7Rw9qKxdDs3c8Wnpdow7izv.', 'active', 1),
(20, 'Nemia@123', 'Nemia', 'BERNAL', '$2b$10$NPwdkZGjfh9qe5hexF8xI.bb3e9mQBQvnLEiMeOC8SIMFapTk.16a', 'active', 1),
(21, 'alien', 'Nathalie', 'Dayao', '$2b$10$UH3ZexPpzCZ0k0ZuDWsUzelmmUfHTK6tnNVRN3p/rP8YPR7DH/EH2', 'active', 1);

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
(34, 248, 29),
(36, 289, 1),
(37, 293, 29),
(38, 311, 30),
(39, 320, 31),
(40, 326, 32);

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
(16, 'hospitality management', '3', 3);

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
  MODIFY `adviser_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `audit_log`
--
ALTER TABLE `audit_log`
  MODIFY `audit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `availability`
--
ALTER TABLE `availability`
  MODIFY `avail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `checkin`
--
ALTER TABLE `checkin`
  MODIFY `checkin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `checkout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `journalnewsletter`
--
ALTER TABLE `journalnewsletter`
  MODIFY `jn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `overdue`
--
ALTER TABLE `overdue`
  MODIFY `overdue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `patron`
--
ALTER TABLE `patron`
  MODIFY `patron_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `pub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `resource_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=343;

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
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `thesis`
--
ALTER TABLE `thesis`
  MODIFY `thesis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
