insert into author(author.name_author)
select supply.author
from author
right join supply
on author.name_author = supply.author
where author.name_author is null;

select * from author;