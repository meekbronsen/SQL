-- creating a relationship after adding a table
ALTER TABLE orders
    ADD PRIMARY KEY (order_id), -- add or drop a primary key
    DROP PRIMARY KEY,
    DROP FOREIGN KEY fk_orders_customers;
    ADD FOREIGN KEY fk_orders_customers (customer_id)
        REFERENCES custommers (customer_id )
        ON UPDATE CASCADE
        ON DELETE NO ACTION