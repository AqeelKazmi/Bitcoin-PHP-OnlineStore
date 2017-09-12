-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2017 at 10:44 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bitpaynoapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` varchar(50) NOT NULL,
  `time` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `address2` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(30) NOT NULL,
  `zip` varchar(15) NOT NULL,
  `country` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cost` decimal(7,4) NOT NULL,
  `recd` int(11) NOT NULL,
  `payto` varchar(100) NOT NULL,
  `pkey` varchar(100) NOT NULL,
  `items` varchar(300) NOT NULL,
  `paid` int(1) NOT NULL,
  `complete` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `time`, `name`, `address`, `address2`, `city`, `state`, `zip`, `country`, `email`, `cost`, `recd`, `payto`, `pkey`, `items`, `paid`, `complete`) VALUES
('59b68af81f063', 1505135352, 'Aqeel', 'Link road model town', 'syz', 'Lahore', 'Punjab', '54000', 'Pakistan', 'syed.aqeel@blockchainexpertsolutions.com', '0.0010', 0, 'mm16D7UZP4R5swBo2jwt3Zz8Z7X5kStsU9', '', '1000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `image` varchar(300) NOT NULL,
  `in_stock` int(1) NOT NULL DEFAULT '1',
  `description` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `in_stock`, `description`) VALUES
(1000, 'Dell I5 Laptop', '150.00', 'http://www.saintclassified.pk/uploads/laptop-core-i5-dell-laptop-for-sale-laptop-for-sale-ad-296338.jpg', 10, 'Laptop , Core i5 Dell , Laptop for sale , Laptop for sale'),
(1001, 'Samsung Galaxy J2', '80.00', 'http://cdn2.gsmarena.com/vv/pics/samsung/samsung-galaxy-j2-1.jpg', 10, 'Versions: J200F (UAE, Turkey); J200Y (New Zealand, Taiwan); J200G (India, Indonesia); J200H with no LTE (South Africa, Kazakhstan); J200GU (Philippines, Malaysia, Thailand)\nAlso known as Samsung Galaxy J2 Duos with dual-SIM card slots');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
