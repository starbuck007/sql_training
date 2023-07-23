/* Выведите количество абитуриентов, сдавших ЕГЭ по каждому предмету, 
максимальное, минимальное и среднее значение баллов по предмету ЕГЭ. 
Вычисляемые столбцы назвать Количество, Максимум, Минимум, Среднее. 
Информацию отсортировать по названию предмета в алфавитном порядке, 
среднее значение округлить до одного знака после запятой.
*/

select subject.name_subject, count(enrollee_subject.subject_id) as Количество, max(result) as  Максимум, min(result) as Минимум, round(avg(result), 1) as Среднее
from subject
inner join enrollee_subject on enrollee_subject.subject_id = subject.subject_id
group by subject.name_subject
order by subject.name_subject;