 INSERT INTO artist (name)
VALUES ('Jinglin_Joe'), ('Buckets_Mitchell'), ('Stifle_Tower');

SELECT * FROM artist
WHERE name ILIKE 'a%'
ORDER BY name ASC
LIMIT 5;

SELECT first_name, last_name FROM employee
WHERE city = ('Calgary')


SELECT * FROM employee 
WHERE reports_to = 2;

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT COUNT(*) FROM invoice
WHERE total < 5;

SELECT SUM(total * quantity) FROM invoice;

SELECT * FROM invoice
JOIN invoice_line ON invoice.invoice_id = invoice_line.invoice_id 
WHERE unit_price > 0.99;

SELECT customer.customer_id, customer.first_name, customer.last_name, invoice.customer_id, invoice.invoice_date, invoice.total FROM invoice
JOIN customer ON customer.customer_id = invoice.customer_id;


SELECT customer.first_name, customer.last_name, employee.first_name, employee.last_name, FROM customer
JOIN employee ON customer.support_rep_id = employee.employee_id;


SELECT album.title, artist.name, FROM album
JOIN artist ON artist.artist_id = album.artist_id;


