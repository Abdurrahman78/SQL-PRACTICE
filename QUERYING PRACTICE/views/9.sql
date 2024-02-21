--write a SQL query to find the English title and artist of the print with the highest brightness.


--list english title and artist
SELECT "english_title","artist" FROM "views"

--order by desc to get greatest to least and limit by 1 to get top 1
ORDER BY "brightness" DESC LIMIT 1;

