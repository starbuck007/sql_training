select title, author from book
where author like '%С.%' and title like '% %_%' 
order by title;