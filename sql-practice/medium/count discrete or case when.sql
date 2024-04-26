select
	sum(gender='M'),
    sum(gender='F')
from patients

elect 
  sum(case when gender = 'M' then 1 end) as male_count,
  sum(case when gender = 'F' then 1 end) as female_count 
from patients;
