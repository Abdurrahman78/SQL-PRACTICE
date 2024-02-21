--write a SQL query to find the average entropy of prints by Hiroshige, rounded to two decimal places. Call the resulting column “Hiroshige Average Entropy”.

--select avg and name it Hiroshige Average Entropy and rounded to two decimal places
SELECT  ROUND(AVG("entropy"),2) AS "Hiroshige Average Entropy" FROM "views"
--by hiroshige
WHERE "artist"='Hiroshige';
