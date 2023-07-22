select subject.name_subject, concat(left(question.name_question, 30), '...') as Вопрос, count(testing.question_id) as Всего_ответов, round((sum(answer.is_correct) / count(testing.question_id) * 100), 2) as Успешность
from testing
inner join question on question.question_id = testing.question_id
inner join subject on subject.subject_id = question.subject_id
inner join answer on answer.answer_id = testing.answer_id
group by subject.name_subject, question.name_question
order by subject.name_subject, round((sum(answer.is_correct) / count(testing.question_id) * 100), 2) desc, question.name_question;
