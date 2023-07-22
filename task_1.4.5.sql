select title, author, amount, (select max(amount) from book) - amount as Заказ 
from book
where (select max(amount) from book) - amount > 0;
