SELECT 
	c.customer_id, 
    o.order_id
FROM customers c
JOIN orders o
	-- ON o.customer_id = c.customer_id			-- the variables in the codition are the same
    USING (customer_id)
    -- the syntax if there are multiple primary key columns
    USING (order_id, product_id)