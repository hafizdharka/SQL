-- String Functions

select first_name, length(first_name)
from employee_demographics
order by 2;

-- Lower and Upper
select first_name, upper(first_name)
from employee_demographics;

select first_name, lower(first_name)
from employee_demographics;

-- Taking Whitespace
select trim('    skies     '); -- left and right
select ltrim('    skies     '); -- left only
select rtrim('    skies     '); -- right only

select first_name, lower(first_name)
from employee_demographics;

-- Substring
select first_name, 
left(first_name,4), 
right(first_name,4),
substring(first_name,3,2), -- slice at index 3 and end at 2 index after
birth_date,
substring(birth_date,6,2) 
from employee_demographics;

-- Replace
select first_name, replace(first_name,'a','z')
from employee_demographics;

-- Locate
select locate('x','Alexander'); -- Return 4 as x location

select first_name, locate('x',first_name) -- Return 4 as x location
from employee_demographics;

select first_name, locate('il',first_name) -- Return 4 as il as the first letter index
from employee_demographics;

-- Concate
select first_name, last_name, concat(first_name,' ', last_name)
from employee_demographics;

 
