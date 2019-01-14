-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2018 at 11:59 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eco`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `maincat_id` int(100) NOT NULL,
  `img` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `maincat_id`, `img`) VALUES
(33, 'Computer Accessories', 24, 'img/Computer/images.jpg'),
(35, 'Networking Products', 24, 'img/Computer/DURM-24480C97FFA81710._V533746472_.jpg'),
(44, 'Computer Component', 24, 'img/Computer/DURM-2447E617EC5C463L._V533746472_.jpg'),
(45, 'Flower tree', 25, 'img/Agriculture/download.jpg'),
(46, 'Flower tree', 25, 'img/Agriculture/download.jpg'),
(47, 'Fruit', 25, 'img/Agriculture/cat.JPG'),
(48, 'Mens Clothing', 22, 'img/Mens Fashion/download (2).jpg'),
(49, 'Kameez', 23, 'img/Womens Fashion/download (5).jpg'),
(50, 'Saree', 23, 'img/Womens Fashion/download (3).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `maincat`
--

CREATE TABLE `maincat` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maincat`
--

INSERT INTO `maincat` (`id`, `name`) VALUES
(13, 'Electronics'),
(18, 'Home & Living'),
(19, 'Health & Household'),
(22, 'Mens Fashion'),
(23, 'Womens Fashion'),
(24, 'Computer'),
(25, 'Agriculture');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(6) UNSIGNED NOT NULL,
  `prod_id` varchar(30) NOT NULL,
  `prod_type` varchar(30) NOT NULL,
  `prod_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `prod_id`, `prod_type`, `prod_price`, `quantity`, `total`, `parent_id`, `reg_date`) VALUES
(1, '4', 'Radio 2', 800, 1, 800, 1, '2018-06-26 09:58:50'),
(2, '7', 'Radio 3', 900, 4, 3600, 1, '2018-06-26 09:58:50'),
(3, '9', 'Radio 3', 400, 4, 1600, 1, '2018-06-26 09:58:50'),
(4, '10', 'Radio 2', 1050, 6, 6300, 1, '2018-06-26 09:58:50'),
(5, '4', 'Radio 2', 800, 1, 800, 2, '2018-06-26 09:59:45'),
(6, '7', 'Radio 3', 900, 4, 3600, 2, '2018-06-26 09:59:45'),
(7, '9', 'Radio 3', 400, 4, 1600, 2, '2018-06-26 09:59:45'),
(8, '10', 'Radio 2', 1050, 6, 6300, 2, '2018-06-26 09:59:45'),
(9, '6', 'Radio 2', 900, 4, 3600, 3, '2018-06-26 10:02:37'),
(10, '20', '', 1250, 1, 1250, 4, '2018-06-27 08:22:27'),
(11, '28', '', 900, 1, 900, 4, '2018-06-27 08:22:27'),
(12, '34', 'Radio 2', 1250, 2, 2500, 5, '2018-06-27 08:46:09'),
(13, '32', '', 1050, 1, 1050, 6, '2018-06-27 08:49:01'),
(14, '32', '', 1050, 1, 1050, 7, '2018-06-27 08:50:56'),
(15, '29', 'Radio 1', 1050, 2, 2100, 9, '2018-06-27 08:51:39'),
(16, '28', 'Radio 2', 900, 2, 1800, 10, '2018-06-27 10:12:41'),
(17, '34', 'Radio 1', 1250, 1, 1250, 10, '2018-06-27 10:12:41'),
(18, '28', '', 900, 1, 900, 11, '2018-08-13 11:37:21'),
(19, '28', 'Radio 1', 900, 5, 4500, 11, '2018-08-13 11:37:21'),
(20, '37', 'Radio 3', 1250, 2, 2500, 12, '2018-09-09 06:23:16'),
(21, '29', 'Radio 2', 1050, 4, 4200, 12, '2018-09-09 06:23:16'),
(22, '28', '', 900, 1, 900, 13, '2018-09-09 06:34:14'),
(23, '28', '', 900, 1, 900, 14, '2018-09-09 06:38:54'),
(24, '28', 'Radio 1', 900, 1, 900, 15, '2018-09-09 09:45:51'),
(25, '28', 'Radio 2', 900, 1, 900, 15, '2018-09-09 09:45:51'),
(26, '28', 'Radio 1', 900, 1, 900, 15, '2018-09-09 09:45:51'),
(27, '28', 'Radio 1', 900, 1, 900, 16, '2018-09-10 10:04:00'),
(28, '29', 'Radio 2', 1050, 1, 1050, 16, '2018-09-10 10:04:00'),
(29, '28', 'Radio 2', 900, 1, 900, 17, '2018-09-11 07:30:41'),
(30, '29', 'Radio 1', 1050, 1, 1050, 18, '2018-10-16 16:28:43'),
(31, '29', 'Radio 1', 1050, 1, 1050, 19, '2018-10-21 01:28:37'),
(32, '38', 'Radio 1', 1050, 1, 1050, 20, '2018-10-21 06:45:25'),
(33, '37', 'Radio 2', 1250, 1, 1250, 20, '2018-10-21 06:45:25'),
(34, '28', 'Radio 2', 900, 1, 900, 20, '2018-10-21 06:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `maincat_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `prod_image` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `maincat_id`, `category_id`, `subcat_id`, `code`, `price`, `prod_image`) VALUES
(44, 'Mouse', 24, 44, 0, 'ccms1', 100, 'img/Computer/31Y+gTBX4pL._AC_SX200_SY200_.jpg'),
(53, 'Shirt', 22, 48, 0, 'srt11', 1000, 'img/Mens Fashion/download (1).jpg'),
(54, 'Saree', 23, 50, 0, 'sree1', 1250, 'img/Womens Fashion/download (3).jpg'),
(55, 'Kameez', 23, 49, 0, 'kamz1', 1500, 'img/Womens Fashion/download (4).jpg'),
(56, 'Kameez', 23, 49, 0, 'kmzz2', 1000, 'img/Womens Fashion/download (6).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `name`, `age`, `email`, `password`) VALUES
(1, 'rs', 24, 'rs@gmail.com', '3a2d7564baee79182ebc7b65084aabd1'),
(2, 'rs', 24, 'rs@gmail.com', '3a2d7564baee79182ebc7b65084aabd1'),
(3, 'babu', 24, 'babu@gmail.com', '19c7f9430572dfebd03aaacf6e60b5f0'),
(4, 'babu', 24, 'babu@gmail.com', '37d1703157da260a648d24613032bc8f');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `maincat_id` int(100) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `name`, `maincat_id`, `category_id`) VALUES
(5, 'Saree', 5, 9),
(6, 'Kameez', 5, 9),
(7, 'Shirt', 5, 9),
(8, 'Pant, Palazzo', 5, 9),
(9, 'Bags', 5, 10),
(10, 'Sunglasses', 5, 10),
(11, 'Jewelry', 5, 10),
(12, 'Scarves', 5, 10),
(13, 'Body Spray', 5, 11),
(14, 'Deodorant', 5, 11),
(15, 'Perfume', 5, 11),
(16, 'Casual Shoe', 5, 12),
(17, 'Heel', 5, 12),
(18, 'Sandal', 5, 12),
(19, 'Sports Shoe', 5, 12),
(20, 'Shirt', 1, 5),
(21, 'Pant', 1, 5),
(23, 'Belt', 1, 6),
(24, 'Wallet', 1, 6),
(25, 'Watches', 1, 6),
(26, 'Body Spray', 1, 7),
(28, 'Deodorant', 1, 7),
(29, 'Perfume', 1, 7),
(30, 'Casual Shoe', 1, 8),
(31, 'Sandal', 1, 8),
(32, 'Shoe', 1, 8),
(33, 'Girls Clothings', 6, 13),
(34, 'Boys Clothings', 6, 13),
(35, 'Baby Clothings', 6, 13),
(36, 'School Shoe', 6, 14),
(37, 'New Born Shoe', 6, 14),
(38, 'Teddy Bear', 6, 15),
(39, 'Dolls', 6, 15),
(40, 'Toy Cars', 6, 15),
(41, 'Power Bank', 7, 16),
(42, 'Selfie Stick', 7, 16),
(43, 'Headphone', 7, 16),
(44, 'Memory Card', 7, 16),
(45, 'Pendrive', 7, 16),
(46, 'Printer', 7, 17),
(47, 'Scanner', 7, 17),
(48, 'Blender , Juicer', 8, 18),
(49, 'Coffee Maker', 8, 18),
(50, 'Flask', 8, 18),
(51, 'Fan', 8, 19),
(52, 'Iron', 8, 19),
(53, 'Rice Cooker', 8, 20),
(54, 'Roti Maker', 8, 20),
(55, 'Food Processor', 8, 20),
(56, 'Bin bag', 9, 21),
(57, 'Wall Sticker', 9, 21),
(58, 'Shoe Organizer', 9, 21),
(59, 'Bed Sheet', 9, 22),
(60, 'Mosquito net', 9, 22),
(61, 'Blanket', 9, 22),
(62, 'Rice Products', 11, 23),
(63, 'Dal , Pulse', 11, 23),
(64, 'Oil', 11, 23),
(65, 'Masala', 11, 23),
(66, 'Sauce', 11, 23),
(67, 'Noodles', 11, 24),
(68, 'Soup', 11, 24),
(69, 'Pasta', 11, 24),
(70, 'Chips', 11, 24),
(71, 'Chanachur', 11, 24),
(72, 'Chocolate', 11, 24),
(73, 'Detergent', 11, 25),
(74, 'Utensil Cleaner', 11, 25),
(75, 'Broom', 11, 25),
(76, 'Mop', 11, 25),
(77, 'Repellents , Fresheners', 11, 25),
(78, 'Bath, Face ,Handwash', 11, 26),
(79, 'Oral Care', 11, 26);

