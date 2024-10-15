-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2024 at 11:22 AM
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
-- Database: `satoefl`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'icon-chart-bar', '/', NULL, NULL, NULL),
(2, 0, 7, 'Admin', 'icon-server', '', NULL, NULL, '2024-06-21 09:37:36'),
(3, 2, 8, 'Users', 'icon-users', 'auth/users', NULL, NULL, '2024-06-21 09:37:36'),
(4, 2, 9, 'Roles', 'icon-user', 'auth/roles', NULL, NULL, '2024-06-21 09:37:36'),
(5, 2, 10, 'Permission', 'icon-ban', 'auth/permissions', NULL, NULL, '2024-06-21 09:37:36'),
(6, 2, 11, 'Menu', 'icon-bars', 'auth/menu', NULL, NULL, '2024-06-21 09:37:36'),
(7, 2, 12, 'Operation log', 'icon-history', 'auth/logs', NULL, NULL, '2024-06-21 09:37:36'),
(8, 0, 13, 'Helpers', 'icon-cogs', '', NULL, '2024-04-26 11:04:46', '2024-06-21 09:37:36'),
(9, 8, 14, 'Scaffold', 'icon-keyboard', 'helpers/scaffold', NULL, '2024-04-26 11:04:47', '2024-06-21 09:37:36'),
(10, 8, 15, 'Database terminal', 'icon-database', 'helpers/terminal/database', NULL, '2024-04-26 11:04:47', '2024-06-21 09:37:36'),
(11, 8, 16, 'Laravel artisan', 'icon-terminal', 'helpers/terminal/artisan', NULL, '2024-04-26 11:04:47', '2024-06-21 09:37:36'),
(12, 8, 17, 'Routes', 'icon-list-alt', 'helpers/routes', NULL, '2024-04-26 11:04:47', '2024-06-21 09:37:36'),
(24, 0, 2, 'Pengguna', 'icon-user-circle', 'users', NULL, '2024-04-29 22:44:32', '2024-06-10 07:24:48'),
(28, 0, 3, 'Jadwal', 'icon-calendar-day', 'jadwals', NULL, '2024-04-29 23:47:08', '2024-06-10 07:24:48'),
(30, 0, 4, 'Transaksi', 'icon-donate', 'transaksi', NULL, '2024-05-24 18:44:34', '2024-06-10 07:24:48'),
(33, 0, 5, 'Hasil Tes', 'icon-users', 'peserta-tests', NULL, '2024-06-01 22:19:03', '2024-06-27 00:03:12'),
(35, 0, 6, 'Feedback User', 'icon-smile', 'feedback', NULL, '2024-06-21 09:32:01', '2024-06-21 09:37:36');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `input` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-26 10:47:46', '2024-04-26 10:47:46'),
(2, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-26 10:47:55', '2024-04-26 10:47:55'),
(3, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-04-26 10:47:58', '2024-04-26 10:47:58'),
(4, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-04-26 10:48:03', '2024-04-26 10:48:03'),
(5, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-26 10:48:09', '2024-04-26 10:48:09'),
(6, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-26 11:04:54', '2024-04-26 11:04:54'),
(7, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-26 11:04:57', '2024-04-26 11:04:57'),
(8, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-04-26 11:05:00', '2024-04-26 11:05:00'),
(9, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"SELECT * FROM peserta\",\"_token\":\"TiLNPjBsWi2fidHYg6HqLDPoMyF5SdQObsg4WA09\"}', '2024-04-26 11:05:13', '2024-04-26 11:05:13'),
(10, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2024-04-26 11:05:20', '2024-04-26 11:05:20'),
(11, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-04-26 11:05:25', '2024-04-26 11:05:25'),
(12, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-26 11:05:39', '2024-04-26 11:05:39'),
(13, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-26 11:08:32', '2024-04-26 11:08:32'),
(14, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-26 11:09:02', '2024-04-26 11:09:02'),
(15, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-26 11:09:09', '2024-04-26 11:09:09'),
(16, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2024-04-26 11:10:23', '2024-04-26 11:10:23'),
(17, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2024-04-26 11:12:05', '2024-04-26 11:12:05'),
(18, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-26 11:12:26', '2024-04-26 11:12:26'),
(19, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-04-26 11:12:28', '2024-04-26 11:12:28'),
(20, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"maulana99\",\"name\":\"Maulana Rafinda\",\"avatar_file_del_\":\"new\\/Maulana.jpeg,\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"Maulana5000\",\"roles\":[\"1\",null],\"search_terms\":null,\"permissions\":[\"1\",null],\"_token\":\"TiLNPjBsWi2fidHYg6HqLDPoMyF5SdQObsg4WA09\"}', '2024-04-26 11:13:23', '2024-04-26 11:13:23'),
(21, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-26 11:13:24', '2024-04-26 11:13:24'),
(22, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-04-26 11:13:29', '2024-04-26 11:13:29'),
(23, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-26 11:13:53', '2024-04-26 11:13:53'),
(24, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-26 11:14:00', '2024-04-26 11:14:00'),
(25, 2, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-04-26 11:14:04', '2024-04-26 11:14:04'),
(26, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-26 11:14:06', '2024-04-26 11:14:06'),
(27, 2, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-04-26 11:14:08', '2024-04-26 11:14:08'),
(28, 2, 'admin/auth/users/2', 'GET', '127.0.0.1', '[]', '2024-04-26 11:14:16', '2024-04-26 11:14:16'),
(29, 2, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-04-26 11:14:19', '2024-04-26 11:14:19'),
(30, 2, 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"maulana99\",\"name\":\"Maulana Rafinda\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$qdUeHq7cMzQwzwbD2XOZHOeiPhHU5tSlj\\/EpqWY\\/OtPzATlrsGSWi\",\"roles\":[\"1\",null],\"search_terms\":null,\"permissions\":[\"1\",null],\"_token\":\"0MjL8SRA0DFC1g2wQN5bopWdtlMJZuKg1PUwDjav\",\"_method\":\"PUT\"}', '2024-04-26 11:14:28', '2024-04-26 11:14:28'),
(31, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-26 11:14:29', '2024-04-26 11:14:29'),
(32, 2, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-04-26 11:14:30', '2024-04-26 11:14:30'),
(33, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-26 11:14:32', '2024-04-26 11:14:32'),
(34, 2, 'admin/auth/users/2', 'GET', '127.0.0.1', '[]', '2024-04-26 11:14:33', '2024-04-26 11:14:33'),
(35, 2, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-04-26 11:14:36', '2024-04-26 11:14:36'),
(36, 2, 'admin/auth/users/2', 'GET', '127.0.0.1', '[]', '2024-04-26 11:14:38', '2024-04-26 11:14:38'),
(37, 2, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-04-26 11:14:45', '2024-04-26 11:14:45'),
(38, 2, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Maulana Rafinda\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$qdUeHq7cMzQwzwbD2XOZHOeiPhHU5tSlj\\/EpqWY\\/OtPzATlrsGSWi\",\"_token\":\"0MjL8SRA0DFC1g2wQN5bopWdtlMJZuKg1PUwDjav\",\"_method\":\"PUT\"}', '2024-04-26 11:15:47', '2024-04-26 11:15:47'),
(39, 2, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-04-26 11:15:48', '2024-04-26 11:15:48'),
(40, 2, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-04-26 11:24:32', '2024-04-26 11:24:32'),
(41, 2, 'admin/auth/users/2', 'GET', '127.0.0.1', '[]', '2024-04-26 11:25:00', '2024-04-26 11:25:00'),
(42, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-26 11:25:01', '2024-04-26 11:25:01'),
(43, 2, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-04-26 11:25:02', '2024-04-26 11:25:02'),
(44, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-26 11:25:11', '2024-04-26 11:25:11'),
(45, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-26 11:25:40', '2024-04-26 11:25:40'),
(46, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-26 11:25:44', '2024-04-26 11:25:44'),
(47, 2, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-04-26 11:25:46', '2024-04-26 11:25:46'),
(48, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-04-26 11:30:16', '2024-04-26 11:30:16'),
(49, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-26 11:30:22', '2024-04-26 11:30:22'),
(50, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 07:27:44', '2024-04-27 07:27:44'),
(51, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-27 07:28:07', '2024-04-27 07:28:07'),
(52, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2024-04-27 07:28:36', '2024-04-27 07:28:36'),
(53, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-04-27 07:28:38', '2024-04-27 07:28:38'),
(54, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-27 07:28:41', '2024-04-27 07:28:41'),
(55, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-04-27 07:28:42', '2024-04-27 07:28:42'),
(56, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 07:52:35', '2024-04-27 07:52:35'),
(57, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-04-27 07:52:39', '2024-04-27 07:52:39'),
(58, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-27 07:54:16', '2024-04-27 07:54:16'),
(59, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-04-27 07:54:22', '2024-04-27 07:54:22'),
(60, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 07:54:36', '2024-04-27 07:54:36'),
(61, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-27 07:56:10', '2024-04-27 07:56:10'),
(62, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-27 08:02:47', '2024-04-27 08:02:47'),
(63, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-27 08:03:40', '2024-04-27 08:03:40'),
(64, 2, 'admin/auth/users/1', 'GET', '127.0.0.1', '[]', '2024-04-27 08:09:02', '2024-04-27 08:09:02'),
(65, 2, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2024-04-27 08:09:09', '2024-04-27 08:09:09'),
(66, 2, 'admin/auth/users/1', 'GET', '127.0.0.1', '[]', '2024-04-27 08:09:18', '2024-04-27 08:09:18'),
(67, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-27 08:11:49', '2024-04-27 08:11:49'),
(68, 2, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-04-27 08:11:51', '2024-04-27 08:11:51'),
(69, 2, 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"maulana99\",\"name\":\"Maulana Rafinda\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$qdUeHq7cMzQwzwbD2XOZHOeiPhHU5tSlj\\/EpqWY\\/OtPzATlrsGSWi\",\"roles\":[\"1\",null],\"search_terms\":null,\"permissions\":[\"1\",null],\"_token\":\"l29Pr1n8T5AY16URoN84qJpxvRZjXeY3MrGH1xNm\",\"_method\":\"PUT\"}', '2024-04-27 08:12:05', '2024-04-27 08:12:05'),
(70, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-27 08:12:05', '2024-04-27 08:12:05'),
(71, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-27 08:12:10', '2024-04-27 08:12:10'),
(72, 2, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-04-27 08:12:18', '2024-04-27 08:12:18'),
(73, 2, 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"maulana99\",\"name\":\"Maulana Rafinda\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$qdUeHq7cMzQwzwbD2XOZHOeiPhHU5tSlj\\/EpqWY\\/OtPzATlrsGSWi\",\"roles\":[\"1\",null],\"search_terms\":null,\"permissions\":[\"1\",null],\"_token\":\"l29Pr1n8T5AY16URoN84qJpxvRZjXeY3MrGH1xNm\",\"_method\":\"PUT\"}', '2024-04-27 08:12:39', '2024-04-27 08:12:39'),
(74, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-27 08:12:42', '2024-04-27 08:12:42'),
(75, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-27 08:12:46', '2024-04-27 08:12:46'),
(76, 2, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2024-04-27 08:12:52', '2024-04-27 08:12:52'),
(77, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-27 08:13:25', '2024-04-27 08:13:25'),
(78, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-27 08:16:48', '2024-04-27 08:16:48'),
(79, 2, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"peserta\",\"model_name\":null,\"controller_name\":null,\"create\":[\"menu_item\"],\"fields\":[{\"name\":\"nama\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"nim\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"jk\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"prodi\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"no_hp\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"alamat\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"password\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"foto\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"l29Pr1n8T5AY16URoN84qJpxvRZjXeY3MrGH1xNm\"}', '2024-04-27 08:23:03', '2024-04-27 08:23:03'),
(80, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-27 08:23:03', '2024-04-27 08:23:03'),
(81, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-27 08:23:07', '2024-04-27 08:23:07'),
(82, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 08:23:12', '2024-04-27 08:23:12'),
(83, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 08:23:15', '2024-04-27 08:23:15'),
(84, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 08:23:17', '2024-04-27 08:23:17'),
(85, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 08:23:22', '2024-04-27 08:23:22'),
(86, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 08:23:26', '2024-04-27 08:23:26'),
(87, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-27 08:23:30', '2024-04-27 08:23:30'),
(88, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 08:23:37', '2024-04-27 08:23:37'),
(89, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-27 08:23:45', '2024-04-27 08:23:45'),
(90, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 08:23:53', '2024-04-27 08:23:53'),
(91, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 08:23:56', '2024-04-27 08:23:56'),
(92, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 08:24:01', '2024-04-27 08:24:01'),
(93, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 08:24:05', '2024-04-27 08:24:05'),
(94, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-27 08:24:09', '2024-04-27 08:24:09'),
(95, 2, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"peserta\",\"model_name\":\"App\\\\Models\\\\\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\\",\"create\":[\"menu_item\"],\"fields\":[{\"name\":\"nama\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"nim\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"jk\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"prodi\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"no_hp\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"alamat\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"password\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"foto\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"l29Pr1n8T5AY16URoN84qJpxvRZjXeY3MrGH1xNm\"}', '2024-04-27 08:25:56', '2024-04-27 08:25:56'),
(96, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-27 08:25:56', '2024-04-27 08:25:56'),
(97, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-27 08:26:08', '2024-04-27 08:26:08'),
(98, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-27 08:26:25', '2024-04-27 08:26:25'),
(99, 2, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"peserta\",\"model_name\":\"App\\\\Models\\\\\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\\",\"create\":[\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"nama\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"nim\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"jk\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"prodi\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"no_hp\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"alamat\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"password\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"foto\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"l29Pr1n8T5AY16URoN84qJpxvRZjXeY3MrGH1xNm\"}', '2024-04-27 08:27:19', '2024-04-27 08:27:19'),
(100, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-27 08:27:21', '2024-04-27 08:27:21'),
(101, 2, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-04-27 08:28:25', '2024-04-27 08:28:25'),
(102, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-27 08:28:31', '2024-04-27 08:28:31'),
(103, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 08:28:42', '2024-04-27 08:28:42'),
(104, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 08:40:34', '2024-04-27 08:40:34'),
(105, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-27 08:40:58', '2024-04-27 08:40:58'),
(106, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 08:41:03', '2024-04-27 08:41:03'),
(107, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 08:42:19', '2024-04-27 08:42:19'),
(108, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 08:42:55', '2024-04-27 08:42:55'),
(109, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 08:47:44', '2024-04-27 08:47:44'),
(110, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 08:48:22', '2024-04-27 08:48:22'),
(111, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 08:48:24', '2024-04-27 08:48:24'),
(112, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-27 08:48:50', '2024-04-27 08:48:50'),
(113, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 08:50:06', '2024-04-27 08:50:06'),
(114, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-27 08:50:17', '2024-04-27 08:50:17'),
(115, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-04-27 08:50:19', '2024-04-27 08:50:19'),
(116, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-27 08:50:23', '2024-04-27 08:50:23'),
(117, 1, 'admin/auth/menu/14', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"dQDp31s26Ww2oIaYNAwiAo0qgwXwqatGGpyiH9TG\"}', '2024-04-27 08:50:30', '2024-04-27 08:50:30'),
(118, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-27 08:50:31', '2024-04-27 08:50:31'),
(119, 1, 'admin/auth/menu/15', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"dQDp31s26Ww2oIaYNAwiAo0qgwXwqatGGpyiH9TG\"}', '2024-04-27 08:50:34', '2024-04-27 08:50:34'),
(120, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-27 08:50:35', '2024-04-27 08:50:35'),
(121, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-27 08:50:38', '2024-04-27 08:50:38'),
(122, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 08:50:48', '2024-04-27 08:50:48'),
(123, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-27 08:50:51', '2024-04-27 08:50:51'),
(124, 1, 'admin/auth/menu/13', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"dQDp31s26Ww2oIaYNAwiAo0qgwXwqatGGpyiH9TG\"}', '2024-04-27 08:50:54', '2024-04-27 08:50:54'),
(125, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-27 08:50:54', '2024-04-27 08:50:54'),
(126, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-27 08:50:57', '2024-04-27 08:50:57'),
(127, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 08:51:03', '2024-04-27 08:51:03'),
(128, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-27 08:54:16', '2024-04-27 08:54:16'),
(129, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-04-27 08:54:19', '2024-04-27 08:54:19'),
(130, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 08:55:17', '2024-04-27 08:55:17'),
(131, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 08:55:33', '2024-04-27 08:55:33'),
(132, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 08:56:14', '2024-04-27 08:56:14'),
(133, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 08:57:05', '2024-04-27 08:57:05'),
(134, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 08:57:22', '2024-04-27 08:57:22'),
(135, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 08:57:45', '2024-04-27 08:57:45'),
(136, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 09:00:34', '2024-04-27 09:00:34'),
(137, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-27 09:00:39', '2024-04-27 09:00:39'),
(138, 1, 'admin/auth/menu/16', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"gSULTzRBSFsRm4E7MYc8dayVOCud9MSo5zBrGVWM\"}', '2024-04-27 09:00:54', '2024-04-27 09:00:54'),
(139, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-27 09:00:54', '2024-04-27 09:00:54'),
(140, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-27 09:01:12', '2024-04-27 09:01:12'),
(141, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 09:01:22', '2024-04-27 09:01:22'),
(142, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 09:02:30', '2024-04-27 09:02:30'),
(143, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 09:03:49', '2024-04-27 09:03:49'),
(144, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 09:03:57', '2024-04-27 09:03:57'),
(145, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 09:04:23', '2024-04-27 09:04:23'),
(146, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 09:04:32', '2024-04-27 09:04:32'),
(147, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 09:05:15', '2024-04-27 09:05:15'),
(148, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 09:14:07', '2024-04-27 09:14:07'),
(149, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 09:14:14', '2024-04-27 09:14:14'),
(150, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-27 09:14:18', '2024-04-27 09:14:18'),
(151, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"peserta\",\"model_name\":\"App\\\\Models\\\\Peserta\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\PesertaController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"nama\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"jk\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"nim\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"prodi\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"no_hp\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"alamat\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"password\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"foto\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"gSULTzRBSFsRm4E7MYc8dayVOCud9MSo5zBrGVWM\"}', '2024-04-27 09:20:58', '2024-04-27 09:20:58'),
(152, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-27 09:20:58', '2024-04-27 09:20:58'),
(153, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"peserta\",\"model_name\":\"App\\\\Models\\\\Peserta\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\PesertaController\",\"create\":[\"model\",\"controller\",\"menu_item\"],\"fields\":[{\"name\":\"nama\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"jk\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"nim\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"prodi\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"no_hp\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"alamat\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"password\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"foto\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"gSULTzRBSFsRm4E7MYc8dayVOCud9MSo5zBrGVWM\"}', '2024-04-27 09:21:51', '2024-04-27 09:21:51'),
(154, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-27 09:21:54', '2024-04-27 09:21:54'),
(155, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-27 09:21:58', '2024-04-27 09:21:58'),
(156, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-27 09:22:42', '2024-04-27 09:22:42'),
(157, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-29 22:26:46', '2024-04-29 22:26:46'),
(158, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-29 22:27:47', '2024-04-29 22:27:47'),
(159, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-04-29 22:27:54', '2024-04-29 22:27:54'),
(160, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 22:28:00', '2024-04-29 22:28:00'),
(161, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-29 22:28:04', '2024-04-29 22:28:04'),
(162, 1, 'admin/auth/menu/21', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"CWwGy4NEV1hCtfgdxGTcDcsRumEfJUebQgBj1pF9\"}', '2024-04-29 22:28:12', '2024-04-29 22:28:12'),
(163, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-29 22:28:12', '2024-04-29 22:28:12'),
(164, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-29 22:28:15', '2024-04-29 22:28:15'),
(165, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-04-29 22:28:22', '2024-04-29 22:28:22'),
(166, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-04-29 22:29:42', '2024-04-29 22:29:42'),
(167, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-29 22:29:53', '2024-04-29 22:29:53'),
(168, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 22:30:15', '2024-04-29 22:30:15'),
(169, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"peserta\",\"model_name\":\"App\\\\Models\\\\Peserta\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\PesertaController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"nama\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"nim\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"jk\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"prodi\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"no_hp\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"alamat\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"password\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"foto\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"CWwGy4NEV1hCtfgdxGTcDcsRumEfJUebQgBj1pF9\"}', '2024-04-29 22:32:11', '2024-04-29 22:32:11'),
(170, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 22:32:12', '2024-04-29 22:32:12'),
(171, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"peserta\",\"model_name\":\"App\\\\Models\\\\Peserta\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\PesertaController\",\"create\":[\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"nama\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"nim\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"jk\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"prodi\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"no_hp\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"alamat\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"password\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"foto\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"CWwGy4NEV1hCtfgdxGTcDcsRumEfJUebQgBj1pF9\"}', '2024-04-29 22:32:38', '2024-04-29 22:32:38'),
(172, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 22:32:40', '2024-04-29 22:32:40'),
(173, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 22:32:59', '2024-04-29 22:32:59'),
(174, 1, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 22:33:01', '2024-04-29 22:33:01'),
(175, 1, 'admin/pesertas/5/edit', 'GET', '127.0.0.1', '[]', '2024-04-29 22:33:07', '2024-04-29 22:33:07'),
(176, 1, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 22:33:11', '2024-04-29 22:33:11'),
(177, 1, 'admin/pesertas', 'GET', '127.0.0.1', '{\"id\":\"2\"}', '2024-04-29 22:33:25', '2024-04-29 22:33:25'),
(178, 1, 'admin/pesertas', 'GET', '127.0.0.1', '{\"id\":\"5\"}', '2024-04-29 22:33:27', '2024-04-29 22:33:27'),
(179, 1, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 22:33:31', '2024-04-29 22:33:31'),
(180, 1, 'admin/pesertas/5', 'GET', '127.0.0.1', '[]', '2024-04-29 22:33:47', '2024-04-29 22:33:47'),
(181, 1, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 22:33:50', '2024-04-29 22:33:50'),
(182, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-29 22:33:52', '2024-04-29 22:33:52'),
(183, 1, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 22:33:55', '2024-04-29 22:33:55'),
(184, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-29 22:34:19', '2024-04-29 22:34:19'),
(185, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-04-29 22:34:21', '2024-04-29 22:34:21'),
(186, 1, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 22:34:23', '2024-04-29 22:34:23'),
(187, 1, 'admin/pesertas', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2024-04-29 22:34:29', '2024-04-29 22:34:29'),
(188, 1, 'admin/pesertas/create', 'GET', '127.0.0.1', '[]', '2024-04-29 22:35:24', '2024-04-29 22:35:24'),
(189, 1, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 22:35:36', '2024-04-29 22:35:36'),
(190, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-29 22:35:38', '2024-04-29 22:35:38'),
(191, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-29 22:32:24', '2024-04-29 22:32:24'),
(192, 2, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-04-29 22:32:32', '2024-04-29 22:32:32'),
(193, 2, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Maulana Rafinda\",\"avatar_file_del_\":\"\\/storage\\/images\\/user.svg,\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$qdUeHq7cMzQwzwbD2XOZHOeiPhHU5tSlj\\/EpqWY\\/OtPzATlrsGSWi\",\"_token\":\"hEJguWGKC8NGlwmw52RMXZ08B1Oqn7HBBGEyhdNH\",\"_method\":\"PUT\"}', '2024-04-29 22:32:41', '2024-04-29 22:32:41'),
(194, 2, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-04-29 22:32:42', '2024-04-29 22:32:42'),
(195, 2, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-04-29 22:37:07', '2024-04-29 22:37:07'),
(196, 2, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-04-29 22:38:32', '2024-04-29 22:38:32'),
(197, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 22:38:35', '2024-04-29 22:38:35'),
(198, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-29 22:38:39', '2024-04-29 22:38:39'),
(199, 2, 'admin/auth/menu/22', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"hEJguWGKC8NGlwmw52RMXZ08B1Oqn7HBBGEyhdNH\"}', '2024-04-29 22:38:42', '2024-04-29 22:38:42'),
(200, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-29 22:38:43', '2024-04-29 22:38:43'),
(201, 2, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-04-29 22:38:49', '2024-04-29 22:38:49'),
(202, 2, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-04-29 22:40:55', '2024-04-29 22:40:55'),
(203, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 22:41:10', '2024-04-29 22:41:10'),
(204, 2, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"peserta\",\"model_name\":\"App\\\\Models\\\\\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"hEJguWGKC8NGlwmw52RMXZ08B1Oqn7HBBGEyhdNH\"}', '2024-04-29 22:41:15', '2024-04-29 22:41:15'),
(205, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 22:41:16', '2024-04-29 22:41:16'),
(206, 2, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"peserta\",\"model_name\":\"App\\\\Models\\\\Peserta\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\PesertaController\",\"create\":[\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"nama\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"nim\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"jk\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"prodi\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"no_hp\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"alamat\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"password\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"hEJguWGKC8NGlwmw52RMXZ08B1Oqn7HBBGEyhdNH\"}', '2024-04-29 22:42:17', '2024-04-29 22:42:17'),
(207, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 22:42:18', '2024-04-29 22:42:18'),
(208, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 22:42:59', '2024-04-29 22:42:59'),
(209, 2, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"peserta\",\"model_name\":\"App\\\\Models\\\\Peserta\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\PesertaController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"nama\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"nim\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"jk\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"prodi\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"no_hp\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"alamat\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"password\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"hEJguWGKC8NGlwmw52RMXZ08B1Oqn7HBBGEyhdNH\"}', '2024-04-29 22:44:27', '2024-04-29 22:44:27'),
(210, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 22:44:27', '2024-04-29 22:44:27'),
(211, 2, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"peserta\",\"model_name\":\"App\\\\Models\\\\Peserta\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\PesertaController\",\"create\":[\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"nama\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"nim\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"jk\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"prodi\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"no_hp\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"alamat\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"password\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"hEJguWGKC8NGlwmw52RMXZ08B1Oqn7HBBGEyhdNH\"}', '2024-04-29 22:44:32', '2024-04-29 22:44:32'),
(212, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 22:44:34', '2024-04-29 22:44:34'),
(213, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 22:44:49', '2024-04-29 22:44:49'),
(214, 2, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 22:44:51', '2024-04-29 22:44:51'),
(215, 2, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 22:44:53', '2024-04-29 22:44:53'),
(216, 2, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 22:44:54', '2024-04-29 22:44:54'),
(217, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-29 22:44:58', '2024-04-29 22:44:58'),
(218, 2, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-04-29 22:45:08', '2024-04-29 22:45:08'),
(219, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-29 22:45:10', '2024-04-29 22:45:10'),
(220, 2, 'admin/auth/menu/23', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"hEJguWGKC8NGlwmw52RMXZ08B1Oqn7HBBGEyhdNH\"}', '2024-04-29 22:45:22', '2024-04-29 22:45:22'),
(221, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-29 22:45:23', '2024-04-29 22:45:23'),
(222, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-29 22:45:26', '2024-04-29 22:45:26'),
(223, 2, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 22:45:28', '2024-04-29 22:45:28'),
(224, 2, 'admin/pesertas/5/edit', 'GET', '127.0.0.1', '[]', '2024-04-29 22:45:33', '2024-04-29 22:45:33'),
(225, 2, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 22:49:47', '2024-04-29 22:49:47'),
(226, 2, 'admin/pesertas/create', 'GET', '127.0.0.1', '[]', '2024-04-29 22:49:55', '2024-04-29 22:49:55'),
(227, 2, 'admin/pesertas', 'POST', '127.0.0.1', '{\"nama\":\"Test\",\"nim\":\"96\",\"jk\":\"Laki\",\"prodi\":\"Teknologi Informasi\",\"no_hp\":\"1212\",\"alamat\":\"Maulana\",\"email\":\"maulana@gmail.com\",\"password\":\"*****-filtered-out-*****\",\"_token\":\"hEJguWGKC8NGlwmw52RMXZ08B1Oqn7HBBGEyhdNH\"}', '2024-04-29 22:50:41', '2024-04-29 22:50:41'),
(228, 2, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 22:50:42', '2024-04-29 22:50:42'),
(229, 2, 'admin/pesertas/7', 'GET', '127.0.0.1', '[]', '2024-04-29 22:50:51', '2024-04-29 22:50:51'),
(230, 2, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 22:51:34', '2024-04-29 22:51:34'),
(231, 2, 'admin/pesertas/7/edit', 'GET', '127.0.0.1', '[]', '2024-04-29 22:51:36', '2024-04-29 22:51:36'),
(232, 2, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 22:51:40', '2024-04-29 22:51:40'),
(233, 2, 'admin/pesertas/7', 'GET', '127.0.0.1', '[]', '2024-04-29 22:51:42', '2024-04-29 22:51:42'),
(234, 2, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 22:51:44', '2024-04-29 22:51:44'),
(235, 2, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 22:53:35', '2024-04-29 22:53:35'),
(236, 2, 'admin/pesertas/7/edit', 'GET', '127.0.0.1', '[]', '2024-04-29 22:53:42', '2024-04-29 22:53:42'),
(237, 2, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 22:53:43', '2024-04-29 22:53:43'),
(238, 2, 'admin/pesertas/7', 'GET', '127.0.0.1', '[]', '2024-04-29 22:53:44', '2024-04-29 22:53:44'),
(239, 2, 'admin/pesertas/7', 'GET', '127.0.0.1', '[]', '2024-04-29 22:53:58', '2024-04-29 22:53:58'),
(240, 2, 'admin/pesertas/7/edit', 'GET', '127.0.0.1', '[]', '2024-04-29 22:54:13', '2024-04-29 22:54:13'),
(241, 2, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 22:54:21', '2024-04-29 22:54:21'),
(242, 2, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 22:55:05', '2024-04-29 22:55:05'),
(243, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-04-29 22:57:24', '2024-04-29 22:57:24'),
(244, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-29 22:57:44', '2024-04-29 22:57:44'),
(245, 2, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 22:57:48', '2024-04-29 22:57:48'),
(246, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-04-29 22:58:11', '2024-04-29 22:58:11'),
(247, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-29 22:58:29', '2024-04-29 22:58:29'),
(248, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-29 23:02:02', '2024-04-29 23:02:02'),
(249, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-29 23:03:21', '2024-04-29 23:03:21'),
(250, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-29 23:03:43', '2024-04-29 23:03:43'),
(251, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-29 23:07:37', '2024-04-29 23:07:37'),
(252, 1, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 23:07:43', '2024-04-29 23:07:43'),
(253, 1, 'admin/pesertas/5/edit', 'GET', '127.0.0.1', '[]', '2024-04-29 23:07:46', '2024-04-29 23:07:46'),
(254, 1, 'admin/pesertas/5', 'PUT', '127.0.0.1', '{\"nama\":\"Maulana Rafinda\",\"nim\":\"2005903040096\",\"jk\":\"Laki-laki\",\"prodi\":\"Teknologi Informasi\",\"no_hp\":\"082275126681\",\"alamat\":\"Peulumat, Labuhan Haji Timur\",\"email\":\"maulanansn@gmail.com\",\"password\":\"*****-filtered-out-*****\",\"image_file_del_\":\"maulana.jpg,\",\"_token\":\"z7hjvp8MF94Am22KCotCASlfwsTYqdBWXfdibXM4\",\"_method\":\"PUT\"}', '2024-04-29 23:07:59', '2024-04-29 23:07:59'),
(255, 1, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 23:08:00', '2024-04-29 23:08:00'),
(256, 1, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 23:08:04', '2024-04-29 23:08:04'),
(257, 1, 'admin/pesertas/5/edit', 'GET', '127.0.0.1', '[]', '2024-04-29 23:08:08', '2024-04-29 23:08:08'),
(258, 1, 'admin/pesertas/5', 'PUT', '127.0.0.1', '{\"nama\":\"Maulana Rafinda\",\"nim\":\"2005903040096\",\"jk\":\"Laki-laki\",\"prodi\":\"Teknologi Informasi\",\"no_hp\":\"082275126681\",\"alamat\":\"Peulumat, Labuhan Haji Timur\",\"email\":\"maulanansn@gmail.com\",\"password\":\"*****-filtered-out-*****\",\"_token\":\"z7hjvp8MF94Am22KCotCASlfwsTYqdBWXfdibXM4\",\"_method\":\"PUT\"}', '2024-04-29 23:08:23', '2024-04-29 23:08:23'),
(259, 1, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 23:08:24', '2024-04-29 23:08:24'),
(260, 1, 'admin/pesertas/6', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"z7hjvp8MF94Am22KCotCASlfwsTYqdBWXfdibXM4\"}', '2024-04-29 23:08:31', '2024-04-29 23:08:31'),
(261, 1, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 23:08:31', '2024-04-29 23:08:31'),
(262, 1, 'admin/pesertas/7', 'GET', '127.0.0.1', '[]', '2024-04-29 23:08:34', '2024-04-29 23:08:34'),
(263, 1, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 23:08:35', '2024-04-29 23:08:35'),
(264, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 23:11:11', '2024-04-29 23:11:11'),
(265, 1, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 23:14:19', '2024-04-29 23:14:19'),
(266, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 23:14:42', '2024-04-29 23:14:42'),
(267, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-04-29 23:15:52', '2024-04-29 23:15:52'),
(268, 1, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 23:15:58', '2024-04-29 23:15:58'),
(269, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 23:16:02', '2024-04-29 23:16:02'),
(270, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"tes\",\"model_name\":\"App\\\\Models\\\\Tes\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\TesController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"id_peserta\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":\"unique\",\"default\":null,\"comment\":null},{\"name\":\"jadwal\",\"type\":\"dateTime\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"harga\",\"type\":\"float\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"z7hjvp8MF94Am22KCotCASlfwsTYqdBWXfdibXM4\"}', '2024-04-29 23:20:33', '2024-04-29 23:20:33'),
(271, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 23:20:36', '2024-04-29 23:20:36'),
(272, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"tes\",\"model_name\":\"App\\\\Models\\\\Tes\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\TesController\",\"create\":[\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"id_peserta\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":\"unique\",\"default\":null,\"comment\":null},{\"name\":\"jadwal\",\"type\":\"dateTime\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"harga\",\"type\":\"float\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"z7hjvp8MF94Am22KCotCASlfwsTYqdBWXfdibXM4\"}', '2024-04-29 23:20:50', '2024-04-29 23:20:50'),
(273, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 23:20:51', '2024-04-29 23:20:51'),
(274, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 23:21:21', '2024-04-29 23:21:21'),
(275, 1, 'admin/tes', 'GET', '127.0.0.1', '[]', '2024-04-29 23:21:24', '2024-04-29 23:21:24'),
(276, 1, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 23:21:28', '2024-04-29 23:21:28'),
(277, 1, 'admin/tes', 'GET', '127.0.0.1', '[]', '2024-04-29 23:21:30', '2024-04-29 23:21:30'),
(278, 1, 'admin/tes/create', 'GET', '127.0.0.1', '[]', '2024-04-29 23:21:31', '2024-04-29 23:21:31'),
(279, 1, 'admin/tes', 'GET', '127.0.0.1', '[]', '2024-04-29 23:21:53', '2024-04-29 23:21:53'),
(280, 1, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 23:21:55', '2024-04-29 23:21:55'),
(281, 1, 'admin/tes', 'GET', '127.0.0.1', '[]', '2024-04-29 23:21:56', '2024-04-29 23:21:56'),
(282, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-29 23:23:07', '2024-04-29 23:23:07'),
(283, 1, 'admin/tes', 'GET', '127.0.0.1', '[]', '2024-04-29 23:23:13', '2024-04-29 23:23:13'),
(284, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-29 23:31:30', '2024-04-29 23:31:30'),
(285, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-04-29 23:31:42', '2024-04-29 23:31:42'),
(286, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-29 23:31:47', '2024-04-29 23:31:47'),
(287, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-04-29 23:31:49', '2024-04-29 23:31:49'),
(288, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-29 23:33:16', '2024-04-29 23:33:16'),
(289, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-29 23:34:18', '2024-04-29 23:34:18'),
(290, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-29 23:40:58', '2024-04-29 23:40:58'),
(291, 1, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 23:41:00', '2024-04-29 23:41:00'),
(292, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 23:41:04', '2024-04-29 23:41:04'),
(293, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"jadwal\",\"model_name\":\"App\\\\Models\\\\Jadwal\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\JadwalController\",\"create\":[\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"jadwal\",\"type\":\"dateTime\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"harga\",\"type\":\"float\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"z7hjvp8MF94Am22KCotCASlfwsTYqdBWXfdibXM4\"}', '2024-04-29 23:44:17', '2024-04-29 23:44:17'),
(294, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 23:44:20', '2024-04-29 23:44:20'),
(295, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 23:44:24', '2024-04-29 23:44:24'),
(296, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 23:44:57', '2024-04-29 23:44:57'),
(297, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 23:45:00', '2024-04-29 23:45:00'),
(298, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-29 23:45:30', '2024-04-29 23:45:30'),
(299, 1, 'admin/auth/menu/26', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"z7hjvp8MF94Am22KCotCASlfwsTYqdBWXfdibXM4\"}', '2024-04-29 23:45:34', '2024-04-29 23:45:34'),
(300, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-29 23:45:34', '2024-04-29 23:45:34'),
(301, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 23:45:43', '2024-04-29 23:45:43'),
(302, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"jadwal\",\"model_name\":\"App\\\\Models\\\\Jadwal\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\JadwalController\",\"create\":[\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"jadwal\",\"type\":\"dateTime\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"harga\",\"type\":\"float\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"z7hjvp8MF94Am22KCotCASlfwsTYqdBWXfdibXM4\"}', '2024-04-29 23:46:17', '2024-04-29 23:46:17'),
(303, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 23:46:18', '2024-04-29 23:46:18');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(304, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"jadwal\",\"model_name\":\"App\\\\Models\\\\Jadwal\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\JadwalController\",\"create\":[\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"jadwal\",\"type\":\"dateTime\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"harga\",\"type\":\"float\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"z7hjvp8MF94Am22KCotCASlfwsTYqdBWXfdibXM4\"}', '2024-04-29 23:47:08', '2024-04-29 23:47:08'),
(305, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 23:47:09', '2024-04-29 23:47:09'),
(306, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-29 23:47:23', '2024-04-29 23:47:23'),
(307, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-04-29 23:47:25', '2024-04-29 23:47:25'),
(308, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-04-29 23:47:28', '2024-04-29 23:47:28'),
(309, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-29 23:47:34', '2024-04-29 23:47:34'),
(310, 1, 'admin/auth/menu/27', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"z7hjvp8MF94Am22KCotCASlfwsTYqdBWXfdibXM4\"}', '2024-04-29 23:47:42', '2024-04-29 23:47:42'),
(311, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-29 23:47:42', '2024-04-29 23:47:42'),
(312, 1, 'admin/auth/menu/28/edit', 'GET', '127.0.0.1', '[]', '2024-04-29 23:47:44', '2024-04-29 23:47:44'),
(313, 1, 'admin/auth/menu/28', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Jadwals\",\"icon\":\"icon-calendar-day\",\"uri\":\"jadwals\",\"roles\":[null],\"permission\":null,\"_token\":\"z7hjvp8MF94Am22KCotCASlfwsTYqdBWXfdibXM4\",\"_method\":\"PUT\"}', '2024-04-29 23:48:11', '2024-04-29 23:48:11'),
(314, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-29 23:48:12', '2024-04-29 23:48:12'),
(315, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-29 23:48:14', '2024-04-29 23:48:14'),
(316, 1, 'admin/tes', 'GET', '127.0.0.1', '[]', '2024-04-29 23:48:16', '2024-04-29 23:48:16'),
(317, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-29 23:48:23', '2024-04-29 23:48:23'),
(318, 1, 'admin/auth/menu/24/edit', 'GET', '127.0.0.1', '[]', '2024-04-29 23:48:26', '2024-04-29 23:48:26'),
(319, 1, 'admin/auth/menu/24', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Pesertas\",\"icon\":\"icon-users\",\"uri\":\"pesertas\",\"roles\":[null],\"permission\":null,\"_token\":\"z7hjvp8MF94Am22KCotCASlfwsTYqdBWXfdibXM4\",\"_method\":\"PUT\"}', '2024-04-29 23:49:08', '2024-04-29 23:49:08'),
(320, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-29 23:49:08', '2024-04-29 23:49:08'),
(321, 1, 'admin/auth/menu/25/edit', 'GET', '127.0.0.1', '[]', '2024-04-29 23:49:14', '2024-04-29 23:49:14'),
(322, 1, 'admin/auth/menu/25', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Test\",\"icon\":\"icon-id-card-alt\",\"uri\":\"tes\",\"roles\":[null],\"permission\":null,\"_token\":\"z7hjvp8MF94Am22KCotCASlfwsTYqdBWXfdibXM4\",\"_method\":\"PUT\"}', '2024-04-29 23:50:21', '2024-04-29 23:50:21'),
(323, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-29 23:50:22', '2024-04-29 23:50:22'),
(324, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-29 23:50:24', '2024-04-29 23:50:24'),
(325, 1, 'admin/auth/menu/24/edit', 'GET', '127.0.0.1', '[]', '2024-04-29 23:50:40', '2024-04-29 23:50:40'),
(326, 1, 'admin/auth/menu/24', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Peserta\",\"icon\":\"icon-users\",\"uri\":\"pesertas\",\"roles\":[null],\"permission\":null,\"_token\":\"z7hjvp8MF94Am22KCotCASlfwsTYqdBWXfdibXM4\",\"_method\":\"PUT\"}', '2024-04-29 23:50:49', '2024-04-29 23:50:49'),
(327, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-29 23:50:49', '2024-04-29 23:50:49'),
(328, 1, 'admin/auth/menu/28/edit', 'GET', '127.0.0.1', '[]', '2024-04-29 23:50:53', '2024-04-29 23:50:53'),
(329, 1, 'admin/auth/menu/28', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Jadwal\",\"icon\":\"icon-calendar-day\",\"uri\":\"jadwals\",\"roles\":[null],\"permission\":null,\"_token\":\"z7hjvp8MF94Am22KCotCASlfwsTYqdBWXfdibXM4\",\"_method\":\"PUT\"}', '2024-04-29 23:50:58', '2024-04-29 23:50:58'),
(330, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-29 23:50:58', '2024-04-29 23:50:58'),
(331, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-29 23:51:00', '2024-04-29 23:51:00'),
(332, 1, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 23:51:08', '2024-04-29 23:51:08'),
(333, 1, 'admin/pesertas/5', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"z7hjvp8MF94Am22KCotCASlfwsTYqdBWXfdibXM4\"}', '2024-04-29 23:51:12', '2024-04-29 23:51:12'),
(334, 1, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 23:51:13', '2024-04-29 23:51:13'),
(335, 1, 'admin/pesertas/7/edit', 'GET', '127.0.0.1', '[]', '2024-04-29 23:51:15', '2024-04-29 23:51:15'),
(336, 1, 'admin/pesertas/7', 'PUT', '127.0.0.1', '{\"nama\":\"Maulana Rafinda\",\"nim\":\"2005903040096\",\"jk\":\"Laki-laki\",\"prodi\":\"Teknologi Informasi\",\"no_hp\":\"082275126681\",\"alamat\":\"Jl. Tapaktuan - Blang Pidie, Labuhan Haji Timur, Aceh Selatan.\",\"email\":\"maulana.rafinda.tif20@gmail.com\",\"password\":\"*****-filtered-out-*****\",\"_token\":\"z7hjvp8MF94Am22KCotCASlfwsTYqdBWXfdibXM4\",\"_method\":\"PUT\"}', '2024-04-29 23:52:34', '2024-04-29 23:52:34'),
(337, 1, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-04-29 23:52:35', '2024-04-29 23:52:35'),
(338, 1, 'admin/pesertas/7', 'GET', '127.0.0.1', '[]', '2024-04-29 23:52:45', '2024-04-29 23:52:45'),
(339, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-29 23:57:05', '2024-04-29 23:57:05'),
(340, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-07 11:05:03', '2024-05-07 11:05:03'),
(341, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-05-07 11:05:16', '2024-05-07 11:05:16'),
(342, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-05-07 11:05:23', '2024-05-07 11:05:23'),
(343, 1, 'admin/tes', 'GET', '127.0.0.1', '[]', '2024-05-07 11:05:26', '2024-05-07 11:05:26'),
(344, 1, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-05-07 11:05:27', '2024-05-07 11:05:27'),
(345, 1, 'admin/pesertas/7/edit', 'GET', '127.0.0.1', '[]', '2024-05-07 11:05:32', '2024-05-07 11:05:32'),
(346, 1, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-05-07 11:05:35', '2024-05-07 11:05:35'),
(347, 1, 'admin/tes', 'GET', '127.0.0.1', '[]', '2024-05-07 11:05:37', '2024-05-07 11:05:37'),
(348, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-05-07 11:05:39', '2024-05-07 11:05:39'),
(349, 1, 'admin/jadwals/create', 'GET', '127.0.0.1', '[]', '2024-05-07 11:05:41', '2024-05-07 11:05:41'),
(350, 1, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-05-07 11:05:52', '2024-05-07 11:05:52'),
(351, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-05-07 11:05:55', '2024-05-07 11:05:55'),
(352, 1, 'admin/jadwals/create', 'GET', '127.0.0.1', '[]', '2024-05-07 11:05:56', '2024-05-07 11:05:56'),
(353, 1, 'admin/jadwals', 'POST', '127.0.0.1', '{\"jadwal\":\"2024-05-20 14:00:00\",\"harga\":null,\"_token\":\"yXgt44LwagEiw78adHAevBJczYvfSsgYEJpnNcqa\"}', '2024-05-07 11:06:15', '2024-05-07 11:06:15'),
(354, 1, 'admin/jadwals/create', 'GET', '127.0.0.1', '[]', '2024-05-07 11:06:15', '2024-05-07 11:06:15'),
(355, 1, 'admin/jadwals', 'POST', '127.0.0.1', '{\"jadwal\":\"2024-05-20 14:00:00\",\"harga\":\"0\",\"_token\":\"yXgt44LwagEiw78adHAevBJczYvfSsgYEJpnNcqa\"}', '2024-05-07 11:06:25', '2024-05-07 11:06:25'),
(356, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-05-07 11:06:26', '2024-05-07 11:06:26'),
(357, 1, 'admin/jadwals/1', 'GET', '127.0.0.1', '[]', '2024-05-07 11:06:28', '2024-05-07 11:06:28'),
(358, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-05-07 11:06:31', '2024-05-07 11:06:31'),
(359, 1, 'admin/jadwals/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-07 11:06:39', '2024-05-07 11:06:39'),
(360, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-05-07 11:06:46', '2024-05-07 11:06:46'),
(361, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-10 10:02:39', '2024-05-10 10:02:39'),
(362, 1, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-05-10 10:02:45', '2024-05-10 10:02:45'),
(363, 1, 'admin/pesertas', 'GET', '127.0.0.1', '{\"id\":\"3\"}', '2024-05-10 10:03:06', '2024-05-10 10:03:06'),
(364, 1, 'admin/pesertas', 'GET', '127.0.0.1', '{\"id\":\"7\"}', '2024-05-10 10:03:10', '2024-05-10 10:03:10'),
(365, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-10 17:23:46', '2024-05-10 17:23:46'),
(366, 1, 'admin/pesertas', 'GET', '127.0.0.1', '[]', '2024-05-10 17:23:53', '2024-05-10 17:23:53'),
(367, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-10 17:24:21', '2024-05-10 17:24:21'),
(368, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-10 17:24:24', '2024-05-10 17:24:24'),
(369, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-05-10 17:24:33', '2024-05-10 17:24:33'),
(370, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2024-05-10 17:24:35', '2024-05-10 17:24:35'),
(371, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-05-10 17:24:38', '2024-05-10 17:24:38'),
(372, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-10 17:24:39', '2024-05-10 17:24:39'),
(373, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-10 17:24:43', '2024-05-10 17:24:43'),
(374, 1, 'admin/auth/menu/24/edit', 'GET', '127.0.0.1', '[]', '2024-05-10 17:24:47', '2024-05-10 17:24:47'),
(375, 1, 'admin/auth/menu/24', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Peserta\",\"icon\":\"icon-users\",\"uri\":\"users\",\"roles\":[null],\"permission\":null,\"_token\":\"i3JV0TIZevjWhsorIbf1PepbG5dY9VVeWczJuj5x\",\"_method\":\"PUT\"}', '2024-05-10 17:25:09', '2024-05-10 17:25:09'),
(376, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-10 17:25:10', '2024-05-10 17:25:10'),
(377, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-10 17:25:14', '2024-05-10 17:25:14'),
(378, 1, 'admin/tes', 'GET', '127.0.0.1', '[]', '2024-05-10 17:25:23', '2024-05-10 17:25:23'),
(379, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-10 17:25:34', '2024-05-10 17:25:34'),
(380, 1, 'admin/auth/menu/24/edit', 'GET', '127.0.0.1', '[]', '2024-05-10 17:25:38', '2024-05-10 17:25:38'),
(381, 1, 'admin/auth/menu/24', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Peserta\",\"icon\":\"icon-users\",\"uri\":\"users\",\"roles\":[null],\"permission\":null,\"_token\":\"i3JV0TIZevjWhsorIbf1PepbG5dY9VVeWczJuj5x\",\"_method\":\"PUT\"}', '2024-05-10 17:28:06', '2024-05-10 17:28:06'),
(382, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-10 17:28:07', '2024-05-10 17:28:07'),
(383, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-10 17:28:08', '2024-05-10 17:28:08'),
(384, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2024-05-10 17:28:13', '2024-05-10 17:28:13'),
(385, 1, 'admin/users', 'POST', '127.0.0.1', '{\"nama\":\"Maulana Rafinda\",\"nim\":\"2005903040096\",\"jk\":\"Laki-laki\",\"prodi\":\"Teknologi Informasi\",\"no_hp\":\"082275126681\",\"alamat\":\"Jl. Tapaktuan - Blangpidie, Labuhan Haji Timur, Aceh Selatan\",\"email\":\"maulana@gmail.com\",\"password\":\"*****-filtered-out-*****\",\"_token\":\"i3JV0TIZevjWhsorIbf1PepbG5dY9VVeWczJuj5x\"}', '2024-05-10 17:29:45', '2024-05-10 17:29:45'),
(386, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2024-05-10 17:29:47', '2024-05-10 17:29:47'),
(387, 1, 'admin/users', 'POST', '127.0.0.1', '{\"nama\":\"Maulana Rafinda\",\"nim\":\"2005903040096\",\"jk\":\"Laki-laki\",\"prodi\":\"Teknologi Informasi\",\"no_hp\":\"082275126681\",\"alamat\":\"Jl. Tapaktuan - Blangpidie, Labuhan Haji Timur, Aceh Selatan\",\"email\":\"maulana@gmail.com\",\"password\":\"*****-filtered-out-*****\",\"_token\":\"i3JV0TIZevjWhsorIbf1PepbG5dY9VVeWczJuj5x\"}', '2024-05-10 17:30:27', '2024-05-10 17:30:27'),
(388, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2024-05-10 17:30:28', '2024-05-10 17:30:28'),
(389, 1, 'admin/users', 'POST', '127.0.0.1', '{\"nama\":\"Maulana Rafinda\",\"nim\":\"2005903040096\",\"jk\":\"Laki-laki\",\"prodi\":\"Teknologi Informasi\",\"no_hp\":\"082275126681\",\"alamat\":\"Jl. Tapaktuan - Blangpidie, Labuhan Haji Timur, Aceh Selatan\",\"email\":\"maulana@gmail.com\",\"password\":\"*****-filtered-out-*****\",\"_token\":\"i3JV0TIZevjWhsorIbf1PepbG5dY9VVeWczJuj5x\"}', '2024-05-10 17:30:46', '2024-05-10 17:30:46'),
(390, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2024-05-10 17:30:47', '2024-05-10 17:30:47'),
(391, 1, 'admin/users', 'POST', '127.0.0.1', '{\"nama\":\"Maulana Rafinda\",\"nim\":\"2005903040096\",\"jk\":\"Laki-laki\",\"prodi\":\"Teknologi Informasi\",\"no_hp\":\"082275126681\",\"alamat\":\"Jl. Tapaktuan - Blangpidie, Labuhan Haji Timur, Aceh Selatan\",\"email\":\"maulana@gmail.com\",\"password\":\"*****-filtered-out-*****\",\"_token\":\"i3JV0TIZevjWhsorIbf1PepbG5dY9VVeWczJuj5x\"}', '2024-05-10 17:31:41', '2024-05-10 17:31:41'),
(392, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2024-05-10 17:31:41', '2024-05-10 17:31:41'),
(393, 1, 'admin/users', 'POST', '127.0.0.1', '{\"name\":\"Maulana Rafinda\",\"nim\":\"2005903040096\",\"jk\":\"Laki-laki\",\"prodi\":\"Teknologi Informasi\",\"no_hp\":\"082275126681\",\"alamat\":\"Jl. Tapaktuan - Blangpidie, Labuhan Haji Timur, Aceh Selatan\",\"email\":\"maulana@gmail.com\",\"password\":\"*****-filtered-out-*****\",\"_token\":\"i3JV0TIZevjWhsorIbf1PepbG5dY9VVeWczJuj5x\"}', '2024-05-10 17:32:33', '2024-05-10 17:32:33'),
(394, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2024-05-10 17:32:33', '2024-05-10 17:32:33'),
(395, 1, 'admin/users', 'POST', '127.0.0.1', '{\"name\":\"Maulana Rafinda\",\"nim\":\"2005903040096\",\"jk\":\"Laki-laki\",\"prodi\":\"Teknologi Informasi\",\"no_hp\":\"082275126681\",\"alamat\":\"Jl. Tapaktuan - Blangpidie, Labuhan Haji Timur, Aceh Selatan\",\"email\":\"maulana@gmail.com\",\"password\":\"*****-filtered-out-*****\",\"_token\":\"i3JV0TIZevjWhsorIbf1PepbG5dY9VVeWczJuj5x\"}', '2024-05-10 17:33:22', '2024-05-10 17:33:22'),
(396, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-10 17:33:22', '2024-05-10 17:33:22'),
(397, 1, 'admin/tes', 'GET', '127.0.0.1', '[]', '2024-05-10 17:33:31', '2024-05-10 17:33:31'),
(398, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-10 17:34:57', '2024-05-10 17:34:57'),
(399, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-10 17:35:39', '2024-05-10 17:35:39'),
(400, 1, 'admin/users/1', 'GET', '127.0.0.1', '[]', '2024-05-10 17:39:54', '2024-05-10 17:39:54'),
(401, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-10 17:52:27', '2024-05-10 17:52:27'),
(402, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-10 17:53:13', '2024-05-10 17:53:13'),
(403, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-10 17:53:42', '2024-05-10 17:53:42'),
(404, 1, 'admin/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-05-10 17:53:44', '2024-05-10 17:53:44'),
(405, 1, 'admin/users/2', 'PUT', '127.0.0.1', '{\"name\":\"Maulana Rafinda\",\"nim\":\"2005903040096\",\"jk\":\"Laki-laki\",\"prodi\":\"Teknologi Informasi\",\"no_hp\":\"082275126681\",\"alamat\":\"Jl. Tapaktuan - Blangpidie, Labuhan Haji Timur, Aceh Selatan\",\"email\":\"maulana2@gmail.com\",\"password\":\"*****-filtered-out-*****\",\"_token\":\"i3JV0TIZevjWhsorIbf1PepbG5dY9VVeWczJuj5x\",\"_method\":\"PUT\"}', '2024-05-10 17:54:31', '2024-05-10 17:54:31'),
(406, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-10 17:54:31', '2024-05-10 17:54:31'),
(407, 1, 'admin/users/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"i3JV0TIZevjWhsorIbf1PepbG5dY9VVeWczJuj5x\"}', '2024-05-10 17:54:40', '2024-05-10 17:54:40'),
(408, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-10 17:54:41', '2024-05-10 17:54:41'),
(409, 1, 'admin/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-05-10 17:54:48', '2024-05-10 17:54:48'),
(410, 1, 'admin/users/2', 'PUT', '127.0.0.1', '{\"name\":\"Maulana Rafinda\",\"nim\":\"2005903040096\",\"jk\":\"Laki-laki\",\"prodi\":\"Teknologi Informasi\",\"no_hp\":\"082275126681\",\"alamat\":\"Jl. Tapaktuan - Blangpidie, Labuhan Haji Timur, Aceh Selatan\",\"email\":\"maulanansn@gmail.com\",\"password\":\"*****-filtered-out-*****\",\"_token\":\"i3JV0TIZevjWhsorIbf1PepbG5dY9VVeWczJuj5x\",\"_method\":\"PUT\"}', '2024-05-10 17:54:58', '2024-05-10 17:54:58'),
(411, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-10 17:54:58', '2024-05-10 17:54:58'),
(412, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-13 09:23:45', '2024-05-13 09:23:45'),
(413, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-13 09:24:04', '2024-05-13 09:24:04'),
(414, 1, 'admin/tes', 'GET', '127.0.0.1', '[]', '2024-05-13 09:24:18', '2024-05-13 09:24:18'),
(415, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-05-13 09:24:19', '2024-05-13 09:24:19'),
(416, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-05-13 09:24:25', '2024-05-13 09:24:25'),
(417, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-15 17:20:39', '2024-05-15 17:20:39'),
(418, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-05-15 17:20:49', '2024-05-15 17:20:49'),
(419, 1, 'admin/jadwals/create', 'GET', '127.0.0.1', '[]', '2024-05-15 17:20:52', '2024-05-15 17:20:52'),
(420, 1, 'admin/jadwals', 'POST', '127.0.0.1', '{\"jadwal\":\"2024-05-22 08:00:00\",\"harga\":null,\"_token\":\"W7W89LGNsx3lRqh4iczWlgDYXBA41cHT35UBdFOa\"}', '2024-05-15 17:21:08', '2024-05-15 17:21:08'),
(421, 1, 'admin/jadwals/create', 'GET', '127.0.0.1', '[]', '2024-05-15 17:21:08', '2024-05-15 17:21:08'),
(422, 1, 'admin/jadwals', 'POST', '127.0.0.1', '{\"jadwal\":\"2024-05-22 08:00:00\",\"harga\":\"0\",\"_token\":\"W7W89LGNsx3lRqh4iczWlgDYXBA41cHT35UBdFOa\"}', '2024-05-15 17:21:14', '2024-05-15 17:21:14'),
(423, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-05-15 17:21:14', '2024-05-15 17:21:14'),
(424, 1, 'admin/jadwals/create', 'GET', '127.0.0.1', '[]', '2024-05-15 17:22:01', '2024-05-15 17:22:01'),
(425, 1, 'admin/jadwals', 'POST', '127.0.0.1', '{\"jadwal\":\"2024-05-23 00:22:01\",\"harga\":null,\"_token\":\"W7W89LGNsx3lRqh4iczWlgDYXBA41cHT35UBdFOa\"}', '2024-05-15 17:22:10', '2024-05-15 17:22:10'),
(426, 1, 'admin/jadwals/create', 'GET', '127.0.0.1', '[]', '2024-05-15 17:22:10', '2024-05-15 17:22:10'),
(427, 1, 'admin/jadwals', 'POST', '127.0.0.1', '{\"jadwal\":\"2024-05-23 00:22:01\",\"harga\":\"0\",\"_token\":\"W7W89LGNsx3lRqh4iczWlgDYXBA41cHT35UBdFOa\"}', '2024-05-15 17:22:13', '2024-05-15 17:22:13'),
(428, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-05-15 17:22:13', '2024-05-15 17:22:13'),
(429, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-16 09:13:19', '2024-05-16 09:13:19'),
(430, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-05-16 09:13:30', '2024-05-16 09:13:30'),
(431, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-16 09:13:38', '2024-05-16 09:13:38'),
(432, 1, 'admin/users/2', 'GET', '127.0.0.1', '[]', '2024-05-16 09:13:44', '2024-05-16 09:13:44'),
(433, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-16 09:13:46', '2024-05-16 09:13:46'),
(434, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-05-16 09:13:47', '2024-05-16 09:13:47'),
(435, 1, 'admin/tes', 'GET', '127.0.0.1', '[]', '2024-05-16 09:13:53', '2024-05-16 09:13:53'),
(436, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-16 09:17:44', '2024-05-16 09:17:44'),
(437, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-16 09:17:53', '2024-05-16 09:17:53'),
(438, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-16 09:18:07', '2024-05-16 09:18:07'),
(439, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-16 09:18:12', '2024-05-16 09:18:12'),
(440, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-16 09:18:22', '2024-05-16 09:18:22'),
(441, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-16 09:18:27', '2024-05-16 09:18:27'),
(442, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-16 09:18:45', '2024-05-16 09:18:45'),
(443, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-16 09:18:51', '2024-05-16 09:18:51'),
(444, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-16 09:19:01', '2024-05-16 09:19:01'),
(445, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-24 17:40:36', '2024-05-24 17:40:36'),
(446, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-05-24 17:40:41', '2024-05-24 17:40:41'),
(447, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-24 17:41:04', '2024-05-24 17:41:04'),
(448, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2024-05-24 17:59:52', '2024-05-24 17:59:52'),
(449, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-24 18:00:03', '2024-05-24 18:00:03'),
(450, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"transaksi\",\"model_name\":\"App\\\\Models\\\\\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\TransaksiController\",\"create\":[\"controller\",\"menu_item\"],\"fields\":[{\"name\":\"nama\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"id_peserta\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"nama\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"jadwal\",\"type\":\"dateTime\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"jumlah_pembayaran\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"jenis_pembayaran\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"bukti_pembayaran\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"status\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":\"Diproses\",\"comment\":null},{\"name\":\"bukti_pembayaran\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"ZeW11wrC8Rez9nKsfqZQ6aYnpNkWNHMwc7P5vGiN\"}', '2024-05-24 18:04:40', '2024-05-24 18:04:40'),
(451, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-24 18:04:40', '2024-05-24 18:04:40'),
(452, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-24 18:04:45', '2024-05-24 18:04:45'),
(453, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-24 18:04:59', '2024-05-24 18:04:59'),
(454, 1, 'admin/auth/menu/29', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"ZeW11wrC8Rez9nKsfqZQ6aYnpNkWNHMwc7P5vGiN\"}', '2024-05-24 18:05:07', '2024-05-24 18:05:07'),
(455, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-24 18:05:07', '2024-05-24 18:05:07'),
(456, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-24 18:05:11', '2024-05-24 18:05:11'),
(457, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-24 18:08:27', '2024-05-24 18:08:27'),
(458, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-24 18:08:54', '2024-05-24 18:08:54'),
(459, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"transaksi\",\"model_name\":\"App\\\\Models\\\\Transaksi\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\TransaksiController\",\"create\":[\"model\",\"controller\",\"menu_item\"],\"fields\":[{\"name\":\"id_peserta\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"nama\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"jadwal\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"jumlah_pembayaran\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"jenis_pembayaran\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"status\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":\"Diproses\",\"comment\":null},{\"name\":\"status_pendaftaran\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"ZeW11wrC8Rez9nKsfqZQ6aYnpNkWNHMwc7P5vGiN\"}', '2024-05-24 18:43:21', '2024-05-24 18:43:21'),
(460, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-24 18:43:21', '2024-05-24 18:43:21'),
(461, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"transaksi\",\"model_name\":\"App\\\\Models\\\\Transaksi\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\TransaksiController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"id_peserta\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"nama\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"jadwal\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"jumlah_pembayaran\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"jenis_pembayaran\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"status\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":\"Diproses\",\"comment\":null},{\"name\":\"status_pendaftaran\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"ZeW11wrC8Rez9nKsfqZQ6aYnpNkWNHMwc7P5vGiN\"}', '2024-05-24 18:43:35', '2024-05-24 18:43:35'),
(462, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-24 18:43:36', '2024-05-24 18:43:36'),
(463, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"transaksi\",\"model_name\":\"App\\\\Models\\\\Transaksi\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\TransaksiController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"id_peserta\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"nama\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"jadwal\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"jumlah_pembayaran\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"jenis_pembayaran\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"status\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":\"Diproses\",\"comment\":null},{\"name\":\"status_pendaftaran\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"ZeW11wrC8Rez9nKsfqZQ6aYnpNkWNHMwc7P5vGiN\"}', '2024-05-24 18:44:34', '2024-05-24 18:44:34'),
(464, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-24 18:44:36', '2024-05-24 18:44:36'),
(465, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-24 18:44:41', '2024-05-24 18:44:41'),
(466, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-24 18:45:07', '2024-05-24 18:45:07'),
(467, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-24 18:45:13', '2024-05-24 18:45:13'),
(468, 1, 'admin/auth/menu/30/edit', 'GET', '127.0.0.1', '[]', '2024-05-24 18:45:16', '2024-05-24 18:45:16'),
(469, 1, 'admin/auth/menu/30', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Transaksi\",\"icon\":\"icon-file\",\"uri\":\"transaksi\",\"roles\":[null],\"permission\":null,\"_token\":\"ZeW11wrC8Rez9nKsfqZQ6aYnpNkWNHMwc7P5vGiN\",\"_method\":\"PUT\"}', '2024-05-24 18:45:31', '2024-05-24 18:45:31'),
(470, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-24 18:45:31', '2024-05-24 18:45:31'),
(471, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-24 18:45:34', '2024-05-24 18:45:34'),
(472, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-24 18:45:35', '2024-05-24 18:45:35'),
(473, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-05-24 18:45:38', '2024-05-24 18:45:38'),
(474, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-05-24 18:45:48', '2024-05-24 18:45:48'),
(475, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-24 18:45:49', '2024-05-24 18:45:49'),
(476, 1, 'admin/auth/menu/30/edit', 'GET', '127.0.0.1', '[]', '2024-05-24 18:45:52', '2024-05-24 18:45:52'),
(477, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-24 18:45:53', '2024-05-24 18:45:53'),
(478, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-24 18:45:55', '2024-05-24 18:45:55'),
(479, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-24 18:45:56', '2024-05-24 18:45:56'),
(480, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-24 18:45:58', '2024-05-24 18:45:58'),
(481, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2024-05-24 18:45:59', '2024-05-24 18:45:59'),
(482, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-24 18:45:59', '2024-05-24 18:45:59'),
(483, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-05-24 18:46:00', '2024-05-24 18:46:00'),
(484, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-24 18:46:01', '2024-05-24 18:46:01'),
(485, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-05-24 18:46:06', '2024-05-24 18:46:06'),
(486, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-24 18:46:20', '2024-05-24 18:46:20'),
(487, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"test\",\"model_name\":\"App\\\\Models\\\\Test\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\Test\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"nama\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"ZeW11wrC8Rez9nKsfqZQ6aYnpNkWNHMwc7P5vGiN\"}', '2024-05-24 18:46:44', '2024-05-24 18:46:44'),
(488, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-24 18:46:45', '2024-05-24 18:46:45'),
(489, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-24 18:47:24', '2024-05-24 18:47:24'),
(490, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-24 18:48:05', '2024-05-24 18:48:05'),
(491, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-24 18:48:08', '2024-05-24 18:48:08'),
(492, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-24 18:48:53', '2024-05-24 18:48:53'),
(493, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-24 18:49:26', '2024-05-24 18:49:26'),
(494, 1, 'admin/transaksi/1', 'GET', '127.0.0.1', '[]', '2024-05-24 18:49:31', '2024-05-24 18:49:31'),
(495, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-24 18:51:07', '2024-05-24 18:51:07'),
(496, 1, 'admin/transaksi/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-24 18:51:12', '2024-05-24 18:51:12'),
(497, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-24 18:51:32', '2024-05-24 18:51:32'),
(498, 1, 'admin/transaksi/1', 'GET', '127.0.0.1', '[]', '2024-05-24 18:51:39', '2024-05-24 18:51:39'),
(499, 1, 'admin/transaksi/1', 'GET', '127.0.0.1', '[]', '2024-05-24 18:51:51', '2024-05-24 18:51:51'),
(500, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-27 06:47:42', '2024-05-27 06:47:42'),
(501, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-05-27 06:47:54', '2024-05-27 06:47:54'),
(502, 1, 'admin/auth/users/2', 'GET', '127.0.0.1', '[]', '2024-05-27 06:48:38', '2024-05-27 06:48:38'),
(503, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-05-27 06:48:43', '2024-05-27 06:48:43'),
(504, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-27 06:48:53', '2024-05-27 06:48:53'),
(505, 1, 'admin/tes', 'GET', '127.0.0.1', '[]', '2024-05-27 06:48:59', '2024-05-27 06:48:59'),
(506, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-27 06:50:17', '2024-05-27 06:50:17'),
(507, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-27 08:19:51', '2024-05-27 08:19:51'),
(508, 1, 'admin/transaksi/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-27 08:19:57', '2024-05-27 08:19:57'),
(509, 1, 'admin/transaksi/1', 'PUT', '127.0.0.1', '{\"id_peserta\":\"2\",\"nama\":\"Maulana Rafinda\",\"jadwal\":\"2024-05-22 08:00:00\",\"jumlah_pembayaran\":\"0\",\"jenis_pembayaran\":\"Dana : 082275126681\",\"status\":\"Berhasil\",\"status_pendaftaran\":\"Yes\",\"_token\":\"SUHXkezDtwiKbFQA1YDSuaxEYbq4ED42DqaC5ZGS\",\"_method\":\"PUT\"}', '2024-05-27 08:20:17', '2024-05-27 08:20:17'),
(510, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-27 08:20:18', '2024-05-27 08:20:18'),
(511, 1, 'admin/transaksi/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-27 08:30:34', '2024-05-27 08:30:34'),
(512, 1, 'admin/transaksi/1', 'PUT', '127.0.0.1', '{\"id_peserta\":\"2\",\"nama\":\"Maulana Rafinda\",\"jadwal\":\"2024-05-22 08:00:00\",\"jumlah_pembayaran\":\"0\",\"jenis_pembayaran\":\"Dana : 082275126681\",\"status\":\"Diproses\",\"status_pendaftaran\":\"Yes\",\"_token\":\"SUHXkezDtwiKbFQA1YDSuaxEYbq4ED42DqaC5ZGS\",\"_method\":\"PUT\"}', '2024-05-27 08:30:39', '2024-05-27 08:30:39'),
(513, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-27 08:30:39', '2024-05-27 08:30:39'),
(514, 1, 'admin/transaksi/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-27 08:30:53', '2024-05-27 08:30:53'),
(515, 1, 'admin/transaksi/1', 'PUT', '127.0.0.1', '{\"id_peserta\":\"2\",\"nama\":\"Maulana Rafinda\",\"jadwal\":\"2024-05-22 08:00:00\",\"jumlah_pembayaran\":\"0\",\"jenis_pembayaran\":\"Dana : 082275126681\",\"status\":\"Berhasil\",\"status_pendaftaran\":\"Yes\",\"_token\":\"SUHXkezDtwiKbFQA1YDSuaxEYbq4ED42DqaC5ZGS\",\"_method\":\"PUT\"}', '2024-05-27 08:30:59', '2024-05-27 08:30:59'),
(516, 1, 'admin/transaksi/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-27 08:31:00', '2024-05-27 08:31:00'),
(517, 1, 'admin/transaksi/1', 'PUT', '127.0.0.1', '{\"id_peserta\":\"2\",\"nama\":\"Maulana Rafinda\",\"jadwal\":\"2024-05-22 08:00:00\",\"jumlah_pembayaran\":\"0\",\"jenis_pembayaran\":\"Dana : 082275126681\",\"status\":\"Berhasil\",\"status_pendaftaran\":\"Yes\",\"_token\":\"SUHXkezDtwiKbFQA1YDSuaxEYbq4ED42DqaC5ZGS\",\"_method\":\"PUT\"}', '2024-05-27 08:33:18', '2024-05-27 08:33:18'),
(518, 1, 'admin/transaksi/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-27 08:33:19', '2024-05-27 08:33:19'),
(519, 1, 'admin/transaksi/1', 'PUT', '127.0.0.1', '{\"id_peserta\":\"2\",\"nama\":\"Maulana Rafinda\",\"jadwal\":\"2024-05-22 08:00:00\",\"jumlah_pembayaran\":\"0\",\"jenis_pembayaran\":\"Dana : 082275126681\",\"status\":\"Berhasil\",\"status_pendaftaran\":\"Yes\",\"_token\":\"SUHXkezDtwiKbFQA1YDSuaxEYbq4ED42DqaC5ZGS\",\"_method\":\"PUT\"}', '2024-05-27 09:01:24', '2024-05-27 09:01:24'),
(520, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-27 09:01:24', '2024-05-27 09:01:24'),
(521, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-05-27 09:07:20', '2024-05-27 09:07:20'),
(522, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-27 09:07:25', '2024-05-27 09:07:25'),
(523, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-27 09:07:32', '2024-05-27 09:07:32'),
(524, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-05-27 09:12:26', '2024-05-27 09:12:26'),
(525, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-28 02:46:22', '2024-05-28 02:46:22'),
(526, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-05-28 02:46:33', '2024-05-28 02:46:33'),
(527, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-28 02:46:40', '2024-05-28 02:46:40'),
(528, 1, 'admin/tes', 'GET', '127.0.0.1', '[]', '2024-05-28 02:46:46', '2024-05-28 02:46:46'),
(529, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-05-28 02:46:52', '2024-05-28 02:46:52'),
(530, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-28 02:46:54', '2024-05-28 02:46:54'),
(531, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-05-28 02:46:56', '2024-05-28 02:46:56'),
(532, 1, 'admin/tes', 'GET', '127.0.0.1', '[]', '2024-05-28 02:46:59', '2024-05-28 02:46:59'),
(533, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-28 02:47:03', '2024-05-28 02:47:03'),
(534, 1, 'admin/transaksi/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"4HA0WPLcpdD3SLKPY8GpK3rEcIwxFFKCPMm4Wsdk\"}', '2024-05-28 02:47:20', '2024-05-28 02:47:20'),
(535, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-28 02:47:22', '2024-05-28 02:47:22'),
(536, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-28 02:49:17', '2024-05-28 02:49:17'),
(537, 1, 'admin/transaksi/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"4HA0WPLcpdD3SLKPY8GpK3rEcIwxFFKCPMm4Wsdk\"}', '2024-05-28 02:49:56', '2024-05-28 02:49:56'),
(538, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-28 02:49:57', '2024-05-28 02:49:57'),
(539, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-28 02:50:28', '2024-05-28 02:50:28'),
(540, 1, 'admin/transaksi/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"4HA0WPLcpdD3SLKPY8GpK3rEcIwxFFKCPMm4Wsdk\"}', '2024-05-28 02:50:33', '2024-05-28 02:50:33'),
(541, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-28 02:50:33', '2024-05-28 02:50:33'),
(542, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-28 02:50:49', '2024-05-28 02:50:49'),
(543, 1, 'admin/transaksi/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-28 02:50:56', '2024-05-28 02:50:56'),
(544, 1, 'admin/transaksi/1', 'PUT', '127.0.0.1', '{\"id_peserta\":\"2\",\"nama\":\"Maulana Rafinda\",\"jadwal\":\"2024-05-22 08:00:00\",\"jumlah_pembayaran\":\"0\",\"jenis_pembayaran\":\"Dana : 082275126681\",\"status\":\"Dproses\",\"status_pendaftaran\":\"Yes\",\"_token\":\"4HA0WPLcpdD3SLKPY8GpK3rEcIwxFFKCPMm4Wsdk\",\"_method\":\"PUT\"}', '2024-05-28 02:51:09', '2024-05-28 02:51:09'),
(545, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-28 02:51:10', '2024-05-28 02:51:10'),
(546, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-28 02:51:21', '2024-05-28 02:51:21'),
(547, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-28 02:52:00', '2024-05-28 02:52:00'),
(548, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-28 02:52:53', '2024-05-28 02:52:53'),
(549, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-28 02:53:42', '2024-05-28 02:53:42'),
(550, 1, 'admin/transaksi/2', 'GET', '127.0.0.1', '[]', '2024-05-28 02:53:48', '2024-05-28 02:53:48'),
(551, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-28 02:53:51', '2024-05-28 02:53:51'),
(552, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-28 03:14:46', '2024-05-28 03:14:46'),
(553, 1, 'admin/transaksi/3', 'GET', '127.0.0.1', '[]', '2024-05-28 03:14:52', '2024-05-28 03:14:52'),
(554, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-28 03:14:58', '2024-05-28 03:14:58'),
(555, 1, 'admin/transaksi/3/edit', 'GET', '127.0.0.1', '[]', '2024-05-28 03:15:04', '2024-05-28 03:15:04'),
(556, 1, 'admin/transaksi/3', 'PUT', '127.0.0.1', '{\"id_peserta\":\"3\",\"nama\":\"Nofrian Safutra\",\"jadwal\":\"2024-05-22 08:00:00\",\"jumlah_pembayaran\":\"0\",\"jenis_pembayaran\":\"Dana : 082275126681\",\"status\":\"Berhasil\",\"status_pendaftaran\":\"Yes\",\"_token\":\"4HA0WPLcpdD3SLKPY8GpK3rEcIwxFFKCPMm4Wsdk\",\"_method\":\"PUT\"}', '2024-05-28 03:15:24', '2024-05-28 03:15:24'),
(557, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-28 03:15:24', '2024-05-28 03:15:24'),
(558, 1, 'admin/transaksi/3/edit', 'GET', '127.0.0.1', '[]', '2024-05-28 03:15:35', '2024-05-28 03:15:35'),
(559, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-29 04:28:01', '2024-05-29 04:28:01'),
(560, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-29 04:28:12', '2024-05-29 04:28:12'),
(561, 1, 'admin/transaksi/4/edit', 'GET', '127.0.0.1', '[]', '2024-05-29 04:28:31', '2024-05-29 04:28:31'),
(562, 1, 'admin/transaksi/4', 'PUT', '127.0.0.1', '{\"id_peserta\":\"2\",\"nama\":\"Maulana Rafinda\",\"jadwal\":\"2024-05-23 00:22:01\",\"jumlah_pembayaran\":\"0\",\"jenis_pembayaran\":\"Dana : 082275126681\",\"status\":\"Berhasil\",\"status_pendaftaran\":\"Yes\",\"_token\":\"KJauVNKntQXGDJdghtzxVRTIORFX4BcHJz0QQR0r\",\"_method\":\"PUT\"}', '2024-05-29 04:28:37', '2024-05-29 04:28:37'),
(563, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-29 04:28:38', '2024-05-29 04:28:38'),
(564, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-29 04:30:33', '2024-05-29 04:30:33'),
(565, 1, 'admin/transaksi/4', 'GET', '127.0.0.1', '[]', '2024-05-29 04:32:52', '2024-05-29 04:32:52'),
(566, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-29 04:33:12', '2024-05-29 04:33:12'),
(567, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-29 04:34:49', '2024-05-29 04:34:49'),
(568, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-29 04:36:05', '2024-05-29 04:36:05'),
(569, 1, 'admin/users/4', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"KJauVNKntQXGDJdghtzxVRTIORFX4BcHJz0QQR0r\"}', '2024-05-29 04:36:15', '2024-05-29 04:36:15'),
(570, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-29 04:36:16', '2024-05-29 04:36:16'),
(571, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-29 06:13:41', '2024-05-29 06:13:41'),
(572, 1, 'admin/transaksi/6', 'GET', '127.0.0.1', '[]', '2024-05-29 06:13:47', '2024-05-29 06:13:47'),
(573, 1, 'admin/transaksi/6/edit', 'GET', '127.0.0.1', '[]', '2024-05-29 06:13:55', '2024-05-29 06:13:55'),
(574, 1, 'admin/transaksi/6', 'PUT', '127.0.0.1', '{\"id_peserta\":\"2\",\"nama\":\"Maulana Rafinda\",\"jadwal\":\"2024-05-22 08:00:00\",\"jumlah_pembayaran\":\"0\",\"jenis_pembayaran\":\"Dana : 082275126681\",\"status\":\"Berhasil\",\"status_pendaftaran\":\"Yes\",\"_token\":\"KJauVNKntQXGDJdghtzxVRTIORFX4BcHJz0QQR0r\",\"_method\":\"PUT\"}', '2024-05-29 06:14:04', '2024-05-29 06:14:04'),
(575, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-29 06:14:05', '2024-05-29 06:14:05'),
(576, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-05-29 07:59:28', '2024-05-29 07:59:28'),
(577, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-29 07:59:28', '2024-05-29 07:59:28'),
(578, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-05-29 07:59:33', '2024-05-29 07:59:33'),
(579, 1, 'admin/jadwals/create', 'GET', '127.0.0.1', '[]', '2024-05-29 07:59:35', '2024-05-29 07:59:35'),
(580, 1, 'admin/jadwals', 'POST', '127.0.0.1', '{\"jadwal\":\"2024-05-30 08:00:35\",\"harga\":null,\"_token\":\"KJauVNKntQXGDJdghtzxVRTIORFX4BcHJz0QQR0r\"}', '2024-05-29 07:59:47', '2024-05-29 07:59:47'),
(581, 1, 'admin/jadwals/create', 'GET', '127.0.0.1', '[]', '2024-05-29 07:59:48', '2024-05-29 07:59:48'),
(582, 1, 'admin/jadwals', 'POST', '127.0.0.1', '{\"jadwal\":\"2024-05-30 08:00:35\",\"harga\":\"0\",\"_token\":\"KJauVNKntQXGDJdghtzxVRTIORFX4BcHJz0QQR0r\"}', '2024-05-29 08:00:28', '2024-05-29 08:00:28'),
(583, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-05-29 08:00:29', '2024-05-29 08:00:29'),
(584, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-29 08:01:00', '2024-05-29 08:01:00'),
(585, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-29 08:50:40', '2024-05-29 08:50:40'),
(586, 1, 'admin/transaksi/23', 'GET', '127.0.0.1', '[]', '2024-05-29 08:50:53', '2024-05-29 08:50:53'),
(587, 1, 'admin/transaksi/23/edit', 'GET', '127.0.0.1', '[]', '2024-05-29 08:51:00', '2024-05-29 08:51:00'),
(588, 1, 'admin/transaksi/23', 'PUT', '127.0.0.1', '{\"id_peserta\":\"2\",\"nama\":\"Maulana Rafinda\",\"jadwal\":\"2024-05-30 08:00:35\",\"jumlah_pembayaran\":\"0\",\"jenis_pembayaran\":\"Dana : 082275126681\",\"status\":\"Berhasil\",\"status_pendaftaran\":\"Yes\",\"_token\":\"KJauVNKntQXGDJdghtzxVRTIORFX4BcHJz0QQR0r\",\"_method\":\"PUT\"}', '2024-05-29 08:51:08', '2024-05-29 08:51:08'),
(589, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-29 08:51:09', '2024-05-29 08:51:09'),
(590, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-29 10:27:48', '2024-05-29 10:27:48'),
(591, 1, 'admin/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-05-29 10:27:58', '2024-05-29 10:27:58'),
(592, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-29 10:28:07', '2024-05-29 10:28:07'),
(593, 1, 'admin/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-05-29 10:29:03', '2024-05-29 10:29:03'),
(594, 1, 'admin/users/2', 'PUT', '127.0.0.1', '{\"name\":\"Maulana Rafinda\",\"nim\":\"2005903040096\",\"jk\":\"Male\",\"prodi\":\"Information Technology\",\"no_hp\":\"082275126681\",\"alamat\":\"Jl. Tapaktuan - Blangpidie, Labuhan Haji Timur, Aceh Selatan.\",\"email\":\"maulanansn@gmail.com\",\"password\":\"*****-filtered-out-*****\",\"_token\":\"KJauVNKntQXGDJdghtzxVRTIORFX4BcHJz0QQR0r\",\"_method\":\"PUT\"}', '2024-05-29 10:29:16', '2024-05-29 10:29:16'),
(595, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-29 10:29:17', '2024-05-29 10:29:17'),
(596, 1, 'admin/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-05-29 10:34:13', '2024-05-29 10:34:13'),
(597, 1, 'admin/users/2', 'PUT', '127.0.0.1', '{\"name\":\"Maulana Rafinda\",\"nim\":\"2005903040096\",\"jk\":\"Male\",\"prodi\":\"Information Technology\",\"no_hp\":null,\"alamat\":\"Jl. Tapaktuan - Blangpidie, Labuhan Haji Timur, Aceh Selatan.\",\"email\":\"maulanansn@gmail.com\",\"password\":\"*****-filtered-out-*****\",\"_token\":\"KJauVNKntQXGDJdghtzxVRTIORFX4BcHJz0QQR0r\",\"_method\":\"PUT\"}', '2024-05-29 10:34:19', '2024-05-29 10:34:19'),
(598, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-29 10:34:20', '2024-05-29 10:34:20'),
(599, 1, 'admin/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-05-29 10:36:08', '2024-05-29 10:36:08'),
(600, 1, 'admin/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-05-29 10:37:53', '2024-05-29 10:37:53'),
(601, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-30 02:27:55', '2024-05-30 02:27:55'),
(602, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-30 02:28:02', '2024-05-30 02:28:02'),
(603, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-30 02:28:22', '2024-05-30 02:28:22'),
(604, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-05-30 02:28:42', '2024-05-30 02:28:42'),
(605, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-30 02:28:53', '2024-05-30 02:28:53'),
(606, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-30 02:32:02', '2024-05-30 02:32:02'),
(607, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-05-30 02:32:22', '2024-05-30 02:32:22'),
(608, 1, 'admin/tes', 'GET', '127.0.0.1', '[]', '2024-05-30 02:32:27', '2024-05-30 02:32:27'),
(609, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-30 02:32:28', '2024-05-30 02:32:28'),
(610, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-30 02:32:39', '2024-05-30 02:32:39'),
(611, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-30 02:35:30', '2024-05-30 02:35:30'),
(612, 1, 'admin/transaksi/34/edit', 'GET', '127.0.0.1', '[]', '2024-05-30 02:35:37', '2024-05-30 02:35:37'),
(613, 1, 'admin/transaksi/34', 'PUT', '127.0.0.1', '{\"id_peserta\":\"12\",\"nama\":\"fadlul\",\"jadwal\":\"2024-05-23 00:22:01\",\"jumlah_pembayaran\":\"0\",\"jenis_pembayaran\":\"Dana : 082275126681\",\"status\":\"Berhasil\",\"status_pendaftaran\":\"Yes\",\"_token\":\"EDu5XCKeS5gkaq2h0FPcQlozd0BAFnqbRCWj0ZhH\",\"_method\":\"PUT\"}', '2024-05-30 02:35:52', '2024-05-30 02:35:52'),
(614, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-30 02:35:52', '2024-05-30 02:35:52'),
(615, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-30 02:58:43', '2024-05-30 02:58:43'),
(616, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-30 02:58:48', '2024-05-30 02:58:48'),
(617, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-30 03:08:28', '2024-05-30 03:08:28'),
(618, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-05-30 03:08:34', '2024-05-30 03:08:34'),
(619, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-30 03:29:22', '2024-05-30 03:29:22'),
(620, 1, 'admin/transaksi/35/edit', 'GET', '127.0.0.1', '[]', '2024-05-30 03:29:33', '2024-05-30 03:29:33'),
(621, 1, 'admin/transaksi/35', 'PUT', '127.0.0.1', '{\"id_peserta\":\"2\",\"nama\":\"Maulana Rafinda\",\"jadwal\":\"2024-05-23 00:22:01\",\"jumlah_pembayaran\":\"0\",\"jenis_pembayaran\":\"Dana : 082275126681\",\"status\":\"Berhasil\",\"status_pendaftaran\":\"Yes\",\"_token\":\"hWmVEc18AOuwGPKSXg30zFwezktNKwPxsEPXBZUw\",\"_method\":\"PUT\"}', '2024-05-30 03:29:43', '2024-05-30 03:29:43'),
(622, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-30 03:29:44', '2024-05-30 03:29:44'),
(623, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-30 03:51:59', '2024-05-30 03:51:59'),
(624, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-30 03:52:08', '2024-05-30 03:52:08'),
(625, 1, 'admin/transaksi/36/edit', 'GET', '127.0.0.1', '[]', '2024-05-30 03:53:21', '2024-05-30 03:53:21'),
(626, 1, 'admin/transaksi/36', 'PUT', '127.0.0.1', '{\"id_peserta\":\"2\",\"nama\":\"Maulana Rafinda\",\"jadwal\":\"2024-05-23 00:22:01\",\"jumlah_pembayaran\":\"0\",\"jenis_pembayaran\":\"Dana : 082275126681\",\"status\":\"Berhasil\",\"status_pendaftaran\":\"Yes\",\"_token\":\"6RdCkIffSFj2U0sRM1gwL8rFinyKPMwHipFo5lno\",\"_method\":\"PUT\"}', '2024-05-30 03:53:32', '2024-05-30 03:53:32'),
(627, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-30 03:53:32', '2024-05-30 03:53:32'),
(628, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-05-30 03:55:41', '2024-05-30 03:55:41'),
(629, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-30 03:56:47', '2024-05-30 03:56:47'),
(630, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-05-30 04:01:12', '2024-05-30 04:01:12'),
(631, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-30 17:02:20', '2024-05-30 17:02:20'),
(632, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-30 17:02:28', '2024-05-30 17:02:28'),
(633, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-30 17:03:09', '2024-05-30 17:03:09'),
(634, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-30 17:04:00', '2024-05-30 17:04:00');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(635, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-30 17:04:33', '2024-05-30 17:04:33'),
(636, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-30 17:04:51', '2024-05-30 17:04:51'),
(637, 1, 'admin/transaksi/47', 'GET', '127.0.0.1', '[]', '2024-05-30 17:05:03', '2024-05-30 17:05:03'),
(638, 1, 'admin/transaksi/47/edit', 'GET', '127.0.0.1', '[]', '2024-05-30 17:05:17', '2024-05-30 17:05:17'),
(639, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-30 17:31:08', '2024-05-30 17:31:08'),
(640, 1, 'admin/transaksi/48/edit', 'GET', '127.0.0.1', '[]', '2024-05-30 17:31:26', '2024-05-30 17:31:26'),
(641, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-30 17:31:29', '2024-05-30 17:31:29'),
(642, 1, 'admin/transaksi/36/edit', 'GET', '127.0.0.1', '[]', '2024-05-30 17:31:36', '2024-05-30 17:31:36'),
(643, 1, 'admin/transaksi/36/edit', 'GET', '127.0.0.1', '[]', '2024-05-30 17:32:07', '2024-05-30 17:32:07'),
(644, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-30 17:32:25', '2024-05-30 17:32:25'),
(645, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-30 17:32:48', '2024-05-30 17:32:48'),
(646, 1, 'admin/transaksi/48/edit', 'GET', '127.0.0.1', '[]', '2024-05-30 17:32:53', '2024-05-30 17:32:53'),
(647, 1, 'admin/transaksi/48', 'PUT', '127.0.0.1', '{\"id_peserta\":\"2\",\"nama\":\"Maulana Rafinda\",\"jadwal\":\"2024-05-23 00:22:01\",\"jumlah_pembayaran\":\"20000\",\"jenis_pembayaran\":\"BSI : 082275126681\",\"status\":\"Berhasil\",\"search_terms\":null,\"status_pendaftaran\":\"Yes\",\"_token\":\"vQSD1Bm4ev7b0ysQha5CtSVqrHeXSd63FWxlbD3c\",\"_method\":\"PUT\"}', '2024-05-30 17:33:02', '2024-05-30 17:33:02'),
(648, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-30 17:33:02', '2024-05-30 17:33:02'),
(649, 1, 'admin/transaksi/48', 'GET', '127.0.0.1', '[]', '2024-05-30 17:36:25', '2024-05-30 17:36:25'),
(650, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-30 17:36:28', '2024-05-30 17:36:28'),
(651, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-30 17:36:29', '2024-05-30 17:36:29'),
(652, 1, 'admin/transaksi/49', 'GET', '127.0.0.1', '[]', '2024-05-30 17:36:32', '2024-05-30 17:36:32'),
(653, 1, 'admin/transaksi/49', 'GET', '127.0.0.1', '[]', '2024-05-30 17:39:22', '2024-05-30 17:39:22'),
(654, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-31 10:08:55', '2024-05-31 10:08:55'),
(655, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-05-31 10:09:03', '2024-05-31 10:09:03'),
(656, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-31 10:09:07', '2024-05-31 10:09:07'),
(657, 1, 'admin/transaksi/60/edit', 'GET', '127.0.0.1', '[]', '2024-05-31 10:09:15', '2024-05-31 10:09:15'),
(658, 1, 'admin/transaksi/60', 'PUT', '127.0.0.1', '{\"id_peserta\":\"3\",\"nama\":\"Nofrian Safutra\",\"jadwal\":\"2024-05-23 00:22:01\",\"jumlah_pembayaran\":\"20000\",\"jenis_pembayaran\":\"Dana : 082275126681\",\"status\":\"Berhasil\",\"search_terms\":null,\"status_pendaftaran\":\"Yes\",\"_token\":\"prFB2L0NtmWtvugFxiVFLGUvMchHiZhYuHitZfGn\",\"_method\":\"PUT\"}', '2024-05-31 10:09:27', '2024-05-31 10:09:27'),
(659, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-31 10:09:32', '2024-05-31 10:09:32'),
(660, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-05-31 10:18:22', '2024-05-31 10:18:22'),
(661, 1, 'admin/jadwals/create', 'GET', '127.0.0.1', '[]', '2024-05-31 10:18:23', '2024-05-31 10:18:23'),
(662, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-05-31 10:18:29', '2024-05-31 10:18:29'),
(663, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-05-31 10:18:32', '2024-05-31 10:18:32'),
(664, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-01 22:01:47', '2024-06-01 22:01:47'),
(665, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-01 22:01:54', '2024-06-01 22:01:54'),
(666, 1, 'admin/transaksi/34/edit', 'GET', '127.0.0.1', '[]', '2024-06-01 22:01:59', '2024-06-01 22:01:59'),
(667, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-01 22:02:40', '2024-06-01 22:02:40'),
(668, 1, 'admin/auth/menu/30/edit', 'GET', '127.0.0.1', '[]', '2024-06-01 22:02:47', '2024-06-01 22:02:47'),
(669, 1, 'admin/auth/menu/30', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Transaksi\",\"icon\":\"icon-donate\",\"uri\":\"transaksi\",\"roles\":[null],\"permission\":null,\"_token\":\"OtYKrFsEsT2ZwvBOzsMCHiVnJ7dj26FCVw1O9F8O\",\"_method\":\"PUT\"}', '2024-06-01 22:03:14', '2024-06-01 22:03:14'),
(670, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-01 22:03:15', '2024-06-01 22:03:15'),
(671, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-01 22:03:18', '2024-06-01 22:03:18'),
(672, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-01 22:03:29', '2024-06-01 22:03:29'),
(673, 1, 'admin/tes', 'GET', '127.0.0.1', '[]', '2024-06-01 22:03:35', '2024-06-01 22:03:35'),
(674, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-01 22:03:39', '2024-06-01 22:03:39'),
(675, 1, 'admin/auth/menu/25', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"OtYKrFsEsT2ZwvBOzsMCHiVnJ7dj26FCVw1O9F8O\"}', '2024-06-01 22:03:50', '2024-06-01 22:03:50'),
(676, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-01 22:03:50', '2024-06-01 22:03:50'),
(677, 1, 'admin/auth/menu/31', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"OtYKrFsEsT2ZwvBOzsMCHiVnJ7dj26FCVw1O9F8O\"}', '2024-06-01 22:03:55', '2024-06-01 22:03:55'),
(678, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-01 22:03:55', '2024-06-01 22:03:55'),
(679, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-01 22:03:57', '2024-06-01 22:03:57'),
(680, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-01 22:05:25', '2024-06-01 22:05:25'),
(681, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-01 22:05:31', '2024-06-01 22:05:31'),
(682, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-01 22:06:23', '2024-06-01 22:06:23'),
(683, 1, 'admin/jadwals/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-01 22:06:40', '2024-06-01 22:06:40'),
(684, 1, 'admin/jadwals/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-01 22:07:06', '2024-06-01 22:07:06'),
(685, 1, 'admin/jadwals/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-01 22:07:27', '2024-06-01 22:07:27'),
(686, 1, 'admin/jadwals/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-01 22:07:38', '2024-06-01 22:07:38'),
(687, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-01 22:07:44', '2024-06-01 22:07:44'),
(688, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-01 22:08:05', '2024-06-01 22:08:05'),
(689, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-01 22:08:36', '2024-06-01 22:08:36'),
(690, 1, 'admin/auth/menu/24/edit', 'GET', '127.0.0.1', '[]', '2024-06-01 22:08:41', '2024-06-01 22:08:41'),
(691, 1, 'admin/auth/menu/24', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Pengguna\",\"icon\":\"icon-users\",\"uri\":\"users\",\"roles\":[null],\"permission\":null,\"_token\":\"OtYKrFsEsT2ZwvBOzsMCHiVnJ7dj26FCVw1O9F8O\",\"_method\":\"PUT\"}', '2024-06-01 22:09:11', '2024-06-01 22:09:11'),
(692, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-01 22:09:11', '2024-06-01 22:09:11'),
(693, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-01 22:09:33', '2024-06-01 22:09:33'),
(694, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"Peserta Test\",\"model_name\":\"App\\\\Models\\\\PesertaTest\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\PesertaTestController\",\"create\":[\"model\",\"controller\",\"menu_item\"],\"fields\":[{\"name\":\"nama\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"jadwal\",\"type\":\"dateTime\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"nilaiStr\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"nilaiList\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"nilaiRdg\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"score\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"keterangan\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"OtYKrFsEsT2ZwvBOzsMCHiVnJ7dj26FCVw1O9F8O\"}', '2024-06-01 22:13:13', '2024-06-01 22:13:13'),
(695, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-01 22:13:15', '2024-06-01 22:13:15'),
(696, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-01 22:13:52', '2024-06-01 22:13:52'),
(697, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-01 22:13:56', '2024-06-01 22:13:56'),
(698, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-01 22:14:08', '2024-06-01 22:14:08'),
(699, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-01 22:14:53', '2024-06-01 22:14:53'),
(700, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-01 22:16:10', '2024-06-01 22:16:10'),
(701, 1, 'admin/auth/menu/32', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"OtYKrFsEsT2ZwvBOzsMCHiVnJ7dj26FCVw1O9F8O\"}', '2024-06-01 22:16:14', '2024-06-01 22:16:14'),
(702, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-01 22:16:15', '2024-06-01 22:16:15'),
(703, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-01 22:16:20', '2024-06-01 22:16:20'),
(704, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-01 22:16:27', '2024-06-01 22:16:27'),
(705, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"peserta_tests\",\"model_name\":\"App\\\\Models\\\\PesertaTest\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\PesertaTestController\",\"create\":[\"model\",\"controller\",\"menu_item\"],\"fields\":[{\"name\":\"nama\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"jadwal\",\"type\":\"dateTime\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"nilaiStr\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"nilaiList\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"nilaiRdg\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"score\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"keterangan\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"OtYKrFsEsT2ZwvBOzsMCHiVnJ7dj26FCVw1O9F8O\"}', '2024-06-01 22:19:03', '2024-06-01 22:19:03'),
(706, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-01 22:19:03', '2024-06-01 22:19:03'),
(707, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-01 22:19:17', '2024-06-01 22:19:17'),
(708, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-01 22:19:21', '2024-06-01 22:19:21'),
(709, 1, 'admin/peserta-tests/2/edit', 'GET', '127.0.0.1', '[]', '2024-06-01 22:24:52', '2024-06-01 22:24:52'),
(710, 1, 'admin/peserta-tests/2/edit', 'GET', '127.0.0.1', '[]', '2024-06-01 22:25:28', '2024-06-01 22:25:28'),
(711, 1, 'admin/peserta-tests/2/edit', 'GET', '127.0.0.1', '[]', '2024-06-01 22:34:33', '2024-06-01 22:34:33'),
(712, 1, 'admin/peserta-tests/2/edit', 'GET', '127.0.0.1', '[]', '2024-06-01 22:35:33', '2024-06-01 22:35:33'),
(713, 1, 'admin/peserta-tests/2', 'PUT', '127.0.0.1', '{\"transaksi_id\":\"3\",\"id_peserta\":\"3\",\"nama\":\"Nofrian Safutra\",\"jadwal\":\"2024-05-22 08:00:00\",\"nilaiStr\":\"40\",\"nilaiList\":\"56\",\"nilaiRdg\":\"43\",\"score\":\"463\",\"keterangan\":\"Passed\",\"_token\":\"OtYKrFsEsT2ZwvBOzsMCHiVnJ7dj26FCVw1O9F8O\",\"_method\":\"PUT\"}', '2024-06-01 22:36:13', '2024-06-01 22:36:13'),
(714, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-01 22:36:13', '2024-06-01 22:36:13'),
(715, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-01 22:37:13', '2024-06-01 22:37:13'),
(716, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-01 22:37:15', '2024-06-01 22:37:15'),
(717, 1, 'admin/auth/menu/33/edit', 'GET', '127.0.0.1', '[]', '2024-06-01 22:37:44', '2024-06-01 22:37:44'),
(718, 1, 'admin/auth/menu/33', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Peserta Test\",\"icon\":\"icon-users\",\"uri\":\"peserta-tests\",\"roles\":[null],\"permission\":null,\"_token\":\"OtYKrFsEsT2ZwvBOzsMCHiVnJ7dj26FCVw1O9F8O\",\"_method\":\"PUT\"}', '2024-06-01 22:38:30', '2024-06-01 22:38:30'),
(719, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-01 22:38:30', '2024-06-01 22:38:30'),
(720, 1, 'admin/auth/menu/24/edit', 'GET', '127.0.0.1', '[]', '2024-06-01 22:38:36', '2024-06-01 22:38:36'),
(721, 1, 'admin/auth/menu/24', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Pengguna\",\"icon\":\"icon-user-circle\",\"uri\":\"users\",\"roles\":[null],\"permission\":null,\"_token\":\"OtYKrFsEsT2ZwvBOzsMCHiVnJ7dj26FCVw1O9F8O\",\"_method\":\"PUT\"}', '2024-06-01 22:40:10', '2024-06-01 22:40:10'),
(722, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-01 22:40:11', '2024-06-01 22:40:11'),
(723, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-01 22:40:16', '2024-06-01 22:40:16'),
(724, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-06-01 22:40:47', '2024-06-01 22:40:47'),
(725, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-02 16:44:47', '2024-06-02 16:44:47'),
(726, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-02 16:44:59', '2024-06-02 16:44:59'),
(727, 1, 'admin/peserta-tests/4/edit', 'GET', '127.0.0.1', '[]', '2024-06-02 16:45:09', '2024-06-02 16:45:09'),
(728, 1, 'admin/peserta-tests/4/edit', 'GET', '127.0.0.1', '[]', '2024-06-02 16:45:26', '2024-06-02 16:45:26'),
(729, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-06-02 16:53:46', '2024-06-02 16:53:46'),
(730, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-02 16:53:52', '2024-06-02 16:53:52'),
(731, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-02 16:54:16', '2024-06-02 16:54:16'),
(732, 1, 'admin/peserta-tests/4/edit', 'GET', '127.0.0.1', '[]', '2024-06-02 16:54:25', '2024-06-02 16:54:25'),
(733, 1, 'admin/peserta-tests/4/edit', 'GET', '127.0.0.1', '[]', '2024-06-02 16:54:31', '2024-06-02 16:54:31'),
(734, 1, 'admin/peserta-tests/4', 'PUT', '127.0.0.1', '{\"transaksi_id\":\"6\",\"id_peserta\":\"2\",\"nama\":\"Maulana Rafinda\",\"jadwal\":\"2024-05-22 08:00:00\",\"nilaiStr\":\"11\",\"nilaiList\":\"11\",\"nilaiRdg\":\"11\",\"score\":\"110\",\"keterangan\":\"Not Passed\",\"_token\":\"rdDTunzaKwJN9IBcRJWR6bPqDKpnDN7I9yAmtjOF\",\"_method\":\"PUT\"}', '2024-06-02 16:54:47', '2024-06-02 16:54:47'),
(735, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-02 16:54:48', '2024-06-02 16:54:48'),
(736, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-04 04:22:32', '2024-06-04 04:22:32'),
(737, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-04 04:22:50', '2024-06-04 04:22:50'),
(738, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-04 04:24:49', '2024-06-04 04:24:49'),
(739, 1, 'admin/peserta-tests/5/edit', 'GET', '127.0.0.1', '[]', '2024-06-04 04:24:58', '2024-06-04 04:24:58'),
(740, 1, 'admin/peserta-tests/5/edit', 'GET', '127.0.0.1', '[]', '2024-06-04 04:25:07', '2024-06-04 04:25:07'),
(741, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-04 04:25:27', '2024-06-04 04:25:27'),
(742, 1, 'admin/peserta-tests/5/edit', 'GET', '127.0.0.1', '[]', '2024-06-04 04:25:33', '2024-06-04 04:25:33'),
(743, 1, 'admin/peserta-tests/5/edit', 'GET', '127.0.0.1', '[]', '2024-06-04 04:25:39', '2024-06-04 04:25:39'),
(744, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-04 05:12:04', '2024-06-04 05:12:04'),
(745, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-07 19:13:25', '2024-06-07 19:13:25'),
(746, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-07 19:14:29', '2024-06-07 19:14:29'),
(747, 1, 'admin/jadwals/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-07 19:14:37', '2024-06-07 19:14:37'),
(748, 1, 'admin/jadwals/1', 'PUT', '127.0.0.1', '{\"jadwal\":\"2024-05-22 08:00:00\",\"harga\":\"0\",\"kouta\":\"25\",\"peserta\":\"5\",\"_token\":\"4Ujb1yjhIvSsPC6kwrrfeeXQWl8AauRINt7xGSNQ\",\"_method\":\"PUT\"}', '2024-06-07 19:14:44', '2024-06-07 19:14:44'),
(749, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-07 19:14:45', '2024-06-07 19:14:45'),
(750, 1, 'admin/jadwals/3/edit', 'GET', '127.0.0.1', '[]', '2024-06-07 19:14:49', '2024-06-07 19:14:49'),
(751, 1, 'admin/jadwals/3', 'PUT', '127.0.0.1', '{\"jadwal\":\"2024-05-30 08:00:35\",\"harga\":\"0\",\"kouta\":\"25\",\"peserta\":\"2\",\"_token\":\"4Ujb1yjhIvSsPC6kwrrfeeXQWl8AauRINt7xGSNQ\",\"_method\":\"PUT\"}', '2024-06-07 19:14:55', '2024-06-07 19:14:55'),
(752, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-07 19:14:56', '2024-06-07 19:14:56'),
(753, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-06-07 19:29:58', '2024-06-07 19:29:58'),
(754, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-07 19:30:00', '2024-06-07 19:30:00'),
(755, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-07 19:32:15', '2024-06-07 19:32:15'),
(756, 1, 'admin/peserta-tests/5', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"4Ujb1yjhIvSsPC6kwrrfeeXQWl8AauRINt7xGSNQ\"}', '2024-06-07 19:32:46', '2024-06-07 19:32:46'),
(757, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-07 19:32:46', '2024-06-07 19:32:46'),
(758, 1, 'admin/peserta-tests/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"4Ujb1yjhIvSsPC6kwrrfeeXQWl8AauRINt7xGSNQ\"}', '2024-06-07 19:32:57', '2024-06-07 19:32:57'),
(759, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-07 19:32:57', '2024-06-07 19:32:57'),
(760, 1, 'admin/peserta-tests/7', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"4Ujb1yjhIvSsPC6kwrrfeeXQWl8AauRINt7xGSNQ\"}', '2024-06-07 19:33:11', '2024-06-07 19:33:11'),
(761, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-07 19:33:11', '2024-06-07 19:33:11'),
(762, 1, 'admin/peserta-tests/8', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"4Ujb1yjhIvSsPC6kwrrfeeXQWl8AauRINt7xGSNQ\"}', '2024-06-07 19:33:17', '2024-06-07 19:33:17'),
(763, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-07 19:33:17', '2024-06-07 19:33:17'),
(764, 1, 'admin/peserta-tests/9', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"4Ujb1yjhIvSsPC6kwrrfeeXQWl8AauRINt7xGSNQ\"}', '2024-06-07 19:33:23', '2024-06-07 19:33:23'),
(765, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-07 19:33:23', '2024-06-07 19:33:23'),
(766, 1, 'admin/peserta-tests/4/edit', 'GET', '127.0.0.1', '[]', '2024-06-07 19:35:10', '2024-06-07 19:35:10'),
(767, 1, 'admin/peserta-tests/4', 'PUT', '127.0.0.1', '{\"transaksi_id\":\"6\",\"id_peserta\":\"2\",\"nama\":\"Maulana Rafinda\",\"jadwal\":\"2024-05-22 08:00:00\",\"nilaiStr\":\"40\",\"nilaiList\":\"56\",\"nilaiRdg\":\"63\",\"score\":\"110\",\"keterangan\":\"Not Passed\",\"_token\":\"4Ujb1yjhIvSsPC6kwrrfeeXQWl8AauRINt7xGSNQ\",\"_method\":\"PUT\"}', '2024-06-07 19:35:31', '2024-06-07 19:35:31'),
(768, 1, 'admin/peserta-tests/4', 'PUT', '127.0.0.1', '{\"transaksi_id\":\"6\",\"id_peserta\":\"2\",\"nama\":\"Maulana Rafinda\",\"jadwal\":\"2024-05-22 08:00:00\",\"nilaiStr\":\"40\",\"nilaiList\":\"56\",\"nilaiRdg\":\"63\",\"score\":\"110\",\"keterangan\":\"Not Passed\",\"_token\":\"4Ujb1yjhIvSsPC6kwrrfeeXQWl8AauRINt7xGSNQ\",\"_method\":\"PUT\"}', '2024-06-07 19:35:32', '2024-06-07 19:35:32'),
(769, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-07 19:35:32', '2024-06-07 19:35:32'),
(770, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-07 19:35:33', '2024-06-07 19:35:33'),
(771, 1, 'admin/peserta-tests/4/edit', 'GET', '127.0.0.1', '[]', '2024-06-07 19:35:37', '2024-06-07 19:35:37'),
(772, 1, 'admin/peserta-tests/4/edit', 'GET', '127.0.0.1', '[]', '2024-06-07 19:35:40', '2024-06-07 19:35:40'),
(773, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-07 19:35:54', '2024-06-07 19:35:54'),
(774, 1, 'admin/peserta-tests/4/edit', 'GET', '127.0.0.1', '[]', '2024-06-07 19:36:18', '2024-06-07 19:36:18'),
(775, 1, 'admin/peserta-tests/4/edit', 'GET', '127.0.0.1', '[]', '2024-06-07 19:36:23', '2024-06-07 19:36:23'),
(776, 1, 'admin/peserta-tests/4', 'PUT', '127.0.0.1', '{\"transaksi_id\":\"6\",\"id_peserta\":\"2\",\"nama\":\"Maulana Rafinda\",\"jadwal\":\"2024-05-22 08:00:00\",\"nilaiStr\":\"40\",\"nilaiList\":\"56\",\"nilaiRdg\":\"43\",\"score\":\"463\",\"keterangan\":\"Passed\",\"_token\":\"4Ujb1yjhIvSsPC6kwrrfeeXQWl8AauRINt7xGSNQ\",\"_method\":\"PUT\"}', '2024-06-07 19:36:30', '2024-06-07 19:36:30'),
(777, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-07 19:36:30', '2024-06-07 19:36:30'),
(778, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 07:18:46', '2024-06-08 07:18:46'),
(779, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-08 07:19:07', '2024-06-08 07:19:07'),
(780, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-08 07:19:20', '2024-06-08 07:19:20'),
(781, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-06-08 07:19:33', '2024-06-08 07:19:33'),
(782, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-08 07:20:04', '2024-06-08 07:20:04'),
(783, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 07:20:14', '2024-06-08 07:20:14'),
(784, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-08 07:20:16', '2024-06-08 07:20:16'),
(785, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 07:20:23', '2024-06-08 07:20:23'),
(786, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-08 07:20:27', '2024-06-08 07:20:27'),
(787, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-08 07:20:41', '2024-06-08 07:20:41'),
(788, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-08 07:26:03', '2024-06-08 07:26:03'),
(789, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-06-08 07:26:40', '2024-06-08 07:26:40'),
(790, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 07:26:40', '2024-06-08 07:26:40'),
(791, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-08 07:26:50', '2024-06-08 07:26:50'),
(792, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 07:26:52', '2024-06-08 07:26:52'),
(793, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-08 07:27:01', '2024-06-08 07:27:01'),
(794, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-08 07:27:05', '2024-06-08 07:27:05'),
(795, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-08 07:27:16', '2024-06-08 07:27:16'),
(796, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-08 07:27:30', '2024-06-08 07:27:30'),
(797, 1, 'admin/users/5', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"7jJSQUexIq8M8LYn5d5TnbGV01otCPnVb354rfel\"}', '2024-06-08 07:28:00', '2024-06-08 07:28:00'),
(798, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-08 07:28:01', '2024-06-08 07:28:01'),
(799, 1, 'admin/users/6', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"7jJSQUexIq8M8LYn5d5TnbGV01otCPnVb354rfel\"}', '2024-06-08 07:28:04', '2024-06-08 07:28:04'),
(800, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-08 07:28:05', '2024-06-08 07:28:05'),
(801, 1, 'admin/users/7', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"7jJSQUexIq8M8LYn5d5TnbGV01otCPnVb354rfel\"}', '2024-06-08 07:28:08', '2024-06-08 07:28:08'),
(802, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-08 07:28:08', '2024-06-08 07:28:08'),
(803, 1, 'admin/users/9', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"7jJSQUexIq8M8LYn5d5TnbGV01otCPnVb354rfel\"}', '2024-06-08 07:28:12', '2024-06-08 07:28:12'),
(804, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-08 07:28:12', '2024-06-08 07:28:12'),
(805, 1, 'admin/users/10', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"7jJSQUexIq8M8LYn5d5TnbGV01otCPnVb354rfel\"}', '2024-06-08 07:28:15', '2024-06-08 07:28:15'),
(806, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-08 07:28:16', '2024-06-08 07:28:16'),
(807, 1, 'admin/users/11', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"7jJSQUexIq8M8LYn5d5TnbGV01otCPnVb354rfel\"}', '2024-06-08 07:28:19', '2024-06-08 07:28:19'),
(808, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-08 07:28:19', '2024-06-08 07:28:19'),
(809, 1, 'admin/users/2', 'GET', '127.0.0.1', '[]', '2024-06-08 07:28:23', '2024-06-08 07:28:23'),
(810, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-08 07:28:28', '2024-06-08 07:28:28'),
(811, 1, 'admin/users/17', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"7jJSQUexIq8M8LYn5d5TnbGV01otCPnVb354rfel\"}', '2024-06-08 07:28:40', '2024-06-08 07:28:40'),
(812, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-08 07:28:41', '2024-06-08 07:28:41'),
(813, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-08 07:30:25', '2024-06-08 07:30:25'),
(814, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-08 07:32:10', '2024-06-08 07:32:10'),
(815, 1, 'admin/users/2', 'GET', '127.0.0.1', '[]', '2024-06-08 07:32:13', '2024-06-08 07:32:13'),
(816, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-08 07:32:28', '2024-06-08 07:32:28'),
(817, 1, 'admin/auth/menu/24/edit', 'GET', '127.0.0.1', '[]', '2024-06-08 07:32:41', '2024-06-08 07:32:41'),
(818, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-08 07:32:49', '2024-06-08 07:32:49'),
(819, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-08 07:33:12', '2024-06-08 07:33:12'),
(820, 1, 'admin/users/2', 'GET', '127.0.0.1', '[]', '2024-06-08 07:33:40', '2024-06-08 07:33:40'),
(821, 1, 'admin/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-06-08 07:36:46', '2024-06-08 07:36:46'),
(822, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-08 07:36:49', '2024-06-08 07:36:49'),
(823, 1, 'admin/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-06-08 07:36:53', '2024-06-08 07:36:53'),
(824, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-08 07:37:37', '2024-06-08 07:37:37'),
(825, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-08 07:37:43', '2024-06-08 07:37:43'),
(826, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2024-06-08 07:37:47', '2024-06-08 07:37:47'),
(827, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"id\":null}', '2024-06-08 07:37:54', '2024-06-08 07:37:54'),
(828, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"id\":null}', '2024-06-08 07:39:55', '2024-06-08 07:39:55'),
(829, 1, 'admin/peserta-tests/create', 'GET', '127.0.0.1', '[]', '2024-06-08 07:40:05', '2024-06-08 07:40:05'),
(830, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"id\":null}', '2024-06-08 07:40:06', '2024-06-08 07:40:06'),
(831, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"id\":null}', '2024-06-08 07:40:38', '2024-06-08 07:40:38'),
(832, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"id\":null}', '2024-06-08 07:41:09', '2024-06-08 07:41:09'),
(833, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"datetime\":\"2024-05-22 08:00:00\"}', '2024-06-08 07:41:36', '2024-06-08 07:41:36'),
(834, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"id\":null}', '2024-06-08 07:42:00', '2024-06-08 07:42:00'),
(835, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"id\":null}', '2024-06-08 07:42:11', '2024-06-08 07:42:11'),
(836, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"id\":null}', '2024-06-08 07:42:30', '2024-06-08 07:42:30'),
(837, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"id\":null}', '2024-06-08 07:42:55', '2024-06-08 07:42:55'),
(838, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"id\":null}', '2024-06-08 07:43:04', '2024-06-08 07:43:04'),
(839, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"id\":null}', '2024-06-08 07:43:21', '2024-06-08 07:43:21'),
(840, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"jadwal\":\"2024-05-22 08:00:00\"}', '2024-06-08 07:43:39', '2024-06-08 07:43:39'),
(841, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"jadwal\":\"2024-05-22 08:00:00\"}', '2024-06-08 07:44:18', '2024-06-08 07:44:18'),
(842, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-08 07:44:29', '2024-06-08 07:44:29'),
(843, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-08 07:45:11', '2024-06-08 07:45:11'),
(844, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"keterangan\":\"Not Passed\"}', '2024-06-08 07:45:22', '2024-06-08 07:45:22'),
(845, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"keterangan\":\"Passes\"}', '2024-06-08 07:45:27', '2024-06-08 07:45:27'),
(846, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"keterangan\":\"Passed\"}', '2024-06-08 07:45:33', '2024-06-08 07:45:33'),
(847, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"keterangan\":\"Passed\"}', '2024-06-08 07:46:12', '2024-06-08 07:46:12'),
(848, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"keterangan\":\"Passed\"}', '2024-06-08 07:47:03', '2024-06-08 07:47:03'),
(849, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-08 07:47:10', '2024-06-08 07:47:10'),
(850, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-08 07:47:39', '2024-06-08 07:47:39'),
(851, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"keterangan\":[\"1\"]}', '2024-06-08 07:47:46', '2024-06-08 07:47:46'),
(852, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"keterangan\":[\"0\"]}', '2024-06-08 07:47:49', '2024-06-08 07:47:49'),
(853, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-08 07:48:04', '2024-06-08 07:48:04'),
(854, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-08 07:48:20', '2024-06-08 07:48:20'),
(855, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"keterangan\":[\"Not Passed\"]}', '2024-06-08 07:48:28', '2024-06-08 07:48:28'),
(856, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"keterangan\":[\"Passed\"]}', '2024-06-08 07:48:32', '2024-06-08 07:48:32'),
(857, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-08 07:48:46', '2024-06-08 07:48:46'),
(858, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"keterangan\":[\"Passed\"]}', '2024-06-08 07:48:47', '2024-06-08 07:48:47'),
(859, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-08 07:49:19', '2024-06-08 07:49:19'),
(860, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-08 07:49:21', '2024-06-08 07:49:21'),
(861, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-08 07:49:57', '2024-06-08 07:49:57'),
(862, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-08 07:50:18', '2024-06-08 07:50:18'),
(863, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-08 07:50:41', '2024-06-08 07:50:41'),
(864, 1, 'admin/transaksi', 'GET', '127.0.0.1', '{\"status\":[\"Diproses\"]}', '2024-06-08 07:50:49', '2024-06-08 07:50:49'),
(865, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-08 07:50:55', '2024-06-08 07:50:55'),
(866, 1, 'admin/transaksi', 'GET', '127.0.0.1', '{\"status\":[\"Diproses\"]}', '2024-06-08 07:51:14', '2024-06-08 07:51:14'),
(867, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-08 07:51:19', '2024-06-08 07:51:19'),
(868, 1, 'admin/transaksi/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-08 07:51:22', '2024-06-08 07:51:22'),
(869, 1, 'admin/transaksi/1', 'PUT', '127.0.0.1', '{\"id_peserta\":\"2\",\"nama\":\"Maulana Rafinda\",\"jadwal\":\"2024-05-22 08:00:00\",\"jumlah_pembayaran\":\"0\",\"jenis_pembayaran\":\"Dana : 082275126681\",\"status\":\"Diproses\",\"search_terms\":null,\"status_pendaftaran\":\"Yes\",\"_token\":\"7jJSQUexIq8M8LYn5d5TnbGV01otCPnVb354rfel\",\"_method\":\"PUT\"}', '2024-06-08 07:51:28', '2024-06-08 07:51:28'),
(870, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-08 07:51:29', '2024-06-08 07:51:29'),
(871, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-08 07:51:31', '2024-06-08 07:51:31'),
(872, 1, 'admin/transaksi', 'GET', '127.0.0.1', '{\"status\":[\"Diproses\"]}', '2024-06-08 07:51:42', '2024-06-08 07:51:42'),
(873, 1, 'admin/transaksi', 'GET', '127.0.0.1', '{\"status\":[\"Berhasil\"]}', '2024-06-08 07:51:51', '2024-06-08 07:51:51'),
(874, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-08 07:51:53', '2024-06-08 07:51:53'),
(875, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-08 07:51:58', '2024-06-08 07:51:58'),
(876, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-08 07:51:59', '2024-06-08 07:51:59'),
(877, 1, 'admin/jadwals/create', 'GET', '127.0.0.1', '[]', '2024-06-08 07:52:02', '2024-06-08 07:52:02'),
(878, 1, 'admin/jadwals/create', 'GET', '127.0.0.1', '[]', '2024-06-08 07:52:22', '2024-06-08 07:52:22'),
(879, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-08 07:52:51', '2024-06-08 07:52:51'),
(880, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2024-06-08 07:52:53', '2024-06-08 07:52:53'),
(881, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-08 07:55:37', '2024-06-08 07:55:37'),
(882, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-08 07:57:55', '2024-06-08 07:57:55'),
(883, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-08 07:58:02', '2024-06-08 07:58:02'),
(884, 1, 'admin/jadwals/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-08 07:58:07', '2024-06-08 07:58:07'),
(885, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-08 08:00:43', '2024-06-08 08:00:43'),
(886, 1, 'admin/jadwals/create', 'GET', '127.0.0.1', '[]', '2024-06-08 08:00:44', '2024-06-08 08:00:44'),
(887, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-08 08:03:08', '2024-06-08 08:03:08'),
(888, 1, 'admin/jadwals/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-08 08:03:11', '2024-06-08 08:03:11'),
(889, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-08 08:03:13', '2024-06-08 08:03:13'),
(890, 1, 'admin/jadwals/1', 'GET', '127.0.0.1', '[]', '2024-06-08 08:03:14', '2024-06-08 08:03:14'),
(891, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-08 08:03:18', '2024-06-08 08:03:18'),
(892, 1, 'admin/transaksi/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-08 08:15:59', '2024-06-08 08:15:59'),
(893, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-08 08:16:02', '2024-06-08 08:16:02'),
(894, 1, 'admin/transaksi/4/edit', 'GET', '127.0.0.1', '[]', '2024-06-08 08:16:04', '2024-06-08 08:16:04'),
(895, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-08 08:17:05', '2024-06-08 08:17:05'),
(896, 1, 'admin/transaksi', 'GET', '127.0.0.1', '{\"status\":[\"Diproses\"]}', '2024-06-08 08:17:22', '2024-06-08 08:17:22'),
(897, 1, 'admin/transaksi', 'GET', '127.0.0.1', '{\"status\":[\"Berhasil\"]}', '2024-06-08 08:17:27', '2024-06-08 08:17:27'),
(898, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-08 08:17:48', '2024-06-08 08:17:48'),
(899, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-08 08:19:06', '2024-06-08 08:19:06'),
(900, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"jadwal\":\"2024-05-22 08:00:00\"}', '2024-06-08 08:19:27', '2024-06-08 08:19:27'),
(901, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"jadwal\":\"2024-05-22 08:00:00\",\"per_page\":\"30\"}', '2024-06-08 08:19:51', '2024-06-08 08:19:51'),
(902, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"jadwal\":\"2024-05-22 08:00:00\",\"per_page\":\"30\",\"_export_\":\"page:1\"}', '2024-06-08 08:19:57', '2024-06-08 08:19:57'),
(903, 1, 'admin/peserta-tests/2/edit', 'GET', '127.0.0.1', '[]', '2024-06-08 08:26:17', '2024-06-08 08:26:17'),
(904, 1, 'admin/peserta-tests/2/edit', 'GET', '127.0.0.1', '[]', '2024-06-08 08:27:44', '2024-06-08 08:27:44'),
(905, 1, 'admin/peserta-tests/2/edit', 'GET', '127.0.0.1', '[]', '2024-06-08 08:29:41', '2024-06-08 08:29:41'),
(906, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"jadwal\":\"2024-05-22 08:00:00\",\"per_page\":\"30\"}', '2024-06-08 08:29:45', '2024-06-08 08:29:45'),
(907, 1, 'admin/peserta-tests/4/edit', 'GET', '127.0.0.1', '[]', '2024-06-08 08:29:49', '2024-06-08 08:29:49'),
(908, 1, 'admin/peserta-tests/4/edit', 'GET', '127.0.0.1', '[]', '2024-06-08 08:29:54', '2024-06-08 08:29:54'),
(909, 1, 'admin/peserta-tests/4/edit', 'GET', '127.0.0.1', '[]', '2024-06-08 08:30:55', '2024-06-08 08:30:55'),
(910, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"jadwal\":\"2024-05-22 08:00:00\",\"per_page\":\"30\"}', '2024-06-08 08:31:02', '2024-06-08 08:31:02'),
(911, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-08 08:31:08', '2024-06-08 08:31:08'),
(912, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-08 08:31:09', '2024-06-08 08:31:09'),
(913, 1, 'admin/peserta-tests/4/edit', 'GET', '127.0.0.1', '[]', '2024-06-08 08:31:12', '2024-06-08 08:31:12'),
(914, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-08 08:39:54', '2024-06-08 08:39:54'),
(915, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-06-08 08:49:41', '2024-06-08 08:49:41'),
(916, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-08 19:56:20', '2024-06-08 19:56:20'),
(917, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-08 19:56:29', '2024-06-08 19:56:29'),
(918, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-08 19:56:33', '2024-06-08 19:56:33'),
(919, 1, 'admin/transaksi/74', 'GET', '127.0.0.1', '[]', '2024-06-08 19:56:39', '2024-06-08 19:56:39'),
(920, 1, 'admin/transaksi/74/edit', 'GET', '127.0.0.1', '[]', '2024-06-08 19:56:43', '2024-06-08 19:56:43'),
(921, 1, 'admin/transaksi/74', 'PUT', '127.0.0.1', '{\"id_peserta\":\"2\",\"nama\":\"Maulana Rafinda\",\"jadwal\":\"2024-05-22 08:00:00\",\"jumlah_pembayaran\":\"20000\",\"jenis_pembayaran\":\"Dana : 082275126681\",\"status\":\"Berhasil\",\"search_terms\":null,\"status_pendaftaran\":\"Yes\",\"_token\":\"yE4GEXaq01Mn78A2xsu6e2eYwTgowTbmZthpoHGU\",\"_method\":\"PUT\"}', '2024-06-08 19:56:51', '2024-06-08 19:56:51'),
(922, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-08 19:56:51', '2024-06-08 19:56:51'),
(923, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 07:04:20', '2024-06-09 07:04:20'),
(924, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-09 07:04:28', '2024-06-09 07:04:28'),
(925, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-06-09 07:04:35', '2024-06-09 07:04:35'),
(926, 1, 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"maulana99\",\"name\":\"Maulana Rafinda\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"maulana\",\"roles\":[\"1\",null],\"search_terms\":null,\"permissions\":[\"1\",null],\"_token\":\"cPes7PRj5ZGZUDdyZfMK7wMt7PHHkJF21RzocESA\",\"_method\":\"PUT\"}', '2024-06-09 07:04:49', '2024-06-09 07:04:49'),
(927, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-09 07:04:49', '2024-06-09 07:04:49'),
(928, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-06-09 07:04:55', '2024-06-09 07:04:55'),
(929, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 07:05:02', '2024-06-09 07:05:02'),
(930, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-09 07:05:07', '2024-06-09 07:05:07'),
(931, 2, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-09 07:05:13', '2024-06-09 07:05:13'),
(932, 2, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-09 07:05:17', '2024-06-09 07:05:17'),
(933, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-09 07:05:33', '2024-06-09 07:05:33'),
(934, 2, 'admin/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-06-09 07:05:38', '2024-06-09 07:05:38'),
(935, 2, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-09 07:05:43', '2024-06-09 07:05:43'),
(936, 2, 'admin/jadwals/create', 'GET', '127.0.0.1', '[]', '2024-06-09 07:05:44', '2024-06-09 07:05:44'),
(937, 2, 'admin/jadwals', 'POST', '127.0.0.1', '{\"jadwal\":\"2024-06-09 14:05:45\",\"harga\":null,\"kouta\":null,\"_token\":\"yn4FCmM6Ox52YUDmPwYLUtCbDw2ixf9ZwE7DIjwR\"}', '2024-06-09 07:07:52', '2024-06-09 07:07:52'),
(938, 2, 'admin/jadwals/create', 'GET', '127.0.0.1', '[]', '2024-06-09 07:07:52', '2024-06-09 07:07:52'),
(939, 2, 'admin/jadwals', 'POST', '127.0.0.1', '{\"jadwal\":\"2024-06-24 08:00:00\",\"harga\":\"0\",\"kouta\":null,\"_token\":\"yn4FCmM6Ox52YUDmPwYLUtCbDw2ixf9ZwE7DIjwR\"}', '2024-06-09 07:10:58', '2024-06-09 07:10:58'),
(940, 2, 'admin/jadwals/create', 'GET', '127.0.0.1', '[]', '2024-06-09 07:10:58', '2024-06-09 07:10:58'),
(941, 2, 'admin/jadwals', 'POST', '127.0.0.1', '{\"jadwal\":\"2024-06-24 08:00:00\",\"harga\":\"0\",\"kouta\":null,\"_token\":\"yn4FCmM6Ox52YUDmPwYLUtCbDw2ixf9ZwE7DIjwR\"}', '2024-06-09 07:13:58', '2024-06-09 07:13:58'),
(942, 2, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-09 07:13:58', '2024-06-09 07:13:58'),
(943, 2, 'admin/jadwals/4/edit', 'GET', '127.0.0.1', '[]', '2024-06-09 07:14:03', '2024-06-09 07:14:03'),
(944, 2, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-09 07:14:04', '2024-06-09 07:14:04'),
(945, 2, 'admin/jadwals/4/edit', 'GET', '127.0.0.1', '[]', '2024-06-09 07:14:07', '2024-06-09 07:14:07'),
(946, 2, 'admin/jadwals/4', 'PUT', '127.0.0.1', '{\"jadwal\":\"2024-06-24 08:00:00\",\"harga\":\"0\",\"kouta\":\"25\",\"_token\":\"yn4FCmM6Ox52YUDmPwYLUtCbDw2ixf9ZwE7DIjwR\",\"_method\":\"PUT\"}', '2024-06-09 07:14:30', '2024-06-09 07:14:30'),
(947, 2, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-09 07:14:30', '2024-06-09 07:14:30'),
(948, 2, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-09 07:14:55', '2024-06-09 07:14:55'),
(949, 2, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-09 07:14:58', '2024-06-09 07:14:58'),
(950, 2, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-09 07:15:04', '2024-06-09 07:15:04'),
(951, 2, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-09 07:17:16', '2024-06-09 07:17:16'),
(952, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-09 07:20:17', '2024-06-09 07:20:17'),
(953, 2, 'admin/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-06-09 07:20:44', '2024-06-09 07:20:44'),
(954, 2, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-09 07:20:46', '2024-06-09 07:20:46'),
(955, 2, 'admin/jadwals/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-09 07:20:48', '2024-06-09 07:20:48'),
(956, 2, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-09 07:20:51', '2024-06-09 07:20:51'),
(957, 2, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-09 07:20:52', '2024-06-09 07:20:52'),
(958, 2, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"jadwal\":\"2024-06-24 08:00:00\"}', '2024-06-09 07:21:12', '2024-06-09 07:21:12'),
(959, 2, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-09 07:21:21', '2024-06-09 07:21:21'),
(960, 2, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-09 07:21:23', '2024-06-09 07:21:23'),
(961, 2, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-09 07:21:28', '2024-06-09 07:21:28'),
(962, 2, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-09 07:21:38', '2024-06-09 07:21:38'),
(963, 2, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-09 07:23:26', '2024-06-09 07:23:26'),
(964, 2, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-09 07:29:33', '2024-06-09 07:29:33'),
(965, 2, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2024-06-09 07:29:36', '2024-06-09 07:29:36'),
(966, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 17:35:16', '2024-06-09 17:35:16'),
(967, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-09 17:35:22', '2024-06-09 17:35:22'),
(968, 2, 'admin/users/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"aLwNhBXllF6TIwWi6pLqm51YMNyLWCkOILGXcRaG\"}', '2024-06-09 17:35:38', '2024-06-09 17:35:38'),
(969, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-09 17:35:38', '2024-06-09 17:35:38'),
(970, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-09 17:35:42', '2024-06-09 17:35:42'),
(971, 2, 'admin/users/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"aLwNhBXllF6TIwWi6pLqm51YMNyLWCkOILGXcRaG\"}', '2024-06-09 17:35:51', '2024-06-09 17:35:51'),
(972, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-09 17:35:52', '2024-06-09 17:35:52'),
(973, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-09 17:35:54', '2024-06-09 17:35:54'),
(974, 2, 'admin/users/3/edit', 'GET', '127.0.0.1', '[]', '2024-06-09 17:37:09', '2024-06-09 17:37:09'),
(975, 2, 'admin/users/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"aLwNhBXllF6TIwWi6pLqm51YMNyLWCkOILGXcRaG\"}', '2024-06-09 17:37:13', '2024-06-09 17:37:13'),
(976, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-09 17:37:13', '2024-06-09 17:37:13'),
(977, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-09 17:37:16', '2024-06-09 17:37:16'),
(978, 2, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-09 17:38:06', '2024-06-09 17:38:06'),
(979, 2, 'admin/transaksi/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"aLwNhBXllF6TIwWi6pLqm51YMNyLWCkOILGXcRaG\"}', '2024-06-09 17:38:10', '2024-06-09 17:38:10'),
(980, 2, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-09 17:38:11', '2024-06-09 17:38:11'),
(981, 2, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-09 17:38:13', '2024-06-09 17:38:13'),
(982, 2, 'admin/transaksi/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"aLwNhBXllF6TIwWi6pLqm51YMNyLWCkOILGXcRaG\"}', '2024-06-09 17:38:26', '2024-06-09 17:38:26'),
(983, 2, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-09 17:38:26', '2024-06-09 17:38:26'),
(984, 2, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-09 17:38:28', '2024-06-09 17:38:28'),
(985, 2, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-06-09 17:38:37', '2024-06-09 17:38:37'),
(986, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-06-09 17:38:42', '2024-06-09 17:38:42'),
(987, 2, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-06-09 17:38:47', '2024-06-09 17:38:47'),
(988, 2, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-06-09 17:38:58', '2024-06-09 17:38:58'),
(989, 2, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-06-09 17:39:01', '2024-06-09 17:39:01'),
(990, 2, 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2024-06-09 17:39:05', '2024-06-09 17:39:05'),
(991, 2, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-06-09 17:39:08', '2024-06-09 17:39:08'),
(992, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 17:39:11', '2024-06-09 17:39:11'),
(993, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-06-09 17:39:16', '2024-06-09 17:39:16'),
(994, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-09 17:39:23', '2024-06-09 17:39:23'),
(995, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-09 17:39:28', '2024-06-09 17:39:28'),
(996, 1, 'admin/users/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"CeFOdWr2leOgHhgSmjvOGudX4vNgzWJZIizsNzTc\"}', '2024-06-09 17:39:33', '2024-06-09 17:39:33'),
(997, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-09 17:39:33', '2024-06-09 17:39:33'),
(998, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-09 17:39:35', '2024-06-09 17:39:35'),
(999, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-09 17:39:50', '2024-06-09 17:39:50'),
(1000, 1, 'admin/jadwals/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"CeFOdWr2leOgHhgSmjvOGudX4vNgzWJZIizsNzTc\"}', '2024-06-09 17:39:57', '2024-06-09 17:39:57'),
(1001, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-09 17:39:58', '2024-06-09 17:39:58'),
(1002, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-09 17:40:04', '2024-06-09 17:40:04'),
(1003, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-09 17:40:16', '2024-06-09 17:40:16'),
(1004, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-09 17:40:21', '2024-06-09 17:40:21'),
(1005, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 17:41:30', '2024-06-09 17:41:30'),
(1006, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-09 17:41:45', '2024-06-09 17:41:45'),
(1007, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-09 17:41:56', '2024-06-09 17:41:56'),
(1008, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-09 17:42:18', '2024-06-09 17:42:18'),
(1009, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 17:44:07', '2024-06-09 17:44:07'),
(1010, 1, 'admin/auth/menu/24/edit', 'GET', '127.0.0.1', '[]', '2024-06-09 17:44:12', '2024-06-09 17:44:12'),
(1011, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 17:44:25', '2024-06-09 17:44:25'),
(1012, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-06-09 17:44:30', '2024-06-09 17:44:30'),
(1013, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 17:47:08', '2024-06-09 17:47:08'),
(1014, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-09 17:47:12', '2024-06-09 17:47:12'),
(1015, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-09 17:48:28', '2024-06-09 17:48:28'),
(1016, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-09 17:48:32', '2024-06-09 17:48:32'),
(1017, 1, 'admin/users/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"CeFOdWr2leOgHhgSmjvOGudX4vNgzWJZIizsNzTc\"}', '2024-06-09 17:48:36', '2024-06-09 17:48:36'),
(1018, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-09 17:48:37', '2024-06-09 17:48:37'),
(1019, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-09 17:48:40', '2024-06-09 17:48:40'),
(1020, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-09 17:49:44', '2024-06-09 17:49:44'),
(1021, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-09 17:49:57', '2024-06-09 17:49:57'),
(1022, 1, 'admin/peserta-tests/10', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"CeFOdWr2leOgHhgSmjvOGudX4vNgzWJZIizsNzTc\"}', '2024-06-09 17:50:10', '2024-06-09 17:50:10'),
(1023, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-09 17:50:10', '2024-06-09 17:50:10'),
(1024, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-09 17:50:14', '2024-06-09 17:50:14'),
(1025, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-09 17:50:17', '2024-06-09 17:50:17'),
(1026, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-09 17:56:20', '2024-06-09 17:56:20'),
(1027, 1, 'admin/users/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"CeFOdWr2leOgHhgSmjvOGudX4vNgzWJZIizsNzTc\"}', '2024-06-09 17:56:23', '2024-06-09 17:56:23'),
(1028, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-09 17:56:24', '2024-06-09 17:56:24'),
(1029, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-09 17:56:28', '2024-06-09 17:56:28'),
(1030, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-09 17:56:30', '2024-06-09 17:56:30');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1031, 1, 'admin/users/12/edit', 'GET', '127.0.0.1', '[]', '2024-06-09 17:56:33', '2024-06-09 17:56:33'),
(1032, 1, 'admin/users/12', 'PUT', '127.0.0.1', '{\"name\":\"Fadlul\",\"nim\":\"2204056040023\",\"jk\":null,\"prodi\":null,\"no_hp\":null,\"alamat\":null,\"email\":\"languagecenter@utu.ac.id\",\"password\":\"*****-filtered-out-*****\",\"_token\":\"CeFOdWr2leOgHhgSmjvOGudX4vNgzWJZIizsNzTc\",\"_method\":\"PUT\"}', '2024-06-09 17:56:37', '2024-06-09 17:56:37'),
(1033, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-09 17:56:38', '2024-06-09 17:56:38'),
(1034, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-09 17:59:20', '2024-06-09 17:59:20'),
(1035, 1, 'admin/transaksi/80/edit', 'GET', '127.0.0.1', '[]', '2024-06-09 17:59:24', '2024-06-09 17:59:24'),
(1036, 1, 'admin/transaksi/80', 'PUT', '127.0.0.1', '{\"id_peserta\":\"18\",\"nama\":\"Hajjul Ikram\",\"jadwal\":\"2024-06-24 08:00:00\",\"jumlah_pembayaran\":\"0\",\"jenis_pembayaran\":\"Dana : 082275126681\",\"status\":\"Berhasil\",\"search_terms\":null,\"status_pendaftaran\":\"Yes\",\"_token\":\"CeFOdWr2leOgHhgSmjvOGudX4vNgzWJZIizsNzTc\",\"_method\":\"PUT\"}', '2024-06-09 17:59:32', '2024-06-09 17:59:32'),
(1037, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-09 17:59:33', '2024-06-09 17:59:33'),
(1038, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-10 07:17:49', '2024-06-10 07:17:49'),
(1039, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-10 07:18:13', '2024-06-10 07:18:13'),
(1040, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-10 07:24:17', '2024-06-10 07:24:17'),
(1041, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"24\\\"},{\\\"id\\\":\\\"28\\\"},{\\\"id\\\":\\\"30\\\"},{\\\"id\\\":\\\"33\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]}]\",\"_token\":\"mRrHqMF2CjA2Xsvcogy53tasBtBz98QzkN4OGaxo\"}', '2024-06-10 07:24:48', '2024-06-10 07:24:48'),
(1042, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-10 07:24:49', '2024-06-10 07:24:49'),
(1043, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-10 07:24:51', '2024-06-10 07:24:51'),
(1044, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-10 07:25:01', '2024-06-10 07:25:01'),
(1045, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-10 07:25:19', '2024-06-10 07:25:19'),
(1046, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-10 07:25:23', '2024-06-10 07:25:23'),
(1047, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-10 07:42:36', '2024-06-10 07:42:36'),
(1048, 1, 'admin/transaksi/83/edit', 'GET', '127.0.0.1', '[]', '2024-06-10 07:42:41', '2024-06-10 07:42:41'),
(1049, 1, 'admin/transaksi/83', 'PUT', '127.0.0.1', '{\"id_peserta\":\"12\",\"nama\":\"the best\",\"jadwal\":\"2024-05-22 08:00:00\",\"jumlah_pembayaran\":\"0\",\"jenis_pembayaran\":\"Link Aja : 082275126681\",\"status\":\"Berhasil\",\"search_terms\":null,\"status_pendaftaran\":\"Yes\",\"_token\":\"mRrHqMF2CjA2Xsvcogy53tasBtBz98QzkN4OGaxo\",\"_method\":\"PUT\"}', '2024-06-10 07:43:15', '2024-06-10 07:43:15'),
(1050, 1, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-10 07:43:16', '2024-06-10 07:43:16'),
(1051, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-10 07:44:42', '2024-06-10 07:44:42'),
(1052, 1, 'admin/peserta-tests/13/edit', 'GET', '127.0.0.1', '[]', '2024-06-10 07:44:52', '2024-06-10 07:44:52'),
(1053, 1, 'admin/peserta-tests/13/edit', 'GET', '127.0.0.1', '[]', '2024-06-10 07:44:58', '2024-06-10 07:44:58'),
(1054, 1, 'admin/peserta-tests/13', 'PUT', '127.0.0.1', '{\"transaksi_id\":\"83\",\"id_peserta\":\"12\",\"nama\":\"the best\",\"jadwal\":\"2024-05-22 08:00:00\",\"nilaiStr\":\"48\",\"nilaiList\":\"40\",\"nilaiRdg\":\"47\",\"score\":\"450\",\"keterangan\":\"Passed\",\"_token\":\"mRrHqMF2CjA2Xsvcogy53tasBtBz98QzkN4OGaxo\",\"_method\":\"PUT\"}', '2024-06-10 07:45:52', '2024-06-10 07:45:52'),
(1055, 1, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-10 07:45:52', '2024-06-10 07:45:52'),
(1056, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-10 07:49:11', '2024-06-10 07:49:11'),
(1057, 1, 'admin/jadwals/create', 'GET', '127.0.0.1', '[]', '2024-06-10 07:49:36', '2024-06-10 07:49:36'),
(1058, 1, 'admin/jadwals', 'POST', '127.0.0.1', '{\"jadwal\":\"2024-06-20 08:30:00\",\"harga\":null,\"kouta\":\"25\",\"_token\":\"mRrHqMF2CjA2Xsvcogy53tasBtBz98QzkN4OGaxo\"}', '2024-06-10 07:50:19', '2024-06-10 07:50:19'),
(1059, 1, 'admin/jadwals/create', 'GET', '127.0.0.1', '[]', '2024-06-10 07:50:20', '2024-06-10 07:50:20'),
(1060, 1, 'admin/jadwals', 'POST', '127.0.0.1', '{\"jadwal\":\"2024-06-20 08:30:00\",\"harga\":\"0\",\"kouta\":\"25\",\"_token\":\"mRrHqMF2CjA2Xsvcogy53tasBtBz98QzkN4OGaxo\"}', '2024-06-10 07:50:29', '2024-06-10 07:50:29'),
(1061, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-10 07:50:29', '2024-06-10 07:50:29'),
(1062, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-06-10 07:56:30', '2024-06-10 07:56:30'),
(1063, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-10 18:24:47', '2024-06-10 18:24:47'),
(1064, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-10 18:24:53', '2024-06-10 18:24:53'),
(1065, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-10 18:26:39', '2024-06-10 18:26:39'),
(1066, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-10 18:26:41', '2024-06-10 18:26:41'),
(1067, 2, 'admin/users/2', 'GET', '127.0.0.1', '[]', '2024-06-10 19:04:30', '2024-06-10 19:04:30'),
(1068, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-10 19:04:34', '2024-06-10 19:04:34'),
(1069, 2, 'admin/users/2', 'GET', '127.0.0.1', '[]', '2024-06-10 19:04:37', '2024-06-10 19:04:37'),
(1070, 2, 'admin/users/2', 'GET', '127.0.0.1', '[]', '2024-06-10 19:09:55', '2024-06-10 19:09:55'),
(1071, 2, 'admin/users/2', 'GET', '127.0.0.1', '[]', '2024-06-10 19:10:06', '2024-06-10 19:10:06'),
(1072, 2, 'admin/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-06-10 19:12:18', '2024-06-10 19:12:18'),
(1073, 2, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-10 19:20:33', '2024-06-10 19:20:33'),
(1074, 2, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-10 19:21:53', '2024-06-10 19:21:53'),
(1075, 2, 'admin/jadwals/1', 'GET', '127.0.0.1', '[]', '2024-06-10 19:21:59', '2024-06-10 19:21:59'),
(1076, 2, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-10 19:22:28', '2024-06-10 19:22:28'),
(1077, 2, 'admin/jadwals/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-10 19:22:30', '2024-06-10 19:22:30'),
(1078, 2, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-10 19:23:57', '2024-06-10 19:23:57'),
(1079, 2, 'admin/jadwals/create', 'GET', '127.0.0.1', '[]', '2024-06-10 19:23:58', '2024-06-10 19:23:58'),
(1080, 2, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-10 19:25:15', '2024-06-10 19:25:15'),
(1081, 2, 'admin/transaksi/3/edit', 'GET', '127.0.0.1', '[]', '2024-06-10 19:29:05', '2024-06-10 19:29:05'),
(1082, 2, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-10 19:32:38', '2024-06-10 19:32:38'),
(1083, 2, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-10 19:33:42', '2024-06-10 19:33:42'),
(1084, 2, 'admin/peserta-tests/4/edit', 'GET', '127.0.0.1', '[]', '2024-06-10 19:38:33', '2024-06-10 19:38:33'),
(1085, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-11 06:28:32', '2024-06-11 06:28:32'),
(1086, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-11 06:28:41', '2024-06-11 06:28:41'),
(1087, 2, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-11 06:28:49', '2024-06-11 06:28:49'),
(1088, 2, 'admin/transaksi/85/edit', 'GET', '127.0.0.1', '[]', '2024-06-11 06:28:54', '2024-06-11 06:28:54'),
(1089, 2, 'admin/transaksi/85/edit', 'GET', '127.0.0.1', '[]', '2024-06-11 06:28:57', '2024-06-11 06:28:57'),
(1090, 2, 'admin/transaksi/85', 'PUT', '127.0.0.1', '{\"id_peserta\":\"38\",\"nama\":\"Elvi Munzila\",\"jadwal\":\"2024-06-24 08:00:00\",\"jumlah_pembayaran\":\"0\",\"jenis_pembayaran\":\"BSI : 082275126681\",\"status\":\"Berhasil\",\"search_terms\":null,\"status_pendaftaran\":\"Yes\",\"_token\":\"UDaXYyzN4lfbWH7MFI9U0Mbvlch8bCn2EuReV2Ua\",\"_method\":\"PUT\"}', '2024-06-11 06:29:07', '2024-06-11 06:29:07'),
(1091, 2, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-11 06:29:08', '2024-06-11 06:29:08'),
(1092, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-11 06:39:39', '2024-06-11 06:39:39'),
(1093, 2, 'admin/users', 'GET', '127.0.0.1', '{\"per_page\":\"10\"}', '2024-06-11 06:39:57', '2024-06-11 06:39:57'),
(1094, 2, 'admin/users', 'GET', '127.0.0.1', '{\"per_page\":\"100\"}', '2024-06-11 06:40:07', '2024-06-11 06:40:07'),
(1095, 2, 'admin/users', 'GET', '127.0.0.1', '{\"per_page\":\"10\"}', '2024-06-11 06:40:16', '2024-06-11 06:40:16'),
(1096, 2, 'admin/users', 'GET', '127.0.0.1', '{\"per_page\":\"10\"}', '2024-06-11 06:45:04', '2024-06-11 06:45:04'),
(1097, 2, 'admin/users', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2024-06-11 06:45:14', '2024-06-11 06:45:14'),
(1098, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-15 17:24:10', '2024-06-15 17:24:10'),
(1099, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-15 17:24:18', '2024-06-15 17:24:18'),
(1100, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-15 17:24:40', '2024-06-15 17:24:40'),
(1101, 1, 'admin/jadwals/1/edit', 'GET', '127.0.0.1', '[]', '2024-06-15 17:26:38', '2024-06-15 17:26:38'),
(1102, 1, 'admin/jadwals/1', 'PUT', '127.0.0.1', '{\"jadwal\":\"2024-05-22 08:00:00\",\"harga\":\"0\",\"kouta\":\"25\",\"status\":\"Done\",\"search_terms\":null,\"_token\":\"ZWuJkpWcBCVOsjCHo1qdExEF78mg0FsW7WAZifQj\",\"_method\":\"PUT\"}', '2024-06-15 17:27:35', '2024-06-15 17:27:35'),
(1103, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-15 17:27:35', '2024-06-15 17:27:35'),
(1104, 1, 'admin/jadwals/5/edit', 'GET', '127.0.0.1', '[]', '2024-06-15 17:34:03', '2024-06-15 17:34:03'),
(1105, 1, 'admin/jadwals/5', 'PUT', '127.0.0.1', '{\"jadwal\":\"2024-06-20 08:30:00\",\"harga\":\"0\",\"kouta\":\"25\",\"status\":\"Done\",\"search_terms\":null,\"_token\":\"ZWuJkpWcBCVOsjCHo1qdExEF78mg0FsW7WAZifQj\",\"_method\":\"PUT\"}', '2024-06-15 17:34:07', '2024-06-15 17:34:07'),
(1106, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-15 17:34:07', '2024-06-15 17:34:07'),
(1107, 1, 'admin/jadwals/5/edit', 'GET', '127.0.0.1', '[]', '2024-06-15 17:34:14', '2024-06-15 17:34:14'),
(1108, 1, 'admin/jadwals/5', 'PUT', '127.0.0.1', '{\"jadwal\":\"2024-06-20 08:30:00\",\"harga\":\"0\",\"kouta\":\"25\",\"status\":\"Scheduled\",\"search_terms\":null,\"_token\":\"ZWuJkpWcBCVOsjCHo1qdExEF78mg0FsW7WAZifQj\",\"_method\":\"PUT\"}', '2024-06-15 17:34:16', '2024-06-15 17:34:16'),
(1109, 1, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-15 17:34:17', '2024-06-15 17:34:17'),
(1110, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-21 09:28:09', '2024-06-21 09:28:09'),
(1111, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-21 09:28:21', '2024-06-21 09:28:21'),
(1112, 2, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"feedback\",\"model_name\":\"App\\\\Models\\\\\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\FeedbackController\",\"create\":[\"controller\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"subject\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"message\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"w8e7386JyCfgEgOsYAb3XOmhtaEAHX4fXrY6TDw2\"}', '2024-06-21 09:30:04', '2024-06-21 09:30:04'),
(1113, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-21 09:30:05', '2024-06-21 09:30:05'),
(1114, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-21 09:30:29', '2024-06-21 09:30:29'),
(1115, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-21 09:30:46', '2024-06-21 09:30:46'),
(1116, 2, 'admin/auth/menu/34', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"w8e7386JyCfgEgOsYAb3XOmhtaEAHX4fXrY6TDw2\"}', '2024-06-21 09:30:57', '2024-06-21 09:30:57'),
(1117, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-21 09:30:59', '2024-06-21 09:30:59'),
(1118, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-21 09:31:04', '2024-06-21 09:31:04'),
(1119, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-21 09:31:06', '2024-06-21 09:31:06'),
(1120, 2, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"feedback\",\"model_name\":\"App\\\\Models\\\\Feedback\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\FeedbackController\",\"create\":[\"controller\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"subject\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"message\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"w8e7386JyCfgEgOsYAb3XOmhtaEAHX4fXrY6TDw2\"}', '2024-06-21 09:32:01', '2024-06-21 09:32:01'),
(1121, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-21 09:32:04', '2024-06-21 09:32:04'),
(1122, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-06-21 09:32:22', '2024-06-21 09:32:22'),
(1123, 2, 'admin/feedback', 'GET', '127.0.0.1', '[]', '2024-06-21 09:32:28', '2024-06-21 09:32:28'),
(1124, 2, 'admin/feedback/1', 'GET', '127.0.0.1', '[]', '2024-06-21 09:32:45', '2024-06-21 09:32:45'),
(1125, 2, 'admin/feedback/1', 'GET', '127.0.0.1', '[]', '2024-06-21 09:34:03', '2024-06-21 09:34:03'),
(1126, 2, 'admin/feedback/1', 'GET', '127.0.0.1', '[]', '2024-06-21 09:34:36', '2024-06-21 09:34:36'),
(1127, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-21 09:34:46', '2024-06-21 09:34:46'),
(1128, 2, 'admin/auth/menu/35/edit', 'GET', '127.0.0.1', '[]', '2024-06-21 09:34:57', '2024-06-21 09:34:57'),
(1129, 2, 'admin/auth/menu/35', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Feedback User\",\"icon\":\"icon-smile\",\"uri\":\"feedback\",\"roles\":[null],\"permission\":null,\"_token\":\"w8e7386JyCfgEgOsYAb3XOmhtaEAHX4fXrY6TDw2\",\"_method\":\"PUT\"}', '2024-06-21 09:37:18', '2024-06-21 09:37:18'),
(1130, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-21 09:37:19', '2024-06-21 09:37:19'),
(1131, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-21 09:37:22', '2024-06-21 09:37:22'),
(1132, 2, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"24\\\"},{\\\"id\\\":\\\"28\\\"},{\\\"id\\\":\\\"30\\\"},{\\\"id\\\":\\\"33\\\"},{\\\"id\\\":\\\"35\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]}]\",\"_token\":\"w8e7386JyCfgEgOsYAb3XOmhtaEAHX4fXrY6TDw2\"}', '2024-06-21 09:37:35', '2024-06-21 09:37:35'),
(1133, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-21 09:37:37', '2024-06-21 09:37:37'),
(1134, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-21 09:37:39', '2024-06-21 09:37:39'),
(1135, 2, 'admin/feedback', 'GET', '127.0.0.1', '[]', '2024-06-21 09:38:30', '2024-06-21 09:38:30'),
(1136, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-26 18:45:23', '2024-06-26 18:45:23'),
(1137, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-26 18:45:33', '2024-06-26 18:45:33'),
(1138, 2, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-26 18:45:38', '2024-06-26 18:45:38'),
(1139, 2, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-26 18:45:40', '2024-06-26 18:45:40'),
(1140, 2, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-26 18:46:05', '2024-06-26 18:46:05'),
(1141, 2, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-26 18:46:59', '2024-06-26 18:46:59'),
(1142, 2, 'admin/transaksi', 'GET', '127.0.0.1', '{\"status\":[\"Gagal\"]}', '2024-06-26 18:47:10', '2024-06-26 18:47:10'),
(1143, 2, 'admin/transaksi', 'GET', '127.0.0.1', '{\"status\":[\"Diproses\"]}', '2024-06-26 18:47:17', '2024-06-26 18:47:17'),
(1144, 2, 'admin/transaksi/88/edit', 'GET', '127.0.0.1', '[]', '2024-06-26 18:47:19', '2024-06-26 18:47:19'),
(1145, 2, 'admin/transaksi/88', 'PUT', '127.0.0.1', '{\"id_peserta\":\"2\",\"nama\":\"Maulana Rafinda\",\"jadwal\":\"2024-05-30 08:00:35\",\"jumlah_pembayaran\":\"20000\",\"jenis_pembayaran\":null,\"status\":\"Gagal\",\"search_terms\":null,\"status_pendaftaran\":null,\"_token\":\"YOmW7ER78Zzk0SqS0lWESJNFYHLlzABiLAEkJ7CC\",\"_method\":\"PUT\"}', '2024-06-26 18:47:43', '2024-06-26 18:47:43'),
(1146, 2, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-26 18:47:44', '2024-06-26 18:47:44'),
(1147, 2, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-26 18:55:43', '2024-06-26 18:55:43'),
(1148, 2, 'admin/jadwals/4/edit', 'GET', '127.0.0.1', '[]', '2024-06-26 18:55:53', '2024-06-26 18:55:53'),
(1149, 2, 'admin/jadwals/4/edit', 'GET', '127.0.0.1', '[]', '2024-06-26 18:56:30', '2024-06-26 18:56:30'),
(1150, 2, 'admin/jadwals/4', 'PUT', '127.0.0.1', '{\"jadwal\":\"2024-06-24 08:00:00\",\"harga\":\"0\",\"kouta\":\"2\",\"peserta\":\"2\",\"status\":\"Scheduled\",\"search_terms\":null,\"_token\":\"YOmW7ER78Zzk0SqS0lWESJNFYHLlzABiLAEkJ7CC\",\"_method\":\"PUT\"}', '2024-06-26 18:56:41', '2024-06-26 18:56:41'),
(1151, 2, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-26 18:56:41', '2024-06-26 18:56:41'),
(1152, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-26 18:57:52', '2024-06-26 18:57:52'),
(1153, 2, 'admin/users/28', 'GET', '127.0.0.1', '[]', '2024-06-26 18:58:28', '2024-06-26 18:58:28'),
(1154, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-27 00:02:25', '2024-06-27 00:02:25'),
(1155, 2, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-27 00:02:35', '2024-06-27 00:02:35'),
(1156, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-27 00:02:52', '2024-06-27 00:02:52'),
(1157, 2, 'admin/auth/menu/33/edit', 'GET', '127.0.0.1', '[]', '2024-06-27 00:02:59', '2024-06-27 00:02:59'),
(1158, 2, 'admin/auth/menu/33', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Hasil Tes\",\"icon\":\"icon-users\",\"uri\":\"peserta-tests\",\"roles\":[null],\"permission\":null,\"_token\":\"i2JbIFzF0cckyhbR4uGFPeFnacgp2UmFRf6EguLs\",\"_method\":\"PUT\"}', '2024-06-27 00:03:12', '2024-06-27 00:03:12'),
(1159, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-27 00:03:13', '2024-06-27 00:03:13'),
(1160, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-06-27 00:03:16', '2024-06-27 00:03:16'),
(1161, 2, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-27 00:03:20', '2024-06-27 00:03:20'),
(1162, 2, 'admin/peserta-tests', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2024-06-27 00:07:56', '2024-06-27 00:07:56'),
(1163, 2, 'admin/feedback', 'GET', '127.0.0.1', '[]', '2024-06-27 00:11:24', '2024-06-27 00:11:24'),
(1164, 2, 'admin/feedback', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2024-06-27 00:11:27', '2024-06-27 00:11:27'),
(1165, 2, 'admin/feedback', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2024-06-27 00:11:45', '2024-06-27 00:11:45'),
(1166, 2, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-27 00:12:48', '2024-06-27 00:12:48'),
(1167, 2, 'admin/peserta-tests/6/edit', 'GET', '127.0.0.1', '[]', '2024-06-27 00:12:54', '2024-06-27 00:12:54'),
(1168, 2, 'admin/peserta-tests/6/edit', 'GET', '127.0.0.1', '[]', '2024-06-27 00:12:58', '2024-06-27 00:12:58'),
(1169, 2, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-27 00:14:06', '2024-06-27 00:14:06'),
(1170, 2, 'admin/peserta-tests/6/edit', 'GET', '127.0.0.1', '[]', '2024-06-27 00:14:08', '2024-06-27 00:14:08'),
(1171, 2, 'admin/peserta-tests/6/edit', 'GET', '127.0.0.1', '[]', '2024-06-27 00:14:16', '2024-06-27 00:14:16'),
(1172, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-27 00:14:42', '2024-06-27 00:14:42'),
(1173, 2, 'admin/users/18/edit', 'GET', '127.0.0.1', '[]', '2024-06-27 00:14:50', '2024-06-27 00:14:50'),
(1174, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-27 00:16:01', '2024-06-27 00:16:01'),
(1175, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-27 00:16:27', '2024-06-27 00:16:27'),
(1176, 2, 'admin/users/2', 'GET', '127.0.0.1', '[]', '2024-06-27 00:16:33', '2024-06-27 00:16:33'),
(1177, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-27 00:16:35', '2024-06-27 00:16:35'),
(1178, 2, 'admin/users/18', 'GET', '127.0.0.1', '[]', '2024-06-27 00:16:37', '2024-06-27 00:16:37'),
(1179, 2, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-27 00:17:35', '2024-06-27 00:17:35'),
(1180, 2, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-27 00:17:59', '2024-06-27 00:17:59'),
(1181, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-27 00:18:36', '2024-06-27 00:18:36'),
(1182, 2, 'admin/users/32/edit', 'GET', '127.0.0.1', '[]', '2024-06-27 00:18:39', '2024-06-27 00:18:39'),
(1183, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-27 00:19:36', '2024-06-27 00:19:36'),
(1184, 2, 'admin/users/28', 'GET', '127.0.0.1', '[]', '2024-06-27 00:19:59', '2024-06-27 00:19:59'),
(1185, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-27 01:56:15', '2024-06-27 01:56:15'),
(1186, 2, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-27 01:56:52', '2024-06-27 01:56:52'),
(1187, 2, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-27 01:56:55', '2024-06-27 01:56:55'),
(1188, 2, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-06-27 01:56:58', '2024-06-27 01:56:58'),
(1189, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-27 01:57:06', '2024-06-27 01:57:06'),
(1190, 2, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-27 01:57:15', '2024-06-27 01:57:15'),
(1191, 2, 'admin/jadwals/create', 'GET', '127.0.0.1', '[]', '2024-06-27 01:57:20', '2024-06-27 01:57:20'),
(1192, 2, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-27 02:01:07', '2024-06-27 02:01:07'),
(1193, 2, 'admin/transaksi', 'GET', '127.0.0.1', '{\"status\":[\"Diproses\"]}', '2024-06-27 02:01:23', '2024-06-27 02:01:23'),
(1194, 2, 'admin/transaksi/94', 'GET', '127.0.0.1', '[]', '2024-06-27 02:01:28', '2024-06-27 02:01:28'),
(1195, 2, 'admin/transaksi/94/edit', 'GET', '127.0.0.1', '[]', '2024-06-27 02:01:31', '2024-06-27 02:01:31'),
(1196, 2, 'admin/transaksi/94', 'PUT', '127.0.0.1', '{\"id_peserta\":\"2\",\"nama\":\"Maulana Rafinda\",\"jadwal\":\"2024-05-30 08:00:35\",\"jumlah_pembayaran\":\"20000\",\"jenis_pembayaran\":\"Dana : 082275126681\",\"status\":\"Berhasil\",\"search_terms\":null,\"status_pendaftaran\":\"Yes\",\"_token\":\"i2JbIFzF0cckyhbR4uGFPeFnacgp2UmFRf6EguLs\",\"_method\":\"PUT\"}', '2024-06-27 02:01:48', '2024-06-27 02:01:48'),
(1197, 2, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-06-27 02:01:50', '2024-06-27 02:01:50'),
(1198, 2, 'admin/transaksi/3/edit', 'GET', '127.0.0.1', '[]', '2024-06-27 02:02:19', '2024-06-27 02:02:19'),
(1199, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-06-27 02:03:01', '2024-06-27 02:03:01'),
(1200, 2, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-06-27 02:42:19', '2024-06-27 02:42:19'),
(1201, 2, 'admin/jadwals/create', 'GET', '127.0.0.1', '[]', '2024-06-27 02:42:58', '2024-06-27 02:42:58'),
(1202, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-07 14:17:47', '2024-07-07 14:17:47'),
(1203, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-07-07 14:17:53', '2024-07-07 14:17:53'),
(1204, 2, 'admin/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-07-07 14:18:09', '2024-07-07 14:18:09'),
(1205, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-07-07 14:28:59', '2024-07-07 14:28:59'),
(1206, 2, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-07-07 14:29:03', '2024-07-07 14:29:03'),
(1207, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-07-07 14:29:49', '2024-07-07 14:29:49'),
(1208, 2, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-07-07 14:29:51', '2024-07-07 14:29:51'),
(1209, 2, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-07-07 15:27:12', '2024-07-07 15:27:12'),
(1210, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-07 15:27:12', '2024-07-07 15:27:12'),
(1211, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-07 15:27:16', '2024-07-07 15:27:16'),
(1212, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-07 15:59:41', '2024-07-07 15:59:41'),
(1213, 2, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-07-07 15:59:45', '2024-07-07 15:59:45'),
(1214, 2, 'admin/peserta-tests/6/edit', 'GET', '127.0.0.1', '[]', '2024-07-07 15:59:50', '2024-07-07 15:59:50'),
(1215, 2, 'admin/peserta-tests/6/edit', 'GET', '127.0.0.1', '[]', '2024-07-07 16:00:39', '2024-07-07 16:00:39'),
(1216, 2, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-07-07 16:00:43', '2024-07-07 16:00:43'),
(1217, 2, 'admin/peserta-tests/6/edit', 'GET', '127.0.0.1', '[]', '2024-07-07 16:00:53', '2024-07-07 16:00:53'),
(1218, 2, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-07-07 16:01:06', '2024-07-07 16:01:06'),
(1219, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-14 08:23:10', '2024-07-14 08:23:10'),
(1220, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-07-14 08:23:47', '2024-07-14 08:23:47'),
(1221, 2, 'admin/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-07-14 08:24:01', '2024-07-14 08:24:01'),
(1222, 2, 'admin/users/2', 'PUT', '127.0.0.1', '{\"name\":\"Maulana Rafinda\",\"nim\":\"2005903040096\",\"jk\":\"Male\",\"prodi\":\"Teknologi Informasi\",\"no_hp\":\"082275126681\",\"alamat\":\"Jl. Tapaktuan - Blangpidie, Labuhan Haji Timur, Aceh Selatan\",\"email\":\"maulanansn@gmail.com\",\"password\":\"*****-filtered-out-*****\",\"_token\":\"tz2khSDukDFE7jvPIpbsnjzIPE9lqfN079mVapDI\",\"_method\":\"PUT\"}', '2024-07-14 08:24:24', '2024-07-14 08:24:24'),
(1223, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-07-14 08:24:25', '2024-07-14 08:24:25'),
(1224, 2, 'admin/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-07-14 08:24:27', '2024-07-14 08:24:27'),
(1225, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-17 06:43:48', '2024-07-17 06:43:48'),
(1226, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-07-17 06:43:56', '2024-07-17 06:43:56'),
(1227, 2, 'admin/users/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Y8GfR92hl1azzyRyJe0SrGIRd1HUqeEL7LdrlYsa\"}', '2024-07-17 06:44:15', '2024-07-17 06:44:15'),
(1228, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-07-17 06:44:17', '2024-07-17 06:44:17'),
(1229, 2, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-07-17 06:47:18', '2024-07-17 06:47:18'),
(1230, 2, 'admin/transaksi/100/edit', 'GET', '127.0.0.1', '[]', '2024-07-17 06:47:21', '2024-07-17 06:47:21'),
(1231, 2, 'admin/transaksi/100', 'PUT', '127.0.0.1', '{\"id_peserta\":\"60\",\"nama\":\"Maulana Rafinda\",\"jadwal\":\"2024-05-30 08:00:35\",\"jumlah_pembayaran\":\"20000\",\"jenis_pembayaran\":null,\"status\":\"Berhasil\",\"search_terms\":null,\"status_pendaftaran\":null,\"_token\":\"Y8GfR92hl1azzyRyJe0SrGIRd1HUqeEL7LdrlYsa\",\"_method\":\"PUT\"}', '2024-07-17 06:47:26', '2024-07-17 06:47:26'),
(1232, 2, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-07-17 06:47:26', '2024-07-17 06:47:26'),
(1233, 2, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-07-17 06:47:59', '2024-07-17 06:47:59'),
(1234, 2, 'admin/peserta-tests/16/edit', 'GET', '127.0.0.1', '[]', '2024-07-17 06:48:02', '2024-07-17 06:48:02'),
(1235, 2, 'admin/peserta-tests/16/edit', 'GET', '127.0.0.1', '[]', '2024-07-17 06:48:06', '2024-07-17 06:48:06'),
(1236, 2, 'admin/peserta-tests/16', 'PUT', '127.0.0.1', '{\"transaksi_id\":\"100\",\"id_peserta\":\"60\",\"nama\":\"Maulana Rafinda\",\"jadwal\":\"2024-05-30 08:00:35\",\"nilaiStr\":\"33\",\"nilaiList\":\"44\",\"nilaiRdg\":\"66\",\"score\":\"477\",\"keterangan\":\"Passed\",\"_token\":\"Y8GfR92hl1azzyRyJe0SrGIRd1HUqeEL7LdrlYsa\",\"_method\":\"PUT\"}', '2024-07-17 06:48:17', '2024-07-17 06:48:17'),
(1237, 2, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-07-17 06:48:18', '2024-07-17 06:48:18'),
(1238, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-17 06:48:40', '2024-07-17 06:48:40'),
(1239, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-25 01:39:38', '2024-07-25 01:39:38'),
(1240, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-07-25 01:39:42', '2024-07-25 01:39:42'),
(1241, 2, 'admin/users', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2024-07-25 01:40:28', '2024-07-25 01:40:28'),
(1242, 2, 'admin/users', 'GET', '127.0.0.1', '{\"page\":\"3\"}', '2024-07-25 01:40:33', '2024-07-25 01:40:33'),
(1243, 2, 'admin/users/60', 'GET', '127.0.0.1', '[]', '2024-07-25 01:40:53', '2024-07-25 01:40:53'),
(1244, 2, 'admin/users', 'GET', '127.0.0.1', '{\"page\":\"3\"}', '2024-07-25 01:40:57', '2024-07-25 01:40:57'),
(1245, 2, 'admin/users/60/edit', 'GET', '127.0.0.1', '[]', '2024-07-25 01:40:59', '2024-07-25 01:40:59'),
(1246, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-25 01:41:55', '2024-07-25 01:41:55'),
(1247, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-07-25 01:41:56', '2024-07-25 01:41:56'),
(1248, 2, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-07-25 01:42:01', '2024-07-25 01:42:01'),
(1249, 2, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-07-25 01:42:03', '2024-07-25 01:42:03'),
(1250, 2, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-07-25 02:39:18', '2024-07-25 02:39:18'),
(1251, 2, 'admin/jadwals', 'GET', '127.0.0.1', '[]', '2024-07-25 02:39:20', '2024-07-25 02:39:20'),
(1252, 2, 'admin/transaksi', 'GET', '127.0.0.1', '[]', '2024-07-25 02:39:22', '2024-07-25 02:39:22'),
(1253, 2, 'admin/peserta-tests', 'GET', '127.0.0.1', '[]', '2024-07-25 02:39:23', '2024-07-25 02:39:23');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `http_method` varchar(255) DEFAULT NULL,
  `http_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2024-04-26 11:04:47', '2024-04-26 11:04:47');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2024-04-26 10:45:26', '2024-04-26 10:45:26');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$w48YUSAo23c/dqabfnDcP.zvMd0x94GIYgLai9VeOtmM9h8yNmJWG', 'Administrator', NULL, NULL, '2024-04-26 10:45:26', '2024-04-26 10:45:26'),
(2, 'maulana99', '$2y$10$Kwe97WlGySNfaQ6VUW9UWuQpuds5OZn9eWOGFUwuxqV9hss0H.yB.', 'Maulana Rafinda', '', NULL, '2024-04-26 11:13:23', '2024-06-09 07:04:49');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_user_permissions`
--

INSERT INTO `admin_user_permissions` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Maulana Rafinda', 'maulanansn@gmail.com', 'Test Submit Feedback', 'Semoga lebih baik lagi kedepannya... :)', '2024-06-21 16:26:46', '2024-06-21 16:26:46'),
(2, 'Maulana Rafinda', 'maulanansn@gmail.com', 'Test Submit Feedback #2', 'Semoga lebih baik lagi kedepannya...', '2024-06-21 16:44:33', '2024-06-21 16:44:33'),
(3, 'harsyah', 'harsyah@gmail.com', '-', 'hallo', '2024-07-14 15:39:14', '2024-07-14 15:39:14');

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaksi_id` bigint(20) UNSIGNED NOT NULL,
  `id_peserta` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jadwal` datetime NOT NULL,
  `nilaiStr` int(11) DEFAULT NULL,
  `nilaiList` int(11) DEFAULT NULL,
  `nilaiRdg` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`id`, `transaksi_id`, `id_peserta`, `nama`, `jadwal`, `nilaiStr`, `nilaiList`, `nilaiRdg`, `score`, `keterangan`, `created_at`, `updated_at`) VALUES
(6, 34, 12, 'fadlul', '2024-05-23 00:22:01', NULL, NULL, NULL, NULL, NULL, '2024-05-30 02:35:52', '2024-05-30 02:35:52'),
(12, 80, 18, 'Hajjul Ikram', '2024-06-24 08:00:00', NULL, NULL, NULL, NULL, NULL, '2024-06-09 17:59:32', '2024-06-09 17:59:32'),
(13, 83, 12, 'the best', '2024-05-22 08:00:00', 48, 40, 47, 450, 'Passed', '2024-06-10 07:43:15', '2024-06-10 07:45:52'),
(14, 85, 38, 'Elvi Munzila', '2024-06-24 08:00:00', NULL, NULL, NULL, NULL, NULL, '2024-06-11 06:29:08', '2024-06-11 06:29:08'),
(16, 100, 60, 'Maulana Rafinda', '2024-05-30 08:00:35', 33, 44, 66, 477, 'Passed', '2024-07-17 06:47:26', '2024-07-17 06:48:18');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jadwal` datetime NOT NULL,
  `harga` double(8,2) NOT NULL,
  `kouta` int(11) DEFAULT 25,
  `peserta` int(11) NOT NULL DEFAULT 0,
  `status` varchar(25) NOT NULL DEFAULT 'Scheduled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `jadwal`, `harga`, `kouta`, `peserta`, `status`, `created_at`, `updated_at`) VALUES
(1, '2024-05-22 08:00:00', 0.00, 25, 12, 'Done', '2024-05-15 17:21:14', '2024-06-15 17:27:35'),
(3, '2024-05-30 08:00:35', 0.00, 25, 8, 'Scheduled', '2024-05-29 08:00:28', '2024-07-25 02:37:07'),
(4, '2024-06-24 08:00:00', 0.00, 2, 2, 'Scheduled', '2024-06-09 07:13:58', '2024-06-26 18:56:41'),
(5, '2024-06-20 08:30:00', 0.00, 25, 0, 'Scheduled', '2024-06-10 07:50:29', '2024-06-21 09:19:29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(20, '2014_10_12_000000_create_users_table', 1),
(21, '2014_10_12_100000_create_password_resets_table', 1),
(22, '2016_01_04_173148_create_admin_tables', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2024_04_12_133124_create_peserta_table', 1),
(26, '2024_04_25_125657_create_admin_table', 1),
(27, '2024_04_25_130716_create_tes_table', 1),
(28, '2024_04_25_132106_create_transaksi_table', 1),
(29, '2024_04_26_154351_create_hasil_table', 1),
(30, '2024_04_30_154142_create_jadwal_table', 1),
(31, '2024_05_25_014434_create_transaksi_table', 2),
(35, '2024_05_25_014644_create_test_table', 3),
(38, '2024_05_27_134354_create_peserta_tests_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peserta_tests`
--

CREATE TABLE `peserta_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaksi_id` bigint(20) UNSIGNED NOT NULL,
  `id_peserta` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jadwal` datetime NOT NULL,
  `nilaiStr` int(11) DEFAULT NULL,
  `nilaiList` int(11) DEFAULT NULL,
  `nilaiRdg` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peserta_tests`
--

INSERT INTO `peserta_tests` (`id`, `transaksi_id`, `id_peserta`, `nama`, `jadwal`, `nilaiStr`, `nilaiList`, `nilaiRdg`, `score`, `keterangan`, `created_at`, `updated_at`) VALUES
(6, 34, 12, 'fadlul', '2024-05-23 00:22:01', NULL, NULL, NULL, NULL, NULL, '2024-05-30 02:35:52', '2024-05-30 02:35:52'),
(12, 80, 18, 'Hajjul Ikram', '2024-06-24 08:00:00', NULL, NULL, NULL, NULL, NULL, '2024-06-09 17:59:32', '2024-06-09 17:59:32'),
(13, 83, 12, 'the best', '2024-05-22 08:00:00', 48, 40, 47, 450, 'Passed', '2024-06-10 07:43:15', '2024-06-10 07:45:52'),
(14, 85, 38, 'Elvi Munzila', '2024-06-24 08:00:00', NULL, NULL, NULL, NULL, NULL, '2024-06-11 06:29:08', '2024-06-11 06:29:08'),
(16, 100, 60, 'Maulana Rafinda', '2024-05-30 08:00:35', 33, 44, 66, 477, 'Passed', '2024-07-17 06:47:26', '2024-07-17 06:48:18');

-- --------------------------------------------------------

--
-- Table structure for table `tes`
--

CREATE TABLE `tes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_peserta` bigint(20) UNSIGNED NOT NULL,
  `jadwal` datetime NOT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_peserta` int(11) DEFAULT NULL,
  `jadwal_id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jadwal` datetime DEFAULT NULL,
  `jumlah_pembayaran` int(11) DEFAULT NULL,
  `jenis_pembayaran` varchar(30) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Diproses',
  `status_pendaftaran` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_peserta`, `jadwal_id`, `nama`, `jadwal`, `jumlah_pembayaran`, `jenis_pembayaran`, `image`, `status`, `status_pendaftaran`, `created_at`, `updated_at`) VALUES
(3, 3, 0, 'Nofrian Safutra', '2024-05-22 08:00:00', 0, 'Dana : 082275126681', 'images/9BboO2Xh0On3oXzM94CN1drcR0qaRD2pv2vq3o52.jpg', 'Berhasil', 'Yes', '2024-05-28 03:14:10', '2024-05-28 03:15:24'),
(4, 2, 0, 'Maulana Rafinda', '2024-05-23 00:22:01', 0, 'Dana : 082275126681', 'images/NJSD5CqC6G3Fu6pI9Cm4Qc59H9Y9oVA968ycdwXr.jpg', 'Berhasil', 'Yes', '2024-05-29 04:22:47', '2024-05-29 04:28:38'),
(6, 2, 0, 'Maulana Rafinda', '2024-05-22 08:00:00', 0, 'Dana : 082275126681', 'images/jI3Kn1ORXB3vgRt0myIgyRwb4DTBNpXkB5syRHNe.jpg', 'Berhasil', 'Yes', '2024-05-29 06:13:24', '2024-05-29 06:14:04'),
(23, 2, 3, 'Maulana Rafinda', '2024-05-30 08:00:35', 0, 'Dana : 082275126681', 'images/n2LoXvLCMlXZtrsEzFzf3lw04judDcK9EsxjiS91.jpg', 'Berhasil', 'Yes', '2024-05-29 08:50:19', '2024-05-29 08:51:08'),
(34, 12, 2, 'fadlul', '2024-05-23 00:22:01', 0, 'Dana : 082275126681', 'images/xN1cXMMeQOHbZFXQdWaoM4Pc1raaT09U87xTmrUA.jpg', 'Berhasil', 'Yes', '2024-05-30 02:32:45', '2024-05-30 02:35:52'),
(35, 2, 2, 'Maulana Rafinda', '2024-05-23 00:22:01', 0, 'Dana : 082275126681', 'images/0XNnQkRmHwOI5iSHdNvGIref0LbMPyzXCxLY9Y67.jpg', 'Berhasil', 'Yes', '2024-05-30 03:28:47', '2024-05-30 03:29:43'),
(36, 2, 2, 'Maulana Rafinda', '2024-05-23 00:22:01', 0, 'Dana : 082275126681', 'images/5u8Ar4FPDysxI9NwQ5FAGeulS3jKzqsXB2ycMLPE.jpg', 'Berhasil', 'Yes', '2024-05-30 03:50:48', '2024-05-30 03:53:32'),
(48, 2, 2, 'Maulana Rafinda', '2024-05-23 00:22:01', 20000, 'BSI : 082275126681', 'images/bve8QGlHA5cUFfxfmXDEnUc6CLR2DjIujxnnsgUY.jpg', 'Berhasil', 'Yes', '2024-05-30 17:24:18', '2024-05-30 17:33:02'),
(60, 3, 2, 'Nofrian Safutra', '2024-05-23 00:22:01', 20000, 'Dana : 082275126681', 'images/8miv3OPzhLjHjW1608E3tpteoLK4Dv7vDhFeAvyb.jpg', 'Berhasil', 'Yes', '2024-05-31 10:08:12', '2024-05-31 10:09:29'),
(74, 2, 1, 'Maulana Rafinda', '2024-05-22 08:00:00', 20000, 'Dana : 082275126681', 'images/8VMTIpqolp05c0EhgKCAe9PqAxht8XKVbpoezWzG.jpg', 'Berhasil', 'Yes', '2024-06-08 19:55:47', '2024-06-08 19:56:51'),
(80, 18, 4, 'Hajjul Ikram', '2024-06-24 08:00:00', 0, 'Dana : 082275126681', 'images/OKgDLblZ89pAEjnhd13X053Ep7Pe1JWi77MEJuHy.jpg', 'Berhasil', 'Yes', '2024-06-09 17:58:47', '2024-06-09 17:59:32'),
(83, 12, 1, 'the best', '2024-05-22 08:00:00', 0, 'Link Aja : 082275126681', 'images/Km5l5MhsJJxrCdvcBYi7vZkaQ1LRC2rJfc0Kab0z.jpg', 'Berhasil', 'Yes', '2024-06-10 07:40:36', '2024-06-10 07:43:15'),
(85, 38, 4, 'Elvi Munzila', '2024-06-24 08:00:00', 0, 'BSI : 082275126681', 'images/KhWO7DvPBzc9H3UbvXx4RQDpXLxlh5xeiskc3OPK.jpg', 'Berhasil', 'Yes', '2024-06-11 06:27:23', '2024-06-11 06:29:08'),
(94, 2, 3, 'Maulana Rafinda', '2024-05-30 08:00:35', 20000, 'Dana : 082275126681', 'images/WO8QnwI6BfuwO2qB93nwes5l5mnk0iAYKNb1snXT.jpg', 'Berhasil', 'Yes', '2024-06-27 01:59:27', '2024-06-27 02:01:49'),
(97, 52, 3, 'Harsyah Agustin', '2024-05-30 08:00:35', 0, NULL, NULL, 'Diproses', NULL, '2024-07-14 08:48:06', '2024-07-14 08:48:06'),
(98, 54, 3, 'Harmin Saputra', '2024-05-30 08:00:35', 0, NULL, NULL, 'Diproses', NULL, '2024-07-14 09:22:32', '2024-07-14 09:22:32'),
(99, 58, 3, 'zikrallah', '2024-05-30 08:00:35', 0, NULL, NULL, 'Diproses', NULL, '2024-07-14 09:45:57', '2024-07-14 09:45:57'),
(100, 60, 3, 'Maulana Rafinda', '2024-05-30 08:00:35', 20000, NULL, NULL, 'Berhasil', NULL, '2024-07-17 06:47:14', '2024-07-17 06:47:26'),
(102, 60, 3, 'Maulana Rafinda', '2024-05-30 08:00:35', 20000, NULL, NULL, 'Diproses', NULL, '2024-07-25 02:37:07', '2024-07-25 02:37:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `nim` varchar(13) NOT NULL,
  `jk` varchar(20) DEFAULT NULL,
  `fakultas` varchar(50) DEFAULT NULL,
  `prodi` varchar(50) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `count_register` int(11) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `nim`, `jk`, `fakultas`, `prodi`, `no_hp`, `alamat`, `image`, `password`, `count_register`, `remember_token`, `created_at`, `updated_at`) VALUES
(12, 'the best', 'languagecenter@utu.ac.id', NULL, '2204056040023', 'Male', 'sospol', 'media/pr', '078417897581r', 'alue penjareng', NULL, '$2y$10$29bLhidHxGMyOhtGZDWyVuU2YgfQp3nJsI.B6oFU9jv', 1, NULL, '2024-05-30 02:26:43', '2024-06-10 07:40:36'),
(18, 'Hajjul Ikram', 'hajjulikram@gmail.com', NULL, '2005903040045', 'Male', 'Teknik', 'Teknologi Informasi', '081264694142', 'Meulaboh', 'images/2OheYHBuTbhOIzfBvkCBaovo5dWLy5XXbDsbm27m.jpg', '$2y$10$sddbEqCf7lMlMrTBrYW0r..sVN/ys3kGB7n0Jsp1OIO', 1, NULL, '2024-06-09 08:43:29', '2024-06-27 00:18:09'),
(19, 'Nofrian Safutra', 'nofriansafutra@gmail.com', NULL, '2105903040015', 'Male', 'Teknik', 'Teknologi Informasi', '082273139278', 'Peunaga paya', NULL, '$2y$10$J8V2iFJe964i26pXmfclmujKgwOntRKP8I4y2rSKeMK', 0, NULL, '2024-06-09 08:46:44', '2024-06-09 08:47:27'),
(20, 'Sofia', 'sfia042002@gmail.com', NULL, '2005903040090', 'Female', 'Teknik', 'Teknologi Informasi', '082163121284', 'Desa Gunong Kleng, Meurebo, Aceh Barat', NULL, '$2y$10$a44MDNhW7J1Z7ZBhza7wmuNmQ1cfuGpQFXxoxXCa4Pg', 3, NULL, '2024-06-09 08:49:06', '2024-06-09 08:49:41'),
(21, 'Cut Marwah', 'cutmarwah111@gmail.com', NULL, '2005903040010', 'Female', 'Teknik', 'Teknologi informasi', '082211415876', 'Aceh Barat daya kec. Susoh', NULL, '$2y$10$10..D05zn7jo5b4xFa.fret7O7rbxBCcYUxBkheqIRA', 0, NULL, '2024-06-09 08:50:42', '2024-06-09 08:51:16'),
(22, 'Ilham Maulana', 'm.ilhammaulana042@gmail.com', NULL, '2005903040025', 'Male', 'Teknik', 'Teknologi Informasi', '081275273369', 'Nagan Raya', NULL, '$2y$10$Q1r7Sl9pl9wRhDyuovFhb.if7nd8w9j5tEGdUSrvqq0', 0, NULL, '2024-06-09 08:52:23', '2024-06-09 08:52:47'),
(23, 'Kartika', 'julikartika185@gmail.com', NULL, '2005903040019', 'Female', 'Teknik', 'Teknologi Informasi', '085833479380', 'Perumahan ADB 1, Kost Ananda Putri', NULL, '$2y$10$MQ50OFlpzMmw6z00c368JueY7/33hhswld3C80MYcMf', 1, NULL, '2024-06-09 08:53:46', '2024-06-09 08:54:23'),
(24, 'Della Junisa Putri', 'dellajunisa.29putri@gmail.com', NULL, '2005903040011', 'Female', 'Teknik', 'Teknologi informasi', '085762993238', 'Perumahan griya mahoni alpen', NULL, '$2y$10$wo6n37ws6B3HtknMFBQ4C.od5g634tVELJAXIimyueQ', 1, NULL, '2024-06-09 08:55:17', '2024-06-09 08:55:54'),
(25, 'Rara', 'rarasyifaqaisa@gmail.com', NULL, '2005903040049', 'Female', 'Teknik', 'Teknologi Informasi', '082274592420', 'Meulaboh', NULL, '$2y$10$S6Ouh9r1JYHlZdHCPnedU.64cTNSSIA5RR4DOfHOBQn', 0, NULL, '2024-06-09 08:56:50', '2024-06-09 08:57:47'),
(26, 'Meli Riskina', 'rizkinameli@gmail.com', NULL, '2005903040023', 'Female', 'Teknik', 'Teknologi Informasi', '082158502662', 'Gunung Kleng', NULL, '$2y$10$QnmNRE4fXCZKG2IWWWV4WuTSFa./V8zTLNjcLJy3VDh', 1, NULL, '2024-06-09 08:58:42', '2024-06-09 08:59:12'),
(27, 'Ulfa Mahfuza', 'ulfamahfuza634@gmail.com', NULL, '2005903040097', 'Female', 'Teknik', 'Teknologi Informasi', '085342739518', 'Paya Peunaga', NULL, '$2y$10$NbPoSL3ZUammUayakQd88O7qOpq8CFwwyqvwjZKXZ4k', 1, NULL, '2024-06-09 09:00:08', '2024-06-09 09:01:17'),
(28, 'Pevi Alpiyah Rami', 'pevialfiyarahmi26@gmail.com', NULL, '2005903040109', 'Female', 'Teknik', 'Teknologi informasi', '082239050173', 'Jl Alue peunyareng, perumnas', NULL, '$2y$10$ryPX7cfd36JETjyEBE9NOufa6D/pcvd137tUEaZu95Y', 2, NULL, '2024-06-09 09:02:29', '2024-06-27 00:20:16'),
(29, 'Wulan Rama Agustina', 'wulanramaagustina24@gmail.com', NULL, '2005903040041', 'Female', 'Teknik', 'Teknologi informasi', '082272123318', 'Simpang 4 Kluet utara kabupaten Aceh selatan', NULL, '$2y$10$BwLa0aZO8PEmFl0NgheK7.Vsl8IzcJt2uhI1VcHAY7Z', 0, NULL, '2024-06-09 09:03:55', '2024-06-09 09:04:18'),
(30, 'Karmila Damayanti', 'karmiladamayanti2@gmail.com', NULL, '2005903040018', 'Female', 'Teknik', 'Teknologi Informasi', '081260632286', 'Sinonoan kec.siabu,kab.madina,prov.sumut', NULL, '$2y$10$0NA3p62xlNgWobUkDzaPr.m8b2VXDiwaTxCnWZHln2g', 2, NULL, '2024-06-09 09:05:11', '2024-06-09 09:05:50'),
(31, 'asep nanang', 'asep.nanang.792@gmail.com', NULL, '2005903040063', 'Male', 'teknik', 'teknologi informasi', '082249041785', 'peunaga rayeuk, meulaboh, aceh barat', NULL, '$2y$10$jVjPb.HELXBiOMVcW7n0LewK/OIC50bkzQ5Xpp8PWXa', 1, NULL, '2024-06-09 09:07:00', '2024-06-09 09:07:30'),
(32, 'Dewi Candra', 'decandra02.2002@gmail.com', NULL, '2005903040013', 'Female', 'Teknik', 'Teknologi informasi', '082249506736', 'Aceh Selatan', NULL, '$2y$10$83U0LbAO/VrA9u5WoAYPSeaSqC9boGGKtZ50xMUqEDN', 0, NULL, '2024-06-09 09:08:13', '2024-06-27 00:19:27'),
(33, 'Lili rahmayanti', 'lilirahmayanti22@gmail.com', NULL, '2005903040101', 'Female', 'Teknik', 'Teknologi informasi', '085762551958', 'Adb 1', NULL, '$2y$10$/WnDKzbIsF8fiDJDTPlVI.aEooQ97ZphtrolBEbTwb0', 1, NULL, '2024-06-09 09:10:02', '2024-06-09 09:10:27'),
(34, 'Citra Srikandi', 'citrasrikandi27@gmail.com', NULL, '2005903040009', 'Female', 'Teknik', 'Teknologi Informasi', '082360902257', 'Aceh Selatan', NULL, '$2y$10$BlLE0ZUJpkH/Nz5wBNszJuhh5hd58.loElDlAnqRMZ/', 2, NULL, '2024-06-09 09:11:23', '2024-06-09 09:11:48'),
(35, 'Bagas Ramadhan Nasution', 'bagasrnasution@gmail.com', NULL, '2005903040061', 'Male', 'Teknik', 'Teknologi Informasi', '085157549544', 'Meureubo', NULL, '$2y$10$uhieXD/iRB7ea40kvaNEduHJ5YefMhHu.9uvj/aibWd', 1, NULL, '2024-06-09 09:13:08', '2024-06-09 09:13:33'),
(36, 'Fadhila annisa', 'fadhilaa503@gmail.com', NULL, '2005903040055', 'Female', 'Teknik', 'Teknologi informasi', '085362833470', 'Buda suci', NULL, '$2y$10$or/HfoS6TLI7qVCTuVgbq.IBDQI2MuKoWDqn7Mx/vcQ', 1, NULL, '2024-06-09 09:14:26', '2024-06-09 09:15:44'),
(37, 'M. Aviciena Hasibuan', 'm.aviciena.hasibuan.tif20@gmail.com', NULL, '2005903040087', 'Male', 'Teknik', 'Teknologi informasi', '082122612790', 'Ujung kalak', NULL, '$2y$10$lBkyuuNjAsqGKv7XcN78jupolVchoXVBjuYPpXMleTG', 1, NULL, '2024-06-09 09:16:46', '2024-06-09 09:19:10'),
(38, 'Elvi Munzila', 'elvimunzila@gmail.com', NULL, '2005903040099', 'Female', 'Teknik', 'Teknologi informasi', '085357975827', 'Desa suaq geuringgeng, kec.kluet Utara, kab.aceh selatan', NULL, '$2y$10$eHFrAUe5LMmC7zcOzgyTBeg/w3MPW/YboWA7o3fGVit', 3, NULL, '2024-06-09 09:20:03', '2024-06-11 06:27:23'),
(39, 'Cut Rossa Putri', 'cutrossa2002@gmail.com', NULL, '2005903040003', 'Female', 'Teknik', 'Teknologi Informasi', '082236614649', 'Abdya', NULL, '$2y$10$KEC96LIzp0BmzMkok7gH4urebmOrJO.OhqgLjRkEp1g', 4, NULL, '2024-06-09 09:21:54', '2024-06-09 09:22:32'),
(40, 'alda mustika', 'aldamustika1906@gmail.com', NULL, '2005903040005', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$LQecJ2Hg0F0ur7T96Znz1un2ZRn5W.pQWMji43GMKJo', 1, NULL, '2024-06-11 06:34:46', '2024-06-11 06:34:46'),
(41, 'zul khairiyati', 'zulkhairiyati@gmail.com', NULL, '2005903040043', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$SoZqO1aJLTQv9KBhRM4XdeiLPVLefSPVIbPQJH09a74', 0, NULL, '2024-06-11 06:37:41', '2024-06-11 06:37:41'),
(42, 'nazrina ukhra', 'nazrinaukhra@gmail.com', NULL, '2005903040004', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$TrMR09Ld/vs/U3fCsQ9WOe7rTeT47uSV10CkmvZt5.C', 0, NULL, '2024-06-11 06:39:07', '2024-06-11 06:39:07'),
(43, 'asmaul husna away', 'asmaulhusnaaway11@gmail.com', NULL, '2005903040008', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$0BeFUrV2y8Sze9ImYdNP5efCxGrO41XZksA1ZmvaYVL', 2, NULL, '2024-06-11 06:44:22', '2024-06-11 06:44:53'),
(44, 'yanniva razikha', 'yannivarazikha@gmail.com', NULL, '200590304094', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$BFLU8SHn04alB2JsLJ8bjO6/9zlKwBseKGF47CUBk7W', 1, NULL, '2024-06-11 06:46:52', '2024-06-11 06:46:52'),
(45, 'rahmah safitri', 'rahmasafitri1401@gmail.com', NULL, '2005903040070', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$6X9Wurn9ev3OZW9uUeHWPezY4Jaq9I1PrkSACa6PjAs', 1, NULL, '2024-06-11 06:49:18', '2024-06-11 06:49:18'),
(46, 'Lewaldi Sa\'ad', 'lewaldisaad@gmail.com', NULL, '2005903040021', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$bqdTycE7yCDxpfKfm3xlPu.IAVfp.PgrjhjWkfVBfpC', 1, NULL, '2024-06-11 06:51:21', '2024-06-11 06:51:21'),
(47, 'cutyantimaulida', 'cutyanti@gmail.com', NULL, '2005903040077', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$mBUdbZVGvjVnL6qTAQTOn.NHzt7X2CQhO4.0rRYinYU', 1, NULL, '2024-06-11 06:53:53', '2024-06-11 06:53:53'),
(48, 'Yunda Mudzillus', 'yundamudzillus05@gmail.com', NULL, '2005903040042', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Y2VNPzUxFElk4lMtP7QVEejCHuAaugEjKbt/wMANELh', 0, NULL, '2024-06-11 06:57:17', '2024-06-11 06:57:17'),
(49, 'sri hartina', 'shrtn.na@gmail.com', NULL, '2005903040093', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$eqkHQpaxywNGrj9D1rX2GuxM/Oy5avDeykSHkPr79Kc', 0, NULL, '2024-06-11 07:07:52', '2024-06-11 07:07:52'),
(50, 'Test Name', 'test@gmail.com', NULL, '10101010', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$BTonLE5U9dNyrqaM69zwE.mNzw.xjeJOjLH4jL/OSvHWZbGd5bU02', 0, NULL, '2024-07-14 08:21:25', '2024-07-14 08:21:25'),
(51, 'Rian Firdaus', 'rianfirdaus46@gmail.com', NULL, '2005903040001', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Vi1nqahK1P7r3tPZ9kO10.kBnlfeeDt1htvuvcn1uAxNw9wB3c3/m', 0, NULL, '2024-07-14 08:30:06', '2024-07-14 08:33:20'),
(52, 'Harsyah Agustin', 'harsyahagustin@gmail.com', NULL, '2005903040114', 'Male', 'teknik', 'Teknologi Informasi', '082241256067', 'Paya Peunaga', 'images/96amZnLNH9uOKFiFaMFkPgq21iZ9xAvjA5epFhNQ.png', '$2y$10$gAbCXF3b57.zFw5fyP1Kpuf56SuZBb.FF9ZWafXGu0ZA3TFbWJA6y', 1, NULL, '2024-07-14 08:41:14', '2024-07-14 08:50:00'),
(53, 'luthfi', 'luhthfi@gmail.com', NULL, '2005905030019', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Hy1bolQ5NQLeoWrjaOIJA.a7YP7jv8b2gqzcztffhk1ykNDjLrPRC', 0, NULL, '2024-07-14 08:55:53', '2024-07-14 08:55:53'),
(54, 'Harmin Saputra', 'harminsaputra1@gmail.com', NULL, '2005903040015', 'Male', 'Engineering', 'Information Technology', '085368811791', 'Desa Sapik', NULL, '$2y$10$Onja206BhIg2Ev.40v4lwOS96yltsZPbNw7vwV6oc/h0KvWC8TmlO', 2, NULL, '2024-07-14 09:02:47', '2024-07-14 09:24:37'),
(55, 'Vetti Vatya', 'vettivatya@gmail.com', NULL, '2205906030014', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$kQKmSdwXocFoxOELrEKmGui0wyDZ0nxwS.g5Fz1o3wC9Pdt.h5q/m', 0, NULL, '2024-07-14 09:04:48', '2024-07-14 09:04:48'),
(56, 'rahayu', 'smarahayu@gmail.com', NULL, '2205905030002', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WwMipockIZiby.yEKbWqIOFE1Ud.kJjNls805KGzBQdgrGyVp.RTG', 0, NULL, '2024-07-14 09:17:07', '2024-07-14 09:17:07'),
(57, 'zikrullah', 'zikruadek@gmail.com', NULL, '2005906020055', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$HCqAChlrjtbnrRvidnooo.TKsTvAQB68j/l6MwnVcHeyQ8rTJpJc2', 2, NULL, '2024-07-14 09:34:26', '2024-07-14 09:34:26'),
(58, 'zikrallah', 'zikrallah.tif20@gmail.com', NULL, '2005903040091', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$x6xxoYNNdELL4P5qdiiiLu1MFTDm0uwgEngubd/gVMNgLvbOaKKgS', 3, NULL, '2024-07-14 09:45:10', '2024-07-14 09:45:57'),
(59, 'Ita Riana', 'riana@gmail.com', NULL, '2005905010030', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$jAMNLKpMbDnA92/YR1tCPewubripUp3eMwRSy7QtYnY1ZDw.kHSBm', 2, NULL, '2024-07-14 09:55:23', '2024-07-14 09:55:23'),
(60, 'Maulana Rafinda', 'maulanansn@gmail.com', NULL, '2005903040096', 'Male', 'Teknik', 'Teknologi Informasi', '082275126681', 'Jl. Tapaktuan - Blangpidie, Labuhan Haji Timur, Aceh Selatan.', 'images/JoyBrsLKReXsaXjOAjkuBuzTKPnt0YnPorQGOUGO.jpg', '$2y$10$pshIrRuEwRa7.erxYp.ER.jiV//8ux28uW6v0oACHqThyIX2SbMr.', 5, NULL, '2024-07-17 06:44:49', '2024-07-25 02:37:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peserta_tests_transaksi_id_foreign` (`transaksi_id`),
  ADD KEY `peserta_tests_id_peserta_foreign` (`id_peserta`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `peserta_tests`
--
ALTER TABLE `peserta_tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peserta_tests_transaksi_id_foreign` (`transaksi_id`),
  ADD KEY `peserta_tests_id_peserta_foreign` (`id_peserta`);

--
-- Indexes for table `tes`
--
ALTER TABLE `tes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tes_id_peserta_foreign` (`id_peserta`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1254;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peserta_tests`
--
ALTER TABLE `peserta_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tes`
--
ALTER TABLE `tes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `peserta_tests`
--
ALTER TABLE `peserta_tests`
  ADD CONSTRAINT `peserta_tests_id_peserta_foreign` FOREIGN KEY (`id_peserta`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `peserta_tests_transaksi_id_foreign` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksi` (`id`);

--
-- Constraints for table `tes`
--
ALTER TABLE `tes`
  ADD CONSTRAINT `tes_id_peserta_foreign` FOREIGN KEY (`id_peserta`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
