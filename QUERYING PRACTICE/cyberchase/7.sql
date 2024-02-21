--write a SQL query to list the titles and topics of all episodes teaching fractions.


--select title and topics
SELECT "title","topic" FROM "episodes"

--where episodes like fractions
WHERE "topic" LIKE '%fractions%';
