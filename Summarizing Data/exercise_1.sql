SELECT
	"first half of 2019" AS data_range,
	SUM(invoice_total) AS total_sales,
    SUM(payment_total) AS total_payments
FROM invoices
WHERE invoice_date BETWEEN "2019-01-01" AND "2019-06-30"
UNION
SELECT
	"second half of 2019" AS data_range,
	SUM(invoice_total) AS total_sales,
    SUM(payment_total) AS total_payments
FROM invoices
WHERE invoice_date BETWEEN "2019-07-01" AND "2019-12-31"


	
    