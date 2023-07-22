create table fine (fine_id int primary key auto_increment,
                   name varchar(30),
                   number_plate varchar(6),
                   violation varchar(50),
                   sum_fine decimal(8,2),
                   date_violation date,
                   date_payment date);