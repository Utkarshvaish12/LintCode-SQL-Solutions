select t.name as teacher_name,count(c.name) as course_count
from teachers as t 
left join courses as c on t.id=c.teacher_id
group by t.name 
order by course_count desc,t.name asc;