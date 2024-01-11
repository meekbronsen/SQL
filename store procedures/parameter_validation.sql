-- data validation to ensure that procedure does not store bad data 
-- www.ibm.com sqlstate errors complete list of sqlstate errors codes and their meanings
-- e.g error code 22003 prompts, numeric value out of range
-- SIGNAL SQLSTATE is like throw new Error in js

-- obj is to update invoice with given id
CREATE PROCEDURE make_payment(invoice_id INT, payment_amount DECIMAL(9, 2), payment_date DATE)
BEGIN
    -- validation 
    IF payment_amount < 0 THEN
        SIGNAL SQLSTATE "22003" SET MESSAGE_TEXT = "Invalid payment amount";
    END IF;
    -- updating the data
    UPDATE invoices i
    SET
        i.payment_total =  payment_amount,
        i.payment_date = payment_date
    WHERE i.invoice_id = invoice_id;
END

-- to validate, like to avoid storing negative value in a payment section
-- DECIMAL() is a data type specifier, 9 rep the max total number of digits and 2 is the decimal place