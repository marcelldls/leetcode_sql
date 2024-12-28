# Write your MySQL query statement below
SELECT r.contest_id, ROUND(COUNT(u.user_id)/(SELECT COUNT(*) FROM Users), 4)*100 AS percentage
FROM Users u
LEFT JOIN Register r ON u.user_id=r.user_id
GROUP BY r.contest_id
HAVING r.contest_id IS NOT NULL
ORDER BY percentage DESC, contest_id ASC;