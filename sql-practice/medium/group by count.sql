select city, count(*) as co
from patients
group by city
order by co desc, city asc
