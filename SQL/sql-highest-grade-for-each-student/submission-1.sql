-- Write your query below
select student_id, exam_id, score
from(
select 
*, dense_rank()over(partition by student_id order by score desc, 
exam_id asc) as d_rnk
from exam_results) t1
where d_rnk=1
order by student_id 