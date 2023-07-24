/* Занести в столбец str_id таблицы applicant_order нумерацию абитуриентов, 
которая начинается с 1 для каждой образовательной программы. */

set @num_enr := 0;
set @num_pro := 1;
update applicant_order    
set str_id = if(program_id = @num_pro, @num_enr := @num_enr + 1, (@num_enr := 1 and @num_pro := @num_pro + 1));

select * from applicant_order;