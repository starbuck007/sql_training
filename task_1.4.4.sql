select author, title, price
from book
where price < any (select min(price) from book group by author);