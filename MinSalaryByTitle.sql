CREATE DEFINER=`root`@`localhost` PROCEDURE `minSalaryByTitle`(
IN empTitle VARCHAR(255),
OUT MinSalary Int
)
BEGIN
SELECT min(s.salary)
	INTO minSalary
	From employees e
	Inner Join salaries s where s.emp_no = e.emp_no 
	Group BY t.title
	HAVING t.title = empTitle; 
END