-- Used for storing digits without decimal points
TINYINT             -- takes only 1byte -- we can store the numbers [-128 to 127] -- If you mark a numeric column as unsigned, it will only store numeric numbers.
UNSIGNED TINYINT    -- will store the numbers [0 - 255] . Can be used to store age.
SMALLINT            -- takes upto 2bytes -- stores [-32k - 32k]
MEDIUMINT           -- takes upto 3bytes -- stores [-8M - 8M]
INT                 -- takes upto 4bytes -- stores [-2B - 2B]
BIGINT              -- takes upto 8bytes -- stores [-9Z - 9Z]

-- The Attribute ZEROFILL. Only affects how the values are displayed not how they are stored. Used to add zeroes to missing values
-- Try to use the smallest data type that suits your needs. Your queries will execute faster
