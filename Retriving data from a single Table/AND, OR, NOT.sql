SELECT 
    *
FROM
    customers
WHERE 
	-- birth_date > "1990-01-01" AND points > 1000
	-- birth_date > "1990-01-01" OR points > 1000
    
-- the AND operator is always excuted first before OR. We can use parenthesis to change the order
    -- birth_date > "1990-01-01" OR points > 1000 AND state = 'VA'
	-- (birth_date > "1990-01-01" OR points > 1000 )AND state = 'VA'
    
-- the NOT operator
WHERE NOT state = 'VA' AND points < 1000
WHERE NOT (state != "VA" AND points > 1000)
