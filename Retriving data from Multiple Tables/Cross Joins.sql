-- every record in the first table joined with every record in the second table
SELECT c.first_name as customer, p.name as product
FROM customers c
JOIN products p
ORDER BY c.first_name