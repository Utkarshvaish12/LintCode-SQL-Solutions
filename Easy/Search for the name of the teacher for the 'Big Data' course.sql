SELECT t.name
from courses as c
join teachers as t on c.teacher_id=t.id
where c.name='Big Data';