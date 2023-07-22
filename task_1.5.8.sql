delete from supply
where author in (select author from book group by author having sum(amount) > 10);

select * from supply;