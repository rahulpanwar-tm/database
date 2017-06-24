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

-- Dumping structure for function northwind.producttype
DROP FUNCTION IF EXISTS `producttype`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `producttype`(p_unitprice decimal(10,4)) RETURNS varchar(10) CHARSET latin1
    DETERMINISTIC
BEGIN
    DECLARE lvl varchar(10);
 
    IF p_unitprice > 5 THEN
		SET lvl = 'PLATINUM';
    ELSEIF ( p_unitprice<= 50 AND p_unitprice >= 100) THEN
        SET lvl = 'GOLD';
    ELSEIF p_unitprice < 100 THEN
        SET lvl = 'SILVER';
    END IF;
RETURN lvl;
END//
DELIMITER ;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
