delete from author
using author
inner join book on author.author_id = book.author_id
inner join genre on genre.genre_id = book.genre_id
where genre.name_genre = 'Поэзия';

select * from author;

select * from book;