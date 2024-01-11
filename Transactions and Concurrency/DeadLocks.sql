-- A deadlock happens whet different transaction can not complete, because each transaction holds lock that the other needs.
-- So the each transaction keep waiting for each other forever.


-- In the scenario below 1st session is waiting for 2nd session to be done with orders update and 2nd session waiting for
-- 1st session to be done with customers update.
-- So what will happend is the first session will be stopped and rolled back 

-- first session
START TRANSACTION;
UPDATE customers SET state = "VA" WHERE customer_id = 1;
UPDATE orders SET status = 1 WHERE order_id = 1;

-- Second Session
START TRANSACTION;
UPDATE orders SET status = 1 WHERE order_id = 1;
UPDATE customers SET state = "VA" WHERE customer_id = 1;

-- dead locks are not much of an issue unless they happen frequently
-- write your app in a way that it can reissue a transaction if it gets rolled back because of a deadlock or notify the user of the deadlock
-- Try keep your transactions small and short in duration to avoid collision with other transactions
