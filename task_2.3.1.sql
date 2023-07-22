update book
inner join author on book.author_id = author.author_id
inner join supply on book.title = supply.title and supply.author = author.name_author

set book.price = (book.price * book.amount + supply.price * supply.amount) / (book.amount + supply.amount),
    book.amount = book.amount + supply.amount,
    supply.amount = 0
    
where book.price <> supply.price;

select * from book;
select * from supply;