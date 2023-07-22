create table ordering as
select author, title, floor((select avg(amount) from book)) as amount
from book
where amount < (select avg(amount) from book);

select * from ordering;