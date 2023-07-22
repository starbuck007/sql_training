select distinct client.name_client 
from buy_book
inner join buy on buy.buy_id = buy_book.buy_id
inner join client on client.client_id = buy.client_id
inner join book on book.book_id = buy_book.book_id
inner join author on author.author_id = book.author_id
where author.name_author like 'Достоевский%'
order by client.name_client;