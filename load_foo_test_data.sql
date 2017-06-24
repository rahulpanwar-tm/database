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

-- Dumping structure for procedure northwind.load_foo_test_data
DROP PROCEDURE IF EXISTS `load_foo_test_data`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `load_foo_test_data`()
begin
/* declare a variable int type n to store all row count value */
declare n int default 10; 
/* decleare a another variable to inital vale for while loop */
declare i int default 0;
/* store the number of row value in n */
SELECT COUNT(*) into n FROM customers ;
/* create a new valrsble for store min orderid */
SET @x=(select Min(OrderID) from orders );
/* chack the loop while i<n */
while i < n do
/* decleare a new variable for cust id and set it with the help of orderid */
SET @y=(select CustomerID from orders where OrderID=@x);
/* insert data into table using diffrent diffrent select query */
INSERT INTO Custinfo ( CustId, CustName, All_Order)
values((select CustomerID from orders where OrderID=@x),(select CompanyName from customers where CustomerID=@y),
(select GROUP_CONCAT(OrderID) OrderID from orders where CustomerID=@y GROUP BY CustomerID));
/* set the increement into orderid */
set @x=@x+1;
/* set the increment into row count value  */
set i=i+1;
/* end the while loop  after read all row data*/
end while;
 /* commit program */
commit;
end//
DELIMITER ;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
