select doctor_id,concat(first_name,' ', last_name) as full_name, min(admission_date),max(admission_date)
from doctors d
left join admissions a
on d.doctor_id=a.attending_doctor_id
group by full_name
order by doctor_id ASC

select
  doctor_id,
  first_name || ' ' || last_name as full_name,
  min(admission_date) as first_admission_date,
  max(admission_date) as last_admission_date
from admissions a
  join doctors ph on a.attending_doctor_id = ph.doctor_id
group by doctor_id;
