CREATE DEFINER=`root`@`localhost` PROCEDURE `GetSalaryByEmp_No`(
IN emp_no int)
BEGIN
SELECT * 
FROM Salaries
WHERE salary = salary;
END