select  title, name_author, name_genre, price, amount
from author 

inner join book on author.author_id = book.author_id
inner join genre on genre.genre_id = book.genre_id

where book.genre_id in 
         (
          select query_in_1.genre_id
          from 
              ( 
                select genre_id, sum(amount) as sum_amount
                from book
                group by genre_id
               )query_in_1
          inner join 
              ( 
                select genre_id, sum(amount) as sum_amount
                from book
                group by genre_id
                order by sum_amount desc
                limit 1
               ) query_in_2
          on query_in_1.sum_amount = query_in_2.sum_amount
         )
         order by title;
