-- when updating a row or a column through a view, some of the data may disappear

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
WHERE (invoice_total - payment_total) > 0
WITH CHECK OPTION
-- with chech option 
-- if you try to modify a row in such that it will no longer be included in the view you'll get an error preventing the update