-- CTEs

-- Result as the same like subqueries
with CTE_Example as 
(
select gender, avg(salary), max(salary), min(salary), count(salary)
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
group by gender
)
select *
from CTE_Example
;

-- Name the column without using alias
with CTE_Example(gender, avg_sal,max_sal, min_sal, count_sal) as 
(
select gender, avg(salary), max(salary), min(salary), count(salary)
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
group by gender
)
select *
from CTE_Example;


-- Multiple CTEs
WITH CTE_Example as
(
select employee_id, gender, birth_date
from employee_demographics
where birth_date > '1985-01-01'
),
CTE_Example2 as
(
select employee_id, salary
from employee_salary
where salary>50000
)
select *
from CTE_Example ct1
join CTE_Example2 ct2
on ct1.employee_id = ct2.employee_id
;
