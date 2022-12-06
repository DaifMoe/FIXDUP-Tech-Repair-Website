-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2021 at 08:42 PM
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
-- Database: `iaccessories`
--

-- --------------------------------------------------------

--
-- Table structure for table `iaccessories`
--

CREATE TABLE `iaccessories` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `code` varchar(100) NOT NULL,
  `price` double(9,2) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `iaccessories`
--

INSERT INTO `iaccessories` (`id`, `name`, `code`, `price`, `image`) VALUES
(1, 'Corsair 16GB DDR4 RAM', 'cor1', 124.99, '2ram.JPG'),
(2, 'Asgard 16GB DDR4 RAM', 'asg1', 199.99, '2ram2.JPG'),
(3, 'Corsair 32GB DDR4 RAM', 'cor2', 289.99, '4ram.JPG'),
(4, 'BORY 32GB DDR4 RAM', 'bory1', 229.99, '4ram2.JPG'),
(5, 'APEVIA RGB FANS', 'apev1', 49.99, 'fan.JPG'),
(6, 'Cooler Master RGB FANS', 'cooler1', 39.99, 'fan2.JPG'),
(7, 'CORN RGB FANS', 'corn1', 44.99, 'fan3.JPG'),
(8, 'Corsair 3 RGB FANS', 'cor3', 109.99, 'fan4.JPG'),
(9, 'EVGA 610W Power Supply', 'evga1', 54.99, '600w.JPG'),
(10, 'CORSAIR 750W Power Supply', 'cor4', 119.99, '750w.JPG'),
(11, 'EVGA 850W Power Supply', 'evga2', 149.99, '850w.JPG'),
(12, 'SuperFlower 1000W ', 'super1', 179.99, '1000w.JPG'),
(13, 'ASUS Z590 Motherboard', 'asus1', 179.99, 'mother1.JPG'),
(14, 'ASUS B550 Motherboard', 'asus2', 189.99, 'mother2.JPG'),
(15, 'ASRock Z590 Motherboard', 'asrock1', 159.99, 'mother3.JPG'),
(16, 'GIGABYTE Z690 Motherboard', 'giga1', 899.99, 'mother4.JPG'),
(17, 'Corsair iCUE Mid Tower Case', 'cor5', 114.99, 'midtow.JPG'),
(18, 'LIAN Mid Tower Case', 'lian1', 149.99, 'midtoww.JPG'),
(19, 'Master High Tower Case', 'cooler34', 149.99, 'hightow.JPG'),
(20, 'CoolAir High Tower Case', 'cooler56', 179.99, 'hightoww.JPG');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
