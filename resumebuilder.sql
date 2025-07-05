--phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2014 at 12:03 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

--SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
--SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `resumebuilder`
--

-- --------------------------------------------------------

--
-- Table structure for table `resume`
--

CREATE TABLE IF NOT EXISTS `resume` (
  `roll` VARCHAR(12) NOT NULL,
  `fullname` TEXT NOT NULL,
  `mobile` BIGINT NOT NULL,
  `email` VARCHAR(150) NOT NULL,
  `website` VARCHAR(150) DEFAULT NULL,
  `linkedin` VARCHAR(150) DEFAULT NULL,
  `github` VARCHAR(150) DEFAULT NULL,
  `hno` TEXT,
  `street` LONGTEXT NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state` VARCHAR(45) NOT NULL,
  `country` TEXT NOT NULL,
  `pin` INT NOT NULL,
  `careerobjective` LONGTEXT NOT NULL,
  `sem1` INT NOT NULL,
  `sem2` INT NOT NULL,
  `sem3` INT NOT NULL,
  `sem4` INT NOT NULL,
  `sem5` INT NOT NULL,
  `sem6` INT NOT NULL,
  `sem7` INT NOT NULL,
  `sem8` INT NOT NULL,
  `betotal` FLOAT NOT NULL,
  `beyear` INT NOT NULL,
  `becollege` LONGTEXT NOT NULL,
  `preuniversitymarks` FLOAT NOT NULL,
  `pucollege` LONGTEXT NOT NULL,
  `puuniversity` LONGTEXT NOT NULL,
  `puyear` INT NOT NULL,
  `sslcmarks` FLOAT NOT NULL,
  `school` LONGTEXT NOT NULL,
  `schoolboard` LONGTEXT NOT NULL,
  `sslcyear` INT NOT NULL,
  `project1` LONGTEXT,
  `project1abstract` LONGTEXT,
  `project2` LONGTEXT,
  `project2abstract` LONGTEXT,
  `project3` LONGTEXT,
  `project3abstract` LONGTEXT,
  `project4` LONGTEXT,
  `project4abstract` LONGTEXT,
  `programming` LONGTEXT,
  `web` LONGTEXT,
  `tools` LONGTEXT,
  `os` LONGTEXT,
  `extra1` LONGTEXT,
  `extra2` LONGTEXT,
  `extra3` LONGTEXT,
  `fathersname` TEXT NOT NULL,
  `mothersname` TEXT NOT NULL,
  `gender` VARCHAR(10) NOT NULL,
  `dd` INT NOT NULL,
  `mm` INT NOT NULL,
  `yyyy` INT NOT NULL,
  `nationality` VARCHAR(50) NOT NULL,
  `maritalstatus` VARCHAR(50) NOT NULL,
  `languagesknown` LONGTEXT NOT NULL,
  `declaration` VARCHAR(1500) NOT NULL,
  PRIMARY KEY (`roll`)
);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
