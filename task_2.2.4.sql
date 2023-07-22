select g.name_genre, b.title, a.name_author
from book b
inner join genre g on g.genre_id = b.genre_id
inner join author a on a.author_id = b.author_id
where g.name_genre = 'Роман'
order by title;