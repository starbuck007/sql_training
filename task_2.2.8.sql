select title as Название, name_author as Автор, book.amount + supply.amount as Количество
from book
inner join author using(author_id)
inner join supply using(title)
where book.price = supply.price;