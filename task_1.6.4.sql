select city, count(city) as Количество
from trip
group by city
order by 2 desc
limit 2;