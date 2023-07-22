delete from genre
where genre_id in (select genre_id
                    from book
                    group by genre_id
                    having count(book_id) < 4);

select * from genre;

select * from book;