-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2020 at 09:40 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `service_provider`
--

-- --------------------------------------------------------

--
-- Table structure for table `domain_package`
--

CREATE TABLE `domain_package` (
  `sl_no` int(11) NOT NULL,
  `com_price_INR` double NOT NULL,
  `service_provider_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hosting_package`
--

CREATE TABLE `hosting_package` (
  `sl_no` int(11) NOT NULL,
  `no_of_domains` text NOT NULL,
  `no_of_emails` text NOT NULL,
  `price_in_INR` double NOT NULL,
  `service_provider_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `sl_no` int(11) NOT NULL,
  `method_name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `service_provider`
--

CREATE TABLE `service_provider` (
  `sl_id` int(11) NOT NULL,
  `service_provider_name` varchar(500) DEFAULT NULL,
  `available_in_india` varchar(500) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `supported_currency` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vps_package`
--

CREATE TABLE `vps_package` (
  `sl_no` int(11) NOT NULL,
  `1GB_price_INR` text NOT NULL,
  `2GB_price_INR` int(11) NOT NULL,
  `service_provider_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `domain_package`
--
ALTER TABLE `domain_package`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `hosting_package`
--
ALTER TABLE `hosting_package`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `service_provider`
--
ALTER TABLE `service_provider`
  ADD PRIMARY KEY (`sl_id`);

--
-- Indexes for table `vps_package`
--
ALTER TABLE `vps_package`
  ADD PRIMARY KEY (`sl_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `domain_package`
--
ALTER TABLE `domain_package`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hosting_package`
--
ALTER TABLE `hosting_package`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_provider`
--
ALTER TABLE `service_provider`
  MODIFY `sl_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vps_package`
--
ALTER TABLE `vps_package`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
