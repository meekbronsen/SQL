-- dev.mysql.com to see the full list of functions

SELECT
    ROUND(5.7),             -- round off
    ROUND(5.7, 1),          -- round to 1.dp
    TRUNCATE(3.1415, 2),    -- removes excess dp
    CEILING(5.2),           -- round up
    FLOOR(6.3),             -- round down
    ABS(-1.4),              -- always returns positive value
    RAND()                  -- the classic random value, just like js 0 - 1   
    