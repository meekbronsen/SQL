-- unrecommended means of joining tables
SELECT *
FROM customers c, orders o
WHERE o.customer_id = c.customer_id