-- with this isolation level we can only read commited data
SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED;
SELECT points
FROM customers
WHERE customer_id = 1;

-- But what if the data changed by the 2nd session in the midst of our transaction.
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
START TRANSACTION;
SELECT points FROM customers WHERE customer_id = 1;
SELECT points FROM customers WHERE customer_id = 1;
COMMIT;