insert into buy_step (buy_id, step_id, date_step_beg, date_step_end)
select 5, step.step_id, null, null
from step;

select * from buy_step;