select question.question_id, question.name_question
from question
inner join subject on question.subject_id = subject.subject_id
where subject.name_subject = 'Основы баз данных'
order by rand()
limit 3;