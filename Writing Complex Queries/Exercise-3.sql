
-- Find customers who have ordered lettuce (id = 3)
--      Select customer_id, first_name, last_name


USE sql_store;
-- With subquery
SELECT DISTINCT customer_id,
	first_name,
    last_name
FROM customers
WHERE customer_id IN

	(SELECT customer_id
	FROM orders
	WHERE order_id IN 
		(SELECT order_id
		FROM order_items
		WHERE product_id = 3
	)
);

-- with join

SELECT DISTINCT
	c.customer_id,
    c.first_name,
    c.last_name
FROM customers c
JOIN orders o
		USING (customer_id)
JOIN order_items oi
		USING ( order_id)
WHERE product_id = 3;
    