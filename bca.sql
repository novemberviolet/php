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
-- Database: `bca`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(320) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `name`, `password`, `image`) VALUES
(1, 'admin@otm.com', 'John', 'admin', '../upload/PicsArt_12-09-03.20.15.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(30) NOT NULL,
  `bname` varchar(30) NOT NULL,
  `lastupdate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `bname`, `lastupdate`) VALUES
(2, 'today', '03-03-2016 23:17');

-- --------------------------------------------------------

--
-- Table structure for table `chanel`
--

CREATE TABLE `chanel` (
  `id` int(30) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `lastupdate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chanel`
--

INSERT INTO `chanel` (`id`, `cname`, `lastupdate`) VALUES
(3, 'a chanel', '03-03-2016 23:21');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(30) NOT NULL,
  `semail` varchar(100) NOT NULL,
  `time` varchar(50) NOT NULL,
  `message` varchar(200) NOT NULL,
  `image` varchar(300) NOT NULL,
  `seen` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `semail`, `time`, `message`, `image`, `seen`) VALUES
(1, 'admin@otmddcom', '11:01', 'hey there this is first msg thanks for joining this amazing place', '../upload/PicsArt_12-09-03.20.15.jpg', '0'),
(2, 'user2@otm.com', '12:10', 'hello', '../upload/PicsArt_12-09-03.20.15.jpg', '0'),
(4, 'admin@otm.com', '12:44', 'this is new msg', '../upload/PicsArt_12-09-03.20.15.jpg', '0'),
(18, 'admin@otm.com', '22-02-2016 23:49', 'my name is Uday', '../upload/PicsArt_12-09-03.20.15.jpg', '0'),
(24, 'admin@otm.com', '23-02-2016 00:01', 'ankit', '../upload/PicsArt_12-09-03.20.15.jpg', '0'),
(25, 'admixxn@otm.com', '23-02-2016 00:01', 'uday', '../upload/PicsArt_12-09-03.20.15.jpg', '0'),
(26, 'admin@otm.com', '23-02-2016 00:01', 'hello', '../upload/PicsArt_12-09-03.20.15.jpg', '0'),
(27, 'admin@otm.com', '23-02-2016 00:04', 'ankit', '../upload/PicsArt_12-09-03.20.15.jpg', '0'),
(28, 'admin@otm.com', '23-02-2016 00:05', 'ankit', '../upload/PicsArt_12-09-03.20.15.jpg', '0'),
(29, 'admin@otm.com', '23-02-2016 00:05', 'll', '../upload/PicsArt_12-09-03.20.15.jpg', '0'),
(30, 'admin@otm.com', '23-02-2016 00:05', 'll', '../upload/PicsArt_12-09-03.20.15.jpg', '0'),
(31, 'admin@otm.com', '23-02-2016 00:05', 'uday', '../upload/PicsArt_12-09-03.20.15.jpg', '0'),
(32, 'admin@otm.com', '23-02-2016 00:06', 'uday', '../upload/PicsArt_12-09-03.20.15.jpg', '0'),
(33, 'admin@otm.com', '23-02-2016 00:06', 'uday', '../upload/PicsArt_12-09-03.20.15.jpg', '0'),
(34, 'admin@otm.com', '23-02-2016 00:06', 'ss', '../upload/PicsArt_12-09-03.20.15.jpg', '0'),
(35, 'admin@otm.com', '23-02-2016 00:06', 'uday', '../upload/PicsArt_12-09-03.20.15.jpg', '0'),
(36, 'admin@otm.com', '23-02-2016 00:06', 'ankit', '../upload/PicsArt_12-09-03.20.15.jpg', '0'),
(37, 'admin@otm.com', '23-02-2016 00:19', 'hello', '../upload/PicsArt_12-09-03.20.15.jpg', '0'),
(38, 'admin@otm.com', '23-02-2016 21:31', 'this is uday', '../upload/PicsArt_12-09-03.20.15.jpg', '0'),
(39, 'admin@otm.com', '23-02-2016 21:33', 'hello', '../upload/PicsArt_12-09-03.20.15.jpg', '0'),
(40, 'admin@otm.com', '23-02-2016 21:35', 'dsd', '../upload/PicsArt_12-09-03.20.15.jpg', '0'),
(41, 'admin@otm.com', '23-02-2016 21:35', '', '../upload/PicsArt_12-09-03.20.15.jpg', '0'),
(42, 'admin@otm.com', '23-02-2016 21:39', 'hii', '../upload/PicsArt_12-09-03.20.15.jpg', '0'),
(43, 'admin@otm.com', '23-02-2016 21:47', 'this is uday', '../upload/PicsArt_12-09-03.20.15.jpg', '0'),
(44, 'admin@otm.com', '23-02-2016 22:09', 'ankit', '../upload/PicsArt_12-09-03.20.15.jpg', '0');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `com_id` int(11) NOT NULL,
  `comments` text,
  `msg_id_fk` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`com_id`, `comments`, `msg_id_fk`) VALUES
(1, 'hahahaha nakakatawa', 1),
(3, 'uday', 1),
(4, 'hii hello', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `id` int(30) NOT NULL,
  `uemail` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `message` varchar(300) NOT NULL,
  `file` varchar(300) NOT NULL,
  `time` varchar(50) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `status` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mail`
--

INSERT INTO `mail` (`id`, `uemail`, `title`, `message`, `file`, `time`, `ip`, `status`) VALUES
(22, 'john@otm.com', 'hllo sir', 'i need help', '', '01-03-2016 23:13', '', 'read'),
(23, 'john@otm.com', 'hii admin', 'hello uday', '', '01-03-2016 23:28', '', 'unread'),
(27, 'admin@otm.com', 'hii admin', 'i need help what can i do ', '', '04-03-2016 00:06', '', 'unread'),
(28, 'admin@otm.com', 'hii admin', 'i need help what can i do ', '', '04-03-2016 00:19', '', 'read'),
(29, 'admin@otm.com', 'hii admin', 'i need help what can i do ', '', '04-03-2016 00:37', '', 'read'),
(30, 'admin@otm.com', 'hii admim', '', '', '05-03-2016 21:28', '', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `message` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `message`) VALUES
(1, 'Pare1: pare parang malalim iniisip mo?\r\nPare2: nanaginip ako kagabi. kasama ko 50 contestants ng ms.universe\r\nPare1: suwerte mo ano problema mo?\r\nPare2: pare ako ang nanalo!!! '),
(2, 'Teacher: ok class our lesson 4 today is about planet. earth\r\nis the 3rd planed from the sun. now what is next to mercury?\r\nPedro: murag rose pharmacy mn tingali mam! d ko lang sure ');

-- --------------------------------------------------------

--
-- Table structure for table `noty`
--

CREATE TABLE `noty` (
  `id` int(50) NOT NULL,
  `notification` varchar(200) NOT NULL,
  `status` varchar(6) NOT NULL,
  `time` varchar(30) NOT NULL,
  `uid` varchar(30) NOT NULL,
  `ip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `noty`
--

INSERT INTO `noty` (`id`, `notification`, `status`, `time`, `uid`, `ip`) VALUES
(4, 'uday', 'unread', '1 am', '1', ''),
(5, 'num 5', 'unread', '12:14 am', '2', ''),
(6, 'num 6', 'unread', '10 pm', '2', ''),
(7, 'num 7', 'unread', '1 am', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(30) NOT NULL,
  `uid` varchar(300) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sdate` varchar(30) NOT NULL,
  `edate` varchar(30) NOT NULL,
  `channels` varchar(50) NOT NULL,
  `audience` varchar(50) NOT NULL,
  `band` varchar(50) NOT NULL,
  `priority` varchar(15) NOT NULL,
  `is_private` varchar(10) NOT NULL,
  `created_at` varchar(30) NOT NULL,
  `updated_at` varchar(30) NOT NULL,
  `description` varchar(300) NOT NULL,
  `creator` varchar(50) NOT NULL,
  `complate` varchar(12) NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `uid`, `name`, `sdate`, `edate`, `channels`, `audience`, `band`, `priority`, `is_private`, `created_at`, `updated_at`, `description`, `creator`, `complate`, `status`) VALUES
(1, '', 'task1', '', '', 'a', 'b', 'b', 'high', '', '', '', '', 'uday', '0', '1'),
(2, '', 'task2', '', '', 'a', 'b', 'b', 'high', '', '', '', '', 'uday', '0', '1'),
(3, 'AK,ID,MT,OR,', 'goCar', '03/06/2016', '04/29/2016', 'AK,ID,MT,OR,', 'AK,ID,MT,OR,', 'AK,ID,MT,OR,', 'High', 'private', '', '', 'core project', 'John', 'no', '0'),
(4, 'CA,', 's', '03/17/2016', '03/08/2016', 'CA,', 'CA,', 'CA,', 'High', '', '', '', 'dsa', 'John', 'no', '0'),
(5, '', 'sds', '03/30/2016', '03/15/2016', '', '', '', 'Medium', '', '', '', 'sds', 'John', 'no', '0');

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` int(10) NOT NULL,
  `cname` varchar(10) NOT NULL,
  `created_user_id` varchar(10) NOT NULL,
  `assign_user_id` varchar(100) NOT NULL,
  `todo_title` varchar(100) NOT NULL,
  `todo_description` varchar(300) NOT NULL,
  `todo_due_date` varchar(30) NOT NULL,
  `reassign_by` varchar(30) NOT NULL,
  `is_completed` varchar(30) NOT NULL,
  `completed_at` varchar(30) NOT NULL,
  `created_at` varchar(30) NOT NULL,
  `updated_at` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `cname`, `created_user_id`, `assign_user_id`, `todo_title`, `todo_description`, `todo_due_date`, `reassign_by`, `is_completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 'a', '1', 'a', 'new', 'module complate please ', '03/24/2016', '0', '0', '0', '06-03-2016 00:18', '0'),
(2, 'a', '1', 'a', 'new', 'module complate please ', '03/24/2016', '0', '0', '0', '06-03-2016 00:20', '0');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(30) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(300) NOT NULL,
  `password` varchar(150) NOT NULL,
  `type` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `email`, `image`, `password`, `type`) VALUES
(1, 'john', 'matrix', 'john@otm.com', 'a.png', 'john123', 'user'),
(23, 'uday', 'patel', 'udaymoradiya@gmail.com', '../upload/PicsArt_12-09-03.20.15.jpg', 'uday8936', 'editor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chanel`
--
ALTER TABLE `chanel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `msg_id_fk` (`msg_id_fk`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `noty`
--
ALTER TABLE `noty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `chanel`
--
ALTER TABLE `chanel`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `noty`
--
ALTER TABLE `noty`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
