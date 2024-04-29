select allergies, count(*) as con
from patients
where allergies is not null
group by allergies
order by con desc
