Question set2

Q1: 

SELECT DISTINCT email, first_name, last_name 
FROM customer
JOIN invoice ON customer.customer_id = invoice.customer_id
JOIN invoice_line ON invoice.invoice_id = invoice_line.invoice_id
WHERE track_id IN(
	SELECT track_id FROM track
	JOIN genre ON track.genre_id = genre.genre_id
	WHERE genre.name LIKE 'Rock'
)
ORDER BY email;

Q2:

SELECT artist.name, COUNT(track.total)
FROM artist
JOIN album ON artist.artist_id = album.artist_id
WHERE 



SELECT * 
FROM invoice






