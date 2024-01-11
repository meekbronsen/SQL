SHOW EVENTS -- to view the create events
SHOW EVENTS LIKE "yearly$";

DROP EVENT IF EXISTS yearly_delete_stale_audit_rows;

ALTER EVENT yearly_delete_stale_audit_rows -- to alter an event without the need to drop 
ALTER EVENT yearly_delete_stale_audit_rows ENABLE/ DISABLE -- to enable or disable alter an event 