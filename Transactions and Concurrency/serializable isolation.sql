-- Highest level of isolation and solves all concurrency problems
-- make the staments to executed in their arrangement sequence
-- while we are still in our transaction and another transactions is updating ours, our transaction will wait for it to finish first inorder to continue
-- It may slow us down so use it when really necessary 

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

START TRANSACTION;
SELECT * FROM customers WHERE state = "VA";
SELECT points FROM customers WHERE customer_id = 1;
COMMIT;