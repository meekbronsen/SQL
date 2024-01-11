-- Comparison Operators
-- > greater than
-- < less than
-- <= less or equal to
-- != or <> not equal to 
-- = the equality operator

SELECT 
    *
FROM
    customers
 WHERE points > 3000
 WHERE state = "VA" -- VA is a string
 WHERE state != "va" 
WHERE birth_date > '1990-01-01'