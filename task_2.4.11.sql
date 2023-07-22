select title, sum(Количество) as Количество, sum(Сумма) as Сумма from

(select book.title,
       sum(buy_archive.amount) as Количество, 
       sum(buy_archive.price * buy_archive.amount) as Сумма
from buy_archive
inner join book on book.book_id = buy_archive.book_id
group by book.title
union
select book.title, 
       sum(buy_book.amount) as Количество,
       sum(book.price * buy_book.amount) as Сумма       
from buy_book 
inner join book on book.book_id = buy_book.book_id
inner join buy_step on buy_step.buy_id = buy_book.buy_id
inner join step on step.step_id = buy_step.step_id
where step.name_step = 'Оплата' and buy_step.date_step_end is not null
group by book.title) guery_1

group by title
order by Сумма desc