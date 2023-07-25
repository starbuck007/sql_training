/*  Реализовать поиск по ключевым словам. Вывести шаги, с которыми связаны ключевые слова MAX и AVG одновременно. 
Для шагов указать id модуля, позицию урока в модуле, позицию шага в уроке через точку, после позиции шага перед заголовком - пробел. 
Позицию шага в уроке вывести в виде двух цифр (если позиция шага меньше 10, то перед цифрой поставить 0). Столбец назвать Шаг. 
Информацию отсортировать по первому столбцу в алфавитном порядке. */

select 
    concat(module.module_id, '.', lesson.lesson_position, '.', if (step.step_position < 10, concat(0, step.step_position), step.step_position), ' ', step.step_name) as Шаг

from step_keyword
inner join step on step.step_id = step_keyword.step_id
inner join keyword on keyword.keyword_id = step_keyword.keyword_id
inner join lesson on lesson.lesson_id = step.lesson_id
inner join module on module.module_id = lesson.module_id
where keyword.keyword_name in ('MAX', 'AVG')
group by 1
having count(keyword.keyword_name) = 2
order by 1;