select city.name_city, count(buy.buy_id) as Количество 
from buy
inner join client on client.client_id = buy.client_id
inner join city on client.city_id = city.city_id
group by city.name_city
order by count(buy.buy_id) desc, city.name_city;