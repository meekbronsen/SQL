SELECT
    order_id,
    order_date,
    IF(
        YEAR(order_date) = YEAR(NOW()), -- condition
        "active",                       -- if execution
        "archived"                      -- else
    ) as category
FROM orders

IF state IS NULL THEN
    SELECT * FROM clients;
    ELSE 
        SELECT * FROM clients c
        WHERE c.state = state;
    END IF;

IF payment_amount < 0 THEN
        SIGNAL SQLSTATE "22003" SET MESSAGE_TEXT = "Invalid payment amount";
    END IF;