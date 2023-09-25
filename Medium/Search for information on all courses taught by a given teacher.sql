select *
from courses 
where teacher_id in (select id from teachers where name='Western Venom');