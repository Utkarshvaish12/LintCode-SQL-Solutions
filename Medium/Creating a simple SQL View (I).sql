create view v_courses_teachers as 
select c.id,c.name,c.student_count,c.created_at,c.teacher_id,
t.name as teacher_name,t.email as teacher_email
from courses as c
left join teachers as t on c.teacher_id=t.id;