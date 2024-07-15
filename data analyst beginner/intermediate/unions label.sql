-- Unions
-- used to merge two tables vertical
-- it must be specific

select *
from Parks_and_Recreation.employee_demographics dem
union
select *
from Parks_and_Recreation.employee_salary sal;

-- by default union would use distinct
-- even we not write it (distinct)

select first_name, last_name
from Parks_and_Recreation.employee_demographics dem
union 
select first_name, last_name
from Parks_and_Recreation.employee_salary sal;

-- if we dont want to distinct it
select first_name, last_name
from Parks_and_Recreation.employee_demographics dem
union all
select first_name, last_name
from Parks_and_Recreation.employee_salary sal;

-- labeling (add new column)
select first_name, last_name, 'Old'
from Parks_and_Recreation.employee_demographics
where age>50;

-- without labeling
select first_name, last_name
from Parks_and_Recreation.employee_demographics
where age>40;

-- complex labeling 

select first_name, last_name, 'Old Man' as label
from Parks_and_Recreation.employee_demographics dem
where dem.age>40 and gender ='Male'
union
select first_name, last_name, 'Old Lady' as label
from Parks_and_Recreation.employee_demographics dem
where dem.age>40 and gender = 'Female'
union
select first_name, last_name, 'Highly Paid' as label
from Parks_and_Recreation.employee_salary sal
where sal.salary>70000
;
 -- add order
select first_name, last_name, 'Old Man' as label
from Parks_and_Recreation.employee_demographics dem
where dem.age>40 and gender ='Male'
union
select first_name, last_name, 'Old Lady' as label
from Parks_and_Recreation.employee_demographics dem
where dem.age>40 and gender = 'Female'
union
select first_name, last_name, 'Highly Paid' as label
from Parks_and_Recreation.employee_salary sal
where sal.salary>70000
order by first_name, last_name
;

