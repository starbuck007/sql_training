update buy_step inner join step on buy_step.step_id = step.step_id
set buy_step.date_step_beg = '2020-04-12'
where step.name_step = 'Оплата' and buy_step.buy_id = 5;

select * from buy_step
where buy_id = 5;