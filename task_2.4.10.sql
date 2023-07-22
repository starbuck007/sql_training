select year(buy_step.date_step_end) as Год, 
        monthname(buy_step.date_step_end) as Месяц, 
        sum(book.price * buy_book.amount) as Сумма
from buy_book
inner join buy_step on buy_step.buy_id = buy_book.buy_id
inner join step on step.step_id = buy_step.step_id
inner join book on book.book_id = buy_book.book_id
where step.name_step = 'Оплата' and buy_step.date_step_end is not null
group by year(buy_step.date_step_end), monthname(buy_step.date_step_end)
union
select year(date_payment) as Год, 
        monthname(date_payment) as Месяц, 
        sum(price * amount) as Сумма
from buy_archive
group by year(date_payment), monthname(date_payment)
order by Месяц, Год;
