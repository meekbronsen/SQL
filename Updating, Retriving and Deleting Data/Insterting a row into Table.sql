# INSERT INTO customers
# VALUES(
# 	DEFAULT, 
#     "meek", 
#     "bronsen",
#     "1999-07-31",
#     NULL,  -- can take NULL as a value
#     "address",
#     "city",
#     "CA",
#     DEFAULT)
     
-- Another way excluding insert of null values
INSERT INTO customers (
	first_name, 
	last_name, 
    birth_date,
    address,
    city,
    state)
VALUES (
	"John",
    "Smith",
    "1990-01-01",
    "address",
    "Los Angeles",
    "CA")