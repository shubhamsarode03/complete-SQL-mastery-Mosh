-- GROUP BY

USE sql_invoicing;

SELECT p.date AS date, 
		pm.name AS payment_method,
        SUM(p.amount) AS total_payment
FROM payments p
JOIN payment_methods pm
			ON p.payment_method = pm.payment_method_id
GROUP BY p.date, pm.name
ORDER BY date