select b.title, g.name_genre, b.price
from book b
inner join genre g
on b.genre_id = g.genre_id
where amount > 8
order by price desc;