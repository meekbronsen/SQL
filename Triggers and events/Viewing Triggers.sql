-- NB in my sql there is no way to visually see the triggers created

SHOW TRIGGERS                           -- but we can use  to view all triggers in the current database
SHOW TRIGGERS LIKE "payments%"          -- triggers associated with the payments table

-- table_after/before_insert