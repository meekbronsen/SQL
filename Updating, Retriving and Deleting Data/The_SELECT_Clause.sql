-- the order of the select arguments matter in output
-- arithmetic points + 10 we also have -,/,*,%. BODMAS applies
-- use AS to change the name of the column
-- use a quote if the names have space between them
SELECT 
	last_name, 
    first_name,
	points, 
	(points + 10) * 100 AS discount_factor
FROM customers
-- with the distinct keyword displays one instance of the value
SELECT DISTINCT state
FROM customers