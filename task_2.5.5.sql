create table buy_pay as
select book.title, author.name_author, book.price, buy_book.amount, book.price * buy_book.amount as Стоимость
from book
inner join author on book.author_id = author.author_id
inner join buy_book on book.book_id = buy_book.book_id
where buy_book.buy_id = 5
order by book.title;

select * from buy_pay;
