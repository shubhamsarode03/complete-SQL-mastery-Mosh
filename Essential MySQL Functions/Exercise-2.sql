-- IFNULL and COALESCE functions exercise

USE sql_store;


SELECT 
	CONCAT(first_name, ' ', last_name) AS full_name,
    COALESCE(phone, 'Unknown') AS phone_number 
FROM customers
    