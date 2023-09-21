SELECT c.name as course_name,t.name as teacher_name
from courses as c
right join teachers as t on c.teacher_id=t.id;