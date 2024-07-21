-- Where Clause

# Only print row with name Leslie
select *
from Parks_and_Recreation.employee_salary
where first_name = 'Leslie';

# Only print row with salary more than 50.000
select *
from Parks_and_Recreation.employee_salary
where salary>50000;

# Only print row with every gender except female
select *
from Parks_and_Recreation.employee_demographics
where gender !='Female';

# Only print row with every birtday after 1985-01-01
select *
from Parks_and_Recreation.employee_demographics
where birth_date !='1985-01-01';

# Two condition must be true
select *
from Parks_and_Recreation.employee_demographics
where birth_date !='1985-01-01' and gender='male';

# one of the condition must be true
select *
from Parks_and_Recreation.employee_demographics
where birth_date !='1985-01-01' or gender='male';

# extra complex
select *
from Parks_and_Recreation.employee_demographics
where (birth_date !='1985-01-01' and gender='male') or age>55;

-- LIKE Statement

# it search like where
select *
from Parks_and_Recreation.employee_demographics
where first_name like 'Jer';

# but have extra featue
# print row in first name starts with Jer then end with no matter what
select *
from Parks_and_Recreation.employee_demographics
where first_name like 'Jer%';

# anything comes before and after 'er'
select *
from Parks_and_Recreation.employee_demographics
where first_name like '%er%';

# anything comes after a
select *
from Parks_and_Recreation.employee_demographics
where first_name like 'a%';

# anything comes after a and two character after it
select *
from Parks_and_Recreation.employee_demographics
where first_name like 'a__';



