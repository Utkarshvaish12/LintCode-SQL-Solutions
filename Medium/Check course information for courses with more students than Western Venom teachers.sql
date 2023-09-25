select *
from courses
where student_count>all(select student_count from courses where teacher_id in (
    select id from teachers where name='Western Venom'
)) and teacher_id not in (
    select id from teachers where name='Western Venom')