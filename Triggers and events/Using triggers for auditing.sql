-- Inorder to log records in an audit table when new changes are made to our database
-- Use payment_after_delete and payment_after_insert for creating the triggers

INSERT INTO payments
VALUES(DEFAULT, 5, 3, CURDATE(), 10, 1)