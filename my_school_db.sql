-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2024 at 02:15 PM
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
-- Database: `my_school_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `std_data`
--

CREATE TABLE `std_data` (
  `std_id` int(11) NOT NULL,
  `std_name` varchar(25) NOT NULL,
  `std_age` varchar(25) NOT NULL,
  `std_class` varchar(23) NOT NULL,
  `std_section` varchar(25) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `std_data`
--

INSERT INTO `std_data` (`std_id`, `std_name`, `std_age`, `std_class`, `std_section`, `Time`) VALUES
(1, 'Farzan', '21', 'lab 7', '2210F1', '2024-10-02 13:57:28'),
(2, 'Uzaib', '23', 'lab 2', '2210f1', '2024-10-02 13:57:28'),
(4, 'kamil', '23', '2210F1', 'A', '2024-10-02 13:57:28'),
(5, 'uzaib', '21', '2210F1', 'B', '2024-10-02 13:57:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `std_data`
--
ALTER TABLE `std_data`
  ADD PRIMARY KEY (`std_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `std_data`
--
ALTER TABLE `std_data`
  MODIFY `std_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
