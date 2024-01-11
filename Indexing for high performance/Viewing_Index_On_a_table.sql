SHOW INDEXES IN customers;-- Viewing the created index in a table

-- The clustered Index is one created for the primary key column, Created by default.
-- collation refers to how the index is sorted: A - Ascending , B - Descending order.

ANALYZE TABLE customers;

-- MySQL automaticaly creates indexes on fk as secondary indexes