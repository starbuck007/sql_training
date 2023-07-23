/* Вывести абитуриентов, которые хотят поступать на образовательную программу «Мехатроника и робототехника» 
в отсортированном по фамилиям виде.*/

select enrollee.name_enrollee
from program_enrollee
inner join enrollee on enrollee.enrollee_id = program_enrollee.enrollee_id
inner join program on program.program_id = program_enrollee.program_id
where program.name_program = 'Мехатроника и робототехника'
order by enrollee.name_enrollee;