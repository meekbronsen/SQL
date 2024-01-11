-- If one of the statements in the transaction fails and the transaction is rolled back.

START TRANSACTION;

INSERT INTO orders (customer_id, order_date, status)
VALUES( 1, "2019-01-01", 1);

INSERT INTO order_items
VALUES(LAST_INSERT_ID(), 1, 1, 1);

COMMIT; -- use ROLLBACK; to manully rollback

-- Whenever we execute a single statement mysql puts the statement in a transaction and commits it if the statement doesn't raise an error.
-- This is made available using the autocommit variable. if a statement does not raise an error mysql commits it.