-- SELECT c.customer_id
-- FROM orders AS o
-- JOIN customers AS c-- combining two tables
	-- ON o.order_id = o.customer_id
USE sql_store;

SELECT *
FROM orders
JOIN customers 
ON orders.customer_id = customers.customer_id