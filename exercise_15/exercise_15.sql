-- exercise 15
-- the total run time of all inventory items if they were all played back to back
-- expecting 526491
select sum(film.length)
from inventory
inner join film on film.film_id = inventory.film_id;

