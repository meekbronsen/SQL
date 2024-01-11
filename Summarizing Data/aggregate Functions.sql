#queries that summarize data
-- aggregate meaning hurdled data

SELECT 
	MAX(invoice_total),
    MIN(invoice_total),
    AVG(invoice_total),
    SUM(invoice_total),
    COUNT(DISTINCT client_id )
    -- COUNT(*) AS "count all records"
FROM invoices
WHERE invoice_date > "2019-07-01"