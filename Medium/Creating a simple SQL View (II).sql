create view v_courses as 
select  c.id,c.name,c.student_count
from courses as c
left join teachers as t on c.teacher_id=t.id
where t.country not in ('USA','JP') or t.country is null;