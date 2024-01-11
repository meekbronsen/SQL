-- Since if statement only allows one condition a CASE operator is used
-- like a switch case in other programming languages

SELECT 
    order_id,
    CASE
        WHEN YEAR(order_date) = YEAR(NOW()) THEN "Active"
        WHEN YEAR(order_date) = YEAR(NOW()) -1 THEN "Last year"
        WHERE YEAR(order_date) < YEAR(NOW()) -1 THEN "Archived"
        ELSE "future"
    END AS "category"
FROM orders 