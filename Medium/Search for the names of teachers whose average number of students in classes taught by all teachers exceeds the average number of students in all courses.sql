 select t.name as name
 from teachers as t
 join courses as c on t.id=c.teacher_id
 group by t.name
having avg(c.student_count)>(select avg(student_count) from courses);