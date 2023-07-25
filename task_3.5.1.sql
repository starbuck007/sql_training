/* Для каждого вопроса вывести процент успешных решений, то есть отношение количества верных ответов к общему количеству ответов, 
значение округлить до 2-х знаков после запятой. Также вывести название предмета, к которому относится вопрос, и общее количество 
ответов на этот вопрос. В результат включить название дисциплины, вопросы по ней (столбец назвать Вопрос), а также два вычисляемых 
столбца Всего_ответов и Успешность. Информацию отсортировать сначала по названию дисциплины, потом по убыванию успешности, а потом 
по тексту вопроса в алфавитном порядке.

Поскольку тексты вопросов могут быть длинными, обрезать их 30 символов и добавить многоточие "...". */

select 

concat(module.module_id, ' ', left(module.module_name, 14), '...') as Модуль, 
concat(module.module_id, '.', lesson.lesson_position, ' ', left(lesson.lesson_name, 12), '...') as Урок, 
concat(module.module_id, '.', lesson.lesson_position, '.', step.step_position, ' ', step.step_name) as Шаг

from module
inner join lesson on lesson.module_id = module.module_id
inner join step on step.lesson_id = lesson.lesson_id

where step.step_name like lower('%вложенн%')

order by module.module_id, lesson.module_id, step.lesson_id;