--write a SQL query to list the average colors of prints by Hokusai that include “river” in the English title. (As an aside, do they have any hint of blue?)

--select average color of prints
SELECT "average_color" FROM "views"
--where the artist is hokusai  that contains the word river in the title
WHERE "artist"='Hokusai' AND "english_title"  LIKE '%river%';
