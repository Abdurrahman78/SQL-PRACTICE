--write a query that counts the number of episodes released in Cyberchase’s first 6 years, from 2002 to 2007, inclusive.
--we want the count all episodes
SELECT COUNT(*) FROM "episodes"

--that apply to this condtion where the air date is between these dates
WHERE "air_date" BETWEEN date('2002-01-01') AND date('2007-12-31');
