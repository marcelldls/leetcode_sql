# Write your MySQL query statement below
WITH Min_year AS (
    SELECT product_id, MIN(year) as first_year
    FROM Sales
    GROUP BY product_id
)

SELECT 
    s.product_id, 
    m.first_year,
    s.quantity,
    s.price
FROM Sales s
JOIN Min_year m 
ON m.product_id=s.product_id AND m.first_year=s.year;
