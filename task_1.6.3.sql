select city, count(city) as Количество
from trip
group by city
order by city;