insert into book (title, author, price, amount)
select title, author, price, amount from supply
    where author not in (select author from book);
    
select * from book;