-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 29, 2019 at 09:40 PM
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
-- Database: `logger`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('bf1ofa13maq39d0gjcb80tn2o5epphdl', '::1', 1553891565, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333839313536353b),
('kagehiqn9khq71qigvhnhco5qdaj99mu', '::1', 1553891816, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333839313831363b),
('c6mnof22tno9sqfrmqh0hpk5gv1hj5c1', '::1', 1553892855, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333839323835353b),
('jp7ma4pva7qgo7l9664qchk8uvh5fh8o', '::1', 1553892859, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333839323835393b),
('1d0abkv0p15edvd3g1rorr4hqul1tr76', '::1', 1553892855, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333839323835353b),
('s8l2af8abs7vomjtaj2j85fluc7u0sml', '::1', 1553893556, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333839333535363b),
('7325u9g2kk12dptk4jneepsfq7hk8199', '::1', 1553893868, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333839333836383b),
('rhme329buf2tjpm9rq5ej873elomgnr6', '::1', 1553894672, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333839343637323b),
('bp2egdebmvbcnct8l0fr5akdt8qev6n4', '::1', 1553894747, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333839343734373b6964656e746974797c733a31333a2261646d696e6973747261746f72223b757365726e616d657c733a31333a2261646d696e6973747261746f72223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353533383833303539223b6c6173745f636865636b7c693a313535333839343734363b),
('4q823jtoqqp375btjob81k931dpd06a6', '::1', 1553895151, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333839353135313b6964656e746974797c733a31333a2261646d696e6973747261746f72223b757365726e616d657c733a31333a2261646d696e6973747261746f72223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353533383833303539223b6c6173745f636865636b7c693a313535333839343734363b),
('634pdaiu0402irp5k3fptmg4jpta1r07', '::1', 1553895531, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333839353533313b6964656e746974797c733a31333a2261646d696e6973747261746f72223b757365726e616d657c733a31333a2261646d696e6973747261746f72223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353533383833303539223b6c6173745f636865636b7c693a313535333839343734363b),
('qbd6l524pt4vqf5up2lti9atte9mmvja', '::1', 1553895534, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333839353533343b);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gym_card`
--

INSERT INTO `gym_card` (`membership`, `staff_id`, `id`) VALUES
('Standard', 1234, 1),
('Economic', 4321, 2),
('Premium', 6543, 3),
('Premium', 999999, 4);

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
(6543, 'Son Goku', 'random_goku@random_site', 'AL10 9AB', 'Management', 'Board of Directors', 23, 9999),
(999999, 'Vegita Sama', 'random_vegita@random_site', 'AL10 9CC', 'Management', 'Department of Business ', 22, 22222);

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
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(1, '::1', ' admin@admin.com', 1553882009),
(2, '::1', 'username', 1553894685),
(3, '::1', 'adminstrator', 1553894702),
(4, '::1', 'adminstrator', 1553894719);

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_email` (`email`),
  UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  UNIQUE KEY `uc_remember_selector` (`remember_selector`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$tK2AqosCQ3JFcpNgQJNlXui4tghgdNTSYS/bX1bVc1IddhZP.OFFq', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1553894746, 1, 'Admin', 'istrator', 'ADMIN', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
