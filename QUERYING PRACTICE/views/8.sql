--write a SQL query to list the English titles of the 5 prints with the least contrast by Hokusai, from least to highest contrast. Compare them to this list on Wikipedia to see if your results match the print’s aesthetics.

--list english titles
SELECT "english_title" FROM "views"
--from artist hokusai
WHERE "artist"='Hokusai'
--order by default using contrast and limit 5
ORDER BY "contrast" LIMIT 5;
