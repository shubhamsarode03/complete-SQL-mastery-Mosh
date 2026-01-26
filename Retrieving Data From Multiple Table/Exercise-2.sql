-- Joining Multiple Tables

USE sql_invoicing;

SELECT p.payment_id,
	c.name AS client_name,
	p.date,
	p.amount,
	pm.name AS payment_method
FROM payments p
JOIN clients c
	ON p.client_id = c.client_id
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id;