-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2025 at 09:07 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud_add_edit`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `role` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `profile_picture` varchar(255) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `description`, `role`, `gender`, `status`, `profile_picture`, `dob`) VALUES
(1, 'Santhiya', 'santhiya@gmail.com', '12345', 'sa', 'admin', 'Female', '1', '', '2025-05-02'),
(2, 'Santhiya', 'santhiya@gmail.com', '$2y$10$4SG/DjfP76npQrsaWnQWDu3MEpG2Ys/xxVGDfH0Rx5pb8xOFDmxA2', 'santhiya', 'admin', 'Female', '1', '', '2025-04-23'),
(3, 'Santhiya', 'santhiya@gmail.com', '$2y$10$56ReoEACeQgwDHmOQGSfvetyAapolxmHsH8gk.Cust74gkqLQmRWW', 'sdcfgh', 'admin', 'Female', '1', '', '2025-04-24'),
(4, 'Santhiya', 'santhiyasbcab@gmail.com', '$2y$10$gLGe.PgRpHx6Zz8VOxVgte07cO1Y3QEvzVN8EDqs3sr2vU4YrEgDy', 'asdfg', 'user', 'Female', '1', '', '2025-04-22'),
(5, 'sd', 'santhiya@gmail.com', '$2y$10$nmFNbZwgJ7wP9PAAPR4XXuUvigjxUQ7exTSSsTW2BgpNf3RazUaiq', 'sdf', 'admin', 'Male', '1', '', '2025-04-09'),
(6, 'J.K. Rowling', 'santhiya@gmail.com', '$2y$10$QYczfv2GBJg2R7C8JecKTOZ.CAsuc.rnuijq1CbZB0yj4OHexd0iK', 'sdefrgt', 'admin', 'Female', '1', '', '2025-04-17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
