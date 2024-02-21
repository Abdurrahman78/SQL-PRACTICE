--write SQL query to get the first and last nanme  of players height where their height is above 70 ,give me the top 30 of those as well, and renname  the height  "Players Height"

--output height , first and last name
SELECT "first_name","last_name","height" AS "Players Height" FROM "players"

--where is height is above 70
WHERE "height">70

--sort the height descending and give me top 30
ORDER BY "height" DESC LIMIT 30;
