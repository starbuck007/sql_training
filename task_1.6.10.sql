select name, sum((datediff(date_last, date_first) + 1) * per_diem) as Сумма
from trip
group by name
having count(name) > 3
order by Сумма desc;