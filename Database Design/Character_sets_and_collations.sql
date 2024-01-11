SHOW CHARSET -- shows the current charset support in MySQL
-- collation rules that determine how the characters in a given language are sorted
-- _ci Case Insensitive treats both upper and lower as the same when it comes to sorting
-- Maxlen the maxlent for the utf-8 charset is 3bytes. MySQL reserves 3bytes when storing each character.
-- for eng MySQL uses 1byte,for European languages 2bytes, for Asian languages 3bytes.
-- rarely, you may want to change your charset to reduce the database size 

-- Changing CharSet
-- Visual use the table editing

-- Using SQL
CREATE DATABASE db_name
    CHARACTER SET latin1

ALTER DATABASE db_name
    CHARACTER SET latin1

CREATE TABLE db_name
(

)
    CHARACTER SET latin1

CREATE TABLE IF NOT EXISTS customers(
    first_name VARCHAR(50) CHARACTER SET latin1 NOT NULL,
)