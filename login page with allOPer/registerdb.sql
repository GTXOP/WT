-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2024 at 04:05 AM
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
-- Database: `registerdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`fname`, `lname`, `email`, `address`) VALUES
('shubham', 'deulkar@gjh', 'iffydr35', 'aronda'),
('deulkar', 'deulkar@uhis', 'hahig@igisg', 'aronda'),
('shubham', 'deulkar@gjh', 'fdxsx', 'aronda'),
('deulkar', 'deulkar@gjh', 'deulkar@gjh', 'deulkar@gjh'),
('shubham', 'deulkar@uhis', 'm', 'h'),
('shubham', 'deulkar@gjh', 'tftf', 'aronda'),
('sahil', 'chavan', 'sahil@gmail.com', 'Devrukh'),
('Nitesh ', 'dhuri', 'nitesh@gmail.com', 'kudal'),
('shubham', 'deulkar', 'nitantdeulkar@gmail.com', 'aronda'),
('shubham', 'deulkar', 'nitantdeulkar@gmail.com', 'aronda'),
('shubham', 'deulkar', 'nitantdeulkar@gmail.com', 'aronda'),
('shubham', 'deulkar', 'nitantdeulkar@gmail.com', 'aronda'),
('shubham', 'deulkar', 'nitantdeulkar@gmail.com', 'aronda'),
('shubham', 'deulkar', 'nitantdeulkar@gmail.com', 'aronda'),
('shubham', 'deulkar', 'nitantdeulkar@gmail.com', 'aronda'),
('shubham', 'deulkar', 'nitantdeulkar@gmail.com', 'aronda'),
('shubham', 'deulkar', 'nitantdeulkar@gmail.com', 'aronda'),
('shubham', 'deulkar', 'nitantdeulkar@gmail.com', 'aronda'),
('', '', '', ''),
('', '', '', ''),
('shubham', 'deulkar', 'nitantdeulkar@gmail.com', 'aronda'),
('deulkar', 'deee', 'famt@gmai.com', 'ssss'),
('kunal', 'parab', 'kunalparab@gmail.com', 'Vengurla'),
('Nitesh', ' Dhuri', 'nhagag', 'jgaahga'),
('shubham', 'deulkar', 'nitantdeulkar@gmail.com', 'aronda'),
('shubham', 'deulkar', 'nitantdeulkar@gmail.com', 'aronda'),
('shubham', 'deulkar', 'nitantdeulkar@gmail.com', 'aronda'),
('sahil', 'rajpuy', 'agajha', 'aauau'),
('nitant ', 'deulkar', 'nitantdeulkar@gmail.com', 'Sawantwadi');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `password`) VALUES
('demo', '123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
