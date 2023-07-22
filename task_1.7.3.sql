update fine f, traffic_violation tv
    set f.sum_fine = tv.sum_fine
    where f.sum_fine is Null
            and f.violation = tv.violation;

select * from fine; 