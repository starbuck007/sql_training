select name, number_plate, violation
from fine
group by name, number_plate, violation
having count(violation) >= 2
order by name, number_plate, violation;