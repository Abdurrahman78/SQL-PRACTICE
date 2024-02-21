--write a SQL query to return the first and last names of all right-handed batters. Sort the results alphabetically by first name, then by last name.

--output first and last names
SELECT "first_name","last_name" FROM "players"

--where they bat is right handed
WHERE "bats"='R'

--sort first and then last name
ORDER BY "first_name","last_name";
