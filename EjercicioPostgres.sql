SELECT film_id, title FROM film;
SELECT * FROM film LIMIT 5;
SELECT * FROM film WHERE film_id < 4;
SELECT * FROM film WHERE rating = 'PG' OR rating = 'G';
SELECT * FROM actor WHERE first_name IN ('Angela', 'Angelina', 'Audrey');
SELECT * FROM actor WHERE first_name = 'Julia';
SELECT * FROM actor WHERE first_name IN ('Chris', 'Cameron', 'Cuba');
SELECT * FROM customer WHERE first_name = 'Jamie' AND last_name = 'Rice';
SELECT amount, payment_date FROM payment WHERE amount < 1;
SELECT DISTINCT rental_duration FROM film;
SELECT * FROM city ORDER BY country_id, city;
SELECT customer_id FROM rental WHERE return_date IS NOT NULL ORDER BY return_date DESC LIMIT 3;
SELECT COUNT (*) FROM film WHERE rating = 'NC-17' OR rating = 'PG' OR rating = 'PG-13';
SELECT COUNT (DISTINCT customer_id) FROM rental;
SELECT last_name, COUNT(*) AS count_apellidos FROM customer GROUP BY last_name HAVING COUNT(*) > 1;
SELECT film_id, COUNT(actor_id) AS cantidad_actores FROM film_actor GROUP BY film_id ORDER BY cantidad_actores DESC LIMIT 1;
SELECT actor_id, COUNT(film_id) AS cantidad_peliculas FROM film_actor GROUP BY actor_id ORDER BY cantidad_peliculas DESC LIMIT 1;
SELECT country_id, COUNT(*) AS num_ciudades FROM city GROUP BY country_id ORDER BY num_ciudades DESC;
SELECT ROUND(AVG(amount), 2) AS tarifa_promedio FROM payment;
SELECT actor_id, CONCAT(first_name, ' ', last_name) AS nombre_completo, LENGTH(CONCAT(first_name, last_name)) AS longitud_nombre FROM actor ORDER BY longitud_nombre DESC LIMIT 10;







