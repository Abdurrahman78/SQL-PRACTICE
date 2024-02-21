--write a SQL query to find the average height and weight, rounded to two decimal places, of baseball players who debuted on or after January 1st, 2000. Return the columns with the name “Average Height” and “Average Weight”, respectively.

--output AVG height and weight rounded by 2 Decimal Places
SELECT ROUND(AVG("height"),2) AS "Average Height",ROUND(AVG("weight"),2) AS "Average Weight" FROM "players"

--where they debut on
WHERE "debut">= date('2000-01-01');

