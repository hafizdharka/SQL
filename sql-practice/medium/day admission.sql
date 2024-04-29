select day(admission_date), count(*) as total_adm
from admissions
group by day(admission_date)
order by total_adm desc
