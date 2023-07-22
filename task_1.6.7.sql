select name, city, date_first, date_last
from trip
where month(date_first) = month(date_last)
order by city, name;