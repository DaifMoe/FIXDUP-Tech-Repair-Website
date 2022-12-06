-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2022 at 06:21 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tablets`
--

-- --------------------------------------------------------

--
-- Table structure for table `tablets`
--

CREATE TABLE `tablets` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `code` varchar(100) NOT NULL,
  `price` double(9,2) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tablets`
--

INSERT INTO `tablets` (`id`, `name`, `code`, `price`, `image`) VALUES
(1, 'iPad Mini 5', 'ipad1', 299.99, 'ipad.JPG'),
(2, 'iPad Air 5', 'ipad2', 549.99, 'ipad2.JPG'),
(3, 'iPad Pro 4', 'ipad3', 499.99, 'ipad.JPG'),
(4, 'iPad Pro 12.9', 'ipad4', 899.99, 'ipad4.JPG'),
(5, 'Samsung Tab 5', 'tab1', 399.99, 'tab.JPG'),
(6, 'Samsung Tab 8', 'tab2', 749.99, 'tab2.JPG'),
(7, 'Samsung Tab A8', 'tab3', 679.99, 'tab3.JPG'),
(8, 'Samsung Tab Pro', 'tab4', 719.99, 'tab4.JPG');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
