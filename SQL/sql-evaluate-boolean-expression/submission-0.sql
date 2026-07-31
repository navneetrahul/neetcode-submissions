-- Write your query below
with t1 as(
select t1.*, t2.value as left_operand_value, t3.value as right_operand_value
from expressions t1 left join variables t2
on t1.left_operand=t2.name
left join variables t3
on t1.right_operand=t3.name)

select 
left_operand, operator, right_operand,
case when operator='<' and left_operand_value<right_operand_value
then true
when operator='>' and left_operand_value>right_operand_value
then true
when operator='=' and left_operand_value=right_operand_value
then true
else false end as value
from t1