Q1: Who is the senior most employee based on job title?

SELECT * FROM employee
ORDER BY levels DESC
limit 1

Q2: Which contries have the most invoices?

SELECT COUNT(*) as c, billing_country 
FROM invoice
GROUP BY billing_country
ORDER BY c DESC

Q3: What are top 3 values of total invoice?

SELECT total FROM invoice
ORDER BY total DESC
limit 3

Q4: 

SELECT billing_city, SUM(total) AS invoice_total
FROM invoice
GROUP BY billing_city
ORDER BY invoice_total DESC

Q5: 

SELECT customer.customer_id, customer.first_name, customer.last_name, SUM(invoice.total) AS high_spent
FROM customer
JOIN invoice ON customer.customer_id = invoice.customer_id
GROUP BY customer.customer_id
ORDER BY high_spent DESC
limit 1










