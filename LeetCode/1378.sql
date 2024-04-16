# Write your MySQL query statement below
SELECT unique_id, name
FROM EmployeeUNI e2
RIGHT JOIN Employees e1
ON e2.id=e1.id
