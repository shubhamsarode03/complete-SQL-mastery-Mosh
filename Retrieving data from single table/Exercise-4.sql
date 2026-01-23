-- Return products with
-- quantity in stock equal to 49, 38, 72.

USE sql_inventory;

SELECT *
FROM
	products
WHERE
	quantity_in_stock IN (49,38,72);
	