WITH R1 AS(
    SELECT 
        LAT_N,
        (SELECT COUNT(*) FROM STATION) AS TOTAL,
        ROW_NUMBER() OVER ( ORDER BY LAT_N ASC) AS RNUM
    FROM STATION
)
SELECT 
    ROUND(
        (
            (SELECT LAT_N 
            FROM R1
            WHERE RNUM = FLOOR((TOTAL +1)/2))
        + 
            (SELECT LAT_N 
            FROM R1
            WHERE RNUM = FLOOR((TOTAL+2)/2))
        )/2
    ,4)
