select buy.buy_id, client.name_client, sum(book.price * buy_book.amount) as Стоимость  from buy
inner join client on client.client_id = buy.client_id
inner join buy_book on buy_book.buy_id = buy.buy_id
inner join book on book.book_id = buy_book.book_id
group by buy.buy_id
order by buy.buy_id;
