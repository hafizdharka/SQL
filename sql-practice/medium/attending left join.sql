select first_name, last_name, count(*)
from doctors d
left join admissions a
on d.doctor_id=a.attending_doctor_id
group by first_name

SELECT
  first_name,
  last_name,
  count(*)
from
  doctors p,
  admissions a
where
  a.attending_doctor_id = p.doctor_id
group by p.doctor_id;
