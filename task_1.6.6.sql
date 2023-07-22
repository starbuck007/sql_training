select name, city, date_first, date_last
from trip
where datediff (date_last, date_first) = (select min(datediff (date_last, date_first)) from trip);