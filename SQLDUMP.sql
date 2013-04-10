-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 09, 2013 at 09:57 PM
-- Server version: 5.6.10
-- PHP Version: 5.3.15

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `n23n7wfhs9a99dd3`
--

-- --------------------------------------------------------

--
-- Table structure for table `BasicInfo`
--

CREATE TABLE IF NOT EXISTS `BasicInfo` (
  `BasicInfoID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Email` varchar(256) NOT NULL,
  `Birthday` date NOT NULL,
  `Country` varchar(52) NOT NULL,
  `City` varchar(50) NOT NULL,
  `DateUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`BasicInfoID`),
  UNIQUE KEY `UserID` (`UserID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28572 ;

-- --------------------------------------------------------

--
-- Table structure for table `Categories`
--

CREATE TABLE IF NOT EXISTS `Categories` (
  `CategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

--
-- Table structure for table `Content`
--

CREATE TABLE IF NOT EXISTS `Content` (
  `ContentID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  `Ratio` int(10) NOT NULL,
  `Likes` int(11) NOT NULL,
  `Dislikes` int(11) NOT NULL,
  `UploaderID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `DateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ContentID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6054 ;

-- --------------------------------------------------------

--
-- Table structure for table `ContentImages`
--

CREATE TABLE IF NOT EXISTS `ContentImages` (
  `ImageID` int(11) NOT NULL AUTO_INCREMENT,
  `ContentID` int(11) NOT NULL,
  `FileName` tinytext NOT NULL,
  `Height` int(11) NOT NULL,
  `Width` int(11) NOT NULL,
  `DateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ImageID`),
  UNIQUE KEY `ContentID` (`ContentID`),
  UNIQUE KEY `ContentID_2` (`ContentID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6054 ;

-- --------------------------------------------------------

--
-- Table structure for table `Likes`
--

CREATE TABLE IF NOT EXISTS `Likes` (
  `LikeID` int(11) NOT NULL AUTO_INCREMENT,
  `ContentID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `IsLike` tinyint(1) NOT NULL,
  `DateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`LikeID`),
  UNIQUE KEY `ContentID` (`ContentID`,`UserID`),
  KEY `DateTime` (`DateTime`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1110456 ;

-- --------------------------------------------------------

--
-- Table structure for table `Sessions`
--

CREATE TABLE IF NOT EXISTS `Sessions` (
  `sid` varchar(255) NOT NULL,
  `expires` int(11) DEFAULT NULL,
  `json` text,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sid` (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

-- --------------------------------------------------------

--
-- Table structure for table `Stalkings`
--

CREATE TABLE IF NOT EXISTS `Stalkings` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `StalkerID` int(11) NOT NULL,
  `StalkingID` int(11) NOT NULL,
  `DateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  UNIQUE KEY `stalker_unique` (`StalkerID`,`StalkingID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3074 ;

-- --------------------------------------------------------

--
-- Table structure for table `Trending`
--

CREATE TABLE IF NOT EXISTS `Trending` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Score` int(11) NOT NULL,
  `ContentID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ContentID` (`ContentID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

-- --------------------------------------------------------

--
-- Table structure for table `UserImages`
--

CREATE TABLE IF NOT EXISTS `UserImages` (
  `ImageID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `FileName` varchar(50) NOT NULL,
  `Height` int(11) NOT NULL,
  `Width` int(11) NOT NULL,
  `DateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ImageID`),
  UNIQUE KEY `UserID` (`UserID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `UserPassword`
--

CREATE TABLE IF NOT EXISTS `UserPassword` (
  `UserID` int(11) NOT NULL,
  `Password` varchar(60) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(15) NOT NULL,
  `DateTime` datetime NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28576 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
