/* Создать вспомогательную таблицу applicant,  куда включить id образовательной программы, 
id абитуриента, сумму баллов абитуриентов (столбец itog) в отсортированном сначала по id образовательной 
программы, а потом по убыванию суммы баллов виде (использовать запрос из предыдущего урока). */

/* Создать вспомогательную таблицу applicant,  куда включить id образовательной программы,  id абитуриента, 
сумму баллов абитуриентов (столбец itog) в отсортированном сначала по id образовательной программы, 
а потом по убыванию суммы баллов виде (использовать запрос из предыдущего урока). */

create table applicant as
select program_enrollee.program_id, program_enrollee.enrollee_id, sum(enrollee_subject.result) as itog 
from program_enrollee
inner join enrollee_subject on enrollee_subject.enrollee_id = program_enrollee.enrollee_id
inner join program_subject on program_subject.subject_id = enrollee_subject.subject_id and program_subject.program_id = program_enrollee.program_id
group by program_enrollee.program_id, program_enrollee.enrollee_id
order by program_enrollee.program_id, sum(enrollee_subject.result) desc;

select * from applicant;