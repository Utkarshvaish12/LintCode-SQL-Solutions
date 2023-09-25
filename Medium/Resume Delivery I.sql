select name
from students
where id not in (select student_id from recording where company_id in (
    select id from companies where name='Alibaba'
));