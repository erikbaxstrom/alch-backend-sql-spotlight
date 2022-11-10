-- exercise 9
-- find the film title of all inventory items that have never been rented
-- LEFT JOIN FROM inventory to film and to rental
-- use WHERE IS NULL


select film.title
from inventory
left join rental on rental.inventory_id = inventory.inventory_id
left join film on inventory.film_id = film.film_id
where rental.rental_id IS NULL;








