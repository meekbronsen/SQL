-- Creating table from another

CREATE TABLE archived_orders AS SELECT * FROM orders;
-- but with the above method the new table will not have a PK and AI set
-- SELECT is a subquery for create table function

-- COPY rows from orders into new table
INSERT INTO archived_orders
SELECT *
FROM orders
WHERE order_date < "2019-01-01"