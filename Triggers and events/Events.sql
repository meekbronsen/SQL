-- A block sql code that gets executed according to a schedule
-- events can automate database management tasks.
-- Turn on sql my event scheduler before creating an event   'SET GLOBAL event_scheduler = ON'
-- The naming con for events should start with the period of execution

-- SHOW VARIABLES; -- show all the sys varibles in mysql
-- SHOW VARIABLES LIKE 'event%';
-- SET GLOBAL event_scheduler = ON  -- setting for turning on event scheduler
-- SET GLOBAL event_scheduler = OFF -- setting for turning off event scheduler

-- creating an event
DELIMITER $$
CREATE EVENT yearly_delete_stale_audit_rows
ON SCHEDULE -- period of executing the event like once or periodically
    -- AT "2018-01-04" -- to be executed on this date
    -- if you want to execute regularly you can use every
    -- EVERY 2 HOUR
    -- EVERY 2 DAYS
    EVERY 2 YEAR STARTS "2019-01-01" ENDS "2029-01-01"
DO BEGIN
    DELETE FROM payments_audit
    WHERE action_date < DATESUB(NOW(), INTERVAL 1 YEAR); -- the current date minus 1 year 
    -- delete records that are 1 year old
END $$
DELIMITER ;