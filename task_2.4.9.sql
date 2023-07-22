select genre.name_genre, sum(buy_book.amount) as Количество
from genre
inner join book on book.genre_id = genre.genre_id
inner join buy_book on buy_book.book_id = book.book_id
group by genre.name_genre
having Количество = (select max(k) from 
                            (select genre.name_genre, sum(buy_book.amount) as k
                                    from genre
                                    inner join book on book.genre_id = genre.genre_id
                                    inner join buy_book on buy_book.book_id = book.book_id
                                    group by genre.name_genre) query_1);