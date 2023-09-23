CREATE PROCEDURE addTeachers()
BEGIN
    DECLARE i INT;
    DECLARE name VARCHAR(255);
    DECLARE email VARCHAR(255);
    DECLARE age INT;
    SET i = 0;
    WHILE i < 30000 DO
        SET i = i+1;
        SET name = CONCAT('teacher', i);
        SET email = CONCAT(name, '@chapter.com');
        SET age = 26 + (i%20);
        INSERT INTO teachers(name,email,age,country)
        VALUES(name, email, age, '');
    END WHILE;
END;