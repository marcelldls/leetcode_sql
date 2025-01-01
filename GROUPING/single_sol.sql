# Write your MySQL query statement below
WITH Singles AS (
    Select num FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
)

SELECT MAX(num) AS num
FROM Singles;