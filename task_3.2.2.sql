/* Случайным образом выбрать три вопроса (запрос) по дисциплине, тестирование по которой собирается проходить студент, занесенный в таблицу attempt последним, и добавить их в таблицу testing.id последней попытки получить как максимальное значение id из таблицы attempt.*/

insert into testing (attempt_id, question_id, answer_id)
select attempt.attempt_id, question.question_id, null
from attempt
inner join question on question.subject_id = attempt.subject_id
where attempt.attempt_id = (select max(attempt_id) from attempt)
order by rand()
limit 3;

select * from testing;