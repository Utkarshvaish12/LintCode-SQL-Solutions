SELECT country, SUM(student_count) AS student_count
FROM courses
JOIN teachers ON courses.teacher_id = teachers.id
WHERE country LIKE 'U%'
GROUP BY country
HAVING SUM(student_count) BETWEEN 2000 AND 5000
ORDER BY student_count DESC, country;