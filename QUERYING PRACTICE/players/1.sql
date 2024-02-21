--write a SQL query to find the hometown (including city, state, and country) of Jackie Robinson

--output city state country
SELECT "birth_city","birth_state","birth_country" FROM "players"
--get this info from this specfic player with this last and first name
WHERE "first_name"='Jackie' AND "last_name"='Robinson';
