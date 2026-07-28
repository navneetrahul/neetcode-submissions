-- Write your query below
select t1.student_id, min(exam_id) as exam_id, t2.score as score
from exam_results t1
inner join(
select 
student_id, max(score) as score
from exam_results
group by 1) t2
on t1.student_id=t2.student_id and t1.score=t2.score
group by 1,3
order by 1