USE sql_store_2;
DROP TABLE IF EXISTS customers;
CREATE TABLE IF NOT EXISTS orders
(
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
        -- the foreign key 
    FOREIGN KEY fk_orders_customers (customer_id)
        -- where the primary key is coming from
        REFERENCES customers (customer_id)
        -- constraints
        ON UPDATE CASCADE -- / SET NULL / NO ACTION
        ON DELETE NO ACTION --/ CASCADE / SET NULL / RESTRICT / NO ACTION
)