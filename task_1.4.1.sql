select author, title, price
from book
where price <= (select avg(price) from book)
order by price desc;