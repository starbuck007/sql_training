select author, title, amount
from book
where amount in (select amount from book group by amount having count(amount) = 1);