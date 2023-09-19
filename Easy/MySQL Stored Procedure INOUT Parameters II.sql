create procedure UpdateStudentCount (inout count int, in des int)
begin
    select student_count into count from courses where name = 'Django';
    set count = count - des;
    update courses set student_count = count where name = 'Django';
end;