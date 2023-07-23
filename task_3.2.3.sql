/* Студент прошел тестирование (то есть все его ответы занесены в таблицу testing), 
далее необходимо вычислить результат(запрос) и занести его в таблицу attempt для соответствующей попытки.  
Результат попытки вычислить как количество правильных ответов, деленное на 3 (количество вопросов в каждой попытке) и умноженное на 100. 
Результат округлить до целого. */

update attempt
set result = (select round(sum(answer.is_correct)/3*100) as result
                from testing
                inner join answer on answer.answer_id = testing.answer_id
                where testing.attempt_id = 8
                group by testing.attempt_id)
where attempt_id = 8;

select * from attempt;
