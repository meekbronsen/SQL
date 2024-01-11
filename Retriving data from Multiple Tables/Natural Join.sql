-- Join tables automatically based on the common columns
-- Can produce unexpected results
USE sql_store;
SELECT o.order_id, c.first_name
FROM orders o
NATURAL JOIN customers c