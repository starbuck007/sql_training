insert into book(title, author_id, price, amount)
select title, author_id, price, amount
from 
    author 
    inner join supply on author.name_author = supply.author
where amount <> 0;

select * from book;