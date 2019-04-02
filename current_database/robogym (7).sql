-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 02, 2019 at 02:29 AM
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
('sp2v21rhaeoi6rmc0a4ec6csh4jket38', '::1', 1554164538, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535343136343533383b),
('7g55luvr3c934dt8k894d5tfipca185p', '::1', 1554172043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535343137313831343b6964656e746974797c733a31333a2261646d696e6973747261746f72223b757365726e616d657c733a31333a2261646d696e6973747261746f72223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353534313639303137223b6c6173745f636865636b7c693a313535343137303934333b),
('v2sb4jnpjte4nc3ofjca33gg6sincksf', '::1', 1554171814, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535343137313831343b6964656e746974797c733a31333a2261646d696e6973747261746f72223b757365726e616d657c733a31333a2261646d696e6973747261746f72223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353534313639303137223b6c6173745f636865636b7c693a313535343137303934333b),
('avvnp7s1b7lviom8h89fv5hann900lsb', '::1', 1554164242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535343136343234323b6964656e746974797c733a31333a2261646d696e6973747261746f72223b757365726e616d657c733a31333a2261646d696e6973747261746f72223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353534313630393937223b6c6173745f636865636b7c693a313535343136333330323b),
('4m533bikf63bq9j503rn44j3p62stt51', '::1', 1554164776, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535343136343737363b6964656e746974797c733a31333a2261646d696e6973747261746f72223b757365726e616d657c733a31333a2261646d696e6973747261746f72223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353534313630393937223b6c6173745f636865636b7c693a313535343136333330323b),
('460d6i03g27fkb0p572p9leb8h8o00ep', '::1', 1554169006, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535343136393030363b),
('5dm25n2gptmotgeihs7lghh48d0v5f6j', '::1', 1554165079, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535343136353037393b6964656e746974797c733a31333a2261646d696e6973747261746f72223b757365726e616d657c733a31333a2261646d696e6973747261746f72223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353534313630393937223b6c6173745f636865636b7c693a313535343136333330323b),
('7vumlee2s9ckbvnbvfk1cb9ijllj3312', '::1', 1554165163, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535343136353037393b6964656e746974797c733a31333a2261646d696e6973747261746f72223b757365726e616d657c733a31333a2261646d696e6973747261746f72223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353534313630393937223b6c6173745f636865636b7c693a313535343136333330323b),
('rjr85vrc83j2ks1sgv6ip1svfd729imb', '::1', 1554168172, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535343136383137323b),
('8o2q6cklmt10505f27j8q0ncprm73atj', '::1', 1554168485, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535343136383438353b),
('o85rbos8u01v5oj60emg3vufgvpu675q', '::1', 1554168858, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535343136383835383b),
('vd0nftd5rl3e799a8rjt9ov2upb62m5i', '::1', 1554169017, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535343136393031373b6964656e746974797c733a31333a2261646d696e6973747261746f72223b757365726e616d657c733a31333a2261646d696e6973747261746f72223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353534313633333032223b6c6173745f636865636b7c693a313535343136393031373b),
('96o60c6vted3q64iq7er8ujrd1cnep9h', '::1', 1554170931, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535343137303933313b),
('judee2gs016tlne9f85201pl00msn3un', '::1', 1554170933, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535343137303933333b),
('ufu8dl5e05k4cacugejinekqrr601ot1', '::1', 1554170931, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535343137303933313b),
('ctai0mas5dbf9b01l21394m77uhnq9rr', '::1', 1554170943, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535343137303934333b6964656e746974797c733a31333a2261646d696e6973747261746f72223b757365726e616d657c733a31333a2261646d696e6973747261746f72223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353534313639303137223b6c6173745f636865636b7c693a313535343137303934333b),
('ogmp83fvr15e9qe2ibuhikq717a3bvlc', '::1', 1554171271, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535343137313237313b6964656e746974797c733a31333a2261646d696e6973747261746f72223b757365726e616d657c733a31333a2261646d696e6973747261746f72223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353534313639303137223b6c6173745f636865636b7c693a313535343137303934333b);

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
  `card_id` int(11) NOT NULL,
  `valid_thru` date NOT NULL,
  `valid_upto` date NOT NULL,
  `isExpired` tinyint(4) DEFAULT NULL,
  `staff_id` int(11) NOT NULL,
  `membership` int(11) NOT NULL,
  PRIMARY KEY (`card_id`,`staff_id`,`membership`),
  UNIQUE KEY `card_id_UNIQUE` (`card_id`),
  KEY `fk_gym_card_gym_member1_idx` (`staff_id`),
  KEY `fk_gym_card_membership_type1_idx` (`membership`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gym_card`
--

INSERT INTO `gym_card` (`card_id`, `valid_thru`, `valid_upto`, `isExpired`, `staff_id`, `membership`) VALUES
(1245, '2019-07-18', '2019-04-17', 0, 12131, 3);

-- --------------------------------------------------------

--
-- Table structure for table `gym_goals`
--

DROP TABLE IF EXISTS `gym_goals`;
CREATE TABLE IF NOT EXISTS `gym_goals` (
  `id` int(11) NOT NULL,
  `description` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `description_UNIQUE` (`description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gym_goals`
--

INSERT INTO `gym_goals` (`id`, `description`) VALUES
(5, 'become super saiyyan god'),
(7, 'eat cheese but still loose weight'),
(6, 'gain more muscles than Mortimer Mouse'),
(2, 'gain weight: 5kg, in 3 weeks '),
(4, 'grow 6 packs'),
(3, 'grow 8 packs'),
(1, 'loose weight: 5kg, in 3 weeks ');

-- --------------------------------------------------------

--
-- Table structure for table `gym_member`
--

DROP TABLE IF EXISTS `gym_member`;
CREATE TABLE IF NOT EXISTS `gym_member` (
  `staff_id` int(11) NOT NULL,
  `staff_name` varchar(45) NOT NULL,
  `staff_email` varchar(45) NOT NULL,
  `staff_pay` int(11) NOT NULL,
  `department` varchar(450) NOT NULL,
  `staff_type` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  PRIMARY KEY (`staff_id`,`staff_pay`,`staff_type`),
  UNIQUE KEY `staff_id_UNIQUE` (`staff_id`),
  KEY `fk_gym_member_pay_grade_idx` (`staff_pay`),
  KEY `fk_gym_member_membership_type1_idx` (`staff_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gym_member`
--

INSERT INTO `gym_member` (`staff_id`, `staff_name`, `staff_email`, `staff_pay`, `department`, `staff_type`, `address`) VALUES
(964, 'Sovat bisht', 'sovatbisht67@gmail.com', 15, 'qweqwe', 4, 'RM8 3AH 184 VALENCE WOOD ROAD'),
(12131, 'Himanhsu Bisht', 'himanshubishtxz@gmail.com', 9, 'qweqwe', 2, 'A-1/201, Sector-17, Rohini, Delhl');

-- --------------------------------------------------------

--
-- Table structure for table `individual_gym_goals`
--

DROP TABLE IF EXISTS `individual_gym_goals`;
CREATE TABLE IF NOT EXISTS `individual_gym_goals` (
  `staff_id` int(11) NOT NULL,
  `goal_id` int(11) NOT NULL,
  `id` int(45) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`staff_id`,`goal_id`,`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_gym_member_has_gym_goals_gym_goals1_idx` (`goal_id`),
  KEY `fk_gym_member_has_gym_goals_gym_member1_idx` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `individual_gym_goals`
--

INSERT INTO `individual_gym_goals` (`staff_id`, `goal_id`, `id`) VALUES
(964, 5, 1),
(964, 2, 2),
(12131, 6, 3),
(12131, 3, 4);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `membership_type`
--

DROP TABLE IF EXISTS `membership_type`;
CREATE TABLE IF NOT EXISTS `membership_type` (
  `id` int(11) NOT NULL,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `pay_scale` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

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
-- Table structure for table `staff_role`
--

DROP TABLE IF EXISTS `staff_role`;
CREATE TABLE IF NOT EXISTS `staff_role` (
  `id` int(11) NOT NULL,
  `staff_type_description` varchar(450) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_role`
--

INSERT INTO `staff_role` (`id`, `staff_type_description`) VALUES
(1, 'Professional'),
(2, 'Executive'),
(3, 'Academic'),
(4, 'Services '),
(5, 'Management');

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
(1, '127.0.0.1', 'administrator', '$2y$12$tK2AqosCQ3JFcpNgQJNlXui4tghgdNTSYS/bX1bVc1IddhZP.OFFq', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1554170943, 1, 'Admin', 'istrator', 'ADMIN', '0');

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
-- Constraints for table `gym_card`
--
ALTER TABLE `gym_card`
  ADD CONSTRAINT `fk_gym_card_gym_member1` FOREIGN KEY (`staff_id`) REFERENCES `gym_member` (`staff_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gym_card_membership_type1` FOREIGN KEY (`membership`) REFERENCES `membership_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `gym_member`
--
ALTER TABLE `gym_member`
  ADD CONSTRAINT `fk_gym_member_membership_type1` FOREIGN KEY (`staff_type`) REFERENCES `staff_role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gym_member_pay_grade` FOREIGN KEY (`staff_pay`) REFERENCES `pay_grade` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `individual_gym_goals`
--
ALTER TABLE `individual_gym_goals`
  ADD CONSTRAINT `fk_gym_member_has_gym_goals_gym_goals1` FOREIGN KEY (`goal_id`) REFERENCES `gym_goals` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gym_member_has_gym_goals_gym_member1` FOREIGN KEY (`staff_id`) REFERENCES `gym_member` (`staff_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
