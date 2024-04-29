select pt.patient_id, first_name, last_name
from admissions am
FULL join patients pt
on am.patient_id=pt.patient_id
where admission_date is null

SELECT
  patients.patient_id,
  first_name,
  last_name
from patients
where patients.patient_id not in (
    select admissions.patient_id
    from admissions
  )
