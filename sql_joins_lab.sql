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
group by c.name

-- Error Code: 1054. Unknown column 'film_category.category_id' in 'on clause'
