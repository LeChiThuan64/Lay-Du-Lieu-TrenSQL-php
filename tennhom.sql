-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2023 at 10:16 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tennhom`
--
CREATE DATABASE IF NOT EXISTS `tennhom` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tennhom`;

-- --------------------------------------------------------

--
-- Table structure for table `manufactures`
--

CREATE TABLE `manufactures` (
  `manu_id` int(11) NOT NULL,
  `manu_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manufactures`
--

INSERT INTO `manufactures` (`manu_id`, `manu_name`) VALUES
(1, 'Apple'),
(2, 'Oppo'),
(3, 'Samsung'),
(4, 'Xiaomi'),
(5, 'HTC');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `manu_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `feature` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `manu_id`, `type_id`, `price`, `image`, `description`, `feature`, `created_at`) VALUES
(111, 'Iphone 15 Pro Max 1TB', 1, 11, 45000000, 'ip1.jpg', 'Dien thoai cuc xin', 1, '2023-10-29 17:00:00'),
(112, 'Iphone 13 Pro Max 516gb', 1, 11, 300000, 'ip2.jpg', 'Dien thoai Tau', 1, '2023-11-08 08:43:28'),
(113, 'Iphone 14 pro max 516gb', 1, 11, 70000000, 'ip3.jpg', 'Dien Thoai 99%', 1, '2023-11-08 08:41:38'),
(114, 'Iphone 12 promax126gb', 1, 11, 5670000, 'ip4.jpg', 'Din Thoai 99%', 1, '2023-11-08 08:45:56'),
(115, 'Iphone 11 promax126gb', 1, 11, 53700000, 'ip5.jpg', 'Din Thoai 99%', 1, '2023-11-08 08:45:56'),
(116, 'MacBook Pro2023 14inch', 1, 12, 999990000, 'samsung.jpg', 'đồ nhà táo', 1, '2023-11-08 08:49:36'),
(117, 'MacBook Pro2023 14inch', 1, 12, 999990000, 'samsung1.jpg', 'đồ nhà táo', 1, '2023-11-08 08:51:51'),
(118, 'MacBook Pro2022 14inch', 1, 12, 888890000, 'ip5.jpg', 'đồ nhà táo', 1, '2023-11-08 08:51:51'),
(119, 'MacBook Pro2023 14inch', 1, 12, 999990000, 'ip4.jpg', 'đồ nhà táo', 1, '2023-11-08 08:51:51'),
(120, 'Lap XIOMI MI12', 4, 12, 999990000, 'ip3.jpg', 'đồ nhà Tàu', 0, '2023-11-08 08:51:52'),
(121, 'MI Pad 516', 4, 13, 7700000, 'ip2.jpg', 'Máy Tính Bảng Củ', 0, '2023-11-08 08:57:19'),
(122, 'MI Pad 156', 4, 13, 2700000, 'ip1.jpg', 'Máy Tính Bảng Củ', 0, '2023-11-08 09:00:01'),
(123, 'IPad 516', 1, 13, 7700000, 'samsung.jpg', 'Máy Tính Bảng Củ', 0, '2023-11-08 09:00:01'),
(124, 'HTC Pad 516', 5, 13, 7700000, 'samsung1.jpg', 'Máy Tính Bảng Củ', 0, '2023-11-08 09:00:01'),
(125, 'SÁMSUNG Pad 516', 3, 13, 7700000, 'ip4.jpg', 'Máy Tính Bảng Củ', 0, '2023-11-08 09:00:02'),
(126, 'Apple Watch', 1, 14, 7000000, 'ip1.jpg', 'dong ho', 1, '2023-11-08 09:05:07'),
(127, 'Oppo Watch', 2, 14, 7000000, 'ip5.jpg.png', 'dong ho', 0, '2023-11-08 09:07:16'),
(128, 'Mi Watch', 4, 14, 6000000, 'ip2.jpg', 'dong ho', 1, '2023-11-08 09:07:16'),
(129, 'Sam Watch', 3, 14, 7000000, 'samsung1.jpg', 'dong ho', 1, '2023-11-08 09:07:16'),
(130, 'HTC Watch', 5, 14, 3000000, 'samsung.jpg', 'dong ho', 0, '2023-11-08 09:07:16');

-- --------------------------------------------------------

--
-- Table structure for table `protypes`
--

CREATE TABLE `protypes` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`) VALUES
(11, 'Dien thoai'),
(12, 'Laptop'),
(13, 'May tinh bang'),
(14, 'Dong ho thong minh'),
(15, 'Loa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `manufactures`
--
ALTER TABLE `manufactures`
  ADD PRIMARY KEY (`manu_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `protypes`
--
ALTER TABLE `protypes`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `manufactures`
--
ALTER TABLE `manufactures`
  MODIFY `manu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `protypes`
--
ALTER TABLE `protypes`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
