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

-- Dumping structure for view northwind.product sales for 1997
DROP VIEW IF EXISTS `product sales for 1997`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `product sales for 1997`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product sales for 1997` AS select `northwind`.`categories`.`CategoryName` AS `CategoryName`,`northwind`.`products`.`ProductName` AS `ProductName`,sum(((((`northwind`.`order details`.`UnitPrice` * `northwind`.`order details`.`Quantity`) * (1 - `northwind`.`order details`.`Discount`)) / 100) * 100)) AS `ProductSales` from (((`categories` join `products` on((`northwind`.`categories`.`CategoryID` = `northwind`.`products`.`CategoryID`))) join `order details` on((`northwind`.`products`.`ProductID` = `northwind`.`order details`.`ProductID`))) join `orders` on((`northwind`.`orders`.`OrderID` = `northwind`.`order details`.`OrderID`))) where (`northwind`.`orders`.`ShippedDate` between '1997-01-01' and '1997-12-31') group by `northwind`.`categories`.`CategoryName`,`northwind`.`products`.`ProductName`;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
