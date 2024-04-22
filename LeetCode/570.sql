SELECT name 
FROM employee 
WHERE id IN (SELECT managerId FROM employee GROUP BY managerID HAVING COUNT(*)>=5)
