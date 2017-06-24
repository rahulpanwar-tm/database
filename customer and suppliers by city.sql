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

-- Dumping structure for view northwind.customer and suppliers by city
DROP VIEW IF EXISTS `customer and suppliers by city`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `customer and suppliers by city`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customer and suppliers by city` AS select `customers`.`City` AS `City`,`customers`.`CompanyName` AS `CompanyName`,`customers`.`ContactName` AS `ContactName`,'Customers' AS `Relationship` from `customers` union select `suppliers`.`City` AS `City`,`suppliers`.`CompanyName` AS `CompanyName`,`suppliers`.`ContactName` AS `ContactName`,'Suppliers' AS `Suppliers` from `suppliers` order by `City`,`CompanyName`;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
