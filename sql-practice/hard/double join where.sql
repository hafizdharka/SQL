select pt.patient_id, pt.first_name, pt.last_name, specialty
from patients pt
join admissions am on pt.patient_id=am.patient_id
join doctors dc on am.attending_doctor_id=dc.doctor_id
where diagnosis='Epilepsy' and dc.first_name='Lisa'
