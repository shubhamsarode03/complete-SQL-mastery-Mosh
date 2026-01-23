-- Get the customers whose
-- phone numbers end with 9

USE sql_store;

SELECT *
FROM customers
WHERE phone LIKE '%9';