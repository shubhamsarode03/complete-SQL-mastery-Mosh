-- Get the customers whose
-- last names start with MY or contains SE

USE sql_store;

SELECT *
FROM customers
WHERE last_name REGEXP '^MY|SE';