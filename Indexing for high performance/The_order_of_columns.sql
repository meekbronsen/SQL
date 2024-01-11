-- Rule 1 Put most frequently used columns first
-- Rule 3 Put the columns with a higher cardinality first
        -- The Number of unique values in the index
        -- Take your queries into account before executing this rule

EXPLAIN SELECT customer_id
FROM customers
WHERE state = "CA" AND last_name LIKE 'A%';

CREATE INDEX idx_lastname_state ON customers (last_name, state);


--  Forcing an index to be used
EXPLAIN SELECT customer_id
FROM customers
USE INDEX (idx_lastname_state)
WHERE state = "CA" AND last_name LIKE 'A%';