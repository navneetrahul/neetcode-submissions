-- Write your query below
select c1.name
from customers c1 left join orders o1
on c1.id=o1.customer_id
where o1.customer_id is null