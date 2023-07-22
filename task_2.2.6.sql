select a.name_author
from book b
inner join author a on b.author_id = a.author_id
group by b.author_id
having count(distinct genre_id) = 1
order by a.name_author;