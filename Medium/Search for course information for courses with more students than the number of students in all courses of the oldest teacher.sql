select *
from courses 
where student_count>(select max(student_count) from courses where teacher_id in (
    select id from teachers where age=(select max(age) from teachers)
));