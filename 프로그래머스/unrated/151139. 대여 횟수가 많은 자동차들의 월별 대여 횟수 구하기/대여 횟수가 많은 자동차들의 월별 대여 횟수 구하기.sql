-- 코드를 입력하세요
# SELECT MONTH(START_DATE) AS MONTH, CAR_ID, COUNT(CAR_ID)  AS RECORDS FROM (SELECT * FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY WHERE (DATE_FORMAT(START_DATE, '%Y-%m') BETWEEN "2022-08" AND "2022-10")) AS A
# GROUP BY CAR_ID HAVING RECORDS >= 5
# ORDER BY MONTH, CAR_ID DESC
SELECT MONTH(START_DATE) AS MONTH, CAR_ID, COUNT(*) AS RECORDS FROM (SELECT * FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY WHERE (DATE_FORMAT(START_DATE, '%Y-%m') BETWEEN "2022-08" AND "2022-10")) AS A WHERE CAR_ID IN (SELECT CAR_ID FROM (SELECT * FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY WHERE (DATE_FORMAT(START_DATE, '%Y-%m') BETWEEN "2022-08" AND "2022-10")) AS A GROUP BY CAR_ID HAVING COUNT(*) >= 5) GROUP BY MONTH, CAR_ID ORDER BY MONTH, CAR_ID DESC