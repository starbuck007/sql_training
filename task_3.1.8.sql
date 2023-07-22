select student.name_student, subject.name_subject, attempt.date_attempt, round((sum(answer.is_correct)/3*100),2) as Результат
from attempt
left join student on student.student_id = attempt.student_id
left join subject on subject.subject_id = attempt.subject_id
inner join testing on testing.attempt_id = attempt.attempt_id
inner join answer on answer.answer_id = testing.answer_id
group by student.name_student, subject.name_subject, attempt.date_attempt
order by student.name_student, attempt.date_attempt desc;