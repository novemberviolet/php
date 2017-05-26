-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2017 at 12:31 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dream`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `userid` int(15) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(20) NOT NULL,
  `faculty_name` varchar(45) NOT NULL,
  `faculty_contact` varchar(25) NOT NULL,
  `fullname` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`userid`, `username`, `password`, `faculty_name`, `faculty_contact`, `fullname`) VALUES
(1, 'kashif@yahoo.com', '123', 'Faculty of Information Technology', '8975', 'Kashif Manzoor');

-- --------------------------------------------------------

--
-- Table structure for table `downloadkey`
--

CREATE TABLE `downloadkey` (
  `uniqueid` varchar(255) NOT NULL DEFAULT '',
  `timestamp` varchar(255) NOT NULL DEFAULT '',
  `downloads` varchar(255) NOT NULL DEFAULT '0',
  `test_id` int(5) NOT NULL,
  `launched_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `downloadkey`
--

INSERT INTO `downloadkey` (`uniqueid`, `timestamp`, `downloads`, `test_id`, `launched_date`) VALUES
('0118a063b4aae95277f0bc1752c75abf59156e7bca735', '1494576763', '0', 7, '2017-05-24 22:18:14'),
('06f7c042b76e4b04f698c75b7b2777ea5927d1f943627', '1495781881', '0', 7, '2017-05-26 14:58:01'),
('23378a2d0a25c6ade2c1da1c06c5213f59243f6bba7bf', '1495547755', '0', 7, '2017-05-24 22:18:14'),
('341cd8064bf4c9916fd60639ee7a5a9b59243d6712c81', '1495547239', '0', 30, '2017-05-24 22:18:14'),
('679d8bbd776e0bbf3b044306c5be94ae59259eb505989', '1495637685', '0', 31, '2017-05-24 22:54:45');

-- --------------------------------------------------------

--
-- Table structure for table `mst_answer`
--

