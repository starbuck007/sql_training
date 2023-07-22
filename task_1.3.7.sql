select author, sum(price * amount) as Стоимость
from book
where title <> 'Идиот' and title <> 'Белая гвардия'
group by author
having Стоимость > 5000
order by Стоимость desc;