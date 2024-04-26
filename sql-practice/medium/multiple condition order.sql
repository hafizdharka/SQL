select first_name, last_name, allergies
from patients
where allergies in ('Penicilin', 'Morphine')
order by allergies,  first_name, last_name 
