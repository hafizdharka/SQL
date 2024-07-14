-- Having vs where

-- it would cause an error because it already 
-- it beacase the avg(age) in the 6th line occurse after we group gender together

select gender, avg(age)
from Parks_and_Recreation.employee_demographics
where avg(age)>40
group by gender;

-- the right way using having
select gender, avg(age)
from Parks_and_Recreation.employee_demographics
group by gender
having avg(age)>40;

select occupation, avg(salary)
from Parks_and_Recreation.employee_salary
group by occupation
having avg(salary)>40;
