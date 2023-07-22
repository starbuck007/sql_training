select author.name_author, book.title, count(buy_book.buy_book_id) as Количество
from buy_book
right join book on buy_book.book_id = book.book_id
inner join author on author.author_id = book.author_id
group by book.book_id
order by author.name_author, book.title;