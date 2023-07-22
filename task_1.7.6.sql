update fine f, payment p
    set f.date_payment = p.date_payment,
        f.sum_fine = if((datediff(p.date_payment, p.date_violation) <= 20), f.sum_fine/ 2, f.sum_fine)
    where f.name = p.name and f.number_plate = p.number_plate and f.violation = p.violation and f.date_payment is Null;
    
select name, number_plate, sum_fine,sum_fine, date_payment from fine;