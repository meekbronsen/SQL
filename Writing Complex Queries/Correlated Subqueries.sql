-- In Corelated Sub, the subquery as a corelation with the outer query

-- pseudo code below

-- for each employee
--      caluculate the avg salary for employee.office
--      return the employee if salary > avg

SELECT *
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE office_id = e.office_id
)
