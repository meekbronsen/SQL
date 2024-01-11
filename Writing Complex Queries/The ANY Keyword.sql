-- Subqueries with any operator
-- ANY / SOME
-- select client id who have atleast 2 invoices
SELECT *
FROM clients
WHERE cliend_id = ANY(
    SELECT client_id
    FROM invoices
    GROUP BY client_id
    HAVING COUNT(invoice_total) >= 2
)