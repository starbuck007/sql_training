select title, author, price, amount from book
where (price < 500 or price > 600) and price * amount >= 5000;