SELECT c.name AS course_name,c.student_count AS student_count,t.name AS teacher_name
FROM courses AS c,teachers AS t
WHERE c.teacher_id = t.id and student_count = (SELECT MAX(student_count) FROM courses);