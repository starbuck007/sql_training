update book
set genre_id = (select genre_id
from genre
where name_genre = 'Поэзия')
where book_id = 10;

update book
set genre_id = (select genre_id
from genre
where name_genre = 'Приключения')
where book_id = 11;

select * from book;
