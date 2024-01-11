-- Determines how data is stored and features are available to us

SHOW ENGINES -- the storage engines supported

-- The two most commonly used storage engines are InnoDB and MyISAM

-- There might be situation where you want to upgrade an old database to a newer storage engine

-- using SQL
ALTER TABLE customers
ENGINE = InnoDB
-- Do this when you during maintainance period. Not during production because the table will be inaccesible.