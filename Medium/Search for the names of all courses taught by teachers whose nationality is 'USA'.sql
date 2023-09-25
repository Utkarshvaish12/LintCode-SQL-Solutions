select c.name
from courses as c
join teachers as t on t.id=c.teacher_id
where t.country='USA';