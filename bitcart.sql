-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2024 at 12:28 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bitcart`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_info`
--

CREATE TABLE `cart_info` (
  `cart_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `item_rate` float NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_info`
--

INSERT INTO `cart_info` (`cart_id`, `item_id`, `item_quantity`, `item_rate`, `user_name`, `reg_date`) VALUES
(1, 2, 1, 1000, '', '2024-08-23'),
(12, 2, 1, 1000, '', '2024-08-23'),
(13, 2, 1, 1000, '', '2024-08-23'),
(14, 1, 1, 21600, '', '2024-08-23'),
(15, 1, 1, 21600, '', '2024-08-23');

-- --------------------------------------------------------

--
-- Table structure for table `category_info`
--

CREATE TABLE `category_info` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(40) NOT NULL,
  `cat_dname` varchar(40) NOT NULL,
  `image_path` text NOT NULL,
  `cat_type` varchar(10) NOT NULL,
  `cat_parent_id` int(11) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_info`
--

INSERT INTO `category_info` (`cat_id`, `cat_name`, `cat_dname`, `image_path`, `cat_type`, `cat_parent_id`, `reg_date`) VALUES
(1, 'Electronics', 'Electronics', 'electronic.jpeg', 'Primary', 0, '2024-08-20'),
(3, 'mobile', 'mobile', 'mobiles.jpeg', 'Secondary', 1, '2024-08-21'),
(5, 'furniture', 'furniture', 'furlogo.jpeg', 'Primary', 0, '2024-08-21'),
(6, 'chair', 'chair', 'chairlogo.jpeg', 'Secondary', 5, '2024-08-21'),
(7, 'Jewellary', 'Jewellary', 'jwelogo.jpeg', 'Primary', 0, '2024-08-21'),
(8, 'Television', 'Television', 'tv.jpeg', 'Secondary', 1, '2024-08-21'),
(9, 'Samsung Mobile', 'Samsung', 'samlogo.jpeg', 'Secondary', 3, '2024-08-21'),
(11, 'Samsung TV', 'Samsung', 'sumtv.jpeg', 'Secondary', 8, '2024-08-21'),
(12, 'Asus ', 'Asus mobile', 'asus.jpeg', 'Secondary', 3, '2024-08-26'),
(13, 'iphone', 'iphone', 'iphone.jpeg', 'Secondary', 3, '2024-08-26');

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(30) NOT NULL,
  `cust_email` varchar(30) NOT NULL,
  `cust_mobile` varchar(30) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_pass` varchar(20) NOT NULL,
  `user_type` varchar(5) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`cust_id`, `cust_name`, `cust_email`, `cust_mobile`, `user_name`, `user_pass`, `user_type`, `reg_date`) VALUES
(1, 'ansh', 'ansh@gmail.com', '576687798', 'ansh', 'a', 'user', '2024-08-17'),
(3, 'Lucky', 'lucky@gmail.com', '576687777', 'lucky', 'lucky', 'user', '2024-08-17'),
(4, 'sonal', 'sonal@gmail.com', '04545455444', 'sonal', 'sonal', 'user', '2024-08-17'),
(14, 'madhu sharma', 'madhu@gmail.com', '455676767', 'admin', 'a', 'admin', '2024-08-18'),
(15, 'harsh soni', 'scnslkv@gmail.com', '321132', 'harsh', 'h', 'user', '2024-08-25');

-- --------------------------------------------------------

--
-- Table structure for table `item_info`
--

CREATE TABLE `item_info` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(30) NOT NULL,
  `item_detail` text NOT NULL,
  `image_path` text NOT NULL,
  `parent_category` int(11) NOT NULL,
  `item_rate` float NOT NULL,
  `item_discount` float NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item_info`
--

INSERT INTO `item_info` (`item_id`, `item_name`, `item_detail`, `image_path`, `parent_category`, `item_rate`, `item_discount`, `reg_date`) VALUES
(1, 'Samsung mobile', '13MP Back,8MP front cam', 'mobiles.jpeg', 9, 24000, 10, '2024-08-21'),
(2, 'Titan Watch ', '12 inch circular wall clock', 'titan.jpeg', 0, 1000, 0, '2024-08-21'),
(3, 'Asus rog8', 'gaming phone', 'asus.jpeg', 12, 70000, 10, '2024-08-26'),
(4, 'iphone14 pro 256gb', 'oled display,4200mah battery, \n            a17cipset,HDR10+dispaly', 'iphone14.jpeg', 13, 145000, 5, '2024-08-27');

-- --------------------------------------------------------

--
-- Table structure for table `message_info`
--

CREATE TABLE `message_info` (
  `msg_id` int(11) NOT NULL,
  `msg_heading` text NOT NULL,
  `msg_detail` text NOT NULL,
  `sender_name` varchar(40) NOT NULL,
  `receiver_name` varchar(40) NOT NULL,
  `sent_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `message_info`
--

INSERT INTO `message_info` (`msg_id`, `msg_heading`, `msg_detail`, `sender_name`, `receiver_name`, `sent_date`) VALUES
(1, '', '', 'ansh', 'admin', '2024-08-24 20:42:58'),
(2, 'Sony Dealer from Chhandigarh is given wrong product.', 'dear sir,\r\ni had given order of sony T.V. of 43\" with order no.12344\r\nbut i did recive proper product', 'ansh', 'admin', '2024-08-24 20:45:39'),
(3, 'complain recieved.', 'we will take fruitful action against that vendor very soon.\r\nfor right now , you can apply for returning this product.', 'admin', 'ansh', '2024-08-24 23:16:45');

