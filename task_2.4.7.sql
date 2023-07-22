select 
    buy_step.buy_id, 
    datediff(buy_step.date_step_end, buy_step.date_step_beg) as Количество_дней, 
    if((datediff(buy_step.date_step_end, buy_step.date_step_beg) > city.days_delivery), (datediff(buy_step.date_step_end, buy_step.date_step_beg) - city.days_delivery), 0) as Опоздание
from buy_step
inner join step on step.step_id = buy_step.step_id
inner join buy on buy.buy_id = buy_step.buy_id
inner join client on client.client_id = buy.client_id
inner join city on city.city_id = client.city_id
where step.name_step = 'Транспортировка' and buy_step.date_step_end is not null;