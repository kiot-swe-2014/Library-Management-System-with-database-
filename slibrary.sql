-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2024 at 09:15 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `author_name`, `address`, `phone_number`) VALUES
(1, ' Fuad', 'kombolcha', 983955659),
(2, 'Abebe', 'Desse', 985318548);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `catagory` varchar(255) NOT NULL,
  `author` int(11) NOT NULL,
  `publisher` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `no_of_pages` int(11) NOT NULL,
  `Edition` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `book_name`, `catagory`, `author`, `publisher`, `content`, `no_of_pages`, `Edition`) VALUES
(1, 'Java Basic  ', '1', 1, 1, ' Education', 500, ' 1st'),
(2, ' python', '1', 2, 1, ' wedfv', 44, ' 4'),
(3, ' C++', '4', 1, 1, 'asdg ', 5, ' 3');

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `id` int(11) NOT NULL,
  `catname` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`id`, `catname`, `status`) VALUES
(1, 'Python', 'Active'),
(2, ' Java', 'Active'),
(4, ' C++', 'Active'),
(6, 'hsrtxzfg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `lendbook`
--

CREATE TABLE `lendbook` (
  `id` int(11) NOT NULL,
  `MemberID` int(11) NOT NULL,
  `BookID` int(11) NOT NULL,
  `IssuedDate` date NOT NULL,
  `Return_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lendbook`
--

INSERT INTO `lendbook` (`id`, `MemberID`, `BookID`, `IssuedDate`, `Return_Date`) VALUES
(1, 1, 1, '2024-10-31', '2024-10-31'),
(2, 3, 2, '2024-11-26', '2024-11-26'),
(3, 2, 3, '2024-10-02', '2024-10-23');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `member_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `member_name`, `address`, `phone_number`) VALUES
(1, 'Seid', 'Kombolcha', 145864551),
(2, ' Nure', 'sagf', 55646),
(3, ' Dawit', 'Addis Abeba', 165468456);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `id` int(11) NOT NULL,
  `publisher_name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`id`, `publisher_name`, `address`, `phone_number`) VALUES
(1, 'Aster nega', 'A.A', 1452278);

-- --------------------------------------------------------

--
-- Table structure for table `returnbook`
--

CREATE TABLE `returnbook` (
  `id` int(11) NOT NULL,
  `MemberID` int(11) NOT NULL,
  `MemberName` varchar(255) NOT NULL,
  `BookName` varchar(255) NOT NULL,
  `ReturnDate` varchar(255) NOT NULL,
  `DaysElap` int(11) NOT NULL,
  `Fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lendbook`
--
ALTER TABLE `lendbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returnbook`
--
ALTER TABLE `returnbook`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lendbook`
--
ALTER TABLE `lendbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `returnbook`
--
ALTER TABLE `returnbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
