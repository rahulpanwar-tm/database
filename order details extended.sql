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

-- Dumping structure for view northwind.order details extended
DROP VIEW IF EXISTS `order details extended`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `order details extended`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `order details extended` AS select `northwind`.`order details`.`OrderID` AS `OrderID`,`northwind`.`order details`.`ProductID` AS `ProductID`,`northwind`.`products`.`ProductName` AS `ProductName`,`northwind`.`order details`.`UnitPrice` AS `UnitPrice`,`northwind`.`order details`.`Quantity` AS `Quantity`,`northwind`.`order details`.`Discount` AS `Discount`,((((`northwind`.`order details`.`UnitPrice` * `northwind`.`order details`.`Quantity`) * (1 - `northwind`.`order details`.`Discount`)) / 100) * 100) AS `ExtendedPrice` from (`products` join `order details` on((`northwind`.`products`.`ProductID` = `northwind`.`order details`.`ProductID`)));
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
