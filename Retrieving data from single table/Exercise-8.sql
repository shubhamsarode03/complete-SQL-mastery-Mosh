-- Get the customers whose
-- first names are ELKA or AMBUR

USE sql_store;

SELECT *
FROM customers
WHERE first_name REGEXP 'ELKA|AMBUR';	

