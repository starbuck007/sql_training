/* Посчитать количество баллов каждого абитуриента на каждую образовательную программу, 
на которую он подал заявление, по результатам ЕГЭ. В результат включить название образовательной программы, 
фамилию и имя абитуриента, а также столбец с суммой баллов, который назвать itog. Информацию вывести 
в отсортированном сначала по образовательной программе, а потом по убыванию суммы баллов виде. */

select program.name_program, enrollee.name_enrollee, sum(enrollee_subject.result) as itog
from program
inner join program_enrollee on program_enrollee.program_id = program.program_id
inner join enrollee on enrollee.enrollee_id = program_enrollee.enrollee_id
inner join enrollee_subject on enrollee_subject.enrollee_id = enrollee.enrollee_id
inner join subject on subject.subject_id = enrollee_subject.subject_id
inner join program_subject on program_subject.program_id = program.program_id and program_subject.subject_id = subject.subject_id
group by program.name_program, enrollee.name_enrollee
order by program.name_program, sum(enrollee_subject.result) desc;
