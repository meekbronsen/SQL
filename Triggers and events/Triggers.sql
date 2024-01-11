-- block of sql code that automatically gets  executed before or after an insert, update ,delete statement
-- the NEW keyword returns the row that was just inserted
-- the trigger is triggered by any other table except itself else lead to an infinite loop.

DELIMITER $$
-- Obj this.below to be invoked after an insert statement
DROP TRIGGER IF EXISTS payments_after_insert;

CREATE TRIGGER payments_after_insert
    AFTER INSERT ON payments
    -- BEFORE INSERT ON payments
    -- BEFORE UPDATE ON payments
    -- BEFORE DELETE ON payments
    FOR EACH ROW
    -- FOR EACH ROW fired for each row that is affected
BEGIN
    UPDATE invoices
    SET payment_total = NEW.amount,
        payment_date = NEW.date
    WHERE invoice_id = NEW.invoice_id;
END $$

DELIMITER ;
