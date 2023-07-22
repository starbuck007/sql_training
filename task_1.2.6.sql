select author, 
       title,
       round(if(author = 'Булгаков М.А.', price + price * 0.1, 
                if(author = 'Есенин С.А.', price + price * 0.05, price)), 2) as new_price
from book;