--write a SQL query to count the number of players who bat (or batted) right-handed and throw (or threw) left-handed, or vice versa.

--output is counting players
SELECT COUNT("id") FROM "players"

--who (bat R AND throw L) OR (who bat L and throw R)
WHERE ("bats"='R' AND "throws"='L') OR ("bats"='L' AND "throws"='R');
