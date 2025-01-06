-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2023 at 07:03 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cargo_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_tbl`
--

CREATE TABLE `book_tbl` (
  `bid` int(100) NOT NULL,
  `csource` varchar(100) NOT NULL,
  `cdes` varchar(100) NOT NULL,
  `cmat` varchar(100) NOT NULL,
  `cquantity` varchar(100) NOT NULL,
  `uid` varchar(100) NOT NULL,
  `bdate` date NOT NULL,
  `bstatus` varchar(100) NOT NULL,
  `how` int(10) DEFAULT NULL,
  `cid` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_tbl`
--

INSERT INTO `book_tbl` (`bid`, `csource`, `cdes`, `cmat`, `cquantity`, `uid`, `bdate`, `bstatus`, `how`, `cid`) VALUES
(2, 'India', 'uk', 'light', '12 ton', '1', '2023-07-21', 'approve', 2, 2),
(3, 'shirpur', 'delhi', 'medium', '5', '1', '2023-07-19', 'approve', 2, 2),
(4, 'india', 'uk', 'light', '10kg', '2', '2023-07-21', 'approve', 2, 1),
(5, 'shirpur', 'delhi', 'medium', '10kg', '12', '2023-07-20', 'pending', 2, 5),
(6, 'shirpur', 'uk', 'light', '12 ton', '1', '2023-08-05', 'pending', 2, 2),
(7, 'goa', 'shirpur', 'light', '10kg', '2', '2023-07-20', 'pending', 2, 3),
(8, 'India', 'UK', 'light', '12 ton', '1', '2023-08-06', 'pending', 1, 1),
(9, 'shirpur', 'delhi', 'light', '12 ton', '1', '2023-07-21', 'pending', 2, 1),
(10, 'India', 'uk', 'light', '12 ton', '2', '2023-07-21', 'pending', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `cargo_tbl`
--

CREATE TABLE `cargo_tbl` (
  `cid` int(100) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `ccap` varchar(100) NOT NULL,
  `ctime` varchar(100) NOT NULL,
  `carrival` varchar(100) NOT NULL,
  `cdep` varchar(100) NOT NULL,
  `csource` varchar(100) NOT NULL,
  `cdec` varchar(100) NOT NULL,
  `cprice` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cargo_tbl`
--

INSERT INTO `cargo_tbl` (`cid`, `cname`, `ccap`, `ctime`, `carrival`, `cdep`, `csource`, `cdec`, `cprice`) VALUES
(2, 'Delta Logs', '10 tons', '23rd July 2023', '11 00', '3 00', 'India', 'UK', 13000),
(5, 'Delta Express', '10 ton', '25 july 2023', '04:10', '04:10', 'India', 'US', 12300),
(7, 'expresss', '10ton', '23 july 2023', '05:13', '08:10', 'India', 'us', 1400),
(9, 'Ocean gate', '5 ton', '4 july 2023', '04:09', '12:30', 'India', 'America', 8000);

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `uid` int(100) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `umob` varchar(10) NOT NULL,
  `uemail` varchar(100) NOT NULL,
  `upass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`uid`, `uname`, `umob`, `uemail`, `upass`) VALUES
(1, 'Damini', '0902112344', 'damini@gmail.com', '123'),
(2, 'Madhuri', '0902199924', 'madhuri@gmail.com', '123'),
(3, 'supriya', '45632178', 'supriya@gmail.com', '123'),
(4, 'Riya', '741258', 'riya@gmail.com', '123'),
(5, 'harshali', '789654444', 'harshali@gmail.com', '123'),
(6, 'komal', '7418529666', 'komal@gmail.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_tbl`
--
ALTER TABLE `book_tbl`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `cargo_tbl`
--
ALTER TABLE `cargo_tbl`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_tbl`
--
ALTER TABLE `book_tbl`
  MODIFY `bid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cargo_tbl`
--
ALTER TABLE `cargo_tbl`
  MODIFY `cid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_tbl`
--
ALTER TABLE `user_tbl`
  MODIFY `uid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
