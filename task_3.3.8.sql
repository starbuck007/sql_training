/* Вывести образовательные программы, на которые для поступления необходимы предмет 
«Информатика» и «Математика» в отсортированном по названию программ виде. */

select program.name_program
from program
inner join program_subject on program_subject.program_id = program.program_id
inner join subject on subject.subject_id = program_subject.subject_id
where subject.name_subject in ('Математика', 'Информатика')
group by program.name_program
having count(program_subject.subject_id) = 2
order by program.name_program;