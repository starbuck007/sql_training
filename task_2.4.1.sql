select buy_book.buy_id, book.title, book.price, buy_book.amount
from buy_book
inner join book on book.book_id = buy_book.book_id
where buy_id in (select buy_id
                    from buy
                    where client_id = (select client_id 
                                          from client
                                          where name_client = 'Баранов Павел'))
order by buy_book.buy_id, book.title;