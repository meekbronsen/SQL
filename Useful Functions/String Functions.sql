SELECT 
    LENGTH("Hello"),                  -- get the number of char in a string

    LOCATE("e", "meekbronsen"),       -- like the indexof functions in js

    REPLACE("Mick","ic","ee"),

    CONCAT( "meek","bronsen"),        -- to join strings together
    CONCAT(first_name," ",last_name),        -- to join tables together

    UPPER("meek")  ,                  -- string touppercase
    
    LOWER("MEEK")  ,                  -- string tolowercase
    
    LTRIM("   SKY"),                  -- removes space from begining of a string   
    
    RTRIM("   SKY"),                  -- removes space from end of a string   
    
    TRIM("   SKY") ,                  -- removes space from begining and end of a string   
    
    LEFT("Kindergarten", 4),          -- gets the 4 chars from the begining
    
    RIGHT("Kindergarten", 4),         -- vice versa
    
    SUBSTRING("Kindergarten", 2, 5)   -- starting from index no.2 select 5 chars from the string

    
    

