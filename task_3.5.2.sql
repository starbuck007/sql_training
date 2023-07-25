/* Заполнить таблицу step_keyword следующим образом: если ключевое слово есть в названии шага, то включить в step_keyword 
строку с id шага и id ключевого слова.  */


insert into step_keyword(step_id, keyword_id)

select step_id, keyword_id
from step, keyword
where instr(step_name, concat(' ', keyword_name, ' ')) > 0
   or instr(step_name, concat(' ', keyword_name, ',')) > 0
   or instr(step_name, concat(' ', keyword_name, '(')) > 0
   or regexp_instr(step_name, concat(' ', keyword_name, '\\b')) > 0


order by keyword_id;