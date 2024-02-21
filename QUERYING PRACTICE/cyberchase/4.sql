--write a query to find the titles of episodes that do not yet have a listed topic.


--select titles
SELECT "title" FROM "episodes"

--find which topics are null
WHERE "topic" IS NULL;

