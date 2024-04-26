select p.patient_id, first_name, last_name
from patients p
join admissions a 
on p.patient_id=a.patient_id
where diagnosis='Dementia'
