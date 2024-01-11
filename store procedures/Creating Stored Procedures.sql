-- Using delimiter for sql to execute all the statements as one unit

DELIMITER $$
CREATE PROCEDURE get_clients()
BEGIN
    SELECT * FROM clients;
END $$

DELIMITER ; -- changing the default delimiter back to a semicolon

-- almost like a function
-- it can be called 
-- calling stored procedure is something that can be stored in the application code