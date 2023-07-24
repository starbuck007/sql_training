/* Из таблицы applicant, созданной на предыдущем шаге, удалить записи, если абитуриент на выбранную 
образовательную программу не набрал минимального балла хотя бы по одному предмету (использовать запрос из 
предыдущего урока). */

delete from applicant
where (program_id, enrollee_id) in (select program_enrollee.program_id, program_enrollee.enrollee_id
                                    from program_enrollee
                                    inner join enrollee_subject on enrollee_subject.enrollee_id = program_enrollee.enrollee_id
                                    inner join program_subject on program_subject.subject_id = enrollee_subject.subject_id and program_subject.program_id = program_enrollee.program_id
                                    group by program_enrollee.program_id, program_enrollee.enrollee_id, enrollee_subject.subject_id, program_subject.min_result, enrollee_subject.result
                                    having enrollee_subject.result < program_subject.min_result);

select * from applicant;