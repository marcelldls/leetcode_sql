# Write your MySQL query statement below
SELECT e2.name FROM Employee e1
LEFT JOIN Employee e2 
ON e1.managerId=e2.id
WHERE e2.name is NOT NULL
GROUP BY e2.name
HAVING COUNT(e2.name)>5;
