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

-- Dumping structure for table northwind.stdent
DROP TABLE IF EXISTS `stdent`;
CREATE TABLE IF NOT EXISTS `stdent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stuname` varchar(45) NOT NULL,
  `stfees` int(11) NOT NULL,
  `fine` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table northwind.stdent: ~4 rows (approximately)
DELETE FROM `stdent`;
/*!40000 ALTER TABLE `stdent` DISABLE KEYS */;
INSERT INTO `stdent` (`id`, `stuname`, `stfees`, `fine`) VALUES
	(1, 'fdd', 45, 45),
	(2, 'dss', 12, 55),
	(3, 'fdfd', 41, 35),
	(4, 'fgvf', 565, 14);
/*!40000 ALTER TABLE `stdent` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
