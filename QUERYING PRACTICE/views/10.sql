--write a SQL query to find which english title by hiroshige contains the word river and has the highest contrast and rename the column to brightest river book


--select english title and rename the colomum
SELECT "english_title" AS "Brightest River Book" FROM "views"
--where the artist is hiroshige and the title contains the word river
WHERE "artist"='Hiroshige' AND "english_title" LIKE '%river%'
--order by desc to get high to low of the brightness and limit 1 to get the highest
ORDER BY "brightness" DESC LIMIT 1;
