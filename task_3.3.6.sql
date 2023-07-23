/* Посчитать, сколько дополнительных баллов получит каждый абитуриент. 
Столбец с дополнительными баллами назвать Бонус. Информацию вывести в отсортированном по фамилиям виде. */

select enrollee.name_enrollee, if(sum(achievement.bonus) is null, 0, sum(achievement.bonus)) as Бонус
from enrollee
left join enrollee_achievement on enrollee_achievement.enrollee_id = enrollee.enrollee_id
left join achievement on achievement.achievement_id = enrollee_achievement.achievement_id
group by enrollee.name_enrollee
order by enrollee.name_enrollee;
