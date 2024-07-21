-- Windows Function

-- Normal Group By
select gender, avg(salary)
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id
group by gender;

-- All the rows have its on average salary
select gender, dem.first_name, dem.last_name, avg(salary) over(partition by gender)
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id;

select gender, dem.first_name, dem.last_name, sum(salary) over(partition by gender)
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id;

select dem.first_name, dem.last_name, gender, 
sum(salary) over(partition by gender order by dem.first_name, dem.last_name) as rolling_total -- sum one by row with adding order
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id;

select dem.first_name, dem.last_name, gender, salary,
sum(salary) over(partition by gender order by dem.first_name, dem.last_name) as rolling_total -- sum one by row with adding order
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id;

select dem.employee_id, dem.first_name, dem.last_name, gender, salary,
row_number() over(partition by gender order by salary desc) as row_num, -- sum one by row with adding order
rank() over(partition by gender order by salary desc) as rank_num,
dense_rank() over(partition by gender order by salary desc) as denserank_num
#rank_number() over(partition by gender order by salary) as rolling_total
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id;

