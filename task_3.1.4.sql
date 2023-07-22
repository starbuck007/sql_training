select student.name_student, subject.name_subject, datediff(max(date_attempt), min(date_attempt)) as Интервал
from attempt
right join student on student.student_id = attempt.student_id
inner join subject on subject.subject_id = attempt.subject_id
group by student.name_student, subject.name_subject
having count(attempt.result) > 1
order by datediff(max(date_attempt), min(date_attempt));