-- --------------------------------------------------------

--
-- Table structure for table `news_info`
--

CREATE TABLE `news_info` (
  `news_id` int(11) NOT NULL,
  `news_headding` text NOT NULL,
  `news_detail` text NOT NULL,
  `reg_date` date NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `news_info`
--

INSERT INTO `news_info` (`news_id`, `news_headding`, `news_detail`, `reg_date`, `del_status`) VALUES
(1, 'we will open offer on next month.', 'in this offer you will get more then 50% discount in each product.  ', '2024-08-24', 0);

-- --------------------------------------------------------

--
-- Table structure for table `offer_info`
--

CREATE TABLE `offer_info` (
  `offer_id` int(11) NOT NULL,
  `offer_name` text NOT NULL,
  `offer_srart_dt` datetime NOT NULL,
  `offer_end_dt` datetime NOT NULL,
  `cat_type` text NOT NULL,
  `offer_discount` float NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `offer_info`
--

INSERT INTO `offer_info` (`offer_id`, `offer_name`, `offer_srart_dt`, `offer_end_dt`, `cat_type`, `offer_discount`, `reg_date`) VALUES
(1, 'diwali dhamaka', '2024-08-24 00:00:00', '2024-08-28 00:00:00', '1-3-9-8-11-', 5, '2024-08-24'),
(2, 'diwali dhamaka', '2024-08-24 00:00:00', '2024-08-28 00:00:00', '1-3-9-8-11-', 5, '2024-08-24'),
(3, 'janmastmi offer', '2024-08-21 00:00:00', '2024-08-27 00:00:00', '1-3-9-8-11', 2, '2024-08-24');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `order_det_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `item_rate` float NOT NULL,
  `order_ref_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`order_det_id`, `item_id`, `item_quantity`, `item_rate`, `order_ref_id`) VALUES
(1, 1, 1, 21600, 51),
(2, 1, 1, 21600, 51),
(3, 1, 1, 21600, 51),
(4, 1, 1, 21600, 51),
(5, 1, 1, 21600, 51),
(6, 1, 1, 21600, 51),
(7, 2, 1, 1000, 52),
(8, 2, 1, 1000, 53),
(9, 1, 3, 18720, 53),
(10, 2, 2, 1000, 53),
(11, 1, 5, 18720, 53),
(12, 1, 5, 18720, 53),
(13, 2, 1, 1000, 53),
(14, 1, 1, 18720, 53),
(15, 1, 1, 18720, 53),
(16, 2, 1, 1000, 53),
(17, 1, 1, 18720, 53),
(18, 2, 1, 1000, 53),
(19, 1, 2, 18720, 53),
(20, 2, 4, 1000, 55),
(21, 2, 4, 1000, 56),
(22, 2, 1, 1000, 57),
(23, 4, 2, 137750, 60),
(24, 2, 1, 1000, 60);

-- --------------------------------------------------------

--
-- Table structure for table `order_master`
--

CREATE TABLE `order_master` (
  `order_id` int(11) NOT NULL,
  `user_name` varchar(40) NOT NULL,
  `order_date` date NOT NULL,
  `total_amnt` float NOT NULL,
  `order_status` varchar(30) NOT NULL,
  `last_update_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_master`
--

INSERT INTO `order_master` (`order_id`, `user_name`, `order_date`, `total_amnt`, `order_status`, `last_update_date`) VALUES
(53, 'ansh', '2024-08-23', 1000, '', '0000-00-00'),
(55, 'harsh', '2024-08-25', 4000, 'Dispatched', '2024-08-25'),
(56, 'harsh', '2024-08-25', 4000, 'Cancle', '2024-08-26'),
(57, 'harsh', '2024-08-26', 1000, 'Transit', '2024-08-26'),
(58, 'harsh', '2024-08-26', 0, 'Transit', '2024-08-26'),
(59, 'harsh', '2024-08-26', 0, 'Transit', '2024-08-26'),
(60, 'ansh', '2024-08-27', 291000, 'Dispatched', '2024-08-27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_info`
--
ALTER TABLE `cart_info`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `category_info`
--
ALTER TABLE `category_info`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `item_info`
--
ALTER TABLE `item_info`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `message_info`
--
ALTER TABLE `message_info`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `news_info`
--
ALTER TABLE `news_info`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `offer_info`
--
ALTER TABLE `offer_info`
  ADD PRIMARY KEY (`offer_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_det_id`);

--
-- Indexes for table `order_master`
--
ALTER TABLE `order_master`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_info`
--
ALTER TABLE `cart_info`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `category_info`
--
ALTER TABLE `category_info`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customer_info`
--
ALTER TABLE `customer_info`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `item_info`
--
ALTER TABLE `item_info`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `message_info`
--
ALTER TABLE `message_info`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news_info`
--
ALTER TABLE `news_info`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `offer_info`
--
ALTER TABLE `offer_info`
  MODIFY `offer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `order_master`
--
ALTER TABLE `order_master`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
