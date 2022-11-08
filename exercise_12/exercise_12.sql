-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts

select city.city, sum(payment.amount)
from payment
left join rental on payment.rental_id = rental.rental_id
left join customer on rental.customer_id = customer.customer_id
left join address on customer.address_id = address.address_id
left join city on city.city_id = address.city_id
group by city.city_id
order by sum desc
limit 10
;









