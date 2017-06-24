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

-- Dumping structure for view northwind.alphabetical list of products
DROP VIEW IF EXISTS `alphabetical list of products`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `alphabetical list of products`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `alphabetical list of products` AS select `products`.`ProductID` AS `ProductID`,`products`.`ProductName` AS `ProductName`,`products`.`SupplierID` AS `SupplierID`,`products`.`CategoryID` AS `CategoryID`,`products`.`QuantityPerUnit` AS `QuantityPerUnit`,`products`.`UnitPrice` AS `UnitPrice`,`products`.`UnitsInStock` AS `UnitsInStock`,`products`.`UnitsOnOrder` AS `UnitsOnOrder`,`products`.`ReorderLevel` AS `ReorderLevel`,`products`.`Discontinued` AS `Discontinued`,`categories`.`CategoryName` AS `CategoryName` from (`categories` join `products` on((`categories`.`CategoryID` = `products`.`CategoryID`))) where (`products`.`Discontinued` = 0);
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
