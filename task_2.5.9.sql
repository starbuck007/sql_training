update buy_step
set date_step_end = '2020-04-13'
where step_id = 1 and buy_id = 5;

update buy_step
set date_step_beg = '2020-04-13'
where step_id = 2 and buy_id = 5;

select * from buy_step;