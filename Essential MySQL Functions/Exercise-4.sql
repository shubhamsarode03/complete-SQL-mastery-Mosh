
-- CASE
USE sql_store;

SELECT 
	CONCAT(first_name, ' ', last_name) AS full_name,
    points,
    CASE 
		WHEN points < 2000 THEN 'Bronze'
        WHEN points BETWEEN 2000 AND 3000 THEN 'Silver'
        WHEN points > 3000 THEN 'Gold'
        ELSE 'Unknown'
	END AS category
FROM customers