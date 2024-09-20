# Write your MySQL query statement below
select distinct num as ConsecutiveNums
from (
    select num,
        lag(num,1) over (order by id) as one,
        lag(num,2) over (order by id) as two
    from logs
) cons
where num=one and num=two

