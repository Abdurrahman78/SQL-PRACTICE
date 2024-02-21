--write a SQL query to list the English titles of the 5 brightest prints by Hiroshige, from most to least bright. Compare them to this list on Wikipedia to see if your results match the print’s aesthetics.

--select english titles
SELECT "english_title" FROM "views"
--filiter it out by only Hiroshige
WHERE "artist"='Hiroshige'
--order by descending and get top 5 using limit
ORDER BY "brightness" DESC LIMIT 5;
