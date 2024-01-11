-- JSON javascript Object Notation
-- A lightweight format for storing and transferring data over the internet.
-- Used mostly in web and mobile apps.
-- Mobile apps send data to the backend using json.

-- Creating a json data type
-- UPDATE products
-- SET properties = '
-- {
--     "dimensions": [1,2,3],
--     "weight": 10,
--     "manufacturer": { "name":"Sony"}
-- }
-- '

-- Another way of creating object data
UPDATE products
SET properties = JSON_OBJECT(
    JSON_ARRAY( 1, 2, 3),
    'weight', 10,
    'manufacturer', JSON_OBJECT('name', 'Sony')
)
WHERE product_id = 1;

-- Extracting values from the JSON
-- JSON_EXTRACT( jsonobject, path)
-- the $.weight stands for the current json object
SELECT product_id, JSON_EXTRACT(properties, '$.weight') as weight
FROM products
WHERE product_id = 1;

-- A shorter way to write the above code using the column path operator ->
SELECT product_id, properties -> '$.weight' as weight

-- what if the value is an array
SELECT product_id, properties -> '$.dimensions[0]' 

-- what if the value is a nested object
SELECT product_id, properties -> '$.manufacturer.name' as weight

-- to remove quote from values return with quotes
SELECT product_id, properties ->> '$.manufacturer.name'

-- can also be used in where clauses
WHERE properties ->> '$.manufacturer.name' = 'SONY';

-- Use the JSON_SET() to update data inside json
UPDATE products
SET properties = JSON_SET(
    properties, '$.weight',20,
    '$.age', 23
)

-- to remove a member
UPDATE products
SET properties = JSON_REMOVE(
    properties, '$.age'
)