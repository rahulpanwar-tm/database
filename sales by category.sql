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

-- Dumping structure for view northwind.sales by category
DROP VIEW IF EXISTS `sales by category`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `sales by category`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sales by category` AS select `northwind`.`categories`.`CategoryID` AS `CategoryID`,`northwind`.`categories`.`CategoryName` AS `CategoryName`,`northwind`.`products`.`ProductName` AS `ProductName`,sum(`order details extended`.`ExtendedPrice`) AS `ProductSales` from (((`categories` join `products` on((`northwind`.`categories`.`CategoryID` = `northwind`.`products`.`CategoryID`))) join `order details extended` on((`northwind`.`products`.`ProductID` = `order details extended`.`ProductID`))) join `orders` on((`northwind`.`orders`.`OrderID` = `order details extended`.`OrderID`))) where (`northwind`.`orders`.`OrderDate` between '1997-01-01' and '1997-12-31') group by `northwind`.`categories`.`CategoryID`,`northwind`.`categories`.`CategoryName`,`northwind`.`products`.`ProductName`;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
