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

-- Dumping structure for table northwind.customer
DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `c_id` int(5) NOT NULL,
  `c_d_id` int(2) NOT NULL,
  `c_w_id` int(4) NOT NULL,
  `c_first` varchar(16) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `c_middle` char(2) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `c_last` varchar(16) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `c_street_1` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `c_street_2` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `c_city` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `c_state` char(2) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `c_zip` char(9) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `c_phone` char(16) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `c_since` datetime DEFAULT NULL,
  `c_credit` char(2) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `c_credit_lim` decimal(12,2) DEFAULT NULL,
  `c_discount` decimal(4,4) DEFAULT NULL,
  `c_balance` decimal(12,2) DEFAULT NULL,
  `c_ytd_payment` decimal(12,2) DEFAULT NULL,
  `c_payment_cnt` int(8) DEFAULT NULL,
  `c_delivery_cnt` int(8) DEFAULT NULL,
  `c_data` varchar(500) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`c_w_id`,`c_d_id`,`c_id`),
  KEY `c_w_id` (`c_w_id`,`c_d_id`,`c_last`,`c_first`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table northwind.customer: ~0 rows (approximately)
DELETE FROM `customer`;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
