-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 26, 2019 at 05:45 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `robogym`
--

-- --------------------------------------------------------

--
-- Table structure for table `gym_card`
--

DROP TABLE IF EXISTS `gym_card`;
CREATE TABLE IF NOT EXISTS `gym_card` (
  `membership` varchar(20) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gym_card`
--

INSERT INTO `gym_card` (`membership`, `staff_id`, `id`) VALUES
('Standard', 1234, 1),
('Economic', 4321, 2),
('Premium', 6543, 3);

-- --------------------------------------------------------

--
-- Table structure for table `gym_goals`
--

DROP TABLE IF EXISTS `gym_goals`;
CREATE TABLE IF NOT EXISTS `gym_goals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(550) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gym_goals`
--

INSERT INTO `gym_goals` (`id`, `description`) VALUES
(1, 'loose weight: 5kg, in 3 weeks '),
(2, 'gain weight: 5kg, in 3 weeks '),
(3, 'grow 8 packs'),
(4, 'grow 6 packs'),
(5, 'become super saiyyan god'),
(6, 'gain more muscles than Mortimer Mouse'),
(7, 'eat cheese but still loose weight');

-- --------------------------------------------------------

--
-- Table structure for table `gym_member`
--

DROP TABLE IF EXISTS `gym_member`;
CREATE TABLE IF NOT EXISTS `gym_member` (
  `staff_id` int(11) NOT NULL,
  `staff_name` varchar(45) NOT NULL,
  `staff_email` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `access_type` varchar(50) NOT NULL,
  `department` varchar(40) NOT NULL,
  `staff_pay` int(11) NOT NULL,
  `staff_card` int(11) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gym_member`
--

INSERT INTO `gym_member` (`staff_id`, `staff_name`, `staff_email`, `address`, `access_type`, `department`, `staff_pay`, `staff_card`) VALUES
(1234, 'Mickey Mouse', 'random_mickey@random_site', 'AL10 9AA', 'Member', 'Computer Science', 11, 2212),
(4321, 'Miney Mouse', 'random_miney@random_site', 'AL10 9QB', 'Admin', 'Aerospace Engineering', 16, 4122),
(6543, 'Son Goku', 'random_goku@random_site', 'AL10 9AB', 'Management', 'Board of Directors', 23, 9999);

-- --------------------------------------------------------

--
-- Table structure for table `individual_gym_goals`
--

DROP TABLE IF EXISTS `individual_gym_goals`;
CREATE TABLE IF NOT EXISTS `individual_gym_goals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `goal_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `individual_gym_goals`
--

INSERT INTO `individual_gym_goals` (`id`, `staff_id`, `goal_id`) VALUES
(1, 1234, 6),
(2, 1234, 4),
(3, 4321, 7),
(4, 4321, 1),
(5, 6543, 5),
(6, 6543, 3);

-- --------------------------------------------------------

--
-- Table structure for table `membership_type`
--

DROP TABLE IF EXISTS `membership_type`;
CREATE TABLE IF NOT EXISTS `membership_type` (
  `description` varchar(20) NOT NULL,
  PRIMARY KEY (`description`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership_type`
--

INSERT INTO `membership_type` (`description`) VALUES
('Economic'),
('Premium'),
('Standard');

-- --------------------------------------------------------

--
-- Table structure for table `pay_grade`
--

DROP TABLE IF EXISTS `pay_grade`;
CREATE TABLE IF NOT EXISTS `pay_grade` (
  `id` int(11) NOT NULL,
  `pay_scale` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pay_grade`
--

INSERT INTO `pay_grade` (`id`, `pay_scale`) VALUES
(1, 'U3'),
(2, 'U4'),
(3, 'U5'),
(4, 'U6'),
(5, 'U7'),
(6, 'U8'),
(7, 'U9'),
(8, 'U10'),
(9, 'U11'),
(10, 'U12'),
(11, 'U13'),
(12, 'U14'),
(13, 'U15'),
(14, 'U16'),
(15, 'U17'),
(16, 'U18'),
(17, 'U19'),
(18, 'U20'),
(19, 'U21'),
(20, 'U22'),
(21, 'U23'),
(22, 'U24'),
(23, 'U25');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
