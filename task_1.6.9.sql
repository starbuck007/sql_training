select name, city, date_first, (datediff(date_last, date_first) + 1) * per_diem as Сумма
from trip
where month(date_first) in (2, 3)
order by name, (datediff(date_last, date_first) + 1) * per_diem desc;