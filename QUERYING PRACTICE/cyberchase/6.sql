--list the titles of episodes from season 6 (2008) that were released early, in 2007.

--select titles
SELECT "title" FROM "episodes"

-- from season 6 between first day of 2007 and last
WHERE "season"=6 AND "air_date" BETWEEN date('2007-01-01') AND ('2007-12-31');
