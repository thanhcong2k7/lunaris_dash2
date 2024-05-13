-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2024 at 01:13 PM
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
-- Database: `lunaris_real`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `albumID` int(11) NOT NULL,
  `albumName` varchar(255) NOT NULL,
  `albumType` tinyint(1) NOT NULL,
  `UPCNum` varchar(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `storeID` varchar(255) DEFAULT NULL,
  `userID` int(11) NOT NULL,
  `artID` varchar(255) DEFAULT NULL,
  `authorID` text DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  `relDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`albumID`, `albumName`, `albumType`, `UPCNum`, `status`, `storeID`, `userID`, `artID`, `authorID`, `createdDate`, `relDate`) VALUES
(0, 'Alone', 1, '5063248680217', 0, NULL, 1, 'wtf', '[1]', '2024-04-10', '2024-04-26'),
(1, 'Summer', 1, '5063248317359', 0, NULL, 1, NULL, '[4]', '2024-04-01', '2024-04-18');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `authorID` int(11) NOT NULL,
  `authorName` varchar(255) NOT NULL,
  `spotifyID` varchar(255) NOT NULL,
  `amID` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `userID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`authorID`, `authorName`, `spotifyID`, `amID`, `email`, `userID`) VALUES
(1, 'Pilras', '123', '123', 'pilras@kamyrecords.us.to', 1),
(2, 'CR900', '123', '123', 'cr900@kamyrecords.us.to', 1),
(3, 'SR341', '', '', '', 1),
(4, 'Zrtee', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nghesi`
--

CREATE TABLE `nghesi` (
  `ID` int(11) NOT NULL,
  `ns1` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ns2` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ns3` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ns4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nghesi`
--

INSERT INTO `nghesi` (`ID`, `ns1`, `ns2`, `ns3`, `ns4`) VALUES
(1, 'Pilras', 'Vizh', 'DMH', 'CR900');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `storeID` int(11) NOT NULL,
  `storeName` varchar(50) NOT NULL,
  `isAvailable` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE `track` (
  `trackID` int(11) NOT NULL,
  `gID` varchar(255) NOT NULL,
  `fileName` varchar(255) NOT NULL,
  `userID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `track`
--

INSERT INTO `track` (`trackID`, `gID`, `fileName`, `userID`) VALUES
(1, 'wtf', 'a.wav', 1),
(2, 'wtf', 'b.wav', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trangthai`
--

CREATE TABLE `trangthai` (
  `id` int(60) NOT NULL,
  `tt1` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tt2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tt3` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `trangthai`
--

INSERT INTO `trangthai` (`id`, `tt1`, `tt2`, `tt3`) VALUES
(1, 'distributed', 'No distribution activities', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `labelName` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `usertype` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `name`, `email`, `username`, `pwd`, `labelName`, `usertype`) VALUES
(1, 'Nguyen Thanh Cong', 'nhocpeacock@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Kamy Records', 1),
(2, 'Hoang Tan Phat', 'tanphat@dtmedia.fun', 'tanphatlunaris', 'b977b598ae1734140cedef501cfc5cb6', 'DT Media Entertainment', 1),
(3, 'Minh Hieu', 'mhieu2007dt@gmail.com', 'minhhieulunaris', '10219512d050a942f0b94cc5ec65a8a2', 'DAW RECORDS', 1),
(4, 'Nguyen Nhat Minh', 'minant2903@gmail.com', 'nhatminh2903', '329bfe8466bd829c3ebd96d0a3efaf12', 'Nhat Minh', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`albumID`),
  ADD UNIQUE KEY `UPCNum` (`UPCNum`),
  ADD KEY `userID` (`userID`),
  ADD KEY `authorID` (`authorID`(768));

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`authorID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `nghesi`
--
ALTER TABLE `nghesi`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`storeID`);

--
-- Indexes for table `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`trackID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `trangthai`
--
ALTER TABLE `trangthai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `albumID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `authorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nghesi`
--
ALTER TABLE `nghesi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `storeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `track`
--
ALTER TABLE `track`
  MODIFY `trackID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trangthai`
--
ALTER TABLE `trangthai`
  MODIFY `id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Constraints for table `author`
--
ALTER TABLE `author`
  ADD CONSTRAINT `author_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Constraints for table `track`
--
ALTER TABLE `track`
  ADD CONSTRAINT `track_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;