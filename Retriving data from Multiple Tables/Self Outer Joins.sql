USE sql_hr;
SELECT  e.first_name, m.first_name
FROM employees e
LEFT JOIN employees m
	ON m.employee_id = e.reports_to
ORDER BY e.first_name DESC