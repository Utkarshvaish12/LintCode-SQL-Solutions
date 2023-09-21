select c.id,c.student_count as student_count
from teachers as t
join courses as c on t.id=c.teacher_id
where t.country not in ('USA','UK');