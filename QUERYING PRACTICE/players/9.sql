--write a SQL query to find the players who played their final game in the MLB in 2022. Sort the results alphabetically by first name, then by last name.

--outputs are first and last name
SELECT "first_name","last_name" FROM "players"

--where final game was betweenn first and last day of 2022
WHERE "final_game" BETWEEN date('2022-01-01') AND date('2022-12-31')

--sort by first then last
ORDER BY "first_name","last_name";
