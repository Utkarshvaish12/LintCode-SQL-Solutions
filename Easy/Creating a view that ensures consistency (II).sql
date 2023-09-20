CREATE VIEW v_CN_teachers AS
SELECT * FROM `teachers`
WHERE `country` = 'CN'
WITH CHECK OPTION;