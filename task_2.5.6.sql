create table buy_pay as
select buy_book.buy_id, sum(buy_book.amount) as Количество, sum(book.price * buy_book.amount) as Итого
from buy_book
inner join book on book.book_id = buy_book.book_id
where buy_book.buy_id = 5
group by buy_book.buy_id;

select * from buy_pay;