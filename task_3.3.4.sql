/* Вывести образовательные программы, для которых минимальный балл ЕГЭ по каждому предмету больше или 
равен 40 баллам. Программы вывести в отсортированном по алфавиту виде.*/

select program.name_program
from program
inner join program_subject on program_subject.program_id = program.program_id
group by program.name_program
having min(program_subject.min_result) >= 40
order by program.name_program;
