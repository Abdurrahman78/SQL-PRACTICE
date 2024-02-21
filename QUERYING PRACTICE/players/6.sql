--write a SQL query to return the first name, last name, and debut date of players born in Pittsburgh, Pennsylvania (PA). Sort the results first by debut date—from most recent to oldest—then alphabetically by first name, followed by last name.

--output is first,last name and debut date
SELECT "first_name","last_name","debut" FROM "players"

--where they were born in pits pen
WHERE "birth_city"='Pittsburgh' AND "birth_state"='PA'

--sort descending by debut date and asending for first and last names
ORDER BY "debut" DESC,"first_name","last_name";
