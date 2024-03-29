-- 코드를 입력하세요
WITH RECURSIVE TIME AS (
    SELECT 0 AS HOUR
    UNION ALL
    SELECT HOUR + 1 
      FROM TIME 
     WHERE HOUR < 23
)
SELECT t.HOUR, IFNULL(a.COUNT,0) AS COUNT FROM TIME t LEFT JOIN (SELECT HOUR(DATETIME) HOUR, COUNT(*) COUNT FROM ANIMAL_OUTS GROUP BY HOUR) a ON t.HOUR = a.HOUR ORDER BY HOUR