/* Включить в таблицу applicant_order новый столбец str_id целого типа , расположить его перед первым. */

alter table applicant_order add str_id int first;

select * from applicant_order;