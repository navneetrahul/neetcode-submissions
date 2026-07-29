-- Write your query below
select name 
from sales_person
where sales_id not in(
select sales_id
from orders t1 left join company t2
on t1.com_id=t2.com_id
where name='CRIMSON')