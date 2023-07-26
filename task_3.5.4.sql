/* Посчитать, сколько студентов относится к каждой группе. Столбцы назвать Группа, Интервал, Количество. Указать границы интервала. */

select Группа,
       case
           when Группа = 'I' then 'от 0 до 10'
           when Группа = 'II' then 'от 11 до 15'
           when Группа = 'III' then 'от 16 до 27'
           else 'больше 27'
       end as Интервал,
       count(rate) as Количество


from

(select student_name, rate,
case
    when rate <= 10 then 'I'
    when rate <= 15 then 'II'
    when rate <= 27 then 'III'
    else  'IV'
   end as Группа
from (select student.student_name, count(step_student.result) as rate
from step_student 
inner join student on student.student_id = step_student.student_id
where step_student.result = 'correct'
group by student.student_name) query_in) query_in_2
group by Группа, Интервал
order by Группа;