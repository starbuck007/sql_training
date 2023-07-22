select 
    author as Автор, 
    count(title) as Различных_книг, 
    sum(amount) as Количество_экземпляров
from book
group by author;