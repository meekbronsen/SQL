-- Use dev.mysql.com to see types of privileges

-- App
CREATE USER vidly_app IDENTIFIED BY '1234';
GRANT SELECT, INSERT, UPDATE, DELETE, EXECUTE ON sql_store.* /* OR sql_store.customers*/ TO vidly_app@localhost

-- admin
GRANT ALL ON sql_store.* TO john@localhost;
GRANT ALL ON *.* /* all databases and their tables */ sql_invoicing.* TO john@localhost;
