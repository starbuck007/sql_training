insert into client (name_client, city_id, email)
select 'Попов Илья', city_id, 'popov@test'
from city
where city_id = (select city_id from city where name_city = 'Москва');

select * from client