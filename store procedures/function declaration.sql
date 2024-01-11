-- unlike stored procedures, functions return only one value
-- CREATE FUNCTION get_risk_factor( client_id INT)
-- RETURN INTEGER      -- specifies the type of value the function returns 
-- DETERMINISTIC       -- every msql function should have atleast 1 attribute
--                     --  deterministic returns the same value for the same input

-- READS SQL DATA      -- select statement present in the function
-- MODIFIES SQL DATA   -- insert delete update 
--  -- both the read and modify can be used on the same function
-- BEGIN
-- RETURN 1;
-- END

CREATE FUNCTION get_risk_factor( client_id INT)
RETURN INTEGER 
READS SQL DATA 
BEGIN
    DECLARE risk_factor DECIMAL(9, 2) DEFAULT 0;
    DECLARE invoices_total DECIMAL(9, 2);
    DECLARE invoices_count INT;

    SELECT COUNT(*), SUM(invoice_total) INTO invoices_count, invoices_total 
    FROM invoices i
    WHERE i.client_id = client_id;

    SET risk_factor = invoices_total / invoices_count * 5;
    RETURN risk_factor;
END

-- After declaration the function can be used as builtin sql functions
SELECT client_id, name, get_risk_factor(client_id)
FROM invoices