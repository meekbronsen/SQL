-- variables used when calling procedures that have output parameters

-- This is a userdefined or session variable SET @invoices_count = 0;

-- Using local variables shown below. They are only local to a procedure
CREATE PROCEDURE get_risk_factor()
BEGIN
    DECLARE risk_factor DECIMAL(9, 2) DEFAULT 0;
    DECLARE invoices_total DECIMAL(9, 2);
    DECLARE invoices_count INT;

    SELECT COUNT(*), SUM(invoice_total) INTO invoices_count, invoices_total 
    FROM invoices;

    SET risk_factor = invoices_total / invoices_count * 5;
    
    SELECT risk_factor;
END

-- Interpretation of the above
-- function getRiskFactor(){
--     let riskFactor;
--     let invoiceTotal;
--     let invoicesCount;

--     riskFactor = invoiceTotal / invoicesCount * 5
--     return riskFactor
-- }