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

-- Dumping structure for table northwind.new_order
DROP TABLE IF EXISTS `new_order`;
CREATE TABLE IF NOT EXISTS `new_order` (
  `no_w_id` int(11) NOT NULL,
  `no_d_id` int(11) NOT NULL,
  `no_o_id` int(11) NOT NULL,
  PRIMARY KEY (`no_w_id`,`no_d_id`,`no_o_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table northwind.new_order: ~0 rows (approximately)
DELETE FROM `new_order`;
/*!40000 ALTER TABLE `new_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `new_order` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
