select province_name, count(*) as amount
from patients pt
left join province_names pv
on pt.province_id=pv.province_id
group by province_name
order by amount desc
