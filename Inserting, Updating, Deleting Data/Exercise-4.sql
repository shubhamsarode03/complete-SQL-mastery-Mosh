

USE sql_store;


UPDATE orders
SET comments = 'Gold customer'
WHERE customer_id IN 
			((SELECT o.customer_id
			FROM orders o
			JOIN customers c
			USING (customer_id)
			WHERE c.points > 3000))
					



