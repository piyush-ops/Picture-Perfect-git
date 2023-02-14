-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2023 at 06:34 PM
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
(1, 'admin', 'Pictureperfectcor@gmail.com', '$2y$10$jdFdyAOT.QQLlJxFv0uCpeQdbYB4MTdhNCaGTmK4/ENU.a0bCPxAi', 'I-am-boss-here', 'active', 1),
(10, 'piyush', 'terabappayush@gmail.com', '$2y$10$nJSQWQsJd14wKsKbFpt4e.jQl22w3RUJ8VHF4opdLamAXHpV.dWga', 'b4ea3e96d8bb5afd1afe713e7fec9e', 'active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `rid` int(4) NOT NULL,
  `rname` varchar(100) NOT NULL,
  `remail` varchar(120) NOT NULL,
  `rtitle` varchar(255) NOT NULL,
  `rsummary` varchar(2000) NOT NULL,
  `points` varchar(1) NOT NULL,
  `role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`rid`, `rname`, `remail`, `rtitle`, `rsummary`, `points`, `role`) VALUES
(49, 'piyush', ' terabappayush@gmail.com', '1234', '1234', '5', 0),
(50, 'piyush', ' terabappayush@gmail.com', '1234', '1234', '5', 0),
(51, 'piyush', ' terabappayush@gmail.com', '1234', '1234', '3', 0),
(52, 'admin', ' Pictureperfectcor@gmail.com', '1234', '1234', '5', 1),
(53, 'admin', ' Pictureperfectcor@gmail.com', '1234', '1234', '3', 1),
(54, 'admin', ' Pictureperfectcor@gmail.com', '1234', '1234', '2', 1);

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
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`rid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `rid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
