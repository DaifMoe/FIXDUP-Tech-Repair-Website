-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2021 at 06:07 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `graphics`
--

-- --------------------------------------------------------

--
-- Table structure for table `graphics`
--

CREATE TABLE `graphics` (
  `id` int(10) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `code` varchar(100) CHARACTER SET utf8 NOT NULL,
  `price` double(9,2) NOT NULL,
  `image` varchar(250) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `graphics`
--

INSERT INTO `graphics` (`id`, `name`, `code`, `price`, `image`) VALUES
(1, 'GTX 1660', 'gtx1', 355.99, '1660.JPG'),
(2, 'GTX 1660Ti', 'gtx2', 544.99, '1660Ti.JPG'),
(3, 'RTX 2060 Super', 'rtx1', 749.99, '2060super.JPG'),
(4, 'RTX 2070 Super', 'rtx2', 899.99, '2070super.JPG');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
