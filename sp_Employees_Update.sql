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

-- Dumping structure for procedure northwind.sp_Employees_Update
DROP PROCEDURE IF EXISTS `sp_Employees_Update`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Employees_Update`(
In AtEmployeeID INTEGER,
In AtLastName VARCHAR(20),
In AtFirstName VARCHAR(10),
In AtTitle VARCHAR(30),
In AtTitleOfCourtesy VARCHAR(25),
In AtBirthDate DateTime,
In AtHireDate DateTime,
In AtAddress VARCHAR(60),
In AtCity VARCHAR(15),
In AtRegion VARCHAR(15),
In AtPostalCode VARCHAR(10),
In AtCountry VARCHAR(15),
In AtHomePhone VARCHAR(24),
In AtExtension VARCHAR(4),
In AtPhoto LONGBLOB,
In AtNotes MEDIUMTEXT,
In AtReportsTo INTEGER,
IN AtPhotoPath VARCHAR(255)
)
BEGIN
Update Employees
	Set
		LastName = AtLastName,
		FirstName = AtFirstName,
		Title = AtTitle,
		TitleOfCourtesy = AtTitleOfCourtesy,
		BirthDate = AtBirthDate,
		HireDate = AtHireDate,
		Address = AtAddress,
		City = AtCity,
		Region = AtRegion,
		PostalCode = AtPostalCode,
		Country = AtCountry,
		HomePhone = AtHomePhone,
		Extension = AtExtension,
		Photo = AtPhoto,
		Notes = AtNotes,
		ReportsTo = AtReportsTo,
    PhotoPath = AtPhotoPath
	Where
		EmployeeID = AtEmployeeID;

END//
DELIMITER ;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