-- --------------------------------------------------------

--
-- Table structure for table `total_payment`
--

CREATE TABLE `total_payment` (
  `id` int(6) UNSIGNED NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` int(100) NOT NULL,
  `total_price` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `total_payment`
--

INSERT INTO `total_payment` (`id`, `fname`, `lname`, `address`, `contact`, `total_price`, `status`, `reg_date`) VALUES
(1, '', '', '', 0, 12300, '', '2018-06-26 09:58:50'),
(2, '', '', '', 0, 12300, '', '2018-06-26 09:59:44'),
(3, '', '', '', 0, 3600, 'inital', '2018-06-26 10:02:36'),
(4, '', '', '', 0, 2150, 'inital', '2018-06-27 08:22:27'),
(5, '', '', '', 0, 2500, 'inital', '2018-06-27 08:46:09'),
(6, '', '', '', 0, 1050, 'inital', '2018-06-27 08:49:01'),
(7, '', '', '', 0, 1050, 'inital', '2018-06-27 08:50:56'),
(8, '', '', '', 0, 0, 'inital', '2018-06-27 08:51:20'),
(9, '', '', '', 0, 2100, 'inital', '2018-06-27 08:51:39'),
(10, '', '', '', 0, 3050, 'inital', '2018-06-27 10:12:41'),
(11, '', '', '', 0, 5400, 'inital', '2018-08-13 11:37:20'),
(12, '', '', '', 0, 6700, 'inital', '2018-09-09 06:23:16'),
(13, '', '', '', 0, 900, 'inital', '2018-09-09 06:34:13'),
(14, '', '', '', 0, 900, 'inital', '2018-09-09 06:38:54'),
(15, 'rs', 'm', 'uttara', 12345678, 0, 'inital', '2018-09-09 09:45:51'),
(16, 'sv', 's', 'uttara', 12345678, 0, 'inital', '2018-09-10 10:04:00'),
(17, '', '', '', 0, 0, 'inital', '2018-09-11 07:30:41'),
(18, 'rs', 'm', 'uttara', 12345678, 0, 'inital', '2018-10-16 16:28:43'),
(19, '', '', '', 0, 0, 'inital', '2018-10-21 01:28:37'),
(20, '', '', '', 0, 0, 'inital', '2018-10-21 06:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `user_signup`
--

CREATE TABLE `user_signup` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `age` int(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_signup`
--

INSERT INTO `user_signup` (`id`, `name`, `age`, `email`, `password`) VALUES
(0, 'rs', 24, 'razoanasm@gmail.com', 'eff73338f8b72d70b99096767b4562c4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maincat`
--
ALTER TABLE `maincat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `total_payment`
--
ALTER TABLE `total_payment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `maincat`
--
ALTER TABLE `maincat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `total_payment`
--
ALTER TABLE `total_payment`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
