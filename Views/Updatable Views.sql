-- if the view does not have the below keywords
    -- DISTINCT
    -- Aggregate functions
    -- GROUP by
    -- UNION
-- it is referred to as an updatable view

-- The below query has none of the above mentioned  to create a view
CREATE OR REPLACE VIEW invoice_balance as
SELECT
    invoice_id,
    number,
    client_id,
    invoice_total,
    payment_total,
    invoice_total - payment_total as balance,
    invoice_date,
    due_date,
    payment_date
FROM invoices
WHERE (invoice_total - payment_total) > 0;

-- Updating the above view
DELETE FROM invoice_balance
WHERE invoice_id = 1

UPDATE invoice_balance
SET due_date = DATE_ADD(due_date, INTERVAL 2 DAY)
WHERE invoice_id = 2