select subject.name_subject, count(attempt.subject_id) as Количество, round(avg(result), 2) as Среднее
from attempt
right join subject on subject.subject_id = attempt.subject_id
group by subject.name_subject
order by round(avg(result), 2) desc;
