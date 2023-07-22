select c.name_city, a.name_author, date_add('2020.01.01', interval (FLOOR(RAND() * 365)) day) as Дата
from city c, author a
order by c.name_city, date_add('2020.01.01', interval (FLOOR(RAND() * 365)) day) desc;