USE sql_hr;
SELECT e.first_name, m.first_name as superior
FROM employees e
JOIN employees m
	ON e.reports_to = m.employee_id 
