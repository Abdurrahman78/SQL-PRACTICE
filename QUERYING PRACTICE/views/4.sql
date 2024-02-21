--write a SQL query to count how many prints by Hiroshige have English titles that refer to the “Eastern Capital”. Hiroshige’s prints were created in Japan’s “Edo period,” referencing the eastern capital city of Edo, now Tokyo.

--count english titles
SELECT COUNT("english_titles") FROM "views"
--where english titles contain eastern capital from the aritist hiroshige
WHERE "english_title" LIKE '%Eastern Capital%' AND "artist" LIKE 'Hiroshige';
