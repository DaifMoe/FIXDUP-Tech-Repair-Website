-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2022 at 09:14 PM
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
-- Database: `laptops`
--

-- --------------------------------------------------------

--
-- Table structure for table `laptops`
--

CREATE TABLE `laptops` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `code` varchar(100) NOT NULL,
  `price` double(9,2) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laptops`
--

INSERT INTO `laptops` (`id`, `name`, `code`, `price`, `image`) VALUES
(1, 'Lenovo ThinkPad 15', 'think1', 589.99, 'think.JPG'),
(2, 'Lenovo ThinkPad R17', 'think2', 799.99, 'lenpng.PNG'),
(3, 'HP OMEN 15', 'hp1', 899.99, 'hp.JPG'),
(4, 'HP OMEN 17', 'hp2', 999.99, 'hp2.JPG'),
(5, 'MacBook Air 15', 'mac1', 899.99, 'mac.JPG'),
(6, 'MacBook Air 16', 'mac2', 999.99, 'mac2.JPG'),
(7, 'Acer Aspire 15', 'acer1', 799.99, 'acer.JPG'),
(8, 'Acer Aspire 17', 'acer2', 999.99, 'acer2.JPG');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
