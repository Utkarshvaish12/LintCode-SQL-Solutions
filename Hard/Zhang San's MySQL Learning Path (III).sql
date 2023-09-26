CREATE OR REPLACE VIEW v_best_teachers AS
WITH RankedTeachers AS (
    SELECT
        teacher_id,student_count,country,email,
        ROW_NUMBER() OVER (PARTITION BY country ORDER BY student_count DESC) AS r
    FROM (
        SELECT c.teacher_id,SUM(c.student_count) AS student_count,t.country,t.email
        FROM courses AS c
        JOIN teachers AS t ON t.id = c.teacher_id
        GROUP BY c.teacher_id, t.country, t.email
    ) AS s
)
SELECT teacher_id,student_count,country,email
FROM RankedTeachers
WHERE r = 1;