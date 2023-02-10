-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2023 at 05:01 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `picture perfect`
--

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `emailID` varchar(120) NOT NULL,
  `amount` int(6) NOT NULL,
  `orderDate` datetime NOT NULL DEFAULT current_timestamp(),
  `paymentMode` varchar(255) NOT NULL,
  `txnStatus` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`emailID`, `amount`, `orderDate`, `paymentMode`, `txnStatus`, `address`, `uname`, `pid`) VALUES
('terabappayush@gmail.com', 25000, '2023-02-10 21:17:24', 'card_1MZyp3BeXDHZA7ZgFY1uNSBi', 'succeeded', 't101 medical colony ratanada Jodhpur Rajasthan,342001', 'Piyush', 27);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(5) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `role` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `username`, `email`, `password`, `token`, `status`, `role`) VALUES
(1, 'admin', 'Pictureperfectcor@gmail.com', '$2y$10$8K0SVHN997ZcStUGyb1FYO8Y0.BwKFlvJMBtBOg76eFaacPjeR7jS', 'I-am-boss-here', 'active', 1),
(2, 'Piyush', 'terabappayush@gmail.com', '$2y$10$rHhD.We6kvx2EK0TFnro4..3Xnnw.omOiRWhWXokHZhwDzmW/5dZ.', '954a05594eb7abd6795e082852b2ec', 'active', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
