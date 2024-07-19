# Write your MySQL query statement below
SELECT el.name as Employee
FROM Employee el
LEFT JOIN Employee er
ON el.managerId = er.id
WHERE el.salary > er.salary
;
