/* Создать таблицу student,  в которую включить абитуриентов, которые 
могут быть рекомендованы к зачислению  в соответствии с планом набора. 
Информацию отсортировать сначала в алфавитном порядке по названию программ, 
а потом по убыванию итогового балла. */

create table student
select program.name_program, enrollee.name_enrollee, applicant_order.itog
from applicant_order
inner join program on program.program_id = applicant_order.program_id
inner join enrollee on enrollee.enrollee_id = applicant_order.enrollee_id
where applicant_order.str_id <= program.plan
order by program.name_program, applicant_order.itog desc;

select * from student;