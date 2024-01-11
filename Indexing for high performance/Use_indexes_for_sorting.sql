-- Using Indexes for sorting data as in order by
EXPLAIN SELECT customer_id FROM customers ORDER BY state;

-- The file_sort algo is expensive
SHOW STATUS; -- shows variables used by MySQL.

SHOW STATUS LIKE 'last_query_cost';