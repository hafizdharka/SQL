select allergies, count(*) as con
from patients
where allergies is not null
group by allergies
order by con desc

select allergies, count(allergies) as con
from patients
group by allergies
order by con desc
