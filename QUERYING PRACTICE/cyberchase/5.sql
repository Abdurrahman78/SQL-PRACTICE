--find the title of the holiday episode that aired on December 31st, 2004

--select title
SELECT "title" FROM "episodes"

--find the date
WHERE "air_date"=date('2004-12-31');
