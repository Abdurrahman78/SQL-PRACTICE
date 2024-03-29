--write a SQL query to count how many prints by Hokusai include “Fuji” in the English title. Though all of Hokusai’s prints focused on Mt. Fuji, in how many did “Fuji” make it into the title?

--Count english titles
SELECT COUNT("english_title") FROM "views"
--where the title contains fuji and has an arist like hokusai
WHERE "english_title" LIKE '%Fuji%' AND "artist" LIKE '%Hokusai%';
