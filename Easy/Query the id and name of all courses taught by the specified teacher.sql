SELECT c.id,c.name as course_name,t.name as teacher_name
from courses as c
join teachers as t on c.teacher_id=t.id
where t.name="Eastern Heretic";