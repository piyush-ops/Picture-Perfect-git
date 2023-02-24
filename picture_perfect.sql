-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2023 at 03:41 PM
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
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(5) NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
('pkd342001@gmail.com', 25000, '2023-02-16 03:45:57', 'card_1MbtGtBeXDHZA7Zg1rcnH3St', 'succeeded', 't101 medical colony ratanada Jodhpur Rajasthan,342001', 'piyush', 34);

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
(10, 'piyush', 'terabappayush@gmail.com', '$2y$10$nJSQWQsJd14wKsKbFpt4e.jQl22w3RUJ8VHF4opdLamAXHpV.dWga', 'b4ea3e96d8bb5afd1afe713e7fec9e', 'active', 2),
(11, 'piyush', 'pkd342001@gmail.com', '$2y$10$ZJ8qfnPSMolf8UnN5a/STeJfwt1ZLKIdW6ExsDMXBNDOSucfH4uvO', '07019b12a259ceb261231267f52d33', 'active', 2);

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
(55, 'piyush', ' terabappayush@gmail.com', 'good people', 'good people i got for my wedding photography also got our album with best pictures and prices so reasonable even broke can pay. Thanks Picture Perfect team', '5', 2),
(56, 'piyush', ' terabappayush@gmail.com', 'my second time', 'so this time it was again amazing work guys but was hoping lol some kind of special treatment as I was repeat customer but I guess they already do give everyone so much respect.', '4', 2),
(58, 'piyush', ' terabappayush@gmail.com', 'such a good purchase', '  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores cupiditate architecto pariatur necessitatibus cum minus itaque, illum aspernatur laborum corrupti perspiciatis modi ea id quas quaerat natus accusantium placeat tempora. Architecto, commodi excepturi magnam culpa eveniet sequi nesciunt nam, aliquid dolorum cum harum odio debitis, recusandae quam nostrum sint distinctio odit. Rem accusamus corporis dolor perspiciatis aut. Sint modi, quia earum facilis omnis quo recusandae. Esse totam neque pariatur molestias officia necessitatibus eveniet quae tempora expedita laudantium nam itaque perspiciatis velit non ipsa quidem, earum sequi asperiores placeat eligendi? Hic illo sint saepe repellendus commodi reiciendis sunt itaque non dolores libero temporibus labore obcaecati rem debitis doloribus blanditiis, provident, eveniet maxime quaerat suscipit eligendi odit dignissimos voluptatem minima. Reiciendis id consequatur, voluptates amet sit dolorem provident ', '5', 2),
(59, 'piyush', ' pkd342001@gmail.com', 'will definitely come again', 'so good to select such a nice people to take such a cute and amazing photos of my child who is just 5 years old. Let me tell you they definitely definitely provide more then I could ever ask for and so polite too. You can guarantee my next visit.', '5', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_uploads`
--

CREATE TABLE `tbl_uploads` (
  `id` int(5) NOT NULL,
  `file` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `email` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_uploads`
--

INSERT INTO `tbl_uploads` (`id`, `file`, `type`, `size`, `email`) VALUES
(10, '7117-photos.rar', 'application/octet-stream', '3444.5380859375', 'pkd342001@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tbl_uploads`
--
ALTER TABLE `tbl_uploads`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `rid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbl_uploads`
--
ALTER TABLE `tbl_uploads`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
