select subject.name_subject, count(distinct attempt.student_id) as Количество
from attempt
right join subject on attempt.subject_id = subject.subject_id
group by subject.name_subject
order by count(distinct attempt.student_id) desc, subject.name_subject;
