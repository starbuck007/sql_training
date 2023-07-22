create table back_payment as
select name, number_plate, violation, sum_fine, date_violation
from fine
where date_payment is Null;

select * from back_payment;