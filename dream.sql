-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2017 at 07:05 AM
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
  `userid` int(5) NOT NULL,
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
(3, 'kashif@yahoo.com', '123', 'FICT', '8956', 'Kashif');

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
('d4180fd599207086faf95544d33a17e0592a4b51cc8a7', '1495944017', '0', 33, '2017-05-28 12:00:17'),
('e5a872704d45c7fa661a94abd9f9d92d5928f6c57b56d', '1495856837', '0', 33, '2017-05-27 11:47:17');

-- --------------------------------------------------------

--
-- Table structure for table `mst_answer`
--

CREATE TABLE `mst_answer` (
  `short_answer` varchar(150) NOT NULL,
  `que_id` int(5) NOT NULL,
  `ans_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `mst_checkquestion`
--

CREATE TABLE `mst_checkquestion` (
  `cque_id` int(5) NOT NULL,
  `test_id` int(5) NOT NULL,
  `cques_desc` varchar(150) NOT NULL,
  `copt1` varchar(100) NOT NULL,
  `copt2` varchar(100) NOT NULL,
  `copt3` varchar(100) NOT NULL,
  `copt4` varchar(100) NOT NULL,
  `copt5` varchar(100) NOT NULL,
  `copt6` varchar(100) NOT NULL,
  `copt7` varchar(100) NOT NULL,
  `copt8` varchar(100) NOT NULL,
  `copt9` varchar(100) NOT NULL,
  `copt10` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_checkquestion`
--

INSERT INTO `mst_checkquestion` (`cque_id`, `test_id`, `cques_desc`, `copt1`, `copt2`, `copt3`, `copt4`, `copt5`, `copt6`, `copt7`, `copt8`, `copt9`, `copt10`) VALUES
(8, 33, 'checkbox', 'c1', 'c2', 'c3', '', '', '', '', '', '', ''),
(9, 33, 'check box2', 'worried', 'scared', '', '', '', '', '', '', '', '');

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
(10, 33, 'shorty');

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

-- --------------------------------------------------------

--
-- Table structure for table `mst_radioquestion`
--

CREATE TABLE `mst_radioquestion` (
  `rque_id` int(5) NOT NULL,
  `test_id` int(5) NOT NULL,
  `rque_desc` varchar(150) NOT NULL,
  `opt1` varchar(100) NOT NULL,
  `opt2` varchar(100) NOT NULL,
  `opt3` varchar(100) NOT NULL,
  `opt4` varchar(100) NOT NULL,
  `opt5` varchar(100) NOT NULL,
  `options` int(25) NOT NULL,
  `aopt1` int(25) NOT NULL,
  `aopt2` int(25) NOT NULL,
  `aopt3` int(25) NOT NULL,
  `aopt4` int(25) NOT NULL,
  `aopt5` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_radioquestion`
--

INSERT INTO `mst_radioquestion` (`rque_id`, `test_id`, `rque_desc`, `opt1`, `opt2`, `opt3`, `opt4`, `opt5`, `options`, `aopt1`, `aopt2`, `aopt3`, `aopt4`, `aopt5`) VALUES
(82, 33, 'test', '2', '11', 'mt', 'yu', '', 0, 0, 0, 0, 0, 0),
(83, 33, 'af', 'af', 'af', '', '', '', 0, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mst_test`
--

CREATE TABLE `mst_test` (
  `test_id` int(5) NOT NULL,
  `test_name` varchar(30) NOT NULL,
  `userid` int(5) NOT NULL,
  `start` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `about` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_test`
--

INSERT INTO `mst_test` (`test_id`, `test_name`, `userid`, `start`, `about`) VALUES
(33, 'test', 3, '2017-05-26 21:22:46', 'test 1'),
(34, 'haha', 3, '2017-05-26 22:43:20', 'haha');

-- --------------------------------------------------------

--
-- Table structure for table `mst_usercheck`
--

CREATE TABLE `mst_usercheck` (
  `idc` int(5) NOT NULL,
  `cque_id` int(5) NOT NULL,
  `copt1` int(25) NOT NULL,
  `copt2` int(25) NOT NULL,
  `copt3` int(25) NOT NULL,
  `copt4` int(25) NOT NULL,
  `copt5` int(25) NOT NULL,
  `copt6` int(25) NOT NULL,
  `copt7` int(25) NOT NULL,
  `copt8` int(25) NOT NULL,
  `copt9` int(25) NOT NULL,
  `copt10` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_usercheck`
--

INSERT INTO `mst_usercheck` (`idc`, `cque_id`, `copt1`, `copt2`, `copt3`, `copt4`, `copt5`, `copt6`, `copt7`, `copt8`, `copt9`, `copt10`) VALUES
(1, 9, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mst_userradio`
--

CREATE TABLE `mst_userradio` (
  `id` int(5) NOT NULL,
  `options` int(25) NOT NULL,
  `rque_id` int(5) NOT NULL,
  `opt1` int(25) NOT NULL,
  `opt2` int(25) NOT NULL,
  `opt3` int(25) NOT NULL,
  `opt4` int(25) NOT NULL,
  `opt5` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_userradio`
--

INSERT INTO `mst_userradio` (`id`, `options`, `rque_id`, `opt1`, `opt2`, `opt3`, `opt4`, `opt5`) VALUES
(17, 0, 83, 1, 1, 0, 0, 0),
(18, 0, 82, 0, 0, 0, 0, 0),
(20, 0, 83, 1, 0, 0, 0, 0),
(21, 0, 83, 1, 0, 0, 0, 0),
(22, 0, 83, 1, 0, 0, 0, 0),
(23, 0, 83, 1, 0, 0, 0, 0),
(24, 0, 83, 1, 0, 0, 0, 0);

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
-- Indexes for table `mst_usercheck`
--
ALTER TABLE `mst_usercheck`
  ADD PRIMARY KEY (`idc`),
  ADD KEY `checkquestion_usercheck` (`cque_id`);

--
-- Indexes for table `mst_userradio`
--
ALTER TABLE `mst_userradio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userradio_radioquestion_FK` (`rque_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `userid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mst_answer`
--
ALTER TABLE `mst_answer`
  MODIFY `ans_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_checkanswer`
--
ALTER TABLE `mst_checkanswer`
  MODIFY `cnas_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_checkquestion`
--
ALTER TABLE `mst_checkquestion`
  MODIFY `cque_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `mst_question`
--
ALTER TABLE `mst_question`
  MODIFY `que_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `mst_radioanswer`
--
ALTER TABLE `mst_radioanswer`
  MODIFY `rans_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_radioquestion`
--
ALTER TABLE `mst_radioquestion`
  MODIFY `rque_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `mst_test`
--
ALTER TABLE `mst_test`
  MODIFY `test_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `mst_usercheck`
--
ALTER TABLE `mst_usercheck`
  MODIFY `idc` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `mst_userradio`
--
ALTER TABLE `mst_userradio`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
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

--
-- Constraints for table `mst_usercheck`
--
ALTER TABLE `mst_usercheck`
  ADD CONSTRAINT `checkquestion_usercheck` FOREIGN KEY (`cque_id`) REFERENCES `mst_checkquestion` (`cque_id`);

--
-- Constraints for table `mst_userradio`
--
ALTER TABLE `mst_userradio`
  ADD CONSTRAINT `userradio_radioquestion_FK` FOREIGN KEY (`rque_id`) REFERENCES `mst_radioquestion` (`rque_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
