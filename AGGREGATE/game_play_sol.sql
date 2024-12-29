# Write your MySQL query statement below

WITH Firsts AS (
    SELECT player_id, MIN(event_date) as first_date
    FROM Activity
    GROUP BY player_id
)

SELECT ROUND(SUM(DATEDIFF(a.event_date, f.first_date)=1)/COUNT(DISTINCT f.player_id), 2)
AS fraction
FROM Activity a
LEFT JOIN Firsts f ON f.player_id=a.player_id;