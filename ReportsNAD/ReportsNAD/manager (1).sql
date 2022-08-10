-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2022 at 01:17 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customername` varchar(30) NOT NULL,
  `productsneeded` varchar(30) NOT NULL,
  `customerslocation` varchar(30) NOT NULL,
  `quantityneeded` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customername`, `productsneeded`, `customerslocation`, `quantityneeded`) VALUES
('y.i', 'ghj', 'ulyg', 6),
('eva', 'boots', 'city', 9),
('suzan', 'heels', 'ibanda', 80),
('suzan', 'heels', 'ibanda', 80),
('ivansa', 'boots', 'hj', 9),
('eva', 'heel', 'city', 4),
('ivansa', 'boots', 'city', 8),
('kiden', 'heels', 'city', 4),
('kiden', 'heel', 'era', 4),
('eva', 'boots', 'kla', 7);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `address`, `telephone`, `dob`) VALUES
(1, 'kiden', 'makerere', '0751583921', '2000-08-09'),
(2, 'suzan', 'hima', '0745321756', '2002-08-10'),
(3, 'jemima', 'city', '0764500923', '2001-08-24');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(3) NOT NULL,
  `date` date NOT NULL,
  `likes` varchar(30) NOT NULL,
  `products` varchar(30) NOT NULL,
  `sales` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`id`, `username`, `password`) VALUES
(1, 'yenki', 'null'),
(2, 'suzie', 'null'),
(3, 'mary', '124'),
(4, 'kiden', '4567'),
(5, 'yenki', 'null'),
(6, 'yenki', 'null'),
(7, 'ivan', 'null'),
(8, 'ivan', 'null'),
(9, 'kiden', 'null'),
(10, 'kiden', 'null'),
(11, 'yenki', 'null'),
(12, 'jemima', 'null'),
(13, 'kiden', 'null'),
(14, 'bright', 'null'),
(27, 'twinkle', '1234'),
(30, 'mary', '895'),
(31, 'mary', '345'),
(32, 'barbra', '345'),
(33, 'kiden', '233'),
(34, 'jasper', '400'),
(35, 'null', 'null'),
(36, 'twinkle', '1234'),
(37, 'twinkle', '1234'),
(38, 'twinkle', '1234'),
(39, 'twinkle', '1234'),
(40, 'null', 'null'),
(41, 'null', 'null'),
(42, 'twinkle', '1234'),
(43, 'twinkle', '1234'),
(44, 'twinkle', '1234'),
(45, 'twinkle', '1234'),
(46, 'twinkle', '1234'),
(47, 'null', 'null'),
(48, 'null', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `production`
--

CREATE TABLE `production` (
  `id` int(4) NOT NULL,
  `longterm` varchar(30) NOT NULL,
  `midterm` varchar(30) NOT NULL,
  `shortterm` varchar(30) NOT NULL,
  `productiondate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(3) NOT NULL,
  `customersName` varchar(30) NOT NULL,
  `product` varchar(30) NOT NULL,
  `amount` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `customersName`, `product`, `amount`) VALUES
(1, 'kiden', 'Athletics', 2000),
(2, 'mary', 'sandals', 500),
(3, 'Essie', 'heels', 100),
(4, 'Amos', 'boots', 400);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `production`
--
ALTER TABLE `production`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `production`
--
ALTER TABLE `production`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
