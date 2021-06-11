 INSERT INTO artist (name)
VALUES ('Jinglin_Joe'), ('Buckets_Mitchell'), ('Stifle_Tower');

SELECT name FROM artist
WHERE name IN ('BackBeat', 'Various Artists', 'Luiz Melodia', 'Hermeto Pascoal', 'Ozzy Osbourne')
ORDER BY name ASC;

SELECT first_name, last_name FROM employee
WHERE city IN ('Calgary')
ORDER BY employee asc;

SELECT first_name, last_name FROM employee 
WHERE reports_to IN (2)
ORDER BY employee asc;

SELECT city, COUNT(*) FROM employee
WHERE city IN('Lethbridge')
GROUP BY city;

SELECT billing_country, COUNT(*) FROM invoice
WHERE billing_country = 'USA'
GROUP BY billing_country;

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT unit_price FROM invoice_line
WHERE unit_price > 5
GROUP BY unit_price;

SELECT unit_price, COUNT(*) FROM invoice_line
WHERE unit_price < 5
GROUP BY unit_price;

SELECT SUM(unit_price * quantity) FROM invoice_line;

SELECT invoice.invoice_id, invoice_line.invoice_id, unit_price FROM invoice
JOIN invoice_line ON invoice.invoice_id = invoice_line.invoice_id 
WHERE unit_price > 0.99;

SELECT customer.customer_id, customer.first_name, customer.last_name, invoice.customer_id, invoice.invoice_date, invoice.total FROM invoice
JOIN customer ON customer.customer_id = invoice.customer_id
ORDER BY first_name,last_name ASC;

SELECT customer.first_name, customer.last_name, customer.support_rep_id, employee.first_name, employee.last_name, employee.employee_id FROM customer
JOIN employee ON customer.support_rep_id = employee.employee_id
ORDER BY customer.first_name, customer.last_name ASC;

SELECT album.title, album.artist_id, artist.name, artist.artist_id FROM album
JOIN artist ON artist.artist_id = album.artist_id
ORDER BY artist.name;

