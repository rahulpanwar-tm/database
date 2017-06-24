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

-- Dumping structure for table northwind.district
DROP TABLE IF EXISTS `district`;
CREATE TABLE IF NOT EXISTS `district` (
  `d_id` int(2) NOT NULL,
  `d_w_id` int(4) NOT NULL,
  `d_ytd` decimal(12,2) DEFAULT NULL,
  `d_tax` decimal(4,4) DEFAULT NULL,
  `d_next_o_id` int(11) DEFAULT NULL,
  `d_name` varchar(10) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `d_street_1` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `d_street_2` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `d_city` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `d_state` char(2) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `d_zip` char(9) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`d_w_id`,`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table northwind.district: ~0 rows (approximately)
DELETE FROM `district`;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
