select * 
from parks_and_recreation.employee_demographics;

# PEMDAS 
#(Paranthesis - Exponent - Multiplication - Division - Addition - Substraction)
select first_name, 
last_name, 
birth_date,
age,
(age + 10)*10
from parks_and_recreation.employee_demographics;

# Distinct returns unique value
select distinct gender
from parks_and_recreation.employee_demographics;

# Distinct returns unique value from combination of 2 colomns
select distinct first_name, gender
from parks_and_recreation.employee_demographics;
