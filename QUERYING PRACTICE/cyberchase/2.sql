--list the season number of, and title of, the first episode of every season.


--select season number,title number
SELECT "season","title" FROM "episodes"

--then we only want to show the first episode of that season
WHERE "episode_in_season"=1;
