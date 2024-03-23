-- Obtenga todos los datos de las tablas actory, film Y customer utilizando la tabla film actor
SELECT 
	*
FROM sakila.actor a
INNER JOIN sakila.film_actor fa ON a.actor_id = fa.actor_id
INNER JOIN sakila.film f ON f.film_id =  fa.film_id
INNER JOIN sakila.inventory i ON i.film_id = f.film_id
INNER JOIN sakila.rental r ON r.inventory_id = i.inventory_id
INNER JOIN sakila.customer c ON  c.customer_id = r.customer_id;

-- 2. sacamos la tabla de os títulos de las peliculas

SELECT
	title
FROM sakila.film;

-- 3.Obtenga una lista única de idiomas cinematográficos bajo el alias language. Tenga en cuenta que no le pedimos que obtenga el idioma de cada película, pero este es un buen momento para pensar en cómo podría obtener esa información en el futuro.
SELECT
	*
FROM sakila.film f
INNER JOIN sakila.language l ON l.language_id = f.language_id;

SELECT DISTINCT name AS unique_language
FROM language;

-- 5.1 ¿Averigüe cuántas tiendas tiene la empresa?

SELECT
	store_id
FROM sakila.store;

-- 5.2 ¿Averigüe cuántos empleados tiene la empresa?

SELECT 
	staff_id
FROM sakila.staff;

-- 5.3 ¿Devolver solo una lista de los nombres de los empleados?

SELECT
	first_name
FROM sakila.staff;
