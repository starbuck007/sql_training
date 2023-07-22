select distinct g.name_genre
from genre g
left join book b
on g.genre_id = b.genre_id
where b.amount is null;