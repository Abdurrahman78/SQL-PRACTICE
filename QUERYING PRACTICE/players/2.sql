--write a SQL query to find the side (e.g., right or left) Babe Ruth hit.

--output is bats
SELECT "bats" FROM "players"
--get this info from this specfic player with this last and first name
WHERE "first_name"='Babe' AND "last_name"='Ruth';
