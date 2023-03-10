-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 06, 2021 at 05:52 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agriculture_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_username` varchar(255) NOT NULL,
  `a_password` varchar(255) NOT NULL,
  PRIMARY KEY (`a_id`),
  UNIQUE KEY `username` (`a_username`),
  KEY `username_2` (`a_username`),
  KEY `id` (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`a_id`, `a_username`, `a_password`) VALUES
(1, 'admin1', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_farmer`
--

DROP TABLE IF EXISTS `tbl_farmer`;
CREATE TABLE IF NOT EXISTS `tbl_farmer` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_username` varchar(255) NOT NULL,
  `f_password` varchar(255) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `f_address` varchar(255) NOT NULL,
  `f_phone_no` char(10) NOT NULL,
  `f_NIC` varchar(20) NOT NULL,
  PRIMARY KEY (`f_NIC`),
  UNIQUE KEY `id` (`f_id`),
  UNIQUE KEY `phone_no` (`f_phone_no`),
  UNIQUE KEY `username` (`f_username`),
  KEY `NIC` (`f_NIC`),
  KEY `username_2` (`f_username`),
  KEY `phone_no_2` (`f_phone_no`),
  KEY `NIC_2` (`f_NIC`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_farmer`
--

INSERT INTO `tbl_farmer` (`f_id`, `f_username`, `f_password`, `f_name`, `f_address`, `f_phone_no`, `f_NIC`) VALUES
(3, 'sssss', '12345', 'eee', 'eee', '2345012365', '223'),
(1, 'far1', '12345', 'stevekf', 'qqqrffgf', '0123444555', '234'),
(4, 'eeee', '333', 'rrr', 'dgdde', '1234567897', '2424'),
(2, 'rr', '258', 'ee', 'ggr', '0125896347', '258v');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_farmer_payment`
--

DROP TABLE IF EXISTS `tbl_farmer_payment`;
CREATE TABLE IF NOT EXISTS `tbl_farmer_payment` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_id` int(11) NOT NULL,
  PRIMARY KEY (`p_id`),
  KEY `f_id` (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_farmer_payment`
--

INSERT INTO `tbl_farmer_payment` (`p_id`, `f_id`) VALUES
(1, 15);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_miller`
--

DROP TABLE IF EXISTS `tbl_miller`;
CREATE TABLE IF NOT EXISTS `tbl_miller` (
  `mi_id` int(11) NOT NULL AUTO_INCREMENT,
  `mi_username` varchar(255) NOT NULL,
  `mi_password` varchar(255) NOT NULL,
  `mi_name` varchar(255) NOT NULL,
  `mi_address` varchar(255) NOT NULL,
  `mi_phone_no` char(10) NOT NULL,
  `mi_NIC` varchar(20) NOT NULL,
  PRIMARY KEY (`mi_NIC`),
  UNIQUE KEY `id` (`mi_id`),
  UNIQUE KEY `username` (`mi_username`),
  UNIQUE KEY `phone_no` (`mi_phone_no`),
  KEY `NIC` (`mi_NIC`),
  KEY `username_2` (`mi_username`),
  KEY `id_2` (`mi_id`),
  KEY `phone_no_2` (`mi_phone_no`),
  KEY `NIC_2` (`mi_NIC`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_miller`
--

INSERT INTO `tbl_miller` (`mi_id`, `mi_username`, `mi_password`, `mi_name`, `mi_address`, `mi_phone_no`, `mi_NIC`) VALUES
(2, 'system', 'system', 'system', 'system', '0111111111', '011'),
(3, 'weefe', 'wefe', 'svsvs', 'svsvs', '1223412234', '22'),
(1, 'mil1', '1235', 'aa', 'fgfg', '5923456789', '25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_miller_payment`
--

DROP TABLE IF EXISTS `tbl_miller_payment`;
CREATE TABLE IF NOT EXISTS `tbl_miller_payment` (
  `mp_id` int(11) NOT NULL AUTO_INCREMENT,
  `mi_id` int(11) NOT NULL,
  PRIMARY KEY (`mp_id`),
  KEY `mp_id` (`mi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_miller_payment`
--

INSERT INTO `tbl_miller_payment` (`mp_id`, `mi_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mill_products`
--

DROP TABLE IF EXISTS `tbl_mill_products`;
CREATE TABLE IF NOT EXISTS `tbl_mill_products` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_name` varchar(255) NOT NULL,
  `m_quantity` float NOT NULL,
  `m_unit` varchar(5) NOT NULL,
  `m_price` float NOT NULL,
  `m_owner` varchar(255) NOT NULL,
  `m_start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `m_buyer` varchar(255) NOT NULL,
  `m_duration` int(11) NOT NULL,
  `m_sold` char(3) DEFAULT NULL,
  `m_paid` char(3) DEFAULT NULL,
  PRIMARY KEY (`m_id`),
  KEY `m_id` (`m_id`),
  KEY `m_owner` (`m_owner`),
  KEY `m_buyer` (`m_buyer`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mill_products`
--

INSERT INTO `tbl_mill_products` (`m_id`, `m_name`, `m_quantity`, `m_unit`, `m_price`, `m_owner`, `m_start_date`, `m_buyer`, `m_duration`, `m_sold`, `m_paid`) VALUES
(1, 'gg', 34, 'kg', 344, 'mil1', '2021-08-26 14:21:22', 'sfca1', 4, 'Yes', 'Yes'),
(2, 'wfwfw', 22, 'gg', 255, 'mil1', '2021-09-06 17:49:49', 'sfca1', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_raw_products`
--

DROP TABLE IF EXISTS `tbl_raw_products`;
CREATE TABLE IF NOT EXISTS `tbl_raw_products` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_name` varchar(100) NOT NULL,
  `r_quantity` float NOT NULL,
  `r_unit` varchar(5) NOT NULL,
  `r_price` float NOT NULL,
  `r_owner` varchar(255) NOT NULL,
  `r_start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `r_buyer` varchar(255) NOT NULL,
  `r_duration` int(11) NOT NULL,
  `r_sold` varchar(5) DEFAULT NULL,
  `r_paid` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`r_id`),
  KEY `owner` (`r_owner`),
  KEY `r_buyer` (`r_buyer`),
  KEY `id` (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_raw_products`
--

INSERT INTO `tbl_raw_products` (`r_id`, `r_name`, `r_quantity`, `r_unit`, `r_price`, `r_owner`, `r_start_date`, `r_buyer`, `r_duration`, `r_sold`, `r_paid`) VALUES
(14, 'rr', 35, 'kg', 245, 'far1', '2021-08-24 14:12:35', 'system', 1, NULL, NULL),
(15, 'ii', 2, 'kg', 30, 'far1', '2021-08-24 14:14:04', 'mil1', 1, 'Yes', 'Yes'),
(16, 'dddv', 33, 'kg', 250, 'far1', '2021-08-27 19:00:18', 'mil1', 2, NULL, NULL),
(20, '', 32, 'g', 34, 'far1', '2021-09-05 15:57:16', 'system', 2, NULL, NULL),
(21, 'egeded', 23, 'kg', 555, 'far1', '2021-09-06 17:44:18', 'mil1', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sfca`
--

DROP TABLE IF EXISTS `tbl_sfca`;
CREATE TABLE IF NOT EXISTS `tbl_sfca` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_username` varchar(255) NOT NULL,
  `s_password` varchar(255) NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `s_address` varchar(255) NOT NULL,
  `s_phone_no` char(10) NOT NULL,
  `s_reg_no` int(11) NOT NULL,
  PRIMARY KEY (`s_reg_no`),
  UNIQUE KEY `id` (`s_id`),
  UNIQUE KEY `phone_no` (`s_phone_no`),
  UNIQUE KEY `username` (`s_username`),
  KEY `reg_no` (`s_reg_no`),
  KEY `reg_no_2` (`s_reg_no`),
  KEY `reg_no_3` (`s_reg_no`),
  KEY `phone_no_2` (`s_phone_no`),
  KEY `username_2` (`s_username`),
  KEY `phone_no_3` (`s_phone_no`),
  KEY `reg_no_4` (`s_reg_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sfca`
--

INSERT INTO `tbl_sfca` (`s_id`, `s_username`, `s_password`, `s_name`, `s_address`, `s_phone_no`, `s_reg_no`) VALUES
(1, 'sfca1', '12345', 'steve', 'ffnnswsw', '5234345678', 529),
(2, 'system', 'dvjsnvuadegvne7vgnaionaeoigvnaogn', 'system', 'degvdsdsdgvsg', '0111111111', 555),
(3, 'vssv', 'dvsvsd', 'dvdv', 'dvdvd', '1234512345', 2242);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_farmer_payment`
--
ALTER TABLE `tbl_farmer_payment`
  ADD CONSTRAINT `tbl_farmer_payment_ibfk_1` FOREIGN KEY (`f_id`) REFERENCES `tbl_raw_products` (`r_id`);

--
-- Constraints for table `tbl_miller_payment`
--
ALTER TABLE `tbl_miller_payment`
  ADD CONSTRAINT `tbl_miller_payment_ibfk_1` FOREIGN KEY (`mi_id`) REFERENCES `tbl_mill_products` (`m_id`);

--
-- Constraints for table `tbl_mill_products`
--
ALTER TABLE `tbl_mill_products`
  ADD CONSTRAINT `tbl_mill_products_ibfk_1` FOREIGN KEY (`m_owner`) REFERENCES `tbl_miller` (`mi_username`),
  ADD CONSTRAINT `tbl_mill_products_ibfk_2` FOREIGN KEY (`m_buyer`) REFERENCES `tbl_sfca` (`s_username`);

--
-- Constraints for table `tbl_raw_products`
--
ALTER TABLE `tbl_raw_products`
  ADD CONSTRAINT `tbl_raw_products_ibfk_1` FOREIGN KEY (`r_owner`) REFERENCES `tbl_farmer` (`f_username`),
  ADD CONSTRAINT `tbl_raw_products_ibfk_2` FOREIGN KEY (`r_buyer`) REFERENCES `tbl_miller` (`mi_username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
