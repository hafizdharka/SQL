select distinct pt.patient_id, concat(pt.patient_id, len(last_name), year(birth_date))
from patients pt
join admissions am
on pt.patient_id=am.patient_id
