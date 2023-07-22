select buy_step.buy_id, step.name_step
from step
inner join buy_step on step.step_id = buy_step.step_id
where buy_step.date_step_end is null and buy_step.date_step_beg is not null
order by buy_step.buy_id;