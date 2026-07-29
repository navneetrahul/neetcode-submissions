-- Write your query below

select name, coalesce(sum(distance),0) as travelled_distance
from users t1 
left join rides t2
on t1.id=t2.user_id
group by name
order by 2 desc, 1 asc