-- Get the customers whose
-- addresses contain TRAIL or AVENUE

USE sql_store;

SELECT *
FROM customers
WHERE 
	address LIKE '%TRAIL%' OR 
	address LIKE '%AVENUE%';