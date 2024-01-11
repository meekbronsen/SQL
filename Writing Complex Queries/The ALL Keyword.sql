-- value refers to all the values return in the brackets.
-- subqueries with all operator
USE sql_invoicing

SELECT *
FROM invoices
WHERE invoice_total > ALL(
    SELECT invoice_total
    FROM invoices
    WHERE client_id = 3
)