SELECT
     NOW(),        -- current date and time on the machine
     CURDATE(),    -- current date without time
     CURTIME(),    -- current time
     YEAR(NOW()),
     MONTH(NOW()),
     DAY(NOW()),
     HOUR(NOW()),
     MINUTE(NOW()),
     SECOND(NOW()),
     
     --string format
     DAYNAME(NOW()),
     MONTHNAME(NOW()),
     
     EXTRACT(DAY FROM NOW())

