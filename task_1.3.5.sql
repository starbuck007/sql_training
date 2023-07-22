select min(price) as Минимальная_цена,
       max(price) as Максимальная_цена,
       round(avg(price), 2) as Средняя_цена
from book;