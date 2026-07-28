-- Write your query below
SELECT c.customer_id, c.customer_name
-- ,sum(case when o.product_name='A' then 1 else 0 end) as count_A,
-- sum(case when o.product_name='B' then 1 else 0 end) as count_B,
-- sum(case when o.product_name='C' then 1 else 0 end) as count_C
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.customer_name
having
sum(case when product_name='A' then 1 else 0 end)>0
and sum(case when product_name='B' then 1 else 0 end)>0
and sum(case when product_name='C' then 1 else 0 end)=0
order by customer_name
-- HAVING 
--     SUM(CASE WHEN o.product_name = 'A' THEN 1 ELSE 0 END) > 0
--     AND SUM(CASE WHEN o.product_name = 'B' THEN 1 ELSE 0 END) > 0
--     AND SUM(CASE WHEN o.product_name = 'C' THEN 1 ELSE 0 END) = 0
-- ORDER BY c.customer_name;