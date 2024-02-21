--write a SQL query to list the titles of all episodes in Cyberchase’s original season, Season 1.

--first we want to access the titles from the table
SELECT "title" FROM "episodes"

--then we want all the titles that were made in season 1
WHERE "season"=1;
