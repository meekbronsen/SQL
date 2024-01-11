INSERT INTO orders( customer_id, order_date, status)
VALUE (
	1,
    "2019-01-02",
    1);
    
-- last_insert_id function is used to get the id of the last auto generated id of an item
INSERT INTO order_items (order_id, product_id, quantity, unit_price)
VALUES
	(LAST_INSERT_ID(), 1, 3, 2.95),
    (LAST_INSERT_ID(), 2, 2, 3.50)
    
	