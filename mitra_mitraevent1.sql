-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2016 at 08:39 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mitra_mitraevent1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `adminid` int(15) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(25) NOT NULL,
  `adminpass` varchar(25) NOT NULL,
  `adminconfirmpass` varchar(25) NOT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `adminname`, `adminpass`, `adminconfirmpass`) VALUES
(1, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bussiness`
--

CREATE TABLE IF NOT EXISTS `bussiness` (
  `businessid` int(15) NOT NULL AUTO_INCREMENT,
  `businessname` varchar(100) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(150) NOT NULL,
  `state` varchar(20) NOT NULL,
  `emailaddress` varchar(100) NOT NULL,
  `categoryid` varchar(20) NOT NULL,
  PRIMARY KEY (`businessid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4589 ;

--
-- Dumping data for table `bussiness`
--

INSERT INTO `bussiness` (`businessid`, `businessname`, `contact`, `address`, `state`, `emailaddress`, `categoryid`) VALUES
(4588, 'bubu', 'bubu', 'bubu', 'bubu', 'bubu', '2'),
(4587, 'bubu', 'bubu', 'bubu', 'bubu', 'bubu', '1');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `categoryid` int(10) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(50) NOT NULL,
  PRIMARY KEY (`categoryid`),
  KEY `categoryid` (`categoryid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `categoryname`) VALUES
(1, 'localrestaurant'),
(2, 'westernrestaurant'),
(3, 'cafe'),
(4, 'perlis'),
(5, 'kedah'),
(6, 'pulaupinang'),
(7, 'perak'),
(8, 'selangor'),
(9, 'melaka'),
(10, 'negerisembilan'),
(11, 'pahang'),
(12, 'johor'),
(13, 'kelantan'),
(14, 'terengganu'),
(15, 'sarawak'),
(16, 'sabah');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `feedback_id` int(15) NOT NULL AUTO_INCREMENT,
  `feedback_content` varchar(300) NOT NULL,
  `name` varchar(250) NOT NULL,
  `categoryid` int(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `1` varchar(15) NOT NULL,
  `2` varchar(15) NOT NULL,
  `3` varchar(15) NOT NULL,
  `4` varchar(15) NOT NULL,
  `5` varchar(15) NOT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `feedback_content`, `name`, `categoryid`, `email`, `1`, `2`, `3`, `4`, `5`) VALUES
(5, 'bubu', 'werwer', 13, 'ewrwer', '', 'two', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE IF NOT EXISTS `home` (
  `area` varchar(50) NOT NULL,
  `rate` varchar(50) NOT NULL,
  `idid` int(15) NOT NULL AUTO_INCREMENT,
  `id` varchar(20) NOT NULL,
  `size` int(11) NOT NULL,
  `type2` varchar(50) NOT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`area`, `rate`, `idid`, `id`, `size`, `type2`) VALUES
('1', '3', 11, '1', 0, '2');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userid` int(15) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(20) NOT NULL,
  `confirmpassword` varchar(20) NOT NULL,
  `adminuser` varchar(10) NOT NULL,
  `male` varchar(10) NOT NULL,
  `birth` varchar(25) NOT NULL,
  `address` varchar(300) NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `postcode` int(50) NOT NULL,
  `country` text NOT NULL,
  `mobile` int(70) NOT NULL,
  `home` varchar(70) NOT NULL,
  `female` varchar(15) NOT NULL,
  `size` int(11) NOT NULL,
  `file` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `confirmpassword`, `adminuser`, `male`, `birth`, `address`, `city`, `state`, `postcode`, `country`, `mobile`, `home`, `female`, `size`, `file`, `type`, `image`) VALUES
(14, 'bubu', 'bubu', 'bubu', '', 'F', 'sdfsdfs', 'dsdfsdfsdfsdf', 'sdfsdfsdf', 'sdfsdfsdf', 12344123, 'sdfsdfsdf', 1231231233, '123123123', '', 0, '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
