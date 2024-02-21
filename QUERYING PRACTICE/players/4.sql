--write a SQL query to find the first and last names of players who were not born in the United States. Sort the results alphabetically by first name, then by last name.


--output first and last name
SELECT "first_name","last_name" FROM "players"

-- not born in usa
WHERE "birth_country"!='USA'

--sort asecending by first name then last
ORDER BY "first_name","last_name";

