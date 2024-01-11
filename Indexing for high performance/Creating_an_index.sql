EXPLAIN SELECT customer_id FROM customers WHERE state = "CA";  -- explains how the query was executed
-- rows -1010 -- returns the number of rows that were scanned

-- placing an index to speed up the query
CREATE INDEX idx_state ON customers (state);

-- the key column shows the index that was used;