insert into attempt (student_id, subject_id, date_attempt, result)
select student.student_id, subject.subject_id, now(), null
from attempt
inner join student on student.student_id = attempt.student_id
inner join subject on subject.subject_id = attempt.subject_id
where student. name_student = 'Баранов Павел' and subject.name_subject = 'Основы баз данных';

select * from attempt;
