-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2026 at 12:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `muzika`
--

-- --------------------------------------------------------

--
-- Table structure for table `pjesma`
--

CREATE TABLE `pjesma` (
  `id` int(11) NOT NULL,
  `naziv` varchar(100) DEFAULT NULL,
  `izvodac` varchar(100) DEFAULT NULL,
  `spol` varchar(10) DEFAULT NULL,
  `trajanje` int(11) DEFAULT NULL,
  `jezik` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pjesma`
--

INSERT INTO `pjesma` (`id`, `naziv`, `izvodac`, `spol`, `trajanje`, `jezik`) VALUES
(1, 'Thriller', 'Michael Jackson', 'muško', 258, 'engleski'),
(2, 'Bad', 'Michael Jackson', 'muško', 247, 'engleski'),
(3, 'Just Dance', 'Lady Gaga', 'žensko', 241, 'engleski'),
(4, 'Jolene', 'Dolly Parton', 'žensko', 170, 'engleski'),
(5, 'Jump', 'Justin Timberlake', 'muško', 115, 'engleski'),
(6, 'Juice', 'Juice WRLD', 'muško', 110, 'engleski'),
(7, 'Chandelier', 'Sia', 'žensko', 214, 'engleski'),
(8, 'Despacito', 'Luis Fonsi', 'muško', 229, 'španjolski'),
(9, 'Shallow', 'Lady Gaga', 'žensko', 216, 'engleski'),
(10, 'Just a Girl', 'Jennifer Lopez', 'žensko', 115, 'engleski');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pjesma`
--
ALTER TABLE `pjesma`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pjesma`
--
ALTER TABLE `pjesma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
