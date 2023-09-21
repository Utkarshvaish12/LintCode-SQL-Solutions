WITH M AS (
  SELECT MAX(Row_Num) AS mr
  FROM (
    SELECT ROW_NUMBER() OVER (ORDER BY num) AS Row_Num
    FROM Number
  ) AS RankedData
),
RankedData AS (
  SELECT
    ROW_NUMBER() OVER (ORDER BY num) AS Row_Num,
    num
  FROM Number
)

SELECT
 ( CASE
    WHEN M.mr % 2 = 0 THEN
      (SELECT AVG(num)
       FROM RankedData
       WHERE Row_Num IN (M.mr / 2, M.mr / 2 + 1))
    WHEN M.mr % 2 != 0 THEN
      (SELECT num
       FROM RankedData
       WHERE Row_Num = (M.mr + 1) / 2)
  END) AS median
FROM RankedData,M
LIMIT 1;
