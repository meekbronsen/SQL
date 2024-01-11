-- Having clause is like where but for compound data
SELECT 
	client_id,
    SUM(invoice_total) AS total_sales,
    COUNT(invoice_total) AS number_of_invoices
FROM invoices
GROUP BY client_id
-- HAVING SUM(invoice_total)
HAVING total_sales > 500 AND number_of_invoices
