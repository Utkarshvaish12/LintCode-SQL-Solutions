SELECT * 
FROM courses 
WHERE student_count > any(
    SELECT student_count  
    FROM courses 
    WHERE teacher_id =(
        SELECT id FROM teachers WHERE name = 'Eastern Heretic'
    )
)and teacher_id not in(
        SELECT id FROM teachers WHERE name = 'Eastern Heretic'
);