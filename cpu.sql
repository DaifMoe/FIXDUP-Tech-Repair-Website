-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2021 at 04:27 AM
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
-- Database: `cpu`
--

-- --------------------------------------------------------

--
-- Table structure for table `cpu`
--

CREATE TABLE `cpu` (
  `id` int(10) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `code` varchar(100) CHARACTER SET utf8 NOT NULL,
  `price` double(9,2) NOT NULL,
  `image` varchar(250) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cpu`
--

INSERT INTO `cpu` (`id`, `name`, `code`, `price`, `image`) VALUES
(1, 'Intel Core Pentium', 'intel1', 59.99, 'i1.JPG'),
(2, 'Intel Core i3', 'intel2', 129.99, 'i3.JPG'),
(3, 'Intel Core i5', 'intel3', 239.99, 'i5.JPG'),
(4, 'Intel Core i7', 'intel4', 409.99, 'i7.JPG');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
