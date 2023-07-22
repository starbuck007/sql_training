select student.name_student, attempt.date_attempt, attempt.result
from attempt
inner join subject on subject.subject_id = attempt.subject_id
inner join student on student.student_id = attempt.student_id
where subject.name_subject = 'Основы баз данных'
order by attempt.result desc;