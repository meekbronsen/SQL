-- IFNULL the records that are null can be substituted by an alias
-- Coalesce can take more than one value
SELECT 
    order_id,
    IFNULL( shipper_id, "Not shipped")
FROM orders

SELECT 
    order_id
    COALESCE(shipper_id, comments, "Not Assigned") -- if shipper_id is null, value in comments will be returned, if both are null not assigned
FROM orders