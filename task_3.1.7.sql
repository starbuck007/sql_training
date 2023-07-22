select question.name_question, answer.name_answer, if(answer.is_correct = 1, 'Верно', 'Неверно') as Результат
from testing
inner join question on question.question_id = testing.question_id
inner join answer on answer.answer_id = testing.answer_id
where testing.attempt_id = 7;