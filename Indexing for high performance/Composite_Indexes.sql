-- Since having multiple filters, Only the first one will be selected thus MySQL will do half the job.

CREATE INDEX idx_state_points ON customers (state, points);
EXPLAIN SELECT customer_id FROM customers WHERE state = "CA" AND points > 1000;

-- NB In MySQL a column can have a max of 16 columns

-- Dropping Indexes
DROP INDEX idx_state ON customers;
