CREATE DEFINER=`root`@`localhost` PROCEDURE `OverValued`(
IN salary int,
OUT Staff int)
BEGIN
SELECT COUNT (salary)
INTO staff
FROM salary
WHERE salary >= 50000;
END