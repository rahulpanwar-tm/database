-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.14-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table northwind.table_name
DROP TABLE IF EXISTS `table_name`;
CREATE TABLE IF NOT EXISTS `table_name` (
  `nam` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `branch` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table northwind.table_name: ~18 rows (approximately)
DELETE FROM `table_name`;
/*!40000 ALTER TABLE `table_name` DISABLE KEYS */;
INSERT INTO `table_name` (`nam`, `username`, `branch`) VALUES
	('sas', 'sdsd', 'sdsd'),
	('sas', 'sdsd', 'sdsd'),
	('sas', 'sdsd', 'sdsd'),
	('sas', 'sdsd', 'sdsd'),
	('sas', 'sdsd', 'sdsd'),
	('sas', 'sdsd', 'sdsd'),
	('sas', 'sdsd', 'sdsd'),
	('sas', 'sdsd', 'sdsd'),
	('sas', 'sdsd', 'sdsd'),
	('sas', 'sdsd', 'sdsd'),
	('sas', 'sdsd', 'sdsd'),
	('sas', 'sdsd', 'sdsd'),
	('sas', 'sdsd', 'sdsd'),
	('sas', 'sdsd', 'sdsd'),
	('sas', 'sdsd', 'sdsd'),
	('sas', 'sdsd', 'sdsd'),
	('sas', 'sdsd', 'sdsd'),
	('sas', 'sdsd', 'sdsd'),
	('sas', 'sdsd', 'sdsd');
/*!40000 ALTER TABLE `table_name` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
