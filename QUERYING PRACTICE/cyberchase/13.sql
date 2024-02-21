--write a SQL query to find the title  that contains weather or trees

--select title and topic
SELECT "title","air_date" FROM "episodes"

WHERE "title" LIKE '%weather%' OR  "title" LIKE '%trees%';


