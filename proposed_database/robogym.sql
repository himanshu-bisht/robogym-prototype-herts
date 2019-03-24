-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 24, 2019 at 02:22 PM
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
  `card_id` int(11) NOT NULL AUTO_INCREMENT,
  `gym_member_staff_id` int(11) NOT NULL,
  `membership_type_id` int(11) NOT NULL,
  PRIMARY KEY (`card_id`,`gym_member_staff_id`,`membership_type_id`),
  KEY `fk_gym_card_gym_member1_idx` (`gym_member_staff_id`),
  KEY `fk_gym_card_membership_type1_idx` (`membership_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gym_card`
--

INSERT INTO `gym_card` (`card_id`, `gym_member_staff_id`, `membership_type_id`) VALUES
(1, 1234, 1),
(2, 4321, 2),
(3, 12345, 3);

-- --------------------------------------------------------

--
-- Table structure for table `gym_goals`
--

DROP TABLE IF EXISTS `gym_goals`;
CREATE TABLE IF NOT EXISTS `gym_goals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

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
  `staff_email` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  `pay_grade_id` int(11) NOT NULL,
  `access_type` varchar(12) NOT NULL,
  PRIMARY KEY (`staff_id`,`pay_grade_id`),
  KEY `fk_gym_member_pay_grade_idx` (`pay_grade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gym_member`
--

INSERT INTO `gym_member` (`staff_id`, `staff_name`, `staff_email`, `address`, `department`, `pay_grade_id`, `access_type`) VALUES
(1234, 'Micky Mouse', 'random_mickey@random_site', 'AL10 9AB', 'Computer Science', 10, 'Standard'),
(4321, 'Miney Mouse', 'random_miney@random_site', 'AL10 9QB', 'Mechanical Engineering', 15, 'Admin'),
(12345, 'Goku', 'random_goku@random_site', 'AL10 9AA', 'Board of Directors', 23, 'Management');

-- --------------------------------------------------------

--
-- Table structure for table `gym_member_has_gym_goals`
--

DROP TABLE IF EXISTS `gym_member_has_gym_goals`;
CREATE TABLE IF NOT EXISTS `gym_member_has_gym_goals` (
  `gym_member_staff_id` int(11) NOT NULL,
  `gym_goals_id` int(11) NOT NULL,
  PRIMARY KEY (`gym_member_staff_id`,`gym_goals_id`),
  KEY `fk_gym_member_has_gym_goals_gym_goals1_idx` (`gym_goals_id`),
  KEY `fk_gym_member_has_gym_goals_gym_member1_idx` (`gym_member_staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gym_member_has_gym_goals`
--

INSERT INTO `gym_member_has_gym_goals` (`gym_member_staff_id`, `gym_goals_id`) VALUES
(4321, 1),
(12345, 4),
(12345, 5),
(1234, 6),
(1234, 7),
(4321, 7);

-- --------------------------------------------------------

--
-- Table structure for table `membership_type`
--

DROP TABLE IF EXISTS `membership_type`;
CREATE TABLE IF NOT EXISTS `membership_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_type`
--

INSERT INTO `membership_type` (`id`, `description`) VALUES
(1, 'Standard'),
(2, 'Economy'),
(3, 'Premium');

-- --------------------------------------------------------

--
-- Table structure for table `pay_grade`
--

DROP TABLE IF EXISTS `pay_grade`;
CREATE TABLE IF NOT EXISTS `pay_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pay` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pay_grade`
--

INSERT INTO `pay_grade` (`id`, `pay`) VALUES
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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gym_card`
--
ALTER TABLE `gym_card`
  ADD CONSTRAINT `fk_gym_card_gym_member1` FOREIGN KEY (`gym_member_staff_id`) REFERENCES `gym_member` (`staff_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gym_card_membership_type1` FOREIGN KEY (`membership_type_id`) REFERENCES `membership_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `gym_member`
--
ALTER TABLE `gym_member`
  ADD CONSTRAINT `fk_gym_member_pay_grade` FOREIGN KEY (`pay_grade_id`) REFERENCES `pay_grade` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `gym_member_has_gym_goals`
--
ALTER TABLE `gym_member_has_gym_goals`
  ADD CONSTRAINT `fk_gym_member_has_gym_goals_gym_goals1` FOREIGN KEY (`gym_goals_id`) REFERENCES `gym_goals` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gym_member_has_gym_goals_gym_member1` FOREIGN KEY (`gym_member_staff_id`) REFERENCES `gym_member` (`staff_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
