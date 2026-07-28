-- Write your query below
select seller_name
from seller t1 left join orders t2
on t1.seller_id=t2.seller_id
and extract(year from sale_date)='2020'
where t2.seller_id is null
order by 1 asc