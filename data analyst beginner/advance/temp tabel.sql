-- Temporary Tables

-- this will move globally but not saved as perm table
Create temporary table temp_table
(
-- initialize column
first_name varchar(50),
last_name varchar(50),
favourite_movie varchar(50)
);

select *
from temp_table; -- Rerun the code when already insert the code below

insert into temp_table
values('Alex','Freberg','Lord of the Rings: The Two Towers');

select *
from employee_salary;

CREATE TEMPORARY TABLE salary_over50k
(
select *
from employee_salary 
where salary >= 50000
)
;

-- It would run also in new tab or new window
select *
from salary_over50k;



