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

-- Dumping structure for view northwind.orders qry
DROP VIEW IF EXISTS `orders qry`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `orders qry`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `orders qry` AS select `orders`.`OrderID` AS `OrderID`,`orders`.`CustomerID` AS `CustomerID`,`orders`.`EmployeeID` AS `EmployeeID`,`orders`.`OrderDate` AS `OrderDate`,`orders`.`RequiredDate` AS `RequiredDate`,`orders`.`ShippedDate` AS `ShippedDate`,`orders`.`ShipVia` AS `ShipVia`,`orders`.`Freight` AS `Freight`,`orders`.`ShipName` AS `ShipName`,`orders`.`ShipAddress` AS `ShipAddress`,`orders`.`ShipCity` AS `ShipCity`,`orders`.`ShipRegion` AS `ShipRegion`,`orders`.`ShipPostalCode` AS `ShipPostalCode`,`orders`.`ShipCountry` AS `ShipCountry`,`customers`.`CompanyName` AS `CompanyName`,`customers`.`Address` AS `Address`,`customers`.`City` AS `City`,`customers`.`Region` AS `Region`,`customers`.`PostalCode` AS `PostalCode`,`customers`.`Country` AS `Country` from (`customers` join `orders` on((`customers`.`CustomerID` = `orders`.`CustomerID`)));
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
