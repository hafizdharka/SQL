# Write your MySQL query statement below
SELECT w1.id As ID
FROM Weather w1
LEFT JOIN Weather w2
ON w1.id=w2.id+1
WHERE w1.temperature>w2.temperature
