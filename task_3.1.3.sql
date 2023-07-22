select student.name_student, attempt.result
from attempt
inner join student on student.student_id = attempt.student_id
where attempt.result = (select max(result) from attempt)
order by student.name_student;