/* Вывести название образовательной программы и фамилию тех абитуриентов, которые подавали документы на эту 
образовательную программу, но не могут быть зачислены на нее. Эти абитуриенты имеют результат по одному или 
нескольким предметам ЕГЭ, необходимым для поступления на эту образовательную программу, меньше минимального 
балла. Информацию вывести в отсортированном сначала по программам, а потом по фамилиям абитуриентов виде. */

select program.name_program, enrollee.name_enrollee
from program
inner join program_enrollee on program_enrollee.program_id = program.program_id
inner join enrollee on enrollee.enrollee_id = program_enrollee.enrollee_id
inner join enrollee_subject on enrollee_subject.enrollee_id = enrollee.enrollee_id
inner join subject on subject.subject_id = enrollee_subject.subject_id
inner join program_subject on program_subject.program_id = program.program_id and program_subject.subject_id = subject.subject_id
group by program.name_program, enrollee.name_enrollee, subject.name_subject, program_subject.min_result, enrollee_subject.result
having enrollee_subject.result < program_subject.min_result
order by program.name_program, enrollee.name_enrollee;
