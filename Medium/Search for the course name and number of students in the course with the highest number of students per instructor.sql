SELECT name,student_count
FROM courses
WHERE (teacher_id,student_count) IN (
	SELECT teacher_id, MAX(student_count)
	FROM courses
	GROUP BY teacher_id
);