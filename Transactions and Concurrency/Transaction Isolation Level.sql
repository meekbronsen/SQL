-- lost updates -- when 2 transactions update the same row and the one that commits last overwrites the changes made earlier
-- Dirty Reads  -- reading of data from an uncommited transaction(might roll back)
-- Non-repeating Reads -- read the same data twice and get different results
-- phantom reads

-- Below are transaction levels to protect us from the above
-- Read uncommited  -- does not protect us from anything
-- Read commited       -- protects from dirty reads
-- Repeatable Read        -- protects from lost updates, dirty reads, inconsitent reads
-- Serializable

-- stick to repeatable reads it is meduim of perfomance and protection from concurrency problems

-- SHOW VARIABLE LIKE 'transaction_isolation';
-- SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;   -- setting of serializable transaction isolation
-- SET SESSION TRANSACTION ISOLATION LEVEL ;       -- for all the transactions in the current session
-- SET GLOBAL TRANSACTION ISOLATION LEVEL ;        -- for all the transactions in all the sessions