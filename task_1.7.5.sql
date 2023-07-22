update fine, (select name, number_plate, violation
                from fine
                group by name, number_plate, violation
                having count(violation) >= 2
                order by name, number_plate, violation) query_in
    set fine.sum_fine = if(fine.date_payment is Null, sum_fine * 2, sum_fine)
    where fine.name = query_in.name 
        and fine.number_plate = query_in.number_plate 
            and fine.violation = query_in.violation;
            
select * from fine;