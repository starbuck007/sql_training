update book, supply
set book.amount = book.amount + supply.amount, 
    book.price = ((book.price + supply.price) / 2)
where book.title = supply.title;

select * from book;