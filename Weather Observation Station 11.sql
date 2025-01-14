SELECT DISTINCT city
FROM STATION
WHERE LEFT(city, 1) NOT IN ('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U')
OR RIGHT(city, 1) NOT IN ('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U');
