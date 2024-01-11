-- Can be used to combine results for multiple queries

-- SELECT order_id, order_date, "ACTIVE" AS status
-- FROM orders
-- WHERE order_date >= "2019-01-01"
-- UNION
-- SELECT order_id, order_date, "archived" AS status
-- FROM orders
-- WHERE order_date < "2019-01-01"

-- Another example
SELECT first_name
FROM customers
UNION
SELECT name
FROM shippers
-- NB the number of select columns should be equall
-- the order matters