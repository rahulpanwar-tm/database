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

-- Dumping structure for table northwind.employeeterritories
DROP TABLE IF EXISTS `employeeterritories`;
CREATE TABLE IF NOT EXISTS `employeeterritories` (
  `EmployeeID` int(11) NOT NULL,
  `TerritoryID` varchar(20) NOT NULL,
  PRIMARY KEY (`EmployeeID`,`TerritoryID`),
  KEY `FK_EmployeeTerritories_Territories` (`TerritoryID`),
  CONSTRAINT `FK_EmployeeTerritories_Employees` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`),
  CONSTRAINT `FK_EmployeeTerritories_Territories` FOREIGN KEY (`TerritoryID`) REFERENCES `territories` (`TerritoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table northwind.employeeterritories: ~49 rows (approximately)
DELETE FROM `employeeterritories`;
/*!40000 ALTER TABLE `employeeterritories` DISABLE KEYS */;
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(1, '06897'),
	(1, '19713'),
	(2, '01581'),
	(2, '01730'),
	(2, '01833'),
	(2, '02116'),
	(2, '02139'),
	(2, '02184'),
	(2, '40222'),
	(3, '30346'),
	(3, '31406'),
	(3, '32859'),
	(3, '33607'),
	(4, '20852'),
	(4, '27403'),
	(4, '27511'),
	(5, '02903'),
	(5, '07960'),
	(5, '08837'),
	(5, '10019'),
	(5, '10038'),
	(5, '11747'),
	(5, '14450'),
	(6, '85014'),
	(6, '85251'),
	(6, '98004'),
	(6, '98052'),
	(6, '98104'),
	(7, '60179'),
	(7, '60601'),
	(7, '80202'),
	(7, '80909'),
	(7, '90405'),
	(7, '94025'),
	(7, '94105'),
	(7, '95008'),
	(7, '95054'),
	(7, '95060'),
	(8, '19428'),
	(8, '44122'),
	(8, '45839'),
	(8, '53404'),
	(9, '03049'),
	(9, '03801'),
	(9, '48075'),
	(9, '48084'),
	(9, '48304'),
	(9, '55113'),
	(9, '55439');
/*!40000 ALTER TABLE `employeeterritories` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
