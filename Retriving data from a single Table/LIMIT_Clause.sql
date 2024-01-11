-- seems to limit the number of rows coming from the output
SELECT *
FROM customers
-- LIMIT 3
-- LIMIT 2, 3 -- skip the first 2, pick the next 3
ORDER BY points DESC
LIMIT 3