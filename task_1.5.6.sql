update book set buy = if(buy > amount, amount, buy);
update book set price = if(buy = 0, price * 0.9, price);

select * from book;