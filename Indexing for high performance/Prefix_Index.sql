-- This can be done with string indexes
-- using only the first few chars to uniquely identify each customer
-- last_name(20) specify the number of chars you wanna include in the index. Optional for CHAR AND VARCHAR, but cumpulsory for text and blob.

CREATE INDEX idx_lastname ON customers (last_name(20))
-- Use a count that is enough to uniquely identify data.
-- You could make an estimation of what number of characters to use