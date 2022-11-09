-- 13
-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount
-- top ten

select country.country, avg(payment.amount)
from country
left join city on city.country_id = country.country_id
left join address on city.city_id = address.city_id
left join customer on address.address_id = customer.address_id
left join payment on payment.customer_id = customer.customer_id
where payment.amount IS NOT NULL
group by country.country_id
order by avg desc
limit 10;








