create view v_teachers as 
select v1.teacher_id,v2.name,v2.email,v2.age,v2.country,v1.student_count
from v_courses as v1
left Join teachers as v2 on v1.teacher_id=v2.id;