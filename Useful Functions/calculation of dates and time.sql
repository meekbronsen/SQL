
SELECT DATE_ADD(NOW(), INTERVAL 1 DAY)    -- add 1 day to the current date. Time is retained
SELECT DATE_ADD(NOW(), INTERVAL 1 YEAR)   -- add 1 year to the current date

-- subtracting
SELECT DATE_ADD(NOW(), INTERVAL -1 YEAR)  -- subtract 1 year from the current date
SELECT DATE_SUB(NOW(), INTERVAL 1 YEAR)   -- subtract 1 year from the current date

SELECT DATEDIFF(NOW(), "1999-07-31")      -- returns the difference in days
SELECT TIME_TO_SEC("10:40")               -- the number of seconds elapsed since midnight