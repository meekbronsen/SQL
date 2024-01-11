
EXPLAIN SELECT customer_id
    FROM customers
    WHERE state = 'CA' OR points > 1000
-- to
EXPLAIN 
    SELECT customer_id 
    FROM customers 
    WHERE state = "CA"
    UNION
    SELECT customer_id 
    FROM customers
    WHERE points > 1000;

EXPLAIN SELECT customer_id  
    FROM customers
    WHERE points + 10 > 2010;
-- to
EXPLAIN SELECT customer_id  
    FROM customers
    WHERE points  > 2010;

-- If you want MySQL to  utilize your index your should Isolate your columns.