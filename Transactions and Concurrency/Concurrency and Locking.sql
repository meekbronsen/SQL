-- Two or more users are trying to access the same data at the same time. (concurrency)
-- When another user is trying to update a transaction over another, the transaction has to wait until the first one is complete.
-- Mysql puts a lock on the row that is being manipulated by a transaction until commit or rollback.

START TRANSACTION;
UPDATE customers
SET points =  points+10
WHERE customer_id = 1;
COMMIT;