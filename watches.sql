-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2022 at 09:47 PM
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
-- Database: `watches`
--

-- --------------------------------------------------------

--
-- Table structure for table `watches`
--

CREATE TABLE `watches` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `code` varchar(100) NOT NULL,
  `price` double(9,2) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `watches`
--

INSERT INTO `watches` (`id`, `name`, `code`, `price`, `image`) VALUES
(1, 'Apple Watch 5', 'apple122', 249.99, 'applew.JPG'),
(2, 'Apple Watch 6', 'apple1234', 349.99, 'applew2.JPG'),
(3, 'Samsung Watch S5', 'samsung44', 249.99, 'samsung5.JPG'),
(4, 'Samsung Watch Pro', 'samsung44', 449.99, 'samsungpro.JPG'),
(5, 'FitBit W5', 'fitbit1', 129.99, 'fitpng.PNG'),
(6, 'FitBit Slim 3', 'fit22', 109.99, 'fit2.PNG'),
(7, 'Google Pixel Watch', 'pix2', 175.99, 'pixwatpng.PNG'),
(8, 'FitBit Original', 'fitbit99', 100.00, 'fitbb.JPG');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
