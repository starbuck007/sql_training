select author, title, price
from book
where price - (select min(price) from book) <= 150
order by price;
