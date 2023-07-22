select author, sum(price * amount) as Стоимость,
        round((sum(price * amount) * 0.18 / 1.18), 2) as НДС,
        round((sum(price * amount) / 1.18), 2) as Стоимость_без_НДС
from book
group by author;