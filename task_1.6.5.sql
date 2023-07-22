select name, city, datediff (date_last, date_first) + 1 as Длительность
from trip
where city not in ('Москва', 'Санкт-Петербург')
order by 3 desc, 2 desc;