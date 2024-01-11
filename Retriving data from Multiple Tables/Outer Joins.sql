-- NUll records will be printed irregardless of the condition ON
SELECT c.customer_id, o.order_id
FROM customers c
LEFT JOIN orders o
	ON o.customer_id = c.customer_id
ORDER BY  customer_id