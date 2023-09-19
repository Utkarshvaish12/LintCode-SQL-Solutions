CREATE PROCEDURE GetTotalTeacher()
BEGIN
    DECLARE totalTeacher INT DEFAULT 0;

    SELECT COUNT(*)
    INTO totalTeacher
    FROM teachers;

    SELECT totalTeacher;
END;