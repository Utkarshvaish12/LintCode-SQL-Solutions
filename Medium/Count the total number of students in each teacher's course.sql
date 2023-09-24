select t.name as teacher_name,ifnull(sum(c.student_count),0) as student_count
from teachers as t
left join courses as c on t.id=c.teacher_id
group by t.name;