-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2017 at 06:59 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `indigo`
--

-- --------------------------------------------------------

--
-- Table structure for table `airplane`
--

CREATE TABLE `airplane` (
  `id` int(11) NOT NULL,
  `type_name` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airplane`
--

INSERT INTO `airplane` (`id`, `type_name`) VALUES
(1, '747'),
(4, '747'),
(7, '747'),
(14, '747'),
(2, '757'),
(8, '757'),
(9, '757'),
(17, '757'),
(16, '777'),
(20, '777'),
(11, 'A340-300'),
(18, 'A340-300'),
(13, 'A340-600'),
(19, 'A340-600'),
(15, 'A350'),
(3, 'A380'),
(5, 'A380'),
(6, 'A380'),
(10, 'A380'),
(12, 'A380');

-- --------------------------------------------------------

--
-- Table structure for table `airplane_type`
--

CREATE TABLE `airplane_type` (
  `type_name` varchar(15) NOT NULL,
  `max_seats` int(11) NOT NULL,
  `company` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airplane_type`
--

INSERT INTO `airplane_type` (`type_name`, `max_seats`, `company`) VALUES
('747', 200, 'Boeing'),
('757', 300, 'Boeing'),
('777', 340, 'Boeing'),
('A340-300', 120, 'Airbus'),
('A340-600', 130, 'Airbus'),
('A350', 145, 'Airbus'),
('A380', 250, 'Airbus');

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `Code` varchar(4) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`Code`, `Name`, `Country`, `City`, `State`) VALUES
('AMD', 'Sardar Vallabhbhai Airport', 'India', 'Ahmedabad', 'Gujarat'),
('ATQ', 'Raja Sansi Int\'l Airport', 'India', 'Amritsar', 'Punjab'),
('BBI', 'Biju Patnaik Airport', 'India', 'Bhubaneshwar', 'Orissa'),
('BLR', 'Kempegowda International', 'India', 'Bengaluru', 'Karnataka'),
('BOM', 'Chhatrapati Shivaji Int\'l Airport', 'India', 'Mumbai', 'Maharashtra'),
('CBD', 'Car Nicobar Air force base', 'India', 'Car Nicobar', 'Andaman'),
('DEL', 'Indira Gandhi International', 'India', 'Delhi', 'Delhi'),
('DIB', 'Mohanbari Air Force Station', 'India', 'Dibrugarh', 'Assam'),
('GOI', 'Dabolim Airport', 'India', 'Goa', 'Goa'),
('HYD', 'Rajiv Gandhi Int\'l airport', 'India', 'Hyderabad', 'Telangana'),
('IXV', 'Along airport', 'India', 'Along', 'Arunachal Pradesh'),
('JAI', 'Sanganeer Airport', 'India', 'Jaipur', 'Rajasthan'),
('JFK', 'John F Kennedy int\'l airport', 'USA', 'New York', '-'),
('PAT', 'Lok Nayak Jaiprakash Airport', 'India', 'Patna', 'Bihar'),
('SCN', 'Saarbrucken Airport', 'Saarbrucken', 'Germany', NULL),
('SLM', 'Salem Airport', 'India', 'Kamalapuram', 'Tamil Nadu'),
('SLV', 'Shimla Airport', 'India', 'Shimla', 'Himachal Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `booked_leg`
--

CREATE TABLE `booked_leg` (
  `ticket_id` varchar(15) NOT NULL,
  `flight_leg_no` int(11) NOT NULL,
  `flight_no` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booked_leg`
--

INSERT INTO `booked_leg` (`ticket_id`, `flight_leg_no`, `flight_no`) VALUES
('tkt0223', 1, '6E12'),
('tkt0223', 2, '6E12'),
('tkt0233', 1, '6E24'),
('tkt2134', 1, '6E24'),
('tkt2135', 1, '6E24'),
('tkt2136', 1, '6E90'),
('tkt2611', 1, '6E90'),
('tkt2612', 1, '6E98'),
('tkt2612', 2, '6E98');

-- --------------------------------------------------------

--
-- Table structure for table `can_land`
--

CREATE TABLE `can_land` (
  `airport_code` varchar(6) NOT NULL,
  `airplane_type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `can_land`
--

INSERT INTO `can_land` (`airport_code`, `airplane_type`) VALUES
('AMD', '747'),
('AMD', '757'),
('BLR', '747'),
('BLR', '757'),
('BLR', 'A380'),
('BOM', '747'),
('BOM', '757'),
('BOM', '777'),
('BOM', 'A340-300'),
('BOM', 'A340-600'),
('BOM', 'A350'),
('BOM', 'A380'),
('DEL', '747'),
('DEL', '757'),
('DEL', 'A380'),
('DIB', '747'),
('DIB', 'A350'),
('GOI', '747'),
('JAI', '747'),
('JFK', '747'),
('JFK', '757'),
('JFK', '777'),
('JFK', 'A340-300'),
('JFK', 'A340-600'),
('JFK', 'A350'),
('JFK', 'A380'),
('PAT', '747'),
('PAT', '757'),
('PAT', 'A340-600'),
('PAT', 'A380'),
('SCN', '747'),
('SCN', '757'),
('SCN', 'A380'),
('SLM', '747'),
('SLM', '757');

-- --------------------------------------------------------

--
-- Table structure for table `crew`
--

CREATE TABLE `crew` (
  `SSN` varchar(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Gender` varchar(1) NOT NULL,
  `Job` varchar(15) NOT NULL,
  `airplane_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crew`
--

INSERT INTO `crew` (`SSN`, `Name`, `Gender`, `Job`, `airplane_id`) VALUES
('e1', 'sharfds', 'M', 'Pilot', 1),
('e2', 'dharfds', 'M', 'Co-pilot', 1),
('e3', 'gargi', 'F', 'Stewardess', 1),
('e4', 'grewal', 'F', 'Pilot', 2),
('e5', 'grandhi', 'M', 'Co-pilot', 2),
('e6', 'farah', 'F', 'Pilot', 7),
('e7', 'maria', 'F', 'Co-pilot', 7);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `phone_no` varchar(12) NOT NULL,
  `cust_id` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`fname`, `lname`, `phone_no`, `cust_id`) VALUES
('shardul', 'singh', '9483468064', 'cid1'),
('fun', 'saps', '6549843209', 'cid10'),
('stone', 'shankar', '090990777', 'cid11'),
('wise', 'elli', '5438976000', 'cid12'),
('sharadi', 'saibaba', '4392311123', 'cid13'),
('shibani', 'hegde', '12343546', 'cid14'),
('aggron', 'stonebreak', '9899786667', 'cid15'),
('han', 'solo', '542536763', 'cid16'),
('mary', 'wattson', '987009877', 'cid17'),
('peter', 'parker', '12309878', 'cid18'),
('jonah', 'jameson', '46587688', 'cid19'),
('shreyas', 'patil', '9854354345', 'cid2'),
('sidvin', 'vinay', '8979889777', 'cid20'),
('shreyas', 'miraj', '6546546546', 'cid3'),
('sidhharth', 'ganesan', '432432466', 'cid4'),
('shreyas', 'ainapur', '3213435354', 'cid5'),
('shruthi', 'shankar', '467898764', 'cid6'),
('sumukha', 'Prasad', '943243244', 'cid7'),
('hans', 'greuber', '542532434', 'cid8'),
('luke', 'skywalker', '98765678', 'cid9');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flight_number` varchar(6) NOT NULL,
  `airplane_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flight_number`, `airplane_id`) VALUES
('6E12', 1),
('6E13', 2),
('6E300', 3),
('6E24', 4),
('6E301', 5),
('6E302', 6),
('6E27', 7),
('6E98', 8),
('6E90', 9),
('6E26', 10),
('6E305', 11),
('6E306', 12),
('6E307', 13),
('6E310', 14),
('6E320', 15),
('6E325', 16),
('6E330', 17);

-- --------------------------------------------------------

--
-- Table structure for table `flight_leg`
--

CREATE TABLE `flight_leg` (
  `flight_number` varchar(6) NOT NULL,
  `leg_number` int(11) NOT NULL,
  `departure_airport_code` varchar(4) DEFAULT NULL,
  `departure_time` time NOT NULL,
  `arrival_airport_code` varchar(4) DEFAULT NULL,
  `arrival_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight_leg`
--

INSERT INTO `flight_leg` (`flight_number`, `leg_number`, `departure_airport_code`, `departure_time`, `arrival_airport_code`, `arrival_time`) VALUES
('6E12', 1, 'AMD', '11:00:00', 'BLR', '13:00:00'),
('6E12', 2, 'BLR', '14:00:00', 'GOI', '15:30:00'),
('6E13', 1, 'DEL', '09:00:00', 'SCN', '22:00:00'),
('6E24', 1, 'JAI', '02:00:00', 'SLM', '05:00:00'),
('6E26', 1, 'GOI', '15:00:00', 'DEL', '17:00:00'),
('6E27', 1, 'JAI', '12:00:00', 'SLM', '13:25:00'),
('6E90', 1, 'DEL', '16:00:00', 'BLR', '18:30:00'),
('6E98', 1, 'DEL', '14:00:00', 'AMD', '16:00:00'),
('6E98', 2, 'AMD', '17:00:00', 'JAI', '18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` varchar(15) NOT NULL,
  `cust_id` varchar(15) NOT NULL,
  `class` varchar(10) NOT NULL,
  `amount` int(11) NOT NULL,
  `seat_no` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `cust_id`, `class`, `amount`, `seat_no`, `date`) VALUES
('tkt0223', 'cid3', 'business', 6000, 4, '2017-02-02'),
('tkt0233', 'cid3', 'economy', 5000, 34, '2017-02-03'),
('tkt2134', 'cid4', 'economy', 1200, 32, '2017-03-21'),
('tkt2135', 'cid5', 'economy', 1200, 31, '2017-03-21'),
('tkt2136', 'cid6', 'business', 6000, 3, '2017-03-21'),
('tkt2611', 'cid1', 'economy', 2000, 13, '2017-01-26'),
('tkt2612', 'cid2', 'business', 5000, 1, '2017-01-26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airplane`
--
ALTER TABLE `airplane`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_name` (`type_name`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `airplane_type`
--
ALTER TABLE `airplane_type`
  ADD PRIMARY KEY (`type_name`),
  ADD KEY `type_name` (`type_name`);

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`Code`);

--
-- Indexes for table `booked_leg`
--
ALTER TABLE `booked_leg`
  ADD PRIMARY KEY (`ticket_id`,`flight_leg_no`,`flight_no`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `flight_leg_no` (`flight_leg_no`),
  ADD KEY `flight_no` (`flight_no`),
  ADD KEY `booked_leg_ibfk_2` (`flight_leg_no`,`flight_no`),
  ADD KEY `flight_no_2` (`flight_no`,`flight_leg_no`);

--
-- Indexes for table `can_land`
--
ALTER TABLE `can_land`
  ADD PRIMARY KEY (`airport_code`,`airplane_type`),
  ADD KEY `airport_code` (`airport_code`),
  ADD KEY `airplane_type` (`airplane_type`);

--
-- Indexes for table `crew`
--
ALTER TABLE `crew`
  ADD PRIMARY KEY (`SSN`),
  ADD KEY `airplane_id` (`airplane_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flight_number`),
  ADD UNIQUE KEY `airplane_id_2` (`airplane_id`),
  ADD KEY `flight_number` (`flight_number`),
  ADD KEY `airplane_id` (`airplane_id`);

--
-- Indexes for table `flight_leg`
--
ALTER TABLE `flight_leg`
  ADD PRIMARY KEY (`flight_number`,`leg_number`),
  ADD KEY `flight_number` (`flight_number`),
  ADD KEY `departure_airport_code` (`departure_airport_code`),
  ADD KEY `arrival_airport_code` (`arrival_airport_code`),
  ADD KEY `leg_number` (`leg_number`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `airplane`
--
ALTER TABLE `airplane`
  ADD CONSTRAINT `airplane_ibfk_1` FOREIGN KEY (`type_name`) REFERENCES `airplane_type` (`type_name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `booked_leg`
--
ALTER TABLE `booked_leg`
  ADD CONSTRAINT `booked_leg_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `ticket` (`ticket_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booked_leg_ibfk_2` FOREIGN KEY (`flight_no`,`flight_leg_no`) REFERENCES `flight_leg` (`flight_number`, `leg_number`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `can_land`
--
ALTER TABLE `can_land`
  ADD CONSTRAINT `can_land_ibfk_1` FOREIGN KEY (`airport_code`) REFERENCES `airport` (`Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `can_land_ibfk_2` FOREIGN KEY (`airplane_type`) REFERENCES `airplane_type` (`type_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `crew`
--
ALTER TABLE `crew`
  ADD CONSTRAINT `crew_ibfk_1` FOREIGN KEY (`airplane_id`) REFERENCES `airplane` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`airplane_id`) REFERENCES `airplane` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `flight_leg`
--
ALTER TABLE `flight_leg`
  ADD CONSTRAINT `flight_leg_ibfk_1` FOREIGN KEY (`flight_number`) REFERENCES `flight` (`flight_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `flight_leg_ibfk_2` FOREIGN KEY (`departure_airport_code`) REFERENCES `airport` (`Code`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `flight_leg_ibfk_3` FOREIGN KEY (`arrival_airport_code`) REFERENCES `airport` (`Code`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
