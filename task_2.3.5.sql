delete from author
where author_id in (select author_id
                        from book
                        group by author_id
                        having sum(amount) < 20);

select * from book;