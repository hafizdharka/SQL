select province_id, sum(height)
from patients
group by province_id
having sum(height)>7000

select * from (select province_id, SUM(height) as sum_height FROM patients group by province_id) where sum_height >= 7000;
