insert into buy_book(buy_id, book_id, amount)
select 5, book_id, 2
from book
where title = 'Лирика' and author_id = (select author.author_id
                                           from author
                                           left join book on author.author_id = book.author_id
                                           where author.name_author like 'Пастернак%');

insert into buy_book(buy_id, book_id, amount)
select 5, book_id, 1
from book
where title = 'Белая гвардия' and author_id = (select author_id
                                                    from author 
                                                    where name_author = 'Булгаков М.А.');

select * from buy_book;