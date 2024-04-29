select first_name, last_name, count(*)
from patients
group by first_name, last_name
having count(*)>1
