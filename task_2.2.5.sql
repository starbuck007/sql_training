select a.name_author, sum(b.amount) as Количество
from author a
left join book b on b.author_id = a.author_id
group by a.name_author
having Количество < 10 or Количество is null
order by count(b.amount);