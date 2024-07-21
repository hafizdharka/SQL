-- Limit & Aliasing

-- Pick top 3 age
select *
from Parks_and_Recreation.employee_demographics
order by age desc
limit 3;

-- Pick top 3, then the top 1 from the top 3 list
select *
from Parks_and_Recreation.employee_demographics
order by age desc
limit 3, 1;

-- Aliasing
select gender, avg(age) as avg_age
from Parks_and_Recreation.employee_demographics
group by gender
having avg_age>40;

