-- if the parameter is null default values will be invoked

DROP PROCEDURE IF EXISTS get_clients;

DELIMITER $$
CREATE PROCEDURE get_clients( state CHAR(2)) 
BEGIN
    -- IF state IS NULL THEN
    --     SELECT * FROM clients;
    -- ELSE 
    --     SELECT * FROM clients c
    --     WHERE c.state = state;
    -- END IF;

    -- rewriting the above query but better
    SELECT *
    FROM clients c
    WHERE c.state = IFNULL(state, c.state)
END $$

DELIMITER ;