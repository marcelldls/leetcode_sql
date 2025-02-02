# Write your MySQL query statement below

WITH firsts AS (
    SELECT               
        customer_id, 
        MIN(order_date) AS order_date
    FROM Delivery
    GROUP BY customer_id
)

SELECT ROUND(COUNT(CASE WHEN d.order_date = d.customer_pref_delivery_date THEN 1 END) * 100.0 / COUNT(*), 2) AS immediate_percentage 
FROM Delivery d
JOIN firsts f ON d.customer_id = f.customer_id AND d.order_date = f.order_date;
