--list the titles of episodes from season 5, in reverse alphabetical order.

--select titles
SELECT "title" FROM "episodes"

--from season 5, order by reverse
WHERE "season"=5 ORDER BY "title" DESC;
