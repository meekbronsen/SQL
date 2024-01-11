-- views don't store data they just view filtered data

CREATE VIEW sales_by_client
SELECT 
    c.client_id,
    c.name,
    SUM(invoice_total) AS total_sales
FROM clients c
JOIN invoices i USING (client_id)
GROUP BY client_id, name

CREATE VIEW clients_balance as
SELECT 
    client_id,
    name,
    SUM(i.payment_total) - SUM(i.invoice_total) as balance
FROM clients c
JOIN invoices i USING(client_id)
GROUP BY client_id
ORDER BY  balance   
