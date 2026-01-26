-- Cross join exercise
-- Do a cross join between shipers and products
-- using the implicit syntax
-- and then using the explicit syntax

-- implicit

USE sql_store;

SELECT *
FROM shippers sh, products p;


-- explicit

SELECT *
FROM shipper sh
CROSS JOIN products p
