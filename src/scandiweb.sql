-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 01, 2022 at 03:02 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_d`
--

-- --------------------------------------------------------

--
-- Table structure for table `attribute`
--

CREATE TABLE `attribute` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `unit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attribute`
--

INSERT INTO `attribute` (`id`, `type_id`, `name`, `unit`) VALUES
(1, 2, 'weight', 'KG'),
(2, 1, 'size', 'MB'),
(3, 3, 'height', 'CM'),
(4, 3, 'length', 'CM'),
(5, 3, 'width', 'CM');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(20) UNSIGNED NOT NULL,
  `sku` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` double UNSIGNED NOT NULL,
  `front_end` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `sku`, `name`, `price`, `front_end`) VALUES
(376, '#se12', 'cd', 2.1, 'size: 20 MB'),
(377, '#gg', 'cd ', 200, 'size: 1100 MB');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `name`, `description`) VALUES
(1, 'DVD', 'please provide size in (MB)'),
(2, 'Book', 'please provide weight in (KG)'),
(3, 'Furniture', 'please provide dimensions in HxWxL format');

-- --------------------------------------------------------

--
-- Table structure for table `value`
--

CREATE TABLE `value` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `attribute_value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `value`
--

INSERT INTO `value` (`id`, `product_id`, `attribute_id`, `attribute_value`) VALUES
(32, 277, 2, 23),
(33, 278, 2, 12),
(34, 279, 2, 12),
(35, 280, 2, 11),
(36, 281, 2, 13),
(37, 282, 2, 1),
(38, 283, 3, 1),
(39, 283, 4, 1),
(40, 283, 5, 11),
(41, 284, 1, 123),
(42, 285, 2, 123),
(43, 286, 1, 1222),
(44, 287, 2, 213),
(45, 288, 1, 123),
(46, 289, 3, 123),
(47, 289, 4, 123),
(48, 289, 5, 13),
(49, 290, 2, 123),
(50, 291, 1, 123),
(51, 292, 2, 32),
(52, 293, 2, 124),
(53, 294, 2, 1),
(54, 295, 2, 111),
(55, 296, 2, 12),
(56, 297, 1, 312),
(57, 298, 2, 312),
(58, 300, 2, 15),
(59, 301, 2, 1111111),
(60, 302, 1, 2222),
(61, 303, 1, 4444),
(62, 304, 2, 2222),
(63, 305, 2, 2222),
(64, 306, 1, 2),
(65, 307, 1, 111),
(66, 308, 1, 2111),
(67, 309, 2, 1),
(68, 310, 2, 200),
(69, 311, 1, 200),
(70, 312, 3, 200),
(71, 312, 4, 200),
(72, 312, 5, 200),
(73, 313, 3, 150),
(74, 313, 4, 140),
(75, 313, 5, 160),
(76, 314, 3, 22),
(77, 314, 4, 55),
(78, 314, 5, 55),
(79, 315, 2, 0),
(80, 316, 2, 100),
(81, 317, 2, 100),
(82, 318, 2, 1),
(83, 319, 2, 200),
(84, 320, 1, 200),
(85, 321, 3, 200),
(86, 321, 4, 200),
(87, 321, 5, 200),
(88, 322, 2, 150),
(89, 323, 2, 50),
(90, 324, 2, 12),
(91, 325, 2, 54),
(92, 326, 1, 43),
(93, 327, 3, 1),
(94, 327, 4, 1),
(95, 327, 5, 1),
(96, 328, 2, 22),
(97, 330, 2, 2222),
(98, 332, 2, 200),
(99, 334, 1, 200),
(100, 336, 3, 200),
(101, 336, 4, 200),
(102, 336, 5, 200),
(103, 338, 1, 12),
(104, 340, 2, 12),
(105, 342, 1, -12),
(106, 344, 2, 123),
(107, 346, 1, 20),
(108, 348, 1, 1),
(109, 350, 2, 11),
(110, 352, 1, -1223),
(111, 354, 2, 123),
(112, 356, 2, 12),
(113, 357, 1, 111),
(114, 358, 2, 111),
(115, 359, 2, 1),
(116, 360, 2, 12),
(117, 361, 2, 1),
(118, 362, 3, 1),
(119, 362, 4, 4),
(120, 362, 5, 19),
(121, 363, 2, 21),
(122, 365, 2, 12),
(123, 367, 2, 0),
(124, 368, 1, 22),
(125, 370, 2, 200),
(126, 372, 1, 200),
(127, 374, 3, 200),
(128, 374, 4, 200),
(129, 374, 5, 200),
(130, 376, 2, 20),
(131, 377, 2, 1100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_attribute` (`type_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sku` (`sku`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `value`
--
ALTER TABLE `value`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attribute`
--
ALTER TABLE `attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=378;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `value`
--
ALTER TABLE `value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attribute`
--
ALTER TABLE `attribute`
  ADD CONSTRAINT `type_attribute` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
