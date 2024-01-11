
DATE_FORMAT( NOW(), "%m") -- Small to get the month digit
DATE_FORMAT( NOW(), "%M") -- Big to get the month name
DATE_FORMAT( NOW(), "%y") -- small to get the 2 digit year
DATE_FORMAT( NOW(), "%Y") -- Big to get the 4 digit year
DATE_FORMAT( NOW(), "%d") -- small to get the date

DATE_FORMAT( NOW(), "%M %d %Y") -- the full format

-- TIME_FORMAT
SELECT TIME_FORMAT(NOW(), "%H")  -- 24 hour clock system
SELECT TIME_FORMAT(NOW(), "%I" ) -- 12 hour clock system
SELECT TIME_FORMAT(NOW(), "%i" ) -- minutes 
SELECT TIME_FORMAT(NOW(), "%p")  -- pm or am

SELECT TIME_FORMAT(NOW(), "%H %I %p")


