update book join buy_book on book.book_id = buy_book.book_id
set book.amount = book.amount - buy_book.amount
where book.book_id in (select book_id from buy_book where buy_id = 5);

select * from book;