CREATE TABLE `mst_answer` (
  `short_answer` varchar(150) NOT NULL,
  `que_id` int(5) NOT NULL,
  `ans_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_answer`
--

INSERT INTO `mst_answer` (`short_answer`, `que_id`, `ans_id`) VALUES
('', 8, 6),
('', 8, 7),
('', 8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `mst_checkanswer`
--

CREATE TABLE `mst_checkanswer` (
  `answer_check` varchar(150) NOT NULL,
  `cnas_id` int(5) NOT NULL,
  `cque_id` int(5) NOT NULL,
  `canditate_cvote` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_checkanswer`
--

INSERT INTO `mst_checkanswer` (`answer_check`, `cnas_id`, `cque_id`, `canditate_cvote`) VALUES
('c1', 1, 2, 2),
('bo1', 3, 2, 1),
('n', 5, 2, 4),
('mm', 6, 2, 0),
('gg', 11, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `mst_checkquestion`
--

CREATE TABLE `mst_checkquestion` (
  `cque_id` int(5) NOT NULL,
  `test_id` int(5) NOT NULL,
  `cques_desc` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_checkquestion`
--

INSERT INTO `mst_checkquestion` (`cque_id`, `test_id`, `cques_desc`) VALUES
(2, 7, 'check box'),
(3, 7, 'chicken box'),
(4, 30, 'mom'),
(6, 31, '3.3');

-- --------------------------------------------------------

--
-- Table structure for table `mst_question`
--

CREATE TABLE `mst_question` (
  `que_id` int(5) NOT NULL,
  `test_id` int(5) NOT NULL,
  `que_desc` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_question`
--

INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`) VALUES
(5, 7, 'Your favourite color'),
(6, 7, 'ppp'),
(8, 7, 'ert'),
(9, 31, 'dad');

-- --------------------------------------------------------

--
-- Table structure for table `mst_radioanswer`
--

CREATE TABLE `mst_radioanswer` (
  `rque_id` int(5) NOT NULL,
  `answer_radio` varchar(150) NOT NULL,
  `rans_id` int(5) NOT NULL,
  `canditate_rvote` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_radioanswer`
--

INSERT INTO `mst_radioanswer` (`rque_id`, `answer_radio`, `rans_id`, `canditate_rvote`) VALUES
(6, 'rr', 10, 8),
(4, 'koko', 26, 0),
(4, 'milo', 27, 2),
(6, 'nunu', 32, 2),
(10, '1.1.7', 33, 0),
(32, '1.2.2', 34, 0),
(10, '1.1.10', 35, 0),
(4, 'ji', 57, 2),
(4, 'ko', 58, 0),
(4, 'lol', 59, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mst_radioquestion`
--

CREATE TABLE `mst_radioquestion` (
  `rque_id` int(5) NOT NULL,
  `test_id` int(5) NOT NULL,
  `rque_desc` varchar(150) NOT NULL,
  `answer_radio` varchar(150) DEFAULT NULL,
  `answer_radio2` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_radioquestion`
--

INSERT INTO `mst_radioquestion` (`rque_id`, `test_id`, `rque_desc`, `answer_radio`, `answer_radio2`) VALUES
(4, 7, 'Who r u?', '', ''),
(6, 7, 'your fav drink', '', ''),
(10, 31, '1.1', '', ''),
(32, 31, '1.2', '', ''),
(79, 7, 'n', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mst_test`
--

CREATE TABLE `mst_test` (
  `test_id` int(5) NOT NULL,
  `test_name` varchar(30) NOT NULL,
  `userid` int(15) NOT NULL,
  `start` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `about` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_test`
--

INSERT INTO `mst_test` (`test_id`, `test_name`, `userid`, `start`, `about`) VALUES
(7, 'Test.', 1, '0000-00-00 00:00:00', ''),
(30, 'java', 1, '2017-05-22 23:13:48', 'my'),
(31, '1', 1, '2017-05-23 00:49:55', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `downloadkey`
--
ALTER TABLE `downloadkey`
  ADD PRIMARY KEY (`uniqueid`),
  ADD KEY `download_test_FK` (`test_id`);

--
-- Indexes for table `mst_answer`
--
ALTER TABLE `mst_answer`
  ADD PRIMARY KEY (`ans_id`),
  ADD KEY `answer_que_FK` (`que_id`);

--
-- Indexes for table `mst_checkanswer`
--
ALTER TABLE `mst_checkanswer`
  ADD PRIMARY KEY (`cnas_id`),
  ADD KEY `check_question_FK` (`cque_id`);

--
-- Indexes for table `mst_checkquestion`
--
ALTER TABLE `mst_checkquestion`
  ADD PRIMARY KEY (`cque_id`),
  ADD KEY `check_test_FK` (`test_id`);

--
-- Indexes for table `mst_question`
--
ALTER TABLE `mst_question`
  ADD PRIMARY KEY (`que_id`),
  ADD KEY `question_test_FK` (`test_id`);

--
-- Indexes for table `mst_radioanswer`
--
ALTER TABLE `mst_radioanswer`
  ADD PRIMARY KEY (`rans_id`),
  ADD KEY `question_answer_FK` (`rque_id`);

--
-- Indexes for table `mst_radioquestion`
--
ALTER TABLE `mst_radioquestion`
  ADD PRIMARY KEY (`rque_id`),
  ADD KEY `radioquestion_test_FK` (`test_id`);

--
-- Indexes for table `mst_test`
--
ALTER TABLE `mst_test`
  ADD PRIMARY KEY (`test_id`),
  ADD KEY `test_client_FK` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mst_answer`
--
ALTER TABLE `mst_answer`
  MODIFY `ans_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `mst_checkanswer`
--
ALTER TABLE `mst_checkanswer`
  MODIFY `cnas_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `mst_checkquestion`
--
ALTER TABLE `mst_checkquestion`
  MODIFY `cque_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `mst_question`
--
ALTER TABLE `mst_question`
  MODIFY `que_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `mst_radioanswer`
--
ALTER TABLE `mst_radioanswer`
  MODIFY `rans_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `mst_radioquestion`
--
ALTER TABLE `mst_radioquestion`
  MODIFY `rque_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `mst_test`
--
ALTER TABLE `mst_test`
  MODIFY `test_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `downloadkey`
--
ALTER TABLE `downloadkey`
  ADD CONSTRAINT `download_test_FK` FOREIGN KEY (`test_id`) REFERENCES `mst_test` (`test_id`);

--
-- Constraints for table `mst_answer`
--
ALTER TABLE `mst_answer`
  ADD CONSTRAINT `answer_que_FK` FOREIGN KEY (`que_id`) REFERENCES `mst_question` (`que_id`);

--
-- Constraints for table `mst_checkanswer`
--
ALTER TABLE `mst_checkanswer`
  ADD CONSTRAINT `check_question_FK` FOREIGN KEY (`cque_id`) REFERENCES `mst_checkquestion` (`cque_id`);

--
-- Constraints for table `mst_checkquestion`
--
ALTER TABLE `mst_checkquestion`
  ADD CONSTRAINT `check_test_FK` FOREIGN KEY (`test_id`) REFERENCES `mst_test` (`test_id`);

--
-- Constraints for table `mst_question`
--
ALTER TABLE `mst_question`
  ADD CONSTRAINT `question_test_FK` FOREIGN KEY (`test_id`) REFERENCES `mst_test` (`test_id`);

--
-- Constraints for table `mst_radioanswer`
--
ALTER TABLE `mst_radioanswer`
  ADD CONSTRAINT `question_answer_FK` FOREIGN KEY (`rque_id`) REFERENCES `mst_radioquestion` (`rque_id`);

--
-- Constraints for table `mst_radioquestion`
--
ALTER TABLE `mst_radioquestion`
  ADD CONSTRAINT `radioquestion_test_FK` FOREIGN KEY (`test_id`) REFERENCES `mst_test` (`test_id`);

--
-- Constraints for table `mst_test`
--
ALTER TABLE `mst_test`
  ADD CONSTRAINT `test_client_FK` FOREIGN KEY (`userid`) REFERENCES `client` (`userid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
