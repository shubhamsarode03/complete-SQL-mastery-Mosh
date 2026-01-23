-- Get ordered place after 2018-01-01
 USE sql_store;

SELECT *
FROM orders
WHERE order_date > '2018-01-01';