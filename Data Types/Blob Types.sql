-- used to store large amounts of binary data like images, videos, pdfs
-- It is better to keep your files out of your databases because rel databases are designed to deal with structured relational data
TINYBLOB   -- store upto 255bytes
BLOB       -- store data of upto 65KB 
MEDIUMBLOB -- store upto 16MB
LONGBLOB   -- store upto 4GB of binary data


-- PROBLEMS WITH STORING BINARY DATA TYPES IN YOUR SQL DATABASE 
-- Increased database size
-- Slower backups
-- Performance problems
-- More code to read and write images