-- Subqueries in the select clause exercise

USE sql_invoicing;

SELECT DISTINCT 
	c.client_id,
    c.name,
    (SELECT SUM(invoice_total) FROM invoices WHERE client_id = i.client_id) AS total,
    (SELECT avg(invoice_total) FROM invoices) AS average,
    (SELECT total) - (SELECT average) AS difference
    FROM invoices i
    RIGHT JOIN clients c
			USING(client_id)