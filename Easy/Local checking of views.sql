CREATE VIEW v_teachers_1
AS
SELECT * FROM v_teachers
WHERE age < 20
WITH LOCAL CHECK OPTION;