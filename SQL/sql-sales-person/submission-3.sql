-- Write your query below
select t1.name
from sales_person t1 left join orders t2
on t1.sales_id=t2.sales_id
left join company t3
on t2.com_id=t3.com_id
group by t1.sales_id, t1.name
having sum(case when t3.name='CRIMSON' then 1 else 0 end)=0;




-- SELECT sp.name
-- FROM sales_person sp
-- LEFT JOIN orders o ON sp.sales_id = o.sales_id
-- LEFT JOIN company c ON o.com_id = c.com_id
-- GROUP BY sp.sales_id, sp.name
-- HAVING SUM(CASE WHEN c.name = 'CRIMSON' THEN 1 ELSE 0 END) = 0;