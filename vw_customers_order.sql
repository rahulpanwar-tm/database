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

-- Dumping structure for view northwind.vw_customers_order
DROP VIEW IF EXISTS `vw_customers_order`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vw_customers_order`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `vw_customers_order` AS (
	/* give the structre of view */
	SELECT 	
			ord.OrderID,
			ord.CustomerID,
			ord.OrderDate,
			ord.EmployeeID,
			ord.RequiredDate,
			ord.ShippedDate,
			ord.ShipName,
			ord.Freight,
			ord.ShipAddress,
			ord.ShipCity,	
			ord.ShipRegion,
			ord.ShipPostalCode,
			ord.ShipCountry,
			cust.CompanyName,
			cust.ContactName,
			cust.ContactTitle,
			cust.Address,
			cust.City,
			cust.Region,
			cust.PostalCode,
			cust.Country,
			cust.Phone,
			cust.Fax,
			ord_det.ProductID,
			ord_det.UnitPrice,
			ord_det.Quantity,
			ord_det.Discount 
FROM
			orders ord 
	/* apply the join between all of table */
INNER JOIN 
			customers cust 
ON
			ord.CustomerID=cust.CustomerID
INNER JOIN
			orderdetails ord_det
ON 
			ord.OrderID=ord_det.OrderID
	/* apply the where condition value to chack all of tables */
WHERE 
			ord.CustomerID=cust.CustomerID
AND
			ord.OrderID=ord_det.OrderID
										) ;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
