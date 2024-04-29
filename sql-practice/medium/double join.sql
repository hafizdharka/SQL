select concat(tb.first_name,' ', tb.last_name), diagnosis, concat(dc.first_name,' ',dc.last_name)
from (select * from patients pt join admissions am on pt.patient_id=am.patient_id) as tb
left join doctors dc
on tb.attending_doctor_id=dc.doctor_id

SELECT
  CONCAT(patients.first_name, ' ', patients.last_name) as patient_name,
  diagnosis,
  CONCAT(doctors.first_name,' ',doctors.last_name) as doctor_name
FROM patients
  JOIN admissions ON admissions.patient_id = patients.patient_id
  JOIN doctors ON doctors.doctor_id = admissions.attending_doctor_id;
