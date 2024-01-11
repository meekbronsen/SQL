-- Strings can also be used to store numerics like zip codes and phone numbers because the values are not used in mathematical operations.

CHAR(x)    -- for storing fixed length strings like abreviation of states
VARCHAR(x) -- for storing variable string lengths. passwords, usernames, emails, address.
MEDIUMTEXT -- for storing csv strings json objects since its longer.
LONGTEXT   -- for textbooks and years of log files
TINYTEXT
TEXT

-- Use standard length for most  VARCHAR(). Simplifies the maintenance
-- VARCHAR(50)  -- for short strings for usernames and passwords
-- VARCHAR(255) -- for longer strings  like addresses
-- The max length for VARCHAR is 65,535 (64kb), so if something is longer it will be truncated.
-- MEDIUMTEXT which has a max of 16mil (16MB)
-- LONGTEXT which can store upto 4gb of string data
-- TINYTEXT stores upto 255 chars
-- TEXT cans store upto 64KB

-- BYTES
-- english letters          -- use 1byte
-- european && middle east  -- use 2bytes
-- chinese                  -- use 3bytes