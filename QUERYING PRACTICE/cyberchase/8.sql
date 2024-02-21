--write a query that counts the number of episodes released in the last 6 years, from 2018 to 2023, inclusive.

--we want the count all episodes
SELECT COUNT(*) FROM "episodes"

--that apply to this condtion where the air date is between these dates
WHERE "air_date" BETWEEN date('2018-01-01') AND date('2023-12-31');
