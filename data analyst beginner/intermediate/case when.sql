-- Case Statements

SELECT first_name, last_name, age,
CASE
	WHEN age <= 30 then 'Young'
	WHEN age between 31 and 50 then 'Old'
	WHEN age >= 50 then 'Near Death'
END AS Age_Group
FROM employee_demographics;

select first_name, last_name, salary,
case
	when salary < 50000 then salary + salary * 1.05
    when salary >= 50000 then salary + salary * 1.07
end as total_income,
case
	when dept_id = 6 then salary * 1.10 -- check the code on parks_departments table
end as bonus
from employee_salary;


    
select *
from employee_salary;
