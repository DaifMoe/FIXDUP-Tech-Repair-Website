-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2022 at 07:58 PM
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
-- Database: `phones`
--

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `code` varchar(100) NOT NULL,
  `price` double(9,2) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`id`, `name`, `code`, `price`, `image`) VALUES
(1, 'iPhone 11 (Refurbished)', 'iph1', 294.99, 'ip.JPG'),
(2, 'iPhone 12 (Refurbished)', 'iph2', 429.99, 'ip2.JPG'),
(3, 'iPhone 13 (Refurbished)', 'iph3', 629.99, 'ip3.PNG'),
(4, 'iPhone 14', 'iph4', 999.99, 'ip4.JPG'),
(5, 'Samsung S10 (Refurbished)', 'sam1', 294.99, 'sam.JPG'),
(6, 'Samsung S20 (Refurbished)', 'sam2', 494.99, 'sam2.JPG'),
(7, 'Samsung S21 (Refurbished)', 'sam3', 878.99, 'sam3.JPG'),
(8, 'Samsung S22', 'sam4', 999.99, 'sam4.JPG');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
