/* Выведите сколько человек подало заявление на каждую образовательную программу и конкурс на нее 
(число поданных заявлений деленное на количество мест по плану), округленный до 2-х знаков после запятой. 
В запросе вывести название факультета, к которому относится образовательная программа, 
название образовательной программы, план набора абитуриентов на образовательную программу (plan), 
количество поданных заявлений (Количество) и Конкурс. Информацию отсортировать в порядке убывания конкурса. */

select department.name_department, program.name_program, program.plan, count(program_enrollee.program_id) as Количество, round(count(program_enrollee.program_id) / plan, 2) as Конкурс
from program_enrollee
inner join program on program.program_id = program_enrollee.program_id
inner join department on department.department_id = program.department_id
group by program.name_program, department.name_department, program.plan
order by count(program_enrollee.program_id) / plan desc;