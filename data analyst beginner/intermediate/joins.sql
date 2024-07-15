select *
from Parks_and_Recreation.employee_demographics;

select *
from Parks_and_Recreation.employee_salary;

-- bring rows with complete value for each table
select *
from Parks_and_Recreation.employee_demographics ed
inner join Parks_and_Recreation.employee_salary es
on ed.employee_id = es.employee_id
;

-- left join takes everything on the left table (es)
-- then return the matches thing from the second one (ed)
-- even it had null or missing values
select *
from Parks_and_Recreation.employee_demographics ed
left join employee_salary es 
on ed.employee_id = es.employee_id;

select *
from employee_salary;

-- Self join
-- tied table with itself
-- decreased one row if on the key we use +1, it work reversed
select eso.employee_id as emp_santa, 
eso.first_name as first_name_santa,
eso.last_name as last_name_santa,
est.employee_id as emp_santa, 
est.first_name as first_name_santa,
est.last_name as last_name_santa
from employee_salary eso
join employee_salary est
	on eso.employee_id + 1=est.employee_id;

-- joining multiple tables
select *
from Parks_and_Recreation.employee_demographics dem
inner join Parks_and_Recreation.employee_salary sal
	on dem.employee_id = sal.employee_id
inner join Parks_and_Recreation.parks_departments par
	on sal.dept_id = par.department_id
;


