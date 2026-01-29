


USE sql_store;

-- IF COALESCE
SELECT 
	product_id,
	name,
    Count(*) as orders,
    IF(Count(*) > 1, 'Many times', 'Once') AS frequency
FROM products p
JOIN order_items oi
		USING(product_id)
GROUP BY product_id, name
