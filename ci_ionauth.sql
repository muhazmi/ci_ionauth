-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.14 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table ci_ionauth.login_attempts
CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table ci_ionauth.login_attempts: ~0 rows (approximately)
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;

-- Dumping structure for table ci_ionauth.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `alamat` text,
  `usertype` char(10) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` datetime DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table ci_ionauth.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `nama`, `username`, `password`, `email`, `phone`, `alamat`, `usertype`, `ip_address`, `salt`, `active`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `last_login`, `created_on`) VALUES
	(1, 'Azmi Cole Jr', 'azmicolejr', '$2y$08$784lu0koUUM3bP2rw7TByey44mNS6ju4ksHgluPwiNF2QK6E3v26S', 'azmi2793@gmail.com', '081228289766', '', 'superadmin', '127.0.0.1', '', 1, '', '8h0.P1tqx8HiRyDvwCGpfu00362d152e9a037a75', '0000-00-00 00:00:00', '79X4VtxEkwElLIF6ZQTtJu', '2016-11-15 12:46:22', '0000-00-00 00:00:00'),
	(2, 'Administrator', 'admin', '$2y$08$TNEXjcI7xK2leTyGgrrrNOcZXr2b52.ajUildu5sya.vG4P/JXWbC', 'admin@gmail.com', '082414214', '', 'admin', '::1', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2016-11-15 12:45:41');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table ci_ionauth.users_group
CREATE TABLE IF NOT EXISTS `users_group` (
  `id_group` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL,
  PRIMARY KEY (`id_group`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table ci_ionauth.users_group: ~2 rows (approximately)
/*!40000 ALTER TABLE `users_group` DISABLE KEYS */;
INSERT INTO `users_group` (`id_group`, `name`) VALUES
	(1, 'superadmin'),
	(2, 'admin');
/*!40000 ALTER TABLE `users_group` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
