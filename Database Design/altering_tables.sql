-- NB Do not alter a query in a production environment, always test your query in a test environment then execute in a production environment.
ALTER TABLE customers
    ADD last_name VARCHAR(50) NOT NULL AFTER first_name,
    ADD city  VARCHAR(50),
    MODIFY COLUMN first_name VARCHAR(55) DEFAULT '',
    DROP points
    ;