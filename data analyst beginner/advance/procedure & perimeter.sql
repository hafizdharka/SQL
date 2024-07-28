
-- Would only result the first query
create procedure large_salaries1()
select *
from employee_salary
where salary >= 50000;
select *
from employee_salary
where salary >= 100000;

call large_salaries1();

-- Would return all the query even separated with ';'
-- Because we change the delimiter
Delimiter $$
create procedure large_salaries2()
begin
	select *
	from employee_salary
	where salary >= 50000;
	select *
	from employee_salary
	where salary >= 10000;
end $$

call large_salaries2();

-- Perimeter
-- chose the id to take the salary
Delimiter $$
create procedure large_salaries3(id INT)
begin
	select salary
	from employee_salary
	where employee_id = id
    ;
end $$
DELIMITER ;

call large_salaries3(1)

