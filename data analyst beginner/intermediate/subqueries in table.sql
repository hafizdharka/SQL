-- Subqueries

select *
from employee_demographics
where employee_id in (
select employee_id from employee_salary where dept_id=1) 
-- only get the parks and recreation, look in pnd table
-- we could only have on column in 'IN' subqueries
;

select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender;

select avg(max_age)
from 
(select gender, 
avg(age) as avg_age, 
max(age) as max_age, 
min(age) as min_age, 
count(age) as num
from employee_demographics
group by gender) as table1; -- must be alias
