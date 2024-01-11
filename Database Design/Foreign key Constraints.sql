-- your need to set constraints on that foreign key to prevent data corruption

-- On update
-- CASCADE child table will be updated if the primary key changes.
-- RESTRICT prevent the update from happening
-- SET NULL the parent of the child record will be terminated since primary key has changed for that foreign key.
-- NO ACTION prevent the update operation.

-- On Deletion
-- CASCADE the data associated with that primary key will be deleted too.
-- NO ACTION won't be deleted.

-- As a rule of thumb
-- On Update = CASCADE
-- On Deletion = NO ACTION