/* Вывести образовательные программы, на которые для поступления необходим предмет «Информатика». 
Программы отсортировать в обратном алфавитном порядке.*/

select program.name_program 
from program_subject
inner join program on program.program_id = program_subject.program_id
inner join subject on subject.subject_id = program_subject.subject_id
where subject.name_subject = 'Информатика'
order by program.name_program desc;
