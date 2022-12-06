-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2021 at 08:47 AM
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
-- Database: `eaccessories`
--

-- --------------------------------------------------------

--
-- Table structure for table `eaccessories`
--

CREATE TABLE `eaccessories` (
  `id` int(10) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `code` varchar(100) NOT NULL,
  `price` double(9,2) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eaccessories`
--

INSERT INTO `eaccessories` (`id`, `name`, `code`, `price`, `image`) VALUES
(1, 'ASTRO Gaming A40', 'astro1', 149.99, 'ast.JPG'),
(2, 'CORSAIR VIRTUOSO Headset', 'corsair1', 169.99, 'cor.JPG'),
(3, 'HyperX Cloud Stinger', 'hyperx1', 49.99, 'hx.JPG'),
(4, 'Razer Nari Wireless', 'razer1', 189.99, 'raz.JPG'),
(5, 'Corsair RGB Keyboard', 'cors1', 99.99, 'cors.JPG'),
(6, 'Corsair RGB Premium', 'cors2', 149.99, 'corsa.JPG'),
(7, 'Logitech G513 Keyboard', 'log1', 129.99, 'log.JPG'),
(8, 'MSI RGB Keyboard', 'msi1', 159.99, 'msi.JPG'),
(9, 'Logitech Gaming Mouse', 'logi1', 84.99, 'logmou.JPG'),
(10, 'MSI Gaming Mouse', 'msi2', 29.99, 'msimou.JPG'),
(11, 'Redragon M908 Mouse', 'red12', 34.99, 'red.JPG'),
(12, 'Razer DeathAdder Mouse', 'raz45', 49.99, 'razmou.JPG');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
