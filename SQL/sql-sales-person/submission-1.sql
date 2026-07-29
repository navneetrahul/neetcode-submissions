-- Write your query below
select 
name
from(
select t1.sales_id, t1.name, t3.name as company,
case when t3.name='CRIMSON' then 1 else 0 end as flag
from sales_person t1
left join orders t2
on t1.sales_id=t2.sales_id
left join company t3
on t2.com_id=t3.com_id) c1
group by name, sales_id
having sum(flag)=0
