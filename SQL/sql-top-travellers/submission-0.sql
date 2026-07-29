-- Write your query below

select 
name, coalesce(sum(distance),0) as travelled_distance
from rides t1
right join users t2
on t1.user_id=t2.id
group by name
order by travelled_distance desc,name asc