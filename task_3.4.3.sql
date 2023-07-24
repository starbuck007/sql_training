/* Повысить итоговые баллы абитуриентов в таблице applicant на значения дополнительных баллов 
(использовать запрос из предыдущего урока). */

update applicant
inner join
            (select enrollee_achievement.enrollee_id, if(sum(achievement.bonus) is null, 0, sum(achievement.bonus)) as extra_bonus
                    from enrollee_achievement
                    left join achievement on achievement.achievement_id = enrollee_achievement.achievement_id
                    group by enrollee_achievement.enrollee_id) as bonus using(enrollee_id)
set itog = itog + extra_bonus;

select * from applicant;