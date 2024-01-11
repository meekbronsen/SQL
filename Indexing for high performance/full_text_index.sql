USE sql_blog;
CREATE FULLTEXT INDEX idx_title_body ON posts (title,body);

-- The number of columns in 'create statement' must be same ast that in 'MATCH statement'
SELECT *
FROM posts
WHERE MATCH(title, body) AGAINST ('react redux');

-- This will display a relevance score of the results
SELECT *, MATCH(title,body) AGAINST ("react redux")
FROM posts
WHERE MATCH(title, body) AGAINST ('react redux');

-- Other things you can do in full text search
WHERE MATCH(title, body) AGAINST ('react -redux +form' IN BOOLEAN MODE);            -- +form Must have the word form. -redux exclude redux.
WHERE MATCH(title, body) AGAINST ('"handling a Form in React' IN BOOLEAN MODE);     -- performs a search that is exact to the query

-- Relevance score, ranges from 0 - 1
-- use fulltext index if you wanna build a search engine in your application
-- Especially when you wanna search on long string columns like body of a newspaper.