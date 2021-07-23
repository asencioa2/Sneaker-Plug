-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 15, 2021 at 06:24 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Sneaker_Plug`
--

-- --------------------------------------------------------

--
-- Table structure for table `Cart`
--

CREATE TABLE `Cart` (
  `Confirmation_Num` int(11) NOT NULL,
  `Payment` int(11) DEFAULT NULL,
  `Purch_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Cust_name` varchar(255) DEFAULT NULL,
  `Num_purch` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Inventory`
--

CREATE TABLE `Inventory` (
  `ProductID` varchar(255) NOT NULL,
  `Price` float DEFAULT NULL,
  `Size` varchar(255) DEFAULT NULL,
  `Color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Inventory`
--

INSERT INTO `Inventory` (`ProductID`, `Price`, `Size`, `Color`) VALUES
('Air Jordan 11 Retro \'Jubilee / 25th Anniversary\'', 200, 'L', 'Black'),
('Air Jordan 12 Retro \'University Gold\'', 200, 'L', 'Black and Gold'),
('Air Jordan 4 Retro GS \'University Blue\'', 150, 'M', 'Blue'),
('Air Jordan 5 Retro \'Raging Bull\' 2021', 170, 'M', 'Red'),
('Curry Flow 8 Basketball Shoes', 150, 'L', 'White'),
('FLASHFILM TRAIN 2 MEN\'S SHOES', 150, 'L', 'Grey'),
('FLOATRIDE RUN FAST 3 MEN\'S RUNNING SHOES', 150, 'L', 'Blue'),
('FOREVER FLOATRIDE ENERGY 2 MEN\'S RUNNING SHOES\r\nUnder Armour\r\n', 200, 'L', 'White'),
('Jordan 1 Mid \'Banned', 150, 'L', 'Red and Black'),
('Men\'s UA Charged Vantage Sp Pnr Running Shoes', 200, 'L', 'White'),
('Men\'s UA Flow Velociti Wind Running Shoes', 160, 'L', 'White'),
('Men\'s UA HOVR™ Infinite 3 FNRN Running Shoes', 170, 'L', 'Black'),
('Men\'s UA HOVR™ Machina 2 Running Shoes', 190, 'L', 'Black'),
('Nike Adapt Bb 2.0', 150, 'L', 'White'),
('Nike Air Force 1 \'07', 140, 'L', 'White'),
('Nike Air Max \'97', 180, 'L', 'Gold'),
('Nike Air Max 270 ', 200, 'L', 'Black'),
('Nike Huarache Run', 140, 'L', 'Red'),
('NMD_R1 V2 SHOES', 120, 'M', 'White'),
('REEBOK NANO X SHOES', 150, 'L', 'Black'),
('STAN SMITH SHOES', 120, 'L', 'White'),
('SUPERSTAR SHOES', 130, 'L', 'White'),
('The ZX 2K Boost', 140, 'L', 'White'),
('ULTRABOOST 4.0 DNA SHOES', 120, 'L', 'Black'),
('ZIG DYNAMICA MEN\'S SHOES', 150, 'L', 'Black');

-- --------------------------------------------------------

--
-- Table structure for table `logininfo`
--

CREATE TABLE `logininfo` (
  `idnum` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logininfo`
--

INSERT INTO `logininfo` (`idnum`, `username`, `password`, `fname`, `lname`) VALUES
(1, 'Allen@gmail.com', 'quickman', 'Allen', 'Asensio'),
(2, 'Bernard@gmail.com', 'pizzaman', 'Bernard', 'Castano'),
(3, 'William@gmail.com', 'targetman', 'William', 'Bautista');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Cart`
--
ALTER TABLE `Cart`
  ADD PRIMARY KEY (`Confirmation_Num`);

--
-- Indexes for table `Inventory`
--
ALTER TABLE `Inventory`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `logininfo`
--
ALTER TABLE `logininfo`
  ADD PRIMARY KEY (`idnum`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logininfo`
--
ALTER TABLE `logininfo`
  MODIFY `idnum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
