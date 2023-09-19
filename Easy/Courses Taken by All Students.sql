SELECT course_id
FROM courses
GROUP BY course_id
HAVING COUNT(DISTINCT student_id) = (SELECT COUNT(DISTINCT student_id) FROM courses)
ORDER BY course_id ASC;