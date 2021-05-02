CREATE DEFINER=`root`@`localhost` PROCEDURE `getInfoByTitle`(
IN empTitle VARCHAR(255)
)
BEGIN
SELECT e.first_Name, e.last_name, s.salary, t.title
	from employees e
	inner join s.salaries on e.emp_no = s.emp_no
	inner join t.title on s.emp_no = t.emp_no
	where t.title = empTitle;
END