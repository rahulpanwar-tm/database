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

-- Dumping structure for procedure northwind.CustOrderHist
DROP PROCEDURE IF EXISTS `CustOrderHist`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `CustOrderHist`(in AtCustomerID varchar(5))
BEGIN

SELECT ProductName,
    SUM(Quantity) as TOTAL
FROM Products P,
     `Order Details` OD,
     Orders O,
     Customers C
WHERE C.CustomerID = AtCustomerID
  AND C.CustomerID = O.CustomerID
  AND O.OrderID = OD.OrderID
  AND OD.ProductID = P.ProductID
GROUP BY ProductName;

END//
DELIMITER ;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
