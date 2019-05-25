-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2019 at 01:42 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lsm`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_to_cart`
--

CREATE TABLE `add_to_cart` (
  `cartitemid` int(4) NOT NULL,
  `username` varchar(100) NOT NULL,
  `bookno` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `availabilitybook`
--

CREATE TABLE `availabilitybook` (
  `bookno` varchar(13) NOT NULL,
  `availablecopies` int(3) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `availabilitybook`
--

INSERT INTO `availabilitybook` (`bookno`, `availablecopies`, `status`) VALUES
('00002', 0, 'Available'),
('00003', 8, 'Available'),
('00004', 25, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bookno` varchar(13) NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `copyno` int(3) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bookno`, `title`, `author`, `copyno`, `description`) VALUES
('00002', 'Automation and Robotics', 'Dr. Miltiadis', 14, 'In this book we are dealing with series part production featured by a medium complexity degree and a medium number of individual components and assembly...'),
('00003', 'Introduction to Complex Numbers', 'Christopher C. Tisdell', 8, 'This ebook makes learning \"complex\" numbers easy through an interactive, fun and personalized approach. Features include: live YouTube video streams and closed?'),
('00004', 'Introduction to Vectors', 'Christopher C. Tisdell', 41, 'This ebook makes learning \"complex\" numbers easy through an interactive, fun and personalized approach. Features include: live YouTube video streams and closed?');

-- --------------------------------------------------------

--
-- Table structure for table `borrowbook`
--

CREATE TABLE `borrowbook` (
  `borrowId` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `bookno` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrowbook`
--

INSERT INTO `borrowbook` (`borrowId`, `username`, `bookno`) VALUES
(1, 'nishal', 1);

-- --------------------------------------------------------

--
-- Table structure for table `queue`
--

CREATE TABLE `queue` (
  `queueitemno` int(4) NOT NULL,
  `bookno` varchar(13) NOT NULL,
  `username` varchar(100) NOT NULL,
  `bookdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `queue`
--

INSERT INTO `queue` (`queueitemno`, `bookno`, `username`, `bookdate`) VALUES
(1, '00004', 'kavanthi', '15.March 2019'),
(2, '00002', 'kavanthi', '15.March 2019'),
(3, '00003', 'kavanthi', '15.March 2019'),
(11, '00002', 'kavanthi', '15.March 2019');

-- --------------------------------------------------------

--
-- Table structure for table `returnbook`
--

CREATE TABLE `returnbook` (
  `returnId` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `bookno` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returnbook`
--

INSERT INTO `returnbook` (`returnId`, `username`, `bookno`) VALUES
(1, 'anjaani', 3),
(2, 'anjaani', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `birthday` varchar(10) NOT NULL,
  `nic` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `usertype` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `address`, `phone`, `birthday`, `nic`, `email`, `username`, `password`, `usertype`) VALUES
('anjaani', 'Galle', '0772472225', '14/10/1996', '961212123V', 'dta.1996@gmail.com', 'anjaani', '1111', 'User'),
('Sandarenu', 'Athurugiriya', '0703960600', '10/03/1995', '956677889V', 'ksmayadunna1@gmail.com', 'kavanthi', '1122', 'User'),
('sandarenu', 'Athurugiriya', '0703960600', '10/03/1995', '956677889V', 'kavanthism356@gmail.com', 'ksm', '123', 'Admin'),
('Chandrasena Mayadunna', 'Mulleriyava', '0771111112', '26/05/1962', '672228888V', 'sena@gmail.com', 'sena', '2222', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_to_cart`
--
ALTER TABLE `add_to_cart`
  ADD PRIMARY KEY (`cartitemid`),
  ADD KEY `bookno` (`bookno`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `availabilitybook`
--
ALTER TABLE `availabilitybook`
  ADD PRIMARY KEY (`bookno`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookno`);

--
-- Indexes for table `borrowbook`
--
ALTER TABLE `borrowbook`
  ADD PRIMARY KEY (`borrowId`);

--
-- Indexes for table `queue`
--
ALTER TABLE `queue`
  ADD PRIMARY KEY (`queueitemno`),
  ADD KEY `bookno` (`bookno`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `returnbook`
--
ALTER TABLE `returnbook`
  ADD PRIMARY KEY (`returnId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_to_cart`
--
ALTER TABLE `add_to_cart`
  MODIFY `cartitemid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `borrowbook`
--
ALTER TABLE `borrowbook`
  MODIFY `borrowId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `queue`
--
ALTER TABLE `queue`
  MODIFY `queueitemno` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `returnbook`
--
ALTER TABLE `returnbook`
  MODIFY `returnId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `add_to_cart`
--
ALTER TABLE `add_to_cart`
  ADD CONSTRAINT `add_to_cart_ibfk_2` FOREIGN KEY (`bookno`) REFERENCES `book` (`bookno`),
  ADD CONSTRAINT `add_to_cart_ibfk_3` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `availabilitybook`
--
ALTER TABLE `availabilitybook`
  ADD CONSTRAINT `availabilitybook_ibfk_1` FOREIGN KEY (`bookno`) REFERENCES `book` (`bookno`);

--
-- Constraints for table `queue`
--
ALTER TABLE `queue`
  ADD CONSTRAINT `queue_ibfk_2` FOREIGN KEY (`bookno`) REFERENCES `book` (`bookno`),
  ADD CONSTRAINT `queue_ibfk_3` FOREIGN KEY (`username`) REFERENCES `users` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
