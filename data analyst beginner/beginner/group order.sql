-- Group by

# count use to count how many rows
select gender, avg(age), max(age), min(age), count(age)
from Parks_and_Recreation.employee_demographics
group by gender;

# return combination
select occupation, salary
from Parks_and_Recreation.employee_salary
group by occupation, salary;

# order by

# order based first name asc
select *
from Parks_and_Recreation.employee_demographics
order by first_name;

# more details
select *
from Parks_and_Recreation.employee_demographics
order by first_name desc;

# order based first_name (prioritized) then age in desc
select *
from Parks_and_Recreation.employee_demographics
order by first_name, age desc;

# order based gender (prioritized) then age in desc
select *
from Parks_and_Recreation.employee_demographics
order by gender, age desc;

# use query use column index
select *
from Parks_and_Recreation.employee_demographics
order by 5, 4 desc;

