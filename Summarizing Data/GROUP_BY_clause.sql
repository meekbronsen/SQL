-- NB you can't use alias name in group by

 SELECT
 	client_id,
    SUM(invoice_total) AS total_sales -- Using group, sum is calculated according to client id
 FROM invoices
 WHERE invoice_date >="2019-07-01"
 GROUP BY 
 ORDER BY total_sales DESC

-- GROUPING USING MULTIPLE COLUMNS
SELECT
	state,
    city,
    SUM(invoice_total) AS total_sales 
FROM invoices
JOIN clients USING(client_id)
GROUP BY state, city   -- combines state + city and sums up
