use sakila;
-- 1. List the number of films per category.
select category_id, count(*) film_id from film_category
group by category_id;

select name, count(*) category_id from category
group by name;

select
	c.name as "Film Category",
    count(fc.film_id) as "Number of Films"
FROM film_category as fc
JOIN category as c
ON fc.category_id = c.category_id
group by c.name;

-- 2. Retrieve the store ID, city, and country for each store.

SELECT
	s.store_id as "Store ID",
    cou.country as "Country", 
    c.city as "City"
from store as s
join address as a on s.address_id = a.address_id
join city as c on a.city_id = c.city_id
join country as cou on c.country_id = cou.country_id

      

