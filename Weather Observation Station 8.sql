SELECT DISTINCT city
FROM STATION
WHERE LOWER(LEFT(CITY,1)) IN ('a','e', 'i', 'o', 'u')
AND LOWER(RIGHT(CITY, 1)) IN ('a','e', 'i', 'o', 'u');
