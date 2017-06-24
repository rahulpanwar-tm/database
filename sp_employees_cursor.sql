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

-- Dumping structure for procedure northwind.sp_employees_cursor
DROP PROCEDURE IF EXISTS `sp_employees_cursor`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_employees_cursor`(IN city_in VARCHAR(15))
BEGIN
  DECLARE name_val VARCHAR(10);
  DECLARE surname_val VARCHAR(10);
  DECLARE photopath_val VARCHAR(255);

  DECLARE no_more_rows BOOLEAN;

  DECLARE fetch_status INT DEFAULT 0;

  DECLARE employees_cur CURSOR FOR SELECT firstname, lastname,photopath FROM employees WHERE city = city_in;

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET no_more_rows = TRUE;

  DROP TABLE IF EXISTS atpeople;
  CREATE TABLE atpeople(
    FirstName VARCHAR(10),
    LastName VARCHAR(20),
    PhotoPath VARCHAR(255)
  );


  OPEN employees_cur;
  select FOUND_ROWS() into fetch_status;


  the_loop: LOOP

    FETCH  employees_cur  INTO   name_val,surname_val,photopath_val;


    IF no_more_rows THEN
       CLOSE employees_cur;
       LEAVE the_loop;
    END IF;


    INSERT INTO atpeople SELECT  name_val,surname_val,photopath_val;

  END LOOP the_loop;

  SELECT * FROM atpeople;
  DROP TABLE atpeople;

END//
DELIMITER ;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
