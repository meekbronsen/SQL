-- Marking parameters as output parameters with the out keyword
-- User defines variables will be generated
DROP PROCEDURE IF EXISTS get_unpaid_invoices
DELIMITER $$
CREATE PROCEDURE get_unpaid_invoices(client_id INT, OUT invoices_count INT, OUT invoices_total DECIMAL(9, 2))
BEGIN
    SELECT COUNT(*), SUM(invoice_total) INTO invoices_count , invoices_total
    FROM invoices i
    WHERE i.client_id = client_id AND payment_total = 0;
END $$

-- resultant output
set @invoices_count = 0;
set @invoices_total = 0;
call sql_invoicing.get_unpaid_invoices(3, @invoices_count, @invoices_total);
select @invoices_count, @invoices_total;

