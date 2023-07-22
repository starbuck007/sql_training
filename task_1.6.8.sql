select monthname(date_first) as Месяц, count(date_first) as Количество
from trip
group by monthname(date_first)
order by Количество desc, Месяц;