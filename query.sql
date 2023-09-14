--Find the employee with the longest name--
SELECT first_name,
MAX(LENGTH(first_name)) AS 'length' 
FROM employees 
--Find average employee salary--
SELECT ROUND (AVG(salary)) AS 'avg_sal' 
FROM employees 
--Find the number of employees, average, minimum, maximum salary by department--
SELECT department, 
COUNT(*) AS 'employees', 
round(AVG(salary)) AS 'avg_sal', 
MIN(salary) AS 'min_sal', 
MAX(salary) AS 'max_sal'
FROM employees 
GROUP BY department
--Find department where the number of employees is less than specified--
SELECT department, 
COUNT(employee_id) AS 'count' 
FROM employees 
GROUP BY department 
HAVING COUNT(employee_id) < 35 ORDER BY department
--Find the top 3 departments with the largest number of female employees-- 
SELECT department 
FROM employees 
WHERE gender = "F" 
GROUP BY department 
ORDER BY COUNT(employee_id) DESC LIMIT 3
--Find employees who have been working for more than 10 years--
SELECT first_name || ' ' || last_name AS 'Name' 
FROM employees 
WHERE (date('now')-hire_date)>10 
--Find the number of employees by region--
SELECT region, 
COUNT(first_name) AS 'count' 
FROM employees emp 
JOIN regions reg 
ON emp.region_id=reg.region_id 
GROUP BY region
--Find average salary by region--
SELECT region, 
ROUND(AVG(salary)) AS 'avg_sal' 
FROM employees emp 
JOIN regions reg 
ON emp.region_id=reg.region_id 
GROUP BY region




