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

-- Dumping structure for procedure northwind.repeat_loop_proc
DROP PROCEDURE IF EXISTS `repeat_loop_proc`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `repeat_loop_proc`()
Begin
set @Min := 1;
select @max:= max(id) from Test_Tables;

while (@min <= @max)
Do
/*Set Table name from Test_Tables = to @min*/
Select @Table_names = table_names from Test_Table_Counts where id = @min;


SET @sql:=CONCAT('insert into Test_Table_Counts (Test_Table_Names,Table_Counts)
select', @Table_names, ',Count(*) from ', @Table_names);
PREPARE dynamic_statement FROM @sql;
EXECUTE dynamic_statement;
DEALLOCATE PREPARE dynamic_statement;
set @min = @min + 1;

end while;
end//
DELIMITER ;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
