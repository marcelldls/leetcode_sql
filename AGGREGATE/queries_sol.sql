# Write your MySQL query statement below
SELECT 
    q.query_name, 
    ROUND(AVG(q.rating/q.position),2) AS quality, 
    ROUND(SUM(q.rating<3)/COUNT(*),4)*100 AS poor_query_percentage 
FROM Queries q
GROUP BY q.query_name